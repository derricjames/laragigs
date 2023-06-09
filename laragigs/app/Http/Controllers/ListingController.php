<?php

namespace App\Http\Controllers;

use App\Models\listing;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class ListingController extends Controller
{
    //Show all Listing
    public function index(){
       
        return view('listings.index', [
            'listings' => listing::latest()->filter(request(['tag', 
            'search']))->simplePaginate(6)
        ]);
    } 

    //Show Single listing
    public function show(listing $listing) {
        return view('listings.show', [
            'listing' => $listing
        ]);
    }

    //Show Create Form
    public function create() {
        return view('listings.create');
    }

    // store listing data
    public function store(Request $request) {
        $formFields = $request->validate([
            'title' => 'required',
            'company' => ['required', Rule::unique('listings', 'company')],
            'location' => 'required',
            'website' => 'required',
            'email' => ['required', 'email'],
            'tags' => 'required',
            'description' => 'required'
        ]);

        if($request->hasFile('logo')) {
            $formFields['logo'] = $request->file('logo')->store('logos', 'public');

        }

        $formFields['user_id'] = auth()->id();
        
        listing::create($formFields);

        

        return redirect('/')->with('message', 'Listing Created Successfully');
    }

    //Show Edit Form
    public function edit(Listing $listing) {
        return view('listings.edit', ['listing' => $listing]);
    }

    // update listing data
    public function update(Request $request, Listing $listing) {

        // Make Sure Logged in user is owner
        if($listing->user_id != auth()->id()) {
            abort(403, 'Unathorized Action');
        }

        $formFields = $request->validate([
            'title' => 'required',
            'company' => 'required',
            'location' => 'required',
            'website' => 'required',
            'email' => ['required', 'email'],
            'tags' => 'required',
            'description' => 'required'
        ]);

        if($request->hasFile('logo')) {
            $formFields['logo'] = $request->file('logo')->store('logos', 'public');

        }
        
        $listing->update($formFields);

        

        return back()->with('message', 'Listing Updated Successfully');
    }

    //delete listing
    public function destroy(Listing $listing){

        // Make Sure Logged in user is owner
        if($listing->user_id != auth()->id()) {
            abort(403, 'Unathorized Action');
        }

        $listing->delete();
        return redirect('/')->with('message', 'Listing deleted Successfully');
    }

    // Manage Listings
    public function manage() {
        return view('listings.manage', ['listings' => auth()->user()
        ->listings()->get()]);
    }
}

<?php


use App\Models\listing;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ListingController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

//All Listing
Route::get('/', [ListingController::class, 'index']);

// Show Create Form
Route::get('/listings/create', 
[ListingController::class, 'create'])->middleware('auth');

// Strore listing data
Route::post('/listings', 
[ListingController::class, 'store'])->middleware('auth');

// Show Edit Form
Route::get('/listings/{listing}/edit', 
[ListingController::class, 'edit'])->middleware('auth');

//Update Listing
Route::put('/listings/{listing}', 
[ListingController::class, 'update'])->middleware('auth');

//Delete Listing
Route::delete('/listings/{listing}', 
[ListingController::class, 'destroy'])->middleware('auth');

// Manage Listing
Route::get('/listings/manage',
[ListingController::class, 'manage'])->middleware('auth');

//Single Listing
Route::get('/listings/{listing}', [ListingController::class, 'show']);

//Show register /Create From
Route::get('/register', [UserController::class, 'create'])->middleware('guest');

//create new user
Route::post('/users', [UserController::class, 'store']);

// Log user out
Route::post('/logout',
[UserController::class, 'logout'])->middleware('auth');

//Show Login Form
Route::get('/login',
[UserController::class, 'login'])->name('login')->middleware('guest');

//Login user
Route::post('/users/authenticate', [UserController::class, 'authenticate']);


<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\User;
use App\Models\listing;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();

        $user = User::factory()->create([
            'name' => 'John Doe',
            'email' => 'john@mail.com'
        ]);
        listing::factory(6)->create([
            'user_id' => $user->id
        ]);

        // listing:: create([
        //     'title' => 'Laravel Senior Developer',
        //     'tags' => 'laravel, javascript',
        //     'company' => 'Acme Corp',
        //     'location' => 'Boston, MA',
        //     'email' => 'email@email.com',
        //     'website' => 'https://www.acme.com',
        //     'description' => 'Lorem ipsum dolor sit amet, 
        //     consectetur adipiscing elit. Praesent eu venenatis 
        //     diam. Ut vestibulum nibh eget sodales sodales. 
        //     Ut feugiat massa at massa lacinia, et tristique 
        //     ipsum commodo.'
        // ]);

        // listing:: create([
        //     'title' => 'Full-Stack Engineer',
        //     'tags' => 'laravel, backend, api',
        //     'company' => 'Stark Industries',
        //     'location' => 'New York, NY',
        //     'email' => 'email2@email.com',
        //     'website' => 'https://www.starkindustries.com',
        //     'description' => 'Lorem ipsum dolor sit amet, 
        //     consectetur adipiscing elit. Praesent eu venenatis 
        //     diam. Ut vestibulum nibh eget sodales sodales. 
        //     Ut feugiat massa at massa lacinia, et tristique 
        //     ipsum commodo.'
        // ]);
    }
}

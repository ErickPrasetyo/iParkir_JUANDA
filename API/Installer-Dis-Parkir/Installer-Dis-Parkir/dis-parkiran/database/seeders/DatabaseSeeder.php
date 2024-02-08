<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\Users::factory(10)->create();
        $this->call([
            // UsersTableSeeder::class,
            // CompanyPlantTableSeeder::class,
            // ShiftTableSeeder::class,
            // LogTableSeeder::class,
            MaintenanceTableSeeder::class
            // PageTypeTableSeeder::class
        ]);
    }
}
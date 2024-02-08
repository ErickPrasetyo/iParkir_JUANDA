<?php

namespace Database\Seeders;

use App\Models\Log;
use Illuminate\Database\Seeder;

class LogTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        Log::create([
            'log_id'    => 1,
            'log_name'  => 'Page System',
            'log_desc'  => 'History Page Apps'
        ]);

        Log::create([
            'log_id'    => 2,
            'log_name'  => 'Changes Master',
            'log_desc'  => 'History Changes Data Master'
        ]);

        Log::create([
            'log_id'    => 3,
            'log_name'  => 'Sync Rapid',
            'log_desc'  => 'History Sync Rapid'
        ]);

        Log::create([
            'log_id'    => 4,
            'log_name'  => 'Fitur System',
            'log_desc'  => 'History Using Fitur Apps'
        ]);
    }
}

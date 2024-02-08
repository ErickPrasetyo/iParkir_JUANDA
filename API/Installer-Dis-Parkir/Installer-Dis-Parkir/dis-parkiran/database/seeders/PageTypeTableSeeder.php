<?php

namespace Database\Seeders;

use App\Models\PageType;
use Illuminate\Database\Seeder;

class PageTypeTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        PageType::create([
            // 'page_type_id'    => 1,
            'page_type_name'  => 'Web E-Monitoring',
        ]);

        PageType::create([
            // 'page_type_id'    => 2,
            'page_type_name'  => 'Tablet E-Logsheet',
        ]);
    }
}

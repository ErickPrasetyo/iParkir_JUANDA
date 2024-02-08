<?php

namespace Database\Seeders;

use App\Models\Users;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Ramsey\Uuid\Uuid;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        Users::create([
            // 'user_id'    => '7FA7C1E5-D9B5-44B0-8556-5AA5B0701E4F',
            'user_id' => Uuid::uuid4()->toString(),
            'name'    => 'admin',
            'username'    => 'admin',
            'password'    => 'admin'
        ]);
    }
}

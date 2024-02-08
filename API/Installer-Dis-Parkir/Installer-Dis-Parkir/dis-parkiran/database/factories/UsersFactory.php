<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class UsersFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'user_id'    => mt_rand(1000000, 9999999),
            'name'    => $this->faker->name(),
            'username'    => $this->faker->name(),
            'password'    => Hash::make('admin')
        ];
    }
}

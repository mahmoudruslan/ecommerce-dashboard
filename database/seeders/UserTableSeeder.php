<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Str;



class UserTableSeeder extends Seeder
{
    public function run()
    {
        User::create([
            'name' => 'admin',
            'email' => 'admin@admin.com',
            'password' => '00000000', // password
            'phone' => '010' . rand('10000000', '99999999'),
            'address' => 'egypt',
            'email_verified_at' => now(),
            'remember_token' => Str::random(10),
        ]);
        User::factory()->count(10)->create();
    }
}

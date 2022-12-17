<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Customer;


class CustomerTableSeeder extends Seeder
{
    public function run()
    {
        Customer::create([
            'name' => 'customer',
            'phone' => '01092199386',
            'other_phone' => '01092199386',
            'governorate' => 'test',
            'district' => 'test',
            'activity_type' => 'test',
            'password' => '00000000',
            'address' => 'egypt',

        ]);
        Customer::factory()->count(100)->create();
    }
}

<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            //Admin
            [
                'name' => 'admin',
                'username' => 'admin',
                'email' => 'admin@example.com',
                'password' => Hash::make('111'),
                'role' => 'admin',
                'status' => 'active',
            ],

            //vendor
            [
                'name' => 'vendor',
                'username' => 'vendor',
                'email' => 'vendor@example.com',
                'password' => Hash::make('111'),
                'role' => 'vendor',
                'status' => 'active',
            ],
            //User
            [
                'name' => 'user',
                'username' => 'user',
                'email' => 'user@example.com',
                'password' => Hash::make('111'),
                'role' => 'user',
                'status' => 'active',
            ],

        ]);
    }
}

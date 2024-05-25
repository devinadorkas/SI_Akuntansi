<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('users')->insert([
            
        //Admin
        [
            'name' => 'admin',
            'email' =>'admin@mail.com',
            'password'=>Hash::make('123'),
            'role'=>'admin',
        ],
        
        //Accounting
        [
            'name' => 'accounting',
            'email' =>'accounting@mail.com',
            'password'=>Hash::make('123'),
            'role'=>'accounting',
        ],

        //Pimpinan
        [
            'name' => 'pimpinan',
            'email' =>'pimpinan@mail.com',
            'password'=>Hash::make('123'),
            'role'=>'pimpinan',
        ]
    ]);
    }
}

<?php

namespace Database\Seeders;

use App\Models\Classes;

use Illuminate\Database\Seeder;

class ClassesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();
            Classes::create([
            'class_name'          => 'standard1',
            'school_id'         => 1,
            'class_code'         => $faker->numerify('###-###-####'),
            'created_at'    => date("Y-m-d H:i:s")
        ]);

        Classes::create([
            'class_name'          => 'standard1',
            'school_id'         => 1,
            'class_code'         => $faker->numerify('###-###-####'),
            'created_at'    => date("Y-m-d H:i:s")
        ]);
    }
}

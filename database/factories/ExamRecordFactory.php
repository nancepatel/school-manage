<?php

namespace Database\Factories;

use App\Enums\ClassSectionEnum;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\ExamRecord>
 */
class ExamRecordFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    
    {
        return [
    
            'class_id' => '1',
            'semester_id' =>  $this->faker->numberBetween(1,2),
            'section_id' => ClassSectionEnum::A->value,
            'exam_id' => '1',
            'academic_id' => '1',
            'subject_id' => '1',
            'student_id' => $this->faker->numberBetween(1,2),
            'marks'=>  $this->faker->numberBetween(10,100)
        ];
    }
}

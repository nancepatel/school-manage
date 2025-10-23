<?php

namespace Tests\Feature\Livewire\Exam;

use App\Http\Livewire\Dashboard\Exam\CreateExam;
use App\Models\Exam;
use App\Models\Semester;
use App\Models\User;
use App\Traits\FeatureTestTrait;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Livewire\Livewire;
use Tests\TestCase;

class CreateExamTest extends TestCase
{
    use RefreshDatabase;
    use FeatureTestTrait, AuthorizesRequests;


        //test view all Exam cannot be accessed by unauthorised users
        public function test_view_all_Exam_cannot_be_accessed_by_unauthorised_users()
        {
            $this->unauthorized_user();
            Livewire::test('dashboard.exam.manage-exam')
                ->assertForbidden();
        }
    
    
        /** @test  */
    
        public function unauthorized_user_can_not_create_Exam()
        {
    
            Livewire::actingAs(User::factory()->create())
                ->test(CreateExam::class)
                ->set('item.name', 'waziri')
                ->set('item.description', 'waziriallyamir@gmail.com')
                ->set('item.semester_id', 1)
                ->set('item.start_date', 2000/02/02)
                ->set('item.stop_date', 2000/03/02)
                ->call('createItem')
                ->assertForbidden();
        }
    
        /** @test  */
    
        public function authorized_user_can_create_Exam()
        {
            $this->withoutExceptionHandling();
            // make fake user && assign role && acting as that user
            $user1 = User::factory()->create();
            $Semester=Semester::factory()->create();
            $user1->assignRole('admin');
    
            // check if user has given permission/gate   
            $user1->can('update', [$user1, 'exam']);
    
            Livewire::actingAs($user1)
                ->test(CreateExam::class)
                ->set('item.name', 'waziri')
                ->set('item.description', 'waziriallyamir@gmail.com')
                ->set('item.semester_id', $Semester->id)
                ->set('item.start_date', now()->addDay(1))
                ->set('item.stop_date', now()->addDay(20))
                ->set('item.active', '1')
                ->set('item.publish_result', '1')
                ->call('createItem')
                ->assertHasNoErrors();
    
            // test if data exist in database
            $this->assertDatabaseHas('exams', [
                'name' => 'waziri',
                'semester_id'=>$Semester->id,
            ]);
        }
    
        //test unauthorised users cannot edit Exam
        public function test_unauthorised_users_cannot_edit_Exam()
        {
            // make fake user &&  acting as that user and Exam
            $user = User::factory()->create();
            $Exam = Exam::factory()->create();
            Livewire::actingAs($user)
                ->test(CreateExam::class, ['item' => $Exam])
                ->call('showEditForm', $Exam)
                ->set('item.name', 'waziribig')
                ->call('editItem')
                ->assertForbidden();
        }
    
        //test authorised users can edit Exam
        public function test_authorised_users_can_edit_Exam()
        {
            $this->withoutExceptionHandling();
    
            // make fake user && assign role && acting as that user
            $user1 = User::factory()->create();
            $user1->assignRole('admin');
            $Exam = Exam::factory()->for(Semester::factory()->state(['school_id'=>$user1->school_id]),'semester')->create();
    
            // check if user has given permission/gate   
            $user1->can('update', [$user1, 'exam']);
    
            // test
            Livewire::actingAs($user1)
                ->test(CreateExam::class, ['item' => $Exam])
                ->call('showEditForm', $Exam)
    
                ->set('item.name', 'waziribig')
    
                ->call('editItem');
    
            // test if data exist in database
            $this->assertDatabaseHas('Exams', [
                'name' => 'waziribig'
            ]);
        }
    
        //test unauthorised users cannot edit Exam
        public function test_unauthorised_users_cannot_delete_Exam()
        {
            $user = User::factory()->create();
            $Exam = Exam::factory()->create();
            Livewire::actingAs($user)
                ->test(CreateExam::class, ['item' => $Exam])
                ->call('deleteItem', $Exam)
                ->assertForbidden();
        }
        //test authorised users can edit Exam
    
        public function test_authorised_users_can_delete_Exam()
        {
            // make fake user && assign role && acting as that user
            $user = User::factory()->create();
            $user->assignRole('admin');
            $user->can('delete', [$user, 'exam']);
            $Exam = Exam::factory()->for(Semester::factory()->state(['school_id'=>$user->school_id]),'semester')->create();
            // test
            Livewire::actingAs($user)
                ->test(CreateExam::class, ['Exam' => $Exam])
                ->call('showDeleteForm', $Exam)
                ->call('deleteItem');
    
            // test if data is softdeleted
            $this->assertSoftDeleted($Exam);
        }
}

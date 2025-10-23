<?php

namespace App\Http\Livewire\Dashboard\Student;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Livewire\Component;
use Livewire\WithPagination;
use Illuminate\Database\Eloquent\Builder;
use \Illuminate\View\View;

use App\Models\Student;

class Crud extends Component
{
    use AuthorizesRequests, WithPagination;

    /**
     * @var array
     */
    protected $listeners = ['refresh' => '$refresh'];
    /**
     * @var string
     */
    public $sortBy = 'id';

    /**
     * @var bool
     */
    public $sortAsc = true;

    /**
     * @var int
     */
    public $per_page = 15;


    public function mount(): void
    {
    }

    public function render(): View
    {
        $this->authorize('viewAny', [User::class, 'student']);

        $filterOnlyStudentWithinSchool= function($query)  {
            $query->where('school_id', auth()->user()->school_id);
        };

        $results = $this->query()
            ->with('user')
            ->with('parent')
            ->whereHas('user', $filterOnlyStudentWithinSchool)
            ->where('status',\App\Enums\StudentStatusEnum::Active)
            ->orderBy($this->sortBy, $this->sortAsc ? 'ASC' : 'DESC')
            ->with('class')
            ->paginate($this->per_page);

        return view('livewire.dashboard.student.crud', [
            'results' => $results
        ]);
    }

    public function sortBy(string $field): void
    {
        if ($field == $this->sortBy) {
            $this->sortAsc = !$this->sortAsc;
        }
        $this->sortBy = $field;
    }

    public function updatingPerPage(): void
    {
        $this->resetPage();
    }

    public function query(): Builder
    {
        return Student::query();
    }
}

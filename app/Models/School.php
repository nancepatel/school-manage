<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class School extends Model
{
    use HasFactory,SoftDeletes;

    protected $fillable = [
        'name', 'address', 'code', 'initials', 'phone', 'email'
    ];

    // public function classGroups()
    // {
    //     return $this->hasMany(ClassGroup::class);
    // }

    // /**
    //  * Get all of the users for the School.
    //  *
    //  * @return \Illuminate\Database\Eloquent\Relations\HasMany
    //  */
    public function users()
    {
        return $this->hasMany(User::class);
    }

    // /**
    //  * Get all of the MyClasses for the School.
    //  *
    //  * @return \Illuminate\Database\Eloquent\Relations\HasManyThrough
    //  */
    // public function myClasses()
    // {
    //     return $this->hasManyThrough(MyClass::class, ClassGroup::class);

    public function academicYears()
    {
        return $this->hasMany(AcademicYear::class);
    }


    public function academicYear()
    {
        return $this->hasOne(AcademicYear::class);
    }

    public function semester()
    {
        return $this->hasOne(Semester::class,'school_id','id');
    }
}

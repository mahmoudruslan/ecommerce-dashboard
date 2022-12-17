<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $fillable = ['name_ar', 'name_en', 'photo'];
    protected $appends = ['name'];
    public $timestamps = true;

    public function innerCategories()
    {
        return $this->hasMany(InnerCategory::class, 'category_id');
    }
    public function getNameAttribute()
    {
        return $this->name_ar;
    }
}

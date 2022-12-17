<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class InnerCategory extends Model
{
    use HasFactory;

    protected $fillable = ['name_ar', 'name_en', 'photo', 'category_id'];
    protected $appends = ['name'];

    public $timestamps = true;

    public function products()
    {
        return $this->hasMany(Product::class, 'inner_category_id');
    }

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }

    public function getNameAttribute()
    {
        return $this->name_ar;
    }
    
}

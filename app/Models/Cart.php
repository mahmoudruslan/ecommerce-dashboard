<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    use HasFactory;
    protected $fillable = ['customer_id'];
    protected $hidden  = ['created_at', 'updated_at'];

    public function Products()
    {
        return $this->hasMany(CartProduct::class, 'cart_id');
    }
}

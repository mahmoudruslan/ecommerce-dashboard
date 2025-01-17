<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderProduct extends Model
{
    use HasFactory;

    protected $fillable = ['product_id',  'order_id', 'quantity', 'total', 'name', 'price'];
    protected $hidden = ['order_id'];

    public $timestamps = false;

}

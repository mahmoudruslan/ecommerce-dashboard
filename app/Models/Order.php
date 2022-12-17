<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Order extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = ['notes',  'customer_id',  'status', 'price'];
    protected $hidden = ['customer_id', 'updated_at'];
    public $timestamps = true;

    public function productDetails()
    {
        return $this->hasMany(OrderProduct::class);
    }

    public function products()
    {
        return $this->belongsToMany(Product::class, 'order_products');
    }

    public function customer()
    {
        return $this->belongsTo(Customer::class, 'customer_id');
    }

    public function getStatusAttribute($value)
    {
        switch ($value) {
            case '0':
                return  __("Acceptance");
                break;
            case '1':
                return  __('Rejection');
                break;
            case '2':
                return __('To fail');
                break;
            case '3':
                return __('Delivery');
                break;
            case '4':
                return __('Successfully delivered');
                break;
            default:
                'no status';
        }
    }

    public function getCreatedAtAttribute($value)
    {
        return date('d-m-Y', strtotime($value));
    }
    public function getNotesAttribute($value)
    {
        return $value ?? __('Not found');
    }
}

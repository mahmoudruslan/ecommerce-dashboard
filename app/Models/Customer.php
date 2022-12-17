<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Hash;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;






class Customer extends Authenticatable  
{
    use HasFactory, Notifiable, HasApiTokens;

    protected $fillable = ['name', 'phone',  'other_phone',  'governorate', 'district', 'activity_type', 'password', 'address', 'status'];
    protected $hidden = ['password'];
    public $timestamps = true;

    public function orders()
    {
        return $this->hasMany(Order::class, 'customer_id');
    }

    public function cart()
    {
        return $this->hasOne(Cart::class, 'customer_id');
    }
    public function deviceTokens()
    {
        return $this->hasMany(DeviceToken::class, 'customer_id');
    }

    public function setPasswordAttribute($value)
    {
        $this->attributes['password'] = Hash::make($value);
    }


    public function viewedMessage()
    {
        return $this->hasMany(ViewedMessage::class, 'customer_id');
    }


    public function routeNotificationForFcm()
    {
        return $this->deviceTokens->pluck('token')->toArray();
    }
}

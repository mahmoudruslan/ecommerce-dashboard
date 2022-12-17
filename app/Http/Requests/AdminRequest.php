<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Request;


class AdminRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $rules =  [
            'name' => 'required|max:100',
            'phone'=> 'min:6|max:20|required',
            'address' => 'required|max:200',
            'password'=> 'required|max:8',
        ];
        if(!Request::input('edit') == true){
            
            $rules+= [
                'email'=> 'required|email|unique:users',
            ];
        }
        return $rules;
        
    }

    public function messages()
    {
        return [
            'name.max' => __('This is field must be no more than 100 characters'),
            'name.required' => __('This field is required'),
            'email.required' => __('This field is required'),
            'email.email' => __('This field must be an email'),
            'email.unique' => __('A user with this email address already exists.'),
            'phone.required' => __('This field is required'),
            'phone.max' => __('This is field must be no more than 20 number'),
            'phone.min' => __('This field must be at least 6 number'),
            'address.required' => __('This field is required'),
            'address.max' => __('This is field must be no more than 200 characters'),
            'password.required' => __('This field is required'),
            'password.max' => __('This is field must be no more than 8 characters'),
        ];
    }
}

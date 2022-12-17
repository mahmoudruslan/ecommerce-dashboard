<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Request;


class CategoryRequest extends FormRequest
{
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
            'name_ar' => 'required|max:100',
            'name_en' => 'max:100',
        ];
        if(!Request::input('edit') == true){
            
            $rules+= [
                'photo' => 'required',
            ];
        }
        return $rules;
    }
    public function messages()
    {
        return [
            'name_ar.max' => __('This is field must be no more than 100 characters'),
            'name_en.max' => __('This is field must be no more than 100 characters'),
            'name_ar.required' => __('This field is required'),
            'photo.required' => __('This field is required'),

        ];
    }
}

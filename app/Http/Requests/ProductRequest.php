<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Request;


class ProductRequest extends FormRequest
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
            'price' => 'max:20|required',
            'details_ar' => 'required|max:200',
            'details_en' => 'max:200',
            'amount' => 'required|max:20',
            'inner_category_id' => 'required',
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
            'name_ar.required' => __('This field is required'),
            'photo.required' => __('This field is required'),
            'inner_category_id.required' => __('This field is required'),
            'details.required' => __('This field is required'),
            'price.required' => __('This field is required'),
            'name.required' => __('This field is required'),
            'amount.required' => __('This field is required'),
            'details_ar.max' => __('This is field must be no more than 10 characters'),
            'details_en.max' => __('This is field must be no more than 200 characters'),
            'amount.max' => __('This is field must be no more than 20 characters'),
            'price.max' => __('This is field must be no more than 20 number'),
            'name_ar.max' => __('This is field must be no more than 100 characters'),
            'name_en.max' => __('This is field must be no more than 100 characters'),
        ];
    }
}

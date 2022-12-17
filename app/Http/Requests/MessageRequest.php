<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class MessageRequest extends FormRequest
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
 
        return  [
            'content' => 'required|max:1000',
        ];
    }
    public function messages()
    {
        return [
            'content.max' => __('This is field must be no more than 1000 characters'),
            'content.required' => __('This field is required'),
        ];
    }
}

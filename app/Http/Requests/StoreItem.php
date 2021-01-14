<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Http\Exceptions\HttpResponseException;
use Illuminate\Validation\ValidationException;

class StoreItem extends FormRequest
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
        return [
            'item_name' => 'required',
            'item_desc' => 'required',
            'item_image' => 'required',
            'price' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'item_name.required' => '商品名が未入力です',
            'item_desc.required' => '商品説明が未入力です',
            'item_image.required' => '商品画像が未入力です',
            'price.required' => '価格が未入力です'
        ];
    }
 
    protected function failedValidation(Validator $validator)
    {
        $errors = (new ValidationException($validator))->errors();
        throw new HttpResponseException(response()->json([
            'message' => 'Failed validation',
            'errors' => $errors,
        ], 422, [], JSON_UNESCAPED_UNICODE));
    }
}

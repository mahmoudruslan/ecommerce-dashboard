<?php

namespace App\Http\Controllers\api\admin;

use App\Http\Controllers\Controller;
use App\Traits\GeneralTrait;
use Illuminate\Http\Request;

class GovernorateController extends Controller
{
    use GeneralTrait;
    public function index()
    {
        try {
            $governorate = config('governorates');
            return $this->returnData('governorate', $governorate, 'success');
        } catch (\Exception $e) {
            return $this->returnError($e->getCode(), $e->getMessage());
        }
    }
}

<?php

namespace App\Http\Controllers\Api\Admin;

use App\Http\Controllers\Controller;
use App\Models\Message;
use App\Traits\GeneralTrait;
use Illuminate\Http\Request;

class MessageController extends Controller
{
    use GeneralTrait;
    public function index()
    {
        try {
            $messages = Message::select('content', 'created_at')->get();
            
            return $this->returnData('messages', $messages, 'success');
        } catch (\Exception $e) {
            return $this->returnError($e->getCode(), $e->getMessage());
        }
    }
}

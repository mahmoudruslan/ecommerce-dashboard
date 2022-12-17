<?php

namespace App\Http\Controllers;

use App\Http\Requests\MessageRequest;
use App\Models\Message;
use App\Models\ViewedMessage;
use App\Models\User;
use App\Traits\HtmlTrait;
use Illuminate\Http\Request;
use DataTables;
use Illuminate\Support\Facades\Auth;

class MessageController extends Controller
{
    use HtmlTrait;

    public function index(Request $request)
    {
        try {
            if ($request->ajax()) {
                $messages = Message::get();
                return DataTables::of($messages)
                    ->addIndexColumn()
                    ->addColumn('action', function ($row) {
                        $btn = $this->h_delete($row);
                        $btn = $btn . ' ' . $this->modal($row, route('admin.messages.destroy', $row->id));
                        return $btn;
                    })
                    ->rawColumns(['action'])
                    ->make(true);
            }
            return view('admin.messages.index');
        } catch (\Exception $e) {
            return $e->getMessage();
        }
    }

    public function create()
    {
        return view('admin.messages.create');
    }

    public function store(MessageRequest $request)
    {
        try {
            Message::create([
                'content' => $request->content,
            ]);
            return redirect()->route('admin.messages.index')->with('success', 'Created Successfully');
        } catch (\Exception $e) {
            return $e->getMessage();
        }
    }

    public function destroy($id)
    {
        try {
            $message = Message::findOrFail($id);
            $message->delete();
            return redirect()->back()->with('success', 'Deleted Successfully');
        } catch (\Exception $e) {
            return $e->getMessage();
        }
    }


    //request from ajax code 
    public function viewMessage(Request $request)
    { //this function to distinguish which notifications the user has seen
        try {
            if ($request->id) {
                ViewedMessage::updateOrCreate([
                    'user_id' => Auth::user()->id,
                    'message_id' => $request->id,
                ]);
            }
        } catch (\Exception $e) {
            return $e->getMessage();
        }
    }
}

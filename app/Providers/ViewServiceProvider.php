<?php

namespace App\Providers;

use App\Models\Message;
use App\Models\Order;
use App\Models\ViewedMessage;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\ServiceProvider;

class ViewServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    public function boot()
    {
        //management notifications
        view()->composer('layouts.admin.header', function ($view) {
            $messages = Message::take(7)->get();
            $user_id = Auth::user()->id;

            $last_message = Message::latest()->first();
            $last_message_id = $last_message == true ? $last_message->id : '0';
            $last_seen_message = ViewedMessage::where('user_id', $user_id)->latest()->first();

            $last_seen_message_id = $last_seen_message == true ? $last_seen_message->message_id : '0';

            $viewed_message_number = $last_message_id - $last_seen_message_id;
            if($last_seen_message_id == 0){
                $viewed_message_number = count($messages);
            }

            $view->with([
                'messages' =>  $messages,
                'last_message_id' =>  $last_message_id,
                'last_seen_message_id' =>  $last_seen_message_id,
                'viewed_message_number' =>  $viewed_message_number,
            ]);
        });

        //management order percentage
        view()->composer('admin.dashboard', function ($view) {
            $order_count = count(Order::get());
            $data['acceptance_count'] = count(Order::where('status', 0)->get());
            $data['rejection_count'] = count(Order::where('status', 1)->get());
            $data['failure_count'] = count(Order::where('status', 2)->get());
            $data['pending_count'] = count(Order::where('status', 3)->get());
            $data['delivery_count'] = count(Order::where('status', 4)->get());
            $data['successfully_delivered_count'] = count(Order::where('status', 5)->get());

            $failure = $data['failure_count'] / $order_count;
            $rejection = $data['rejection_count'] / $order_count;
            $acceptance = $data['acceptance_count'] / $order_count;
            $pending = $data['pending_count'] / $order_count;
            $delivery = $data['delivery_count'] / $order_count;
            $successfully_delivered = $data['successfully_delivered_count'] / $order_count;

            $data['failure_percentage'] = round((float)$failure * 100) . '%';
            $data['rejection_percentage'] = round((float)$rejection * 100) . '%';
            $data['percentage_of_acceptance'] = round((float)$acceptance * 100) . '%';
            $data['percentage_of_pending'] = round((float)$pending * 100) . '%';
            $data['percentage_of_delivery'] = round((float)$delivery * 100) . '%';
            $data['percentage_of_successfully_delivered'] = round((float)$successfully_delivered * 100) . '%';
            $data['order'] = Order::all();
            $view->with([
                'data' =>  $data,
            ]);
        });
    }
}

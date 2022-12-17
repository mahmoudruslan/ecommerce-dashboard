<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateViewedMessagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('viewed_messages', function (Blueprint $table) {
            $table->id();
            $table->foreignId('message_id')->references('id')->on('messages')->onDelete('cascade');
            $table->foreignId('user_id')->nullable()->references('id')->on('users')->onDelete('cascade');
            $table->foreignId('customer_id')->nullable()->references('id')->on('customers')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('viewed_messages');
    }
}

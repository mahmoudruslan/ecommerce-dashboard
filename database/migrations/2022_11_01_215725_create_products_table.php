<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('first_appearing')->nullable();
            $table->string('name_ar');
            $table->string('name_en')->nullable();
            $table->string('details_ar');
            $table->string('details_en')->nullable();
            $table->string('amount')->default(1);
            $table->string('photo');
            $table->string('price');
            $table->string('discount_price')->nullable();
            $table->foreignId('inner_category_id')->references('id')->on('inner_categories')->onDelete('cascade');
            $table->foreignId('product_id')->nullable()->references('id')->on('products');
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
        Schema::dropIfExists('products');
    }
}

<?php
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
class CreateRegionProvinceCityTables extends Migration
{
    public function up()
    {
        Schema::create('region', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->timestamps();
        });
        Schema::create('provinces', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->integer('region_id');            
            $table->timestamps();
        });
        Schema::create('cities', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->integer('province_id');            
            $table->timestamps();
        });
    }
   public function down()
    {
       Schema::drop('region');
       Schema::drop('provinces');
       Schema::drop('cities');
    }
}
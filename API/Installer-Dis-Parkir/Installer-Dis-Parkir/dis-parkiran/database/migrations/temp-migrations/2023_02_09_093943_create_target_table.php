<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTargetTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = TABEL_TARGET;

    public function up()
    {
        if (Schema::hasTable($this->table_name)) {
            // The "company" table exists...

        } else {
            Schema::create($this->table_name, function (Blueprint $table) {
                $table->increments('target_id');
                $table->integer('plant_section_id');
                $table->integer('month');
                $table->integer('year');
                $table->double('target_month_val')->nullable();
                $table->double('real_month_val')->nullable();
                
                $table->string('user_add')->nullable();
                $table->string('user_upd')->nullable();
                $table->string('user_del')->nullable();

                $table->softDeletes($column = 'deleted_at', $precision = 0);
                $table->timestamps();
            });
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists($this->table_name);
    }
}

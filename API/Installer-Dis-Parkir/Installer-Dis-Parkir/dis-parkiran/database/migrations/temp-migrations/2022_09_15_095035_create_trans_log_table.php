<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTransLogTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = TABEL_TRANS_LOG;

    public function up()
    {
        if (Schema::hasTable($this->table_name)) {
            // The "tags" table exists...

        } else {
            Schema::create($this->table_name, function (Blueprint $table) {
                $table->increments('trans_log_id');
                $table->integer('log_id');
                $table->string('user_id')->nullable();
                $table->string('username_log')->nullable();
                $table->string('fullname_log')->nullable();
                $table->string('desc_trans_log')->nullable();

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
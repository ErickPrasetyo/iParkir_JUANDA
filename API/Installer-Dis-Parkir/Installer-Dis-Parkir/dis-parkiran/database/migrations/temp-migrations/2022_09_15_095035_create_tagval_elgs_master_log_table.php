<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTagvalElgsMasterLogTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = TABEL_TAGVAL_ELGS_MASTER_LOG;

    public function up()
    {
        if (Schema::hasTable($this->table_name)) {
            // The table exists...
        } else {
        }

        Schema::create($this->table_name, function (Blueprint $table) {
            $table->increments('tagval_elgs_master_log_id');
            $table->integer('tagval_elgs_mas_id');

            $table->string('status_log')->nullable();
            $table->string('status_grant_name')->nullable();
            $table->string('status_grant_desc')->nullable();

            $table->string('user_add')->nullable();
            $table->string('user_upd')->nullable();
            $table->string('user_del')->nullable();

            $table->softDeletes($column = 'deleted_at', $precision = 0);
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
        Schema::dropIfExists($this->table_name);
    }
}

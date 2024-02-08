<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMaintenanceLogTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = TABEL_MAINTENANCE_LOG;

    public function up()
    {
        if (Schema::hasTable($this->table_name)) {
        } else {
            Schema::create($this->table_name, function (Blueprint $table) {
                $table->increments('maintenance_log_id');
                $table->integer('maintenance_id');
                $table->integer('status_id');
                $table->string('desc_log')->nullable();

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

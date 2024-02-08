<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSyncStatistikTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = TABEL_SYNC_STATISTIK;

    public function up()
    {
        if (Schema::hasTable($this->table_name)) {
            // The "tagval" table exists...

        } else {
            Schema::create($this->table_name, function (Blueprint $table) {
                $table->increments('sync_statistik_id');
                $table->dateTime('start_date_sync');
                $table->dateTime('end_date_sync');
                $table->dateTime('last_sync');
                $table->string('name_sync');
                
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

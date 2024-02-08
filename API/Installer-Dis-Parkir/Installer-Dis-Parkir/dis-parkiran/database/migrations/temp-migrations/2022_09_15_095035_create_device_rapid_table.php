<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDeviceRapidTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = TABEL_DEVICE_RAPID;

    public function up()
    {
        if (Schema::hasTable($this->table_name)) {
            // The "tags" table exists...
            Schema::table($this->table_name, function (Blueprint $table) {
                $table->integer('device_commlinenum')->nullable()->change();
            });
        } else {
            Schema::create($this->table_name, function (Blueprint $table) {
                $table->integer('device_id')->primary();
                $table->string('device_name');
                $table->integer('device_kptypeid')->nullable();
                $table->string('device_address')->nullable();
                $table->string('device_callnum')->nullable();
                $table->integer('device_commlinenum')->nullable();
                $table->string('device_desc')->nullable();

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

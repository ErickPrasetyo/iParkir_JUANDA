<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMaintenanceTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = TABEL_MAINTENANCE;

    public function up()
    {
        if (Schema::hasTable($this->table_name)) {
        } else {
            Schema::create($this->table_name, function (Blueprint $table) {
                $table->increments('maintenance_id');
                $table->integer('equipment_template_id')->nullable();
                $table->string('sap_no')->nullable();
                $table->string('wo_no')->nullable();
                $table->string('area')->nullable();
                $table->string('equipment_desc')->nullable();
                $table->string('section')->nullable();
                $table->string('revisi')->nullable();
                $table->date('date')->nullable();
                $table->date('issued')->nullable();
                $table->string('path')->nullable();
                $table->string('filename')->nullable();
                $table->string('status_id')->nullable();
                $table->boolean('is_active')->nullable();

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

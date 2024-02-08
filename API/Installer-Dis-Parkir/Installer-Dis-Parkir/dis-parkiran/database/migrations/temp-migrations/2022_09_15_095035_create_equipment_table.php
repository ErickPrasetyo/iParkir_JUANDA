<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEquipmentTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = TABEL_EQUIPMENT;

    public function up()
    {
        if (Schema::hasTable($this->table_name)) {
            Schema::table($this->table_name, function (Blueprint $table) {
                if (!Schema::hasColumn($this->table_name, 'path_equipment')) {
                    $table->string('path_equipment')->nullable();
                }
            });
        } else {
            Schema::create($this->table_name, function (Blueprint $table) {
                $table->increments('equipment_id');
                $table->integer('maintenance_type_id');
                $table->string('equipment_name')->nullable();
                $table->string('path_equipment')->nullable();
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

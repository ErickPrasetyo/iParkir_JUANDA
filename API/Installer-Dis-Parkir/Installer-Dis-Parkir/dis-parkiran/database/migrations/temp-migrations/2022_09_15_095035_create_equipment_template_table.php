<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEquipmentTemplateTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = TABEL_EQUIPMENT_TEMPLATE;

    public function up()
    {
        if (Schema::hasTable($this->table_name)) {
        } else {
            Schema::create($this->table_name, function (Blueprint $table) {
                $table->increments('equipment_template_id');
                $table->integer('equipment_id');
                $table->string('path')->nullable();
                $table->string('filename')->nullable();
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

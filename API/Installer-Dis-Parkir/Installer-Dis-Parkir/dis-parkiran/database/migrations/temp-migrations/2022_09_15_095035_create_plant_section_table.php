<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePlantSectionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = TABEL_PLANT_SECTION;

    public function up()
    {   
        if (Schema::hasTable($this->table_name)) {
            // The "plant_section" table exists...
            Schema::table($this->table_name, function (Blueprint $table) {
                if (!Schema::hasColumn($this->table_name, 'is_active')) {
                    $table->boolean('is_active')->nullable();
                }
                if (!Schema::hasColumn($this->table_name, 'plant_section_code')) {
                    $table->string('plant_section_code')->nullable();
                }
                if (!Schema::hasColumn($this->table_name, 'device_id')) {
                    $table->integer('device_id')->nullable();
                }
            });
        } else {
            Schema::create($this->table_name, function (Blueprint $table) {
                $table->increments('plant_section_id');
                $table->integer('device_id')->nullable();
                $table->string('plant_section_code')->nullable();
                $table->string('plant_section_desc')->nullable();
                $table->string('plant_section_number');
                $table->integer('plant_id');
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
        // Schema::dropIfExists($this->table_name);
    }
}

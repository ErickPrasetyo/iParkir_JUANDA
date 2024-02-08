<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePlantTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = TABEL_PLANT;

    public function up()
    {
        if (Schema::hasTable($this->table_name)) {
            // The plant exists...
            Schema::table($this->table_name, function (Blueprint $table) {
                if (!Schema::hasColumn($this->table_name, 'is_active')) {
                    $table->boolean('is_active')->nullable();
                }
            });
        } else {
            Schema::create($this->table_name, function (Blueprint $table) {
                $table->increments('plant_id');
                $table->string('plant_desc');
                $table->string('plant_number')->unique();
                $table->integer('company_id');
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

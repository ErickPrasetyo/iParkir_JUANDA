<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateComlineRapidTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = TABEL_COMLINE_RAPID;

    public function up()
    {
        if (Schema::hasTable($this->table_name)) {
            // The "tags" table exists...

        } else {
            Schema::create($this->table_name, function (Blueprint $table) {
                $table->integer('commline_id')->primary();
                $table->string('commline_name')->nullable();
                $table->string('commline_desc')->nullable();

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

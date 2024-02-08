<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTagsRapidTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = TABEL_TAG_RAPID;

    public function up()
    {
        if (Schema::hasTable($this->table_name)) {
            // The "tags" table exists...

        } else {
            Schema::create($this->table_name, function (Blueprint $table) {
                $table->integer('cnlnum')->primary();
                $table->string('device_id');
                $table->string('tag_rapid_name');
                $table->string('use_formula')->nullable();
                $table->string('formula')->nullable();
                $table->boolean('isalarm')->nullable();
                $table->double('low_low')->nullable();
                $table->double('low')->nullable();
                $table->double('high')->nullable();
                $table->double('high_high')->nullable();
                $table->string('tag_rapid_desc')->nullable();
                $table->boolean('is_rapid')->nullable();
                $table->boolean('is_active')->nullable(0);
                $table->integer('unit_id')->nullable();
                $table->integer('data_type')->nullable();

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

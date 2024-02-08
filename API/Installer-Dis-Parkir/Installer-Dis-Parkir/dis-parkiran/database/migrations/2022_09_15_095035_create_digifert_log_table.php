<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDigifertLogTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = TABEL_DIGIFERT_LOG;

    public function up()
    {
        Schema::create($this->table_name, function (Blueprint $table) {
            $table->increments('digifert_log_id');
            $table->integer('digifert_id');
            $table->string('digifert_log_desc')->nullable();
            $table->string('digifert_log_filename')->nullable();
            $table->boolean('is_success')->nullable();

            $table->string('user_add')->nullable();
            $table->string('user_upd')->nullable();
            $table->string('user_del')->nullable();

            $table->softDeletes($column = 'deleted_at', $precision = 0);
            $table->timestamps();
        });
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

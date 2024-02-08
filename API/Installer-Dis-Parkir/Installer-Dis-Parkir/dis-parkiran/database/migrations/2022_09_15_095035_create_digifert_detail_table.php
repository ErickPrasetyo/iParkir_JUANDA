<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDigifertDetailTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = TABEL_DIGIFERT_DETAIL;

    public function up()
    {
        Schema::create($this->table_name, function (Blueprint $table) {
            $table->increments('digifert_detail_id');
            $table->integer('digifert_id');
            $table->integer('cnlnum');
            $table->string('digifert_detail_desc')->nullable();
            $table->boolean('is_active')->nullable();

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

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = TABEL_PAGES;

    public function up()
    {
        if (Schema::hasTable($this->table_name)) {
            // The "users" table exists...
        } else {
            Schema::create($this->table_name, function (Blueprint $table) {
                $table->string('page_code')->primary();
                $table->string('page_name');
                $table->string('url');
                $table->string('icon')->nullable();
                $table->integer('page_type_id');

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

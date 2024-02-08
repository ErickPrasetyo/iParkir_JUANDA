<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMenusTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = TABEL_MENUS;

    public function up()
    {
        if (Schema::hasTable($this->table_name)) {
            // The "users" table exists...
        } else {
            Schema::create($this->table_name, function (Blueprint $table) {
                $table->increments('menu_id');
                $table->string('page_code');
                $table->string('parent_code')->nullable();
                $table->integer('sort_index')->default(0);

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

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateShiftUserTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = TABEL_SHIFFT_USER;

    public function up()
    {
        if (Schema::hasTable($this->table_name)) {
            // The "tags" table exists...

        } else {
            Schema::create($this->table_name, function (Blueprint $table) {
                $table->increments('shift_user_id');
                $table->integer('shift_id');
                $table->date('shift_date');
                $table->string('shift_user_desc')->nullable();
                $table->boolean('is_active')->nullable();
                $table->boolean('is_sync')->nullable();

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

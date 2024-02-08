<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRolesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = TABEL_ROLES;

    public function up()
    {
        if (Schema::hasTable($this->table_name)) {
            // The "users" table exists...
            Schema::table($this->table_name, function (Blueprint $table) {
                if (!Schema::hasColumn($this->table_name, 'act_open')) {
                    $table->boolean('act_open')->nullable();
                }
                if (!Schema::hasColumn($this->table_name, 'act_review')) {
                    $table->boolean('act_review')->nullable();
                }
                if (!Schema::hasColumn($this->table_name, 'act_approve')) {
                    $table->boolean('act_approve')->nullable();
                }
                if (!Schema::hasColumn($this->table_name, 'act_reject')) {
                    $table->boolean('act_reject')->nullable();
                }
            });
        } else {

            Schema::create($this->table_name, function (Blueprint $table) {
                $table->increments('role_id');
                $table->string('role_name');
                $table->integer('level');
                $table->boolean('act_open')->nullable();
                $table->boolean('act_review')->nullable();
                $table->boolean('act_approve')->nullable();
                $table->boolean('act_reject')->nullable();

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

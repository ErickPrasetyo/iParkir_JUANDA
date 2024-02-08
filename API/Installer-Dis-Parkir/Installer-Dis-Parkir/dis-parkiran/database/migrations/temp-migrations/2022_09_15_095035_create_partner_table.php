<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePartnerTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = TABEL_PARTNER;

    public function up()
    {
        if (Schema::hasTable($this->table_name)) {
            // The "company" table exists...

        } else {
            Schema::create($this->table_name, function (Blueprint $table) {
                $table->increments('partner_id');
                $table->string('partner_name');
                $table->string('partner_address')->nullable();
                $table->string('partner_contact')->nullable();
                $table->string('partner_email')->nullable();
                $table->string('partner_desc')->nullable();

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

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTagvalElgsTranscodeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = TABEL_TAGVAL_ELGS_TRANSCODE;

    public function up()
    {
        if (Schema::hasTable($this->table_name)) {
            // The table exists...
        } else {
        }

        Schema::create($this->table_name, function (Blueprint $table) {
            $table->increments('tagval_elgs_transcode_id');
            $table->integer('tagval_elgs_id');
            $table->date('dateval_elgs');
            $table->string('trans_code');
            $table->integer('shift_id');

            $table->string('status')->nullable();
            $table->boolean('current')->nullable();
            $table->integer('status_grant_id')->nullable();
            $table->string('status_grant_name')->nullable();
            $table->integer('total_modified')->nullable();

            $table->datetime('status_at')->nullable();
            $table->string('user_status')->nullable();

            $table->datetime('created_at_elgs')->nullable();
            $table->datetime('updated_at_elgs')->nullable();
            $table->datetime('deleted_at_elgs')->nullable();
            $table->string('user_add_elgs')->nullable();
            $table->string('user_upd_elgs')->nullable();
            $table->string('user_del_elgs')->nullable();

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

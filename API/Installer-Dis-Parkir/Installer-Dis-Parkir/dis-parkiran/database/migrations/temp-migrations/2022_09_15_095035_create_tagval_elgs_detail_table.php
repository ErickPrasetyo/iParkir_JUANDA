<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTagvalElgsDetailTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = TABEL_TAGVAL_ELGS_DETAIL;

    public function up()
    {
        if (Schema::hasTable($this->table_name)) {
            // The table exists...
        } else {
        }

        Schema::create($this->table_name, function (Blueprint $table) {
            $table->increments('tagval_elgs_det_id');
            $table->integer('tagval_elgs_mas_id');
            $table->time('timeval_elsgs')->nullable();
            $table->integer('tag_sap_id')->nullable();
            $table->string('trans_code')->nullable();
            $table->integer('shift_detail_id')->nullable();
            $table->string('io_tag_no')->nullable();
            $table->string('sap_tag_no')->nullable();
            $table->string('tag_desc')->nullable();
            $table->string('eng_unit')->nullable();
            $table->double('val')->nullable();

            $table->string('status')->nullable();
            $table->boolean('current')->nullable();
            $table->datetime('apprv_at_elgs')->nullable();
            $table->string('user_apprv_elgs')->nullable();
            $table->datetime('rjjt_at_elgs')->nullable();
            $table->string('user_rjjt_elgs')->nullable();

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

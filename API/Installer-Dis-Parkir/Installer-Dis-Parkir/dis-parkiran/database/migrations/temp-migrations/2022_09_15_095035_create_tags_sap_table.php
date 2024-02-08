<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTagsSapTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = TABEL_TAG_SAP;

    public function up()
    {
        if (Schema::hasTable($this->table_name)) {
            // The "tags" table exists...
            Schema::table($this->table_name, function (Blueprint $table) {
                if (!Schema::hasColumn($this->table_name, 'is_active')) {
                    $table->boolean('is_active')->nullable();
                }
                if (!Schema::hasColumn($this->table_name, 'is_alarm')) {
                    $table->boolean('is_alarm')->nullable();
                }
                if (!Schema::hasColumn($this->table_name, 'is_rapid')) {
                    $table->boolean('is_rapid')->nullable();
                }
                if (!Schema::hasColumn($this->table_name, 'company_id')) {
                    $table->integer('company_id')->nullable();
                }
                if (!Schema::hasColumn($this->table_name, 'plant_id')) {
                    $table->integer('plant_id')->nullable();
                }
                if (!Schema::hasColumn($this->table_name, 'plant_section_id')) {
                    $table->integer('plant_section_id')->nullable();
                }
                if (!Schema::hasColumn($this->table_name, 'group')) {
                    $table->string('group')->nullable();
                }
            });
        } else {
            Schema::create($this->table_name, function (Blueprint $table) {
                $table->increments('tag_sap_id');
                $table->string('io_tag_no')->unique();
                $table->string('sap_tag_no');
                $table->integer('plant_sub_section_id');
                $table->integer('plant_section_id');
                $table->integer('plant_id');
                $table->integer('company_id');
                $table->string('io_type')->nullable();
                $table->string('tag_desc')->nullable();
                $table->string('modbus_address')->nullable();
                $table->string('from')->nullable();
                $table->string('to')->nullable();
                $table->string('eng_unit')->nullable();
                $table->string('group')->nullable();
                $table->double('lrv')->nullable();
                $table->double('urv')->nullable();
                $table->double('alarm_low')->nullable();
                $table->double('alarm_low_low')->nullable(0);
                $table->double('alarm_high')->nullable();
                $table->double('alarm_high_high')->nullable();
                $table->double('set_point')->nullable();
                $table->string('hmi_page')->nullable();
                $table->string('remark')->nullable();
                $table->boolean('is_rapid')->nullable();
                $table->boolean('is_active')->nullable();
                $table->boolean('is_alarm')->nullable();
                // $table->integer('unit_id_sap');

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

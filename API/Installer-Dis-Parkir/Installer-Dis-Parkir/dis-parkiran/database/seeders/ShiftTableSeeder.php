<?php

namespace Database\Seeders;

use App\Models\Shift;
use App\Models\ShiftDetail;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class ShiftTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        Shift::create([
            'shift_id'      => 1,
            'shift_name'    => 'Shift 1',
            'shift_desc'    => 'Shift 1',
            'is_active'     => 1,
            'shift_start'   => '07:00:00',
            'shift_end'     => '13:59:59'
        ]);

        Shift::create([
            'shift_id'      => 2,
            'shift_name'    => 'Shift 2',
            'shift_desc'    => 'Shift 2',
            'is_active'     => 1,
            'shift_start'   => '14:00:00',
            'shift_end'     => '20:59:59'
        ]);

        Shift::create([
            'shift_id'      => 3,
            'shift_name'    => 'Shift 3',
            'shift_desc'    => 'Shift 3',
            'is_active'     => 1,
            'shift_start'   => '21:00:00',
            'shift_end'     => '06:59:59'
        ]);

        ShiftDetail::create([
            'shift_detail_id'   => 1,
            'shift_id'          => 1,
            'shift_desc_det'    => 'shift 1',
            'is_active'         => 1,
            'shift_start_det'   => '08:00:00',
            'shift_end_det'     => '10:00:00'
        ]);

        ShiftDetail::create([
            'shift_detail_id'   => 2,
            'shift_id'          => 1,
            'shift_desc_det'    => 'shift 1',
            'is_active'         => 1,
            'shift_start_det'   => '10:00:00',
            'shift_end_det'     => '12:00:00'
        ]);

        ShiftDetail::create([
            'shift_detail_id'   => 3,
            'shift_id'          => 1,
            'shift_desc_det'    => 'shift 1',
            'is_active'         => 1,
            'shift_start_det'   => '12:00:00',
            'shift_end_det'     => '14:00:00'
        ]);

        ShiftDetail::create([
            'shift_detail_id'   => 4,
            'shift_id'          => 1,
            'shift_desc_det'    => 'shift 1',
            'is_active'         => 1,
            'shift_start_det'   => '14:00:00',
            'shift_end_det'     => '16:00:00'
        ]);

        ShiftDetail::create([
            'shift_detail_id'   => 5,
            'shift_id'          => 2,
            'shift_desc_det'    => 'shift 2',
            'is_active'         => 1,
            'shift_start_det'   => '16:00:00',
            'shift_end_det'     => '18:00:00'
        ]);

        ShiftDetail::create([
            'shift_detail_id'   => 6,
            'shift_id'          => 2,
            'shift_desc_det'    => 'shift 2',
            'is_active'         => 1,
            'shift_start_det'   => '18:00:00',
            'shift_end_det'     => '20:00:00'
        ]);

        ShiftDetail::create([
            'shift_detail_id'   => 7,
            'shift_id'          => 2,
            'shift_desc_det'    => 'shift 2',
            'is_active'         => 1,
            'shift_start_det'   => '20:00:00',
            'shift_end_det'     => '22:00:00'
        ]);

        ShiftDetail::create([
            'shift_detail_id'   => 8,
            'shift_id'          => 2,
            'shift_desc_det'    => 'shift 2',
            'is_active'         => 1,
            'shift_start_det'   => '22:00:00',
            'shift_end_det'     => '23:59:59'
        ]);

        ShiftDetail::create([
            'shift_detail_id'   => 9,
            'shift_id'          => 3,
            'shift_desc_det'    => 'shift 3',
            'is_active'         => 1,
            'shift_start_det'   => '00:00:00',
            'shift_end_det'     => '02:00:00'
        ]);

        ShiftDetail::create([
            'shift_detail_id'   => 10,
            'shift_id'          => 3,
            'shift_desc_det'    => 'shift 3',
            'is_active'         => 1,
            'shift_start_det'   => '02:00:00',
            'shift_end_det'     => '04:00:00'
        ]);

        ShiftDetail::create([
            'shift_detail_id'   => 11,
            'shift_id'          => 3,
            'shift_desc_det'    => 'shift 3',
            'is_active'         => 1,
            'shift_start_det'   => '04:00:00',
            'shift_end_det'     => '06:00:00'
        ]);

        ShiftDetail::create([
            'shift_detail_id'   => 12,
            'shift_id'          => 3,
            'shift_desc_det'    => 'shift 3',
            'is_active'         => 1,
            'shift_start_det'   => '06:00:00',
            'shift_end_det'     => '08:00:00'
        ]);
    }
}

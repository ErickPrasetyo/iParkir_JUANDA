<?php

namespace Database\Seeders;

use App\Models\Discipline;
use App\Models\MaintenanceType;
use App\Models\Equipment;
use App\Models\EquipmentTemplate;
use App\Models\Status;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class MaintenanceTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Discipline
        Discipline::create([
            // 'discipline_id'      => 1,
            'discipline_name'    => 'Mechanical'
        ]);

        Discipline::create([
            // 'discipline_id'      => 2,
            'discipline_name'    => 'Piping'
        ]);

        Discipline::create([
            // 'discipline_id'      => 3,
            'discipline_name'    => 'Civil'
        ]);

        Discipline::create([
            // 'discipline_id'      => 4,
            'discipline_name'    => 'Electrical'
        ]);

        Discipline::create([
            // 'discipline_id'      => 5,
            'discipline_name'    => 'Instrument'
        ]);

        Discipline::create([
            // 'discipline_id'      => 6,
            'discipline_name'    => 'Process & Lab'
        ]);

        Discipline::create([
            // 'discipline_id'      => 7,
            'discipline_name'    => 'HSE'
        ]);

        //Maintenance Type > Instrumen
        MaintenanceType::create([
            'discipline_id'      => 5,
            // 'maintenance_type_id'      => 1,
            'maintenance_type_name'    => 'Preventive'
        ]);

        MaintenanceType::create([
            'discipline_id'      => 5,
            // 'maintenance_type_id'      => 2,
            'maintenance_type_name'    => 'Calibration'
        ]);

        MaintenanceType::create([
            'discipline_id'      => 5,
            // 'maintenance_type_id'      => 3,
            'maintenance_type_name'    => 'Certification'
        ]);

        MaintenanceType::create([
            'discipline_id'      => 5,
            // 'maintenance_type_id'      => 4,
            'maintenance_type_name'    => 'Corrective'
        ]);

        //preventive
        Equipment::create([
            'maintenance_type_id' => 1,
            // 'equipment_id'      => 1,
            'path_equipment'      => 'excel/5. Instrument/1. Preventive/1. Off-line Measurement Device',
            'equipment_name'    => 'Off-line Measurement Device'
        ]);

        Equipment::create([
            'maintenance_type_id' => 1,
            // 'equipment_id'      => 2,
            'path_equipment'      => 'excel/5. Instrument/1. Preventive/2. On-line Measurement Device',
            'equipment_name'    => 'On-line Measurement Device'
        ]);

        Equipment::create([
            'maintenance_type_id' => 1,
            // 'equipment_id'      => 3,
            'path_equipment'      => 'excel/5. Instrument/1. Preventive/3. Final Control Device',
            'equipment_name'    => 'Final Control Device'
        ]);

        Equipment::create([
            'maintenance_type_id' => 1,
            'path_equipment'      => 'excel/5. Instrument/1. Preventive/4. Safety Valve',
            // 'equipment_id'      => 4,

            'equipment_name'    => 'Safety Valve'
        ]);

        Equipment::create([
            'maintenance_type_id' => 1,
            // 'equipment_id'      => 5,
            'path_equipment'      => 'excel/5. Instrument/1. Preventive/5. Junction Box',
            'equipment_name'    => 'Junction Box'
        ]);

        Equipment::create([
            'maintenance_type_id' => 1,
            // 'equipment_id'      => 6,
            'path_equipment'      => 'excel/5. Instrument/1. Preventive/6. Control Panel',
            'equipment_name'    => 'Control Panel'
        ]);

        //calibration
        Equipment::create([
            'maintenance_type_id' => 2,
            // 'equipment_id'      => 7,
            'path_equipment'      => 'excel/5. Instrument/2. Calibration/1. Off-line Measurement Device',
            'equipment_name'    => '1. Off-line Measurement Device'
        ]);

        Equipment::create([
            'maintenance_type_id' => 2,
            // 'equipment_id'      => 8,
            'path_equipment'      => 'excel/5. Instrument/2. Calibration/2. On-line Measurement Device',
            'equipment_name'    => '2. On-line Measurement Device'
        ]);

        Equipment::create([
            'maintenance_type_id' => 2,
            // 'equipment_id'      => 9,
            'path_equipment'      => 'excel/5. Instrument/2. Calibration/3. Final Control Device',
            'equipment_name'    => '3. Final Control Device'
        ]);

        //certification
        Equipment::create([
            'maintenance_type_id' => 3,
            // 'equipment_id'      => 10,
            'path_equipment'      => 'excel/5. Instrument/3. Certification/1. Off-line Measurement Device',
            'equipment_name'    => '1. Off-line Measurement Device'
        ]);

        Equipment::create([
            'maintenance_type_id' => 3,
            // 'equipment_id'      => 11,
            'path_equipment'      => 'excel/5. Instrument/3. Certification/2. On-line Measurement Device',
            'equipment_name'    => '2. On-line Measurement Device'
        ]);

        //corrective
        Equipment::create([
            'maintenance_type_id' => 4,
            // 'equipment_id'      => 12,
            'path_equipment'      => 'excel/5. Instrument/4. Corrective',
            'equipment_name'    => '1. FU Corrective'
        ]);

        EquipmentTemplate::create([
            'equipment_id' => 1,
            'path'      => 'excel/5. Instrument/1. Preventive/1. Off-line Measurement Device',
            'filename'    => '1.PM (Offline) .xlsx'
        ]);

        EquipmentTemplate::create([
            'equipment_id' => 2,
            'path'      => 'excel/5. Instrument/1. Preventive/2. On-line Measurement Device',
            'filename'    => '2.PM (Online).xlsx'
        ]);

        EquipmentTemplate::create([
            'equipment_id' => 3,
            'path'      => 'excel/5. Instrument/1. Preventive/3. Final Control Device',
            'filename'    => '3.PM (Final Control Dev-Valve).xlsx'
        ]);

        EquipmentTemplate::create([
            'equipment_id' => 4,
            'path'      => 'excel/5. Instrument/1. Preventive/4. Safety Valve',
            'filename'    => '4.PM (Safety).xlsx'
        ]);

        EquipmentTemplate::create([
            'equipment_id' => 5,
            'path'      => 'excel/5. Instrument/1. Preventive/5. Junction Box',
            'filename'    => '5.PM (Junction).xlsx'
        ]);

        EquipmentTemplate::create([
            'equipment_id' => 6,
            'path'      => 'excel/5. Instrument/1. Preventive/6. Control Panel',
            'filename'    => '6.PM (Panel).xlsx'
        ]);

        EquipmentTemplate::create([
            'equipment_id' => 7,
            'path'      => 'excel/5. Instrument/2. Calibration/1. Off-line Measurement Device',
            'filename'    => 'FU Kalibrasi Gauge.xlsx'
        ]);

        EquipmentTemplate::create([
            'equipment_id' => 8,
            'path'      => 'excel/5. Instrument/2. Calibration/2. On-line Measurement Device',
            'filename'    => 'Analog Device.xlsx'
        ]);

        EquipmentTemplate::create([
            'equipment_id' => 8,
            'path'      => 'excel/5. Instrument/2. Calibration/2. On-line Measurement Device',
            'filename'    => 'Discrete Device.xlsx'
        ]);

        EquipmentTemplate::create([
            'equipment_id' => 9,
            'path'      => 'excel/5. Instrument/2. Calibration/3. Final Control Device',
            'filename'    => 'On-off Valve.xlsx'
        ]);

        EquipmentTemplate::create([
            'equipment_id' => 9,
            'path'      => 'excel/5. Instrument/2. Calibration/3. Final Control Device',
            'filename'    => 'Throttling Valve.xlsx'
        ]);

        EquipmentTemplate::create([
            'equipment_id' => 10,
            'path'      => 'excel/5. Instrument/3. Certification/1. Off-line Measurement Device',
            'filename'    => 'FU Kalibrasi Gauge.xlsx'
        ]);

        EquipmentTemplate::create([
            'equipment_id' => 11,
            'path'      => 'excel/5. Instrument/3. Certification/2. On-line Measurement Device',
            'filename'    => 'FU Kalibrasi Transmitter.xlsx'
        ]);

        EquipmentTemplate::create([
            'equipment_id' => 12,
            'path'      => 'excel/5. Instrument/4. Corrective',
            'filename'    => 'FU Corrective (2).xlsx'
        ]);
    }
}

<?php

namespace Database\Seeders;

use App\Models\Company;
use App\Models\Plant;
use App\Models\PlantSection;
use App\Models\Users;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Ramsey\Uuid\Uuid;

class CompanyPlantTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        // Company::create([
        //     // 'company_id' => 1,
        //     'company_code'    => 'J000',
        //     'company_name'    => 'PT Pupuk Indonesia Utilitas'
        // ]);

        // Plant::create([
        //     // 'plant_id' => 1,
        //     'company_id'    => 1,
        //     'plant_number'    => 'J001',
        //     'plant_desc'    => 'Gresik Gas Cogeneration Plant'
        // ]);

        PlantSection::create([
            // 'plant_section_id' => 1,
            'plant_id'    => 1,
            'device_id'   => NULL,
            'plant_section_code'    => 'GTG',
            'plant_section_number'  => '101',
            'plant_section_desc'    => 'GAS TURBIN GENERATOR',
            'is_active'    => 1
        ]);

        PlantSection::create([
            // 'plant_section_id' => 1,
            'plant_id'    => 1,
            'device_id'   => NULL,
            'plant_section_code'    => 'HRSG',
            'plant_section_number'  => '102',
            'plant_section_desc'    => 'HEAT RECOVERY STEAM GENERATOR',
            'is_active'    => 1
        ]);

        PlantSection::create([
            // 'plant_section_id' => 1,
            'plant_id'    => 1,
            'device_id'   => NULL,
            'plant_section_code'    => 'PB',
            'plant_section_number'  => '103',
            'plant_section_desc'    => 'PACKAGE BOILER',
            'is_active'    => 1
        ]);

        PlantSection::create([
            // 'plant_section_id' => 1,
            'plant_id'    => 1,
            'device_id'   => NULL,
            'plant_section_code'    => 'EPMS',
            'plant_section_number'  => '120',
            'plant_section_desc'    => 'MAIN SUBSTATION',
            'is_active'    => 1
        ]);

        PlantSection::create([
            // 'plant_section_id' => 1,
            'plant_id'    => 1,
            'device_id'   => NULL,
            'plant_section_code'    => 'WTP',
            'plant_section_number'  => '105',
            'plant_section_desc'    => 'WATER TREATMENT PLANT',
            'is_active'    => 1
        ]);

        PlantSection::create([
            // 'plant_section_id' => 1,
            'plant_id'    => 1,
            'device_id'    => NULL,
            'plant_section_code'    => 'WWTP',
            'plant_section_number'  => '106',
            'plant_section_desc'    => 'WASTE WATER TREATMENT PLANT',
            'is_active'    => 1
        ]);

        PlantSection::create([
            // 'plant_section_id' => 1,
            'plant_id'    => 1,
            'device_id'   => NULL,
            'plant_section_code'    => 'CPU',
            'plant_section_number'  => '107',
            'plant_section_desc'    => 'CONDENSATE POLISHER UNIT',
            'is_active'    => 1
        ]);

        PlantSection::create([
            // 'plant_section_id' => 1,
            'plant_id'    => 1,
            'device_id'   => NULL,
            'plant_section_code'    => 'OSBL',
            'plant_section_number'  => '108',
            'plant_section_desc'    => 'OUTSIDE BATTERY LIMIT',
            'is_active'    => 1
        ]);

        PlantSection::create([
            // 'plant_section_id' => 1,
            'plant_id'    => 1,
            'device_id'   => NULL,
            'plant_section_code'    => 'CEMS',
            'plant_section_number'  => '109',
            'plant_section_desc'    => 'CEMS-SWAS',
            'is_active'    => 1
        ]);

        PlantSection::create([
            // 'plant_section_id' => 1,
            'plant_id'    => 1,
            'device_id'   => NULL,
            'plant_section_code'    => 'IAPA',
            'plant_section_number'  => '110',
            'plant_section_desc'    => 'IA & PA SYSTEM',
            'is_active'    => 1
        ]);

        PlantSection::create([
            // 'plant_section_id' => 1,
            'plant_id'    => 1,
            'device_id'   => NULL,
            'plant_section_code'    => 'FWS',
            'plant_section_number'  => '111',
            'plant_section_desc'    => 'FIRE SYSTEM',
            'is_active'    => 1
        ]);

        PlantSection::create([
            // 'plant_section_id' => 1,
            'plant_id'    => 1,
            'device_id'   => NULL,
            'plant_section_code'    => 'NGS',
            'plant_section_number'  => '112',
            'plant_section_desc'    => 'NATURAL GAS FEED SYSTEM',
            'is_active'    => 1
        ]);

        PlantSection::create([
            // 'plant_section_id' => 1,
            'plant_id'    => 1,
            'device_id'   => NULL,
            'plant_section_code'    => 'SDS',
            'plant_section_number'  => '113',
            'plant_section_desc'    => 'STEAM DISTRIBUTION',
            'is_active'    => 1
        ]);

        PlantSection::create([
            // 'plant_section_id' => 1,
            'plant_id'    => 1,
            'device_id'   => NULL,
            'plant_section_code'    => 'ELR',
            'plant_section_number'  => '121',
            'plant_section_desc'    => 'ELECTRICAL ROOM',
            'is_active'    => 1
        ]);

        PlantSection::create([
            // 'plant_section_id' => 1,
            'plant_id'    => 1,
            'device_id'   => NULL,
            'plant_section_code'    => 'CCR',
            'plant_section_number'  => '122',
            'plant_section_desc'    => 'CENTRAL CONTROL ROOM',
            'is_active'    => 1
        ]);

        PlantSection::create([
            // 'plant_section_id' => 1,
            'plant_id'    => 1,
            'device_id'   => NULL,
            'plant_section_code'    => 'BNP',
            'plant_section_number'  => '123',
            'plant_section_desc'    => 'BUILDING & NON PROCESS',
            'is_active'    => 1
        ]);

        PlantSection::create([
            // 'plant_section_id' => 1,
            'plant_id'    => 1,
            'device_id'   => NULL,
            'plant_section_code'    => 'CWS',
            'plant_section_number'  => '104',
            'plant_section_desc'    => 'COOLING WATER SYSTEM',
            'is_active'    => 1
        ]);
    }
}

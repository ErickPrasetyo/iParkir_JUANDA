<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Support\Facades\DB;

class ReportGate extends Model
{
    use SoftDeletes, HasFactory;

    protected $table = 'report.gate';
    protected $primaryKey = "no_karcis";

    public static function getAll()
    {
        $query = "SELECT * FROM report.gate WHERE issent='0'";
        
        $response = DB::select(DB::raw(
            $query
        ));

        return $response;
    }

    public static function saveReportGate($no_karcis)
    {
        $tabel = DB::table('report.gate')->where('no_karcis', $no_karcis)->update(['issent' => '1']);

        return $tabel;
    }
}
<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Psy\CodeCleaner\FunctionReturnInWriteContextPass;
use PDF;
use App\Exports\MahasiswaExport;
use Maatwebsite\Excel\Facades\Excel;
use App\Http\Controllers\Controllers;
use App\Models\cetakPdf;

class MahasiswaController extends Controller
{

    public function cetak_pdf()
    {
        $mhs = cetakPdf::where('hasil', '1')->get();

        $pdf = PDF::loadView('pdf', ['mhs' =>$mhs]);
        return $pdf->download('laporan-mahasiswa.pdf');

        }
    
} 
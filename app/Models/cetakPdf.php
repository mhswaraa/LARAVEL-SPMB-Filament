<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class cetakPdf extends Model
{
    protected $table = "view_seleksi_peserta";
    protected $fillable = [
        'no_daftar',
        'id_periode',
        'nama',
        'jenis_kelamin',
        'program_studi',
        'kelas',
        'hasil'
    ];
        
}

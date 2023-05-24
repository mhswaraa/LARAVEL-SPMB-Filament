<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kelas extends Model
{

    protected $primaryKey = 'kode_kelas';
    protected $keyType = 'string';
    protected $table = "kelas_pilihan";
    //relasi tabel
    
    protected $fillable = [
            'kode_kelas',
            'kelas',

    ];
}

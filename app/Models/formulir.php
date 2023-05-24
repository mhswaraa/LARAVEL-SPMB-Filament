<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class formulir extends Model
{
    protected $primaryKey = 'no_daftar';
    protected $keyType = 'string';
    protected $table ="formulir";
    protected $fillable = [
        'no_daftar',
        'id_periode',
        'id_user',
        'nama',
        'jenis_kelamin',
        'tempat_lahir',
        'tanggal_lahir',
        'alamat',
        'telp',
        'kelas',
        'program_studi'
    ];

    //relasi periode
    public function periode()
    {
        return $this->belongsTo(
            Periode::class,
            "id_periode",
            "id"
        );
    }

    //relasi user
    public function user()
    {
        return $this->belongsTo(
            User::class,
            "id_user",
            "id"
        );
    }

    //relasi program studi
    public function programStudi()
    {
        return $this->belongsTo(
            SiakadProgramStudi::class,
            "program_studi",
            "kode_prodi",
        );
    }
    public function kelas()
    {
        return $this->belongsTo(Kelas::class, 
            'kode_kelas',
            'kelas',    
        );
    }
    
}
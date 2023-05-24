<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Seleksi extends Model
{
    protected $primaryKey = 'id';
    protected $keyType = 'integer';
    protected $table = 'seleksi';
    protected $fillable = [
        'id_periode',
        'tahap',
        'tanggal',
        'keterangan'
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
    public function seleksi_peserta()
    {
        return $this->hasMany(SeleksiPeserta::class);
    }

}

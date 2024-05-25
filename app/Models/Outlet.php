<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Outlet extends Model
{
    use HasFactory;

    protected $fillable = [
        'id_outlet',
        'nama_outlet',
        'alamat_outlet',
        'kontak_outlet',
    ];
}

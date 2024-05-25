<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    use HasFactory;
    
    protected $fillable = [
        'id_supplier',
        'nama_supplier',
        'telp_supplier',
        'no_orderbarang',
        'id_barang',
    ];
}

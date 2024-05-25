<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('detail_transaksi_pembelian', function (Blueprint $table) {
            $table->string('id_detail_beli', 10)->primary();
            $table->integer('kode_transaksi_beli')->index('kode_transaksi_beli');
            $table->string('id_barang', 5)->index('id_barang');
            $table->integer('jumlah_barang');
            $table->integer('harga_pembelian');
            $table->integer('pajak_beli');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('detail_transaksi_pembelian');
    }
};

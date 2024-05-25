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
        Schema::create('detail_transaksi_penjualan', function (Blueprint $table) {
            $table->string('id_detail_jual', 10)->primary();
            $table->integer('kode_transaksi_jual')->index('kode_transaksi_jual');
            $table->string('id_barang', 5)->index('id_barang');
            $table->integer('jumlah_barang');
            $table->integer('harga_penjualan');
            $table->integer('pajak_jual');
            $table->integer('diskon');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('detail_transaksi_penjualan');
    }
};

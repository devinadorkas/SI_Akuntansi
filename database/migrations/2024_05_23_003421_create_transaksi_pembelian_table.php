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
        Schema::create('transaksi_pembelian', function (Blueprint $table) {
            $table->integer('kode_transaksi_beli')->primary();
            $table->date('tgl_pembelian');
            $table->integer('total_pembelian');
            $table->enum('metode_bayar', ['tunai', 'debit', 'kredit']);
            $table->string('id_supplier', 5)->index('id_supplier');
            $table->string('id_pegawai', 7)->index('id_pegawai');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('transaksi_pembelian');
    }
};

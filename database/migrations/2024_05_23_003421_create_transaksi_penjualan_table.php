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
        Schema::create('transaksi_penjualan', function (Blueprint $table) {
            $table->integer('kode_transaksi_jual')->primary();
            $table->date('tgl_penjualan');
            $table->integer('total_penjualan');
            $table->enum('metode_bayar', ['tunai', 'debit', 'kredit']);
            $table->string('id_outlet', 5)->index('id_outlet');
            $table->string('id_customer', 7)->index('id_customer');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('transaksi_penjualan');
    }
};

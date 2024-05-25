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
        Schema::create('buku_besar', function (Blueprint $table) {
            $table->string('id_bukubesar', 6)->primary();
            $table->date('tgl_transaksi');
            $table->integer('nominal_debit');
            $table->integer('nominal_kredit');
            $table->string('akun_debit');
            $table->string('akun_kredit');
            $table->integer('kode_transaksi_jual')->index('kode_transaksi_jual');
            $table->integer('kode_transaksi_beli')->index('kode_transaksi_beli');
            $table->string('id_pengeluaran', 10)->index('id_pengeluaran');
            $table->string('no_kasbank', 6)->index('no_kasbank');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('buku_besar');
    }
};

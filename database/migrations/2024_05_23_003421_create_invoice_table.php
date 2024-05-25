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
        Schema::create('invoice', function (Blueprint $table) {
            $table->string('no_invoice', 5)->primary();
            $table->date('tgl_faktur');
            $table->enum('metode_bayar', ['tunai', 'debit', 'kredit']);
            $table->integer('kode_transaksi_beli')->index('kode_transaksi_beli');
            $table->integer('kode_transaksi_jual')->index('kode_transaksi_jual');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('invoice');
    }
};

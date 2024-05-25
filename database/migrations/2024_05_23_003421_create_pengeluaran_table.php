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
        Schema::create('pengeluaran', function (Blueprint $table) {
            $table->string('id_pengeluaran', 10)->primary();
            $table->date('tgl_pengeluaran');
            $table->enum('jenis_pengeluaran', ['tunai', 'debit', 'kredit']);
            $table->integer('jumlah_pengeluaran');
            $table->string('id_biaya', 6)->index('id_biaya');
            $table->string('id_pegawai', 5)->index('id_pegawai');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pengeluaran');
    }
};

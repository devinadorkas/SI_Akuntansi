<?php

namespace App\Http\Controllers;

use App\Models\Barang;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;

class BarangController extends Controller
{
    /**
     * index
     *
     * @return View
     */
    public function index()
    {
        //get all barang
        $barang = Barang::all();
        return view('barang.index', compact('barang'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('barang.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'id_barang' => 'required|string',
            'nama_barang' => 'required|string',
            'harga_barang' => 'required',
            'merk_barang' => 'required|string',
        ]);

        Barang::create([
            'id_barang' => $request->id_barang,
            'nama_barang' => $request->nama_barang,
            'harga_barang' => $request->harga_barang,
            'merk_barang' => $request->merk_barang,
        ]);

        return redirect()->route('barang.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(Barang $barang)
    {
        // Menampilkan detail barang (opsional)
        return view('barang.index', compact('barang'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id_barang)
    {
        $barang = Barang::findOrFail($id_barang);
        return view('barang.edit', compact('barang'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id_barang)
    {
        $request->validate([
            'id_barang' => 'required|string',
            'nama_barang' => 'required|string',
            'harga_barang' => 'required',
            'merk_barang' => 'required|string',
        ]);

        $barang = Barang::findOrFail($id_barang);
        $barang->update($request->all());

        return redirect()->route('barang.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id_barang)
    {
        $barang = Barang::findOrFail($id_barang);
        $barang->delete();
        return redirect()->route('barang.index');
    }

    public function downloadPdf()
    {
        $barang = Barang::all();
        $pdf = Pdf::loadview('laporan.cetak', compact('barang'));
        $pdf->setPaper('A4','potrait');
        return $pdf->download('laporan_data_barang.pdf');
    }
}

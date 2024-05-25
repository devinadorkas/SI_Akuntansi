@extends('partials.master')
@section('content')
    
<!-- tabelnya ini aduh -->
      <div class="table-content">
			<h3>Data Barang</h3>
			<button type="button" class="btn-tambah">
            <a href="{{route('barang.create')}}">Tambah Data</a>
			</button>
            <a href="{{route('laporan.downloadPdf')}}"target="_blank">
			<button type="button" class="btn-cetak">Cetak</a>
			</button>
			<table class="table-data">
				<thead>
					<tr>
						<th scope="col">ID Barang</th>
						<th scope="col">Nama Barang</th>
						<th scope="col">Harga Barang</th>
						<th scope="col">Merk Barang</th>
						<th scope="col" style="width:30%">Aksi</th>
					</tr>
				</thead>
				<tbody>
                    @foreach ($barang as $brg)
					<tr>
                        <td>{{$brg->id_barang}}</td>
                        <td>{{$brg->nama_barang}}</td>
						<td>{{$brg->harga_barang}}</td>
						<td>{{$brg->merk_barang}}</td>
						<td>
							<a href="{{route('barang.edit', $brg->id_barang)}}" style="display: inline-block; margin-right: 5px;">
								<button class="btn-edit">Edit</button>
							</a>
							<form action="{{route('barang.destroy', $brg->id_barang)}}" method="post" style="display: inline-block;">
								@csrf
								@method('delete')
								<button type="submit" class="btn-delete">Hapus</button>
							</form>
						</td>

					</tr>
                    @endforeach
				</tbody>
			</table>
		</div>

@endsection
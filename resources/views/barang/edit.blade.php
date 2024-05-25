@extends('partials.master')
@section('content')
<div class="row">
    <div class="col-md-8">
        <div class="card card-user">
            <div class="card-header">
                <h5 class="card-title">Edit Profile</h5>
            </div>
            <div class="card-body">
                <form action="{{route('barang.update', $barang->id_barang)}}" method="post">
                @csrf
                @method('PUT')
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>ID Barang</label>
                                <input type="text" class="form-control" placeholder=""
                                    name="id_barang" value="{{$barang->nama}}">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Nama Barang</label>
                                <input type="text" class="form-control" placeholder=""
                                    name="nama_barang" value="{{$barang->nama}}">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Harga Barang</label>
                                <input type="text" class="form-control" placeholder=""
                                    name="harga_barang" value="{{$barang->harga}}">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Merk Barang</label>
                                <input type="text" class="form-control" placeholder=""
                                    name="merk_barang" value="{{$barang->merk}}">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="update ml-auto mr-auto">
                            <button type="submit" class="btn btn-primary btn-round">Tambah Data</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

@endsection
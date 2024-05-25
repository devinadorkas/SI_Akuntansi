<!DOCTYPE html>
<html>
<head>
    <title>Data Barang</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>Data Barang</h1>
    <table>
        <thead>
            <tr>
            <th scope="col">ID Barang</th>
			<th scope="col">Nama Barang</th>
			<th scope="col">Harga Barang</th>
			<th scope="col">Merk Barang</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($barang as $brg)
					<tr>
                    <td>{{$brg->id_barang}}</td>
                    <td>{{$brg->nama_barang}}</td>
					<td>{{$brg->harga_barang}}</td>
					<td>{{$brg->merk_barang}}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>


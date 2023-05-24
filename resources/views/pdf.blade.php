<!DOCTYPE html>
<html>
<head>
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #f2f2f2;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #d64c4c;
  color: white;
}

/* New styles for the header and footer */
.header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 20px;
}

.logo {
  font-size: 30px;
  font-weight: bold;
  color: #202021;
}

.title {
  font-size: 24px;
  font-weight: bold;
  text-align: center;
  margin-bottom: 20px;
}

.footer {
  position: absolute;
  bottom: 0;
  width: 100%;
  text-align: center;
  font-size: 14px;
  color: #aaa;
}

</style>
</head>
<body>
<div class="header">
  <div class="logo">UDB Surakarta</div>
  <div class="date">{{ date("d F Y") }}</div>
</div>
<br><br><br>
<h1 class="title">DATA HASIL SELEKSI PESERTA SPMB TAHAP 1</h1>
<table id="customers">
  <tr>
    <th>No</th>
    <th>ID Peserta</th>
    <th>Nama</th>
    <th>Kode Prodi</th>
    <th>Kelas</th>
    <th>Status</th>
  </tr>
  @php
      $no=1;
  @endphp
  @foreach ($mhs as $row)
    <tr>
    <td>{{ $no++}}</td>
    <td>{{ $row->no_daftar }}</td>
    <td>{{ $row->nama }}</td>
    <td>{{ $row->program_studi }}</td>
    <td>{{ $row->kelas }}</td>
    <td>Lulus</td>
  </tr>  
  @endforeach
</table>

</body>
</html>

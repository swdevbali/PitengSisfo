<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<a href="<%=Config.base_url%>index/Jabatan/input/-1">Tambah Data</a>
|| <a href="<%=Config.base_url%>index/Jabatan/print">Cetak</a>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th scope="col" class="rounded-company">No.</th>
  <th scope="col" class="rounded-q1">Nip</th>
  <th scope="col" class="rounded-q1">Nama Jabatan</th>
  <th scope="col" class="rounded-q1">Jenis Jabatan</th>
  <th scope="col" class="rounded-q1">Eselon</th>
  <th scope="col" class="rounded-q1">Unit Kerja</th>
  <th scope="col" class="rounded-q1">Kode Sub Unit Kerja</th>
  <th scope="col" class="rounded-q1">Tmt Jabatan</th>
  <th scope="col" class="rounded-q1">No Sk Jabatan</th>
  <th scope="col" class="rounded-q1">Tgl Sk Jabatan</th>
  <th scope="col" class="rounded-q1">No Surat Pelantikan</th>
  <th scope="col" class="rounded-q1">Tgl Surat Pelantikan</th>
  <th scope="col" class="rounded-q1">Pejabat Berwenang</th>
  <th scope="col" class="rounded-q1">Kode Bagian Unit Kerja</th>
  <th scope="col" class="rounded-q4">Aksi</th>
  </tr>
</thead>
<tfoot>
  <tr>
    <td colspan="15" class="rounded-foot-left"><%=Pagination.createLinks(pagenum)%></td>
    <td class="rounded-foot-right">&nbsp;</td>
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td>${status.count}</td>
      <td>${item.nip}</td>
      <td>${item.nama_jabatan}</td>
      <td>${item.jenis_Jabatan}</td>
      <td>${item.eselon}</td>
      <td>${item.unit_kerja}</td>
      <td>${item.kode_sub_unit_kerja}</td>
      <td>${item.tmt_jabatan}</td>
      <td>${item.no_sk_jabatan}</td>
      <td>${item.tgl_sk_jabatan}</td>
      <td>${item.no_surat_pelantikan}</td>
      <td>${item.tgl_surat_pelantikan}</td>
      <td>${item.pejabat_berwenang}</td>
      <td>${item.kode_bagian_unit_kerja}</td>
      <td>
         <a href="<%=Config.base_url%>index/Jabatan/input/${item.idjabatan}">Ubah</a>
         <a href="<%=Config.base_url%>index/Jabatan/delete/${item.idjabatan}" onClick="return confirm('Apakah Anda yakin?');">Hapus</a>
      </td>
    </tr>
  </c:forEach>
</tbody>
</table>

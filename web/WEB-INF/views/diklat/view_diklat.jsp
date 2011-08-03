<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<a href="<%=Config.base_url%>index/Diklat/input/-1">Tambah Data</a>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th scope="col" class="rounded-company">No.</th>
  <th scope="col" class="rounded-q1">Nip</th>
  <th scope="col" class="rounded-q1">Nama Diklat</th>
  <th scope="col" class="rounded-q1">Tempat</th>
  <th scope="col" class="rounded-q1">Penyelenggara</th>
  <th scope="col" class="rounded-q1">Tgl Mulai</th>
  <th scope="col" class="rounded-q1">Tgl Selesai</th>
  <th scope="col" class="rounded-q1">No Sttpl</th>
  <th scope="col" class="rounded-q1">Tgl Sttpl</th>
  <th scope="col" class="rounded-q1">Jumlah Jam</th>
  <th scope="col" class="rounded-q4">Aksi</th>
  </tr>
</thead>
<tfoot>
  <tr>
    <td colspan="11" class="rounded-foot-left"><%=Pagination.createLinks(pagenum)%></td>
    <td class="rounded-foot-right">&nbsp;</td>
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td>${status.count}</td>
      <td>${item.nip}</td>
      <td>${item.nama_diklat}</td>
      <td>${item.tempat}</td>
      <td>${item.penyelenggara}</td>
      <td>${item.tgl_mulai}</td>
      <td>${item.tgl_selesai}</td>
      <td>${item.no_sttpl}</td>
      <td>${item.tgl_sttpl}</td>
      <td>${item.jumlah_jam}</td>
      <td>
         <a href="<%=Config.base_url%>index/Diklat/input/${item.idcuti}">Ubah</a>
         <a href="<%=Config.base_url%>index/Diklat/delete/${item.idcuti}" onClick="return confirm('Apakah Anda yakin?');">Hapus</a>
      </td>
    </tr>
  </c:forEach>
</tbody>
</table>

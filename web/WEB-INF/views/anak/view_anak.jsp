<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<a href="<%=Config.base_url%>index/Anak/input/-1">Tambah Data</a>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th scope="col" class="rounded-company">No.</th>
  <th scope="col" class="rounded-q1">Nip</th>
  <th scope="col" class="rounded-q1">Anak Ke</th>
  <th scope="col" class="rounded-q1">Nama Anak</th>
  <th scope="col" class="rounded-q1">Status Anak</th>
  <th scope="col" class="rounded-q1">Tempat Lahir</th>
  <th scope="col" class="rounded-q1">Tgl Lahir</th>
  <th scope="col" class="rounded-q1">Jenis Kelamin</th>
  <th scope="col" class="rounded-q1">Pendidikan</th>
  <th scope="col" class="rounded-q1">Pekerjaan</th>
  <th scope="col" class="rounded-q1">Status Tunjangan</th>
  <th scope="col" class="rounded-q4">Aksi</th>
  </tr>
</thead>
<tfoot>
  <tr>
    <td colspan="12" class="rounded-foot-left"><%=Pagination.createLinks(pagenum)%></td>
    <td class="rounded-foot-right">&nbsp;</td>
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td>${status.count}</td>
      <td>${item.nip}</td>
      <td>${item.anak_ke}</td>
      <td>${item.nama_anak}</td>
      <td>${item.status_anak}</td>
      <td>${item.tempat_lahir}</td>
      <td>${item.tgl_lahir}</td>
      <td>${item.jenis_kelamin}</td>
      <td>${item.pendidikan}</td>
      <td>${item.pekerjaan}</td>
      <td>${item.status_tunjangan}</td>
      <td>
         <a href="<%=Config.base_url%>index/Anak/input/${item.idanak}">Ubah</a>
         <a href="<%=Config.base_url%>index/Anak/delete/${item.idanak}" onClick="return confirm('Apakah Anda yakin?');">Hapus</a>
      </td>
    </tr>
  </c:forEach>
</tbody>
</table>

<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
     <c:if test="${user_credential.role=='Administrator'}">
<a href="<%=Config.base_url%>index/KursusPenataran/input/-1">Tambah Data</a> | </c:if>
<a href="<%=Config.base_url%>index/KursusPenataran/print">Cetak</a>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th scope="col" class="rounded-company">No.</th>
  <th scope="col" class="rounded-q1">Nip</th>
  <th scope="col" class="rounded-q1">Nama Kursus Penataran</th>
  <th scope="col" class="rounded-q1">Tempat</th>
  <th scope="col" class="rounded-q1">Penyelenggara</th>
  <th scope="col" class="rounded-q1">Tgl Mulai</th>
  <th scope="col" class="rounded-q1">Tgl Selesai</th>
  <th scope="col" class="rounded-q1">No Sertifikat</th>
  <th scope="col" class="rounded-q1">Tgl Sertifikat</th>
  <th scope="col" class="rounded-q1">Jumlah Jam</th>
  <th scope="col" class="rounded-q1">Jenis</th>
       <c:if test="${user_credential.role=='Administrator'}">
  <th scope="col" class="rounded-q4">Aksi</th>
  </c:if>
  </tr>
</thead>
<tfoot>
  <tr>
       <c:if test="${user_credential.role=='Administrator'}">
    <td colspan="13" class="rounded-foot-left"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
	
	
       <c:if test="${user_credential.role=='Pegawai'}">
    <td colspan="12" class="rounded-foot-left"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td>${status.count}</td>
      <td>${item.nip}</td>
      <td>${item.nama_kursus_penataran}</td>
      <td>${item.tempat}</td>
      <td>${item.penyelenggara}</td>
      <td>${item.tgl_mulai}</td>
      <td>${item.tgl_selesai}</td>
      <td>${item.no_sertifikat}</td>
      <td>${item.tgl_sertifikat}</td>
      <td>${item.jumlah_jam}</td>
      <td>${item.jenis}</td>
	       <c:if test="${user_credential.role=='Administrator'}">
      <td>
         <a href="<%=Config.base_url%>index/KursusPenataran/input/${item.idkursus_penataran}">Ubah</a>
         <a href="<%=Config.base_url%>index/KursusPenataran/delete/${item.idkursus_penataran}" onClick="return confirm('Apakah Anda yakin?');">Hapus</a>
      </td>
	  </c:if>
    </tr>
  </c:forEach>
</tbody>
</table>

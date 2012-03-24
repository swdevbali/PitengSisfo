<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<style type="text/css">
<!--
.style1 {font-family: Georgia, "Times New Roman", Times, serif}
.style2 {font-size: 14px}
.style3 {font-family: Georgia, "Times New Roman", Times, serif; font-size: 14px; }
.style5 {font-family: Georgia, "Times New Roman", Times, serif; font-size: 14px; font-weight: bold; }
.style6 {color: #FF0000}
-->
</style>

     <c:if test="${user_credential.role=='Administrator'}">
       <span class="style5"><span class="style5"><a href="<%=Config.base_url%>index/KursusPenataran/input/-1">Tambah Data</a> | </span></span></c:if>
     <span class="style5"><a href="<%=Config.base_url%>index/KursusPenataran/print/print" target="_blank">Cetak</a> |
     <a href="<%=Config.base_url%>index/KursusPenataran/print/download">Download</a></span> 
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th class="rounded-q1 style2 style1" scope="col">No.</th>
  <th class="rounded-q1 style2 style1" scope="col">Nip</th>
  <th class="rounded-q1 style2 style1" scope="col">Nama Kursus Penataran</th>
  <th class="rounded-q1 style2 style1" scope="col">Tempat</th>
  <th class="rounded-q1 style2 style1" scope="col">Penyelenggara</th>
  <th class="rounded-q1 style2 style1" scope="col">Tgl Mulai</th>
  <th class="rounded-q1 style2 style1" scope="col">Tgl Selesai</th>
  <th class="rounded-q1 style2 style1" scope="col">No Sertifikat</th>
  <th class="rounded-q1 style2 style1" scope="col">Tgl Sertifikat</th>
  <th class="rounded-q1 style2 style1" scope="col">Jumlah Jam</th>
  <th class="rounded-q1 style2 style1" scope="col">Jenis</th>
       <c:if test="${user_credential.role=='Administrator'}">
  <th class="rounded-q4 style2 style1" scope="col">Aksi</th>
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
      <td><span class="style3">${status.count}</span></td>
      <td><span class="style3">${item.nip}</span></td>
      <td><span class="style3">${item.nama_kursus_penataran}</span></td>
      <td><span class="style3">${item.tempat}</span></td>
      <td><span class="style3">${item.penyelenggara}</span></td>
      <td><span class="style3">${item.tgl_mulai}</span></td>
      <td><span class="style3">${item.tgl_selesai}</span></td>
      <td><span class="style3">${item.no_sertifikat}</span></td>
      <td><span class="style3">${item.tgl_sertifikat}</span></td>
      <td><span class="style3">${item.jumlah_jam}</span></td>
      <td><span class="style3">${item.jenis}</span></td>
	       <c:if test="${user_credential.role=='Administrator'}">
      <td>
         <span class="style5"><a href="<%=Config.base_url%>index/KursusPenataran/input/${item.idkursus_penataran}">Ubah</a>
         <a href="<%=Config.base_url%>index/KursusPenataran/delete/${item.idkursus_penataran}" class="style6" onClick="return confirm('Apakah Anda yakin?');">Hapus</a> </span></td>
	  </c:if>
    </tr>
  </c:forEach>
</tbody>
</table>

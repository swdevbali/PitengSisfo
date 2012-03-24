<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<style type="text/css">
<!--
.style1 {font-size: 14px}
.style2 {font-family: Georgia, "Times New Roman", Times, serif}
.style3 {font-size: 14px; font-family: Georgia, "Times New Roman", Times, serif; }
.style5 {font-size: 14px; font-family: Georgia, "Times New Roman", Times, serif; font-weight: bold; }
.style6 {color: #FF0000}
-->
</style>

 <c:if test="${user_credential.role=='Administrator'}">
   <span class="style1"><span class="style2"><a href="<%=Config.base_url%>index/Diklat/input/-1">Tambah Data</a> | </span></span></c:if>
 <span class="style3"><a href="<%=Config.base_url%>index/Diklat/print/print" target="_blank">Cetak</a> |
 <a href="<%=Config.base_url%>index/Diklat/print/download">Download</a> </span>
 <table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th class="rounded-company style2 style1" scope="col">No.</th>
  <th class="rounded-q1 style2 style1" scope="col">Nip</th>
  <th class="rounded-q1 style2 style1" scope="col">Nama Diklat</th>
  <th class="rounded-q1 style2 style1" scope="col">Tempat</th>
  <th class="rounded-q1 style2 style1" scope="col">Penyelenggara</th>
  <th class="rounded-q1 style2 style1" scope="col">Tgl Mulai</th>
  <th class="rounded-q1 style2 style1" scope="col">Tgl Selesai</th>
  <th class="rounded-q1 style2 style1" scope="col">No Sttpl</th>
  <th class="rounded-q1 style2 style1" scope="col">Tgl Sttpl</th>
  <th class="rounded-q1 style2 style1" scope="col">Jumlah Jam</th>
   <c:if test="${user_credential.role=='Administrator'}">
  <th class="rounded-q4 style2 style1" scope="col">Aksi</th>
  </c:if>
  </tr>
</thead>
<tfoot>
  <tr>
   <c:if test="${user_credential.role=='Administrator'}">
    <td colspan="11" class="rounded-foot-left style2 style1"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
	
	  <c:if test="${user_credential.role=='Pegawai'}">
    <td colspan="10" class="rounded-foot-left"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td><span class="style3">${status.count}</span></td>
      <td><span class="style3">${item.nip}</span></td>
      <td><span class="style3">${item.nama_diklat}</span></td>
      <td><span class="style3">${item.tempat}</span></td>
      <td><span class="style3">${item.penyelenggara}</span></td>
      <td><span class="style3">${item.tgl_mulai}</span></td>
      <td><span class="style3">${item.tgl_selesai}</span></td>
      <td><span class="style3">${item.no_sttpl}</span></td>
      <td><span class="style3">${item.tgl_sttpl}</span></td>
      <td><span class="style3">${item.jumlah_jam}</span></td>
	    <c:if test="${user_credential.role=='Administrator'}">
      <td>
         <span class="style5"><a href="<%=Config.base_url%>index/Diklat/input/${item.iddiklat}">UUBAH</a>
         <a href="<%=Config.base_url%>index/Diklat/delete/${item.iddiklat}" class="style6" onClick="return confirm('Apakah Anda yakin?');">HAPUS</a> </span></td>
	  </c:if>
    </tr>
  </c:forEach>
</tbody>
</table>

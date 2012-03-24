<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<style type="text/css">
<!--
.style1 {font-size: 14px}
.style2 {font-weight: bold}
.style5 {font-weight: bold; font-family: Georgia, "Times New Roman", Times, serif; }
.style8 {color: #000066}
.style10 {font-family: Arial, Helvetica, sans-serif}
.style12 {font-weight: bold; font-family: Arial, Helvetica, sans-serif; font-size: 14; }
-->
</style>

<c:if test="${user_credential.role=='Administrator'}">
  <span class="style1">
  <span class="style"><a href="<%=Config.base_url%>index/Anak/input/-1">Tambah Data</a> |</span></span></c:if>
 <span class="style1"><a href="<%=Config.base_url%>index/Anak/print/print" target="_blank">Cetak</a> | <a href="<%=Config.base_url%>index/Anak/print/download" >Download</a> </span>
 <table width="100%" id="rounded-corner">
<thead>
  <tr>
  
  <th class="rounded-company style4" scope="col">No</th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Nip</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Anak Ke</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Nama Anak</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Status Anak</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Tempat Lahir</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Tgl Lahir</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Jenis Kelamin</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Pendidikan</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Pekerjaan</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Status Tunjangan</p></th>
  <c:if test="${user_credential.role=='Administrator'}">
  <th class=" style6 style4 rounded-q4" scope="col"><p align="center"></p>Aksi</th>
  </c:if>
  </tr>
</thead>
<tfoot>
  <tr>
  <c:if test="${user_credential.role=='Administrator'}">
    <td colspan="11" class="rounded-foot-left style2"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
	
	 <c:if test="${user_credential.role=='Pegawai'}">
    <td colspan="11" class="rounded-foot-left style2"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
    </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
		<td><span class="style4">${status.count}</span></p></td>
	
      
      <td><span class="style4">${item.nip}</span></p></td>
      <td><span class="style4">${item.anak_ke}</span></p></td>
      <td><span class="style4">${item.nama_anak}</span></p></td>
      <td><span class="style4">${item.status_anak}</span></p></td>
      <td><span class="style4">${item.tempat_lahir}</span></p></td>
      <td><span class="style4">${item.tgl_lahir}</span></p></td>
      <td><span class="style4">${item.jenis_kelamin}</span></p></td>
      <td><span class="style4">${item.pendidikan}</span></p></td>
      <td><span class="style4">${item.pekerjaan}</span></p></td>
      <td><span class="style4">${item.status_tunjangan}</span></p></td>
  <c:if test="${user_credential.role=='Administrator'}">
      <td><span class="style9">
         <span class="style11">
         <a href="<%=Config.base_url%>index/Anak/input/${item.idanak}" class="style8">UBAH</a>
         <a href="<%=Config.base_url%>index/Anak/delete/${item.idanak}" class="style8" onClick="return confirm('Apakah Anda yakin?');">HAPUS</a> </span></td>
	  </c:if>
    </tr>
  </c:forEach>
</tbody>
</table>

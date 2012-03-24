<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<style type="text/css">
<!--
.style1 {font-weight: bold}
.style2 {font-family: Georgia, "Times New Roman", Times, serif}
.style3 {font-size: 14px}
.style4 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 14px;
	font-weight: bold;
}
.style6 {color: #FF0000}
.style7 {font-family: Arial, Helvetica, sans-serif}
.style8 {font-size: 14px; font-family: Arial, Helvetica, sans-serif; }
-->
</style>

<c:if test="${user_credential.role=='Administrator'}">
  <span class="style1"><span class="style2"><span class="style3"><a href="<%=Config.base_url%>index/Prajabatan/input/-1">Tambah Data</a> | </span></span></span></c:if>
<span class="style4"><a href="<%=Config.base_url%>index/Prajabatan/print/print" target="_blank">Cetak</a> |
<a href="<%=Config.base_url%>index/Prajabatan/print/download">Download</a></span>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th class="rounded-company style3 style7" scope="col">No.</th>
  <th class="rounded-q1 style3 style7" scope="col">Nip</th>
  <th class="rounded-q1 style3 style7" scope="col">Jenis Prajabatan</th>
  <th class="rounded-q1 style3 style7" scope="col">Tempat</th>
  <th class="rounded-q1 style3 style7" scope="col">Penyelenggara</th>
  <th class="rounded-q1 style3 style7" scope="col">Tgl Pelaksanaan</th>
  <th class="rounded-q1 style3 style7" scope="col">No Sttpl</th>
  <th class="rounded-q1 style3 style7" scope="col">Tgl Sttpl</th>
  <c:if test="${user_credential.role=='Administrator'}">
  <th class="rounded-q4 style3 style7" scope="col">Aksi</th>
  </c:if>
  </tr>
</thead>
<tfoot>
  <tr>
  <c:if test="${user_credential.role=='Administrator'}">
    <td colspan="9" class="rounded-foot-left style3 style7"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
	
	 <c:if test="${user_credential.role=='Pegawai'}">
    <td colspan="8" class="rounded-foot-left style2 style3"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td><span class="style8">${status.count}</span></td>
	  <td><span class="style8">${item.nip}</span></td>
      <td><span class="style8">${item.jenis_prajabatan}</span></td>
      <td><span class="style8">${item.tempat}</span></td>
      <td><span class="style8">${item.penyelenggara}</span></td>
      <td><span class="style8">${item.tgl_pelaksanaan}</span></td>
      <td><span class="style8">${item.no_sttpl}</span></td>
      <td><span class="style8">${item.tgl_sttpl}</span></td>
	  <c:if test="${user_credential.role=='Administrator'}">
      <td>
         <span class="style8"><a href="<%=Config.base_url%>index/Prajabatan/input/${item.idprajabatan}">UBAH</a>
         <a href="<%=Config.base_url%>index/Prajabatan/delete/${item.idprajabatan}" class="style6" onClick="return confirm('Apakah Anda yakin?');">HAPUS</a> </span></td>
	  </c:if>
    </tr>
  </c:forEach>
</tbody>
</table>

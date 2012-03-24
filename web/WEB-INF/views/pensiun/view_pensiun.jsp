<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<style type="text/css">
<!--
.style1 {font-family: Georgia, "Times New Roman", Times, serif}
.style2 {font-size: 14px}
.style3 {font-size: 14px; font-family: Georgia, "Times New Roman", Times, serif; }
.style5 {font-size: 14px; font-family: Georgia, "Times New Roman", Times, serif; font-weight: bold; }
.style6 {color: #FF0000}
-->
</style>

  <c:if test="${user_credential.role=='Administrator'}">
    <span class="style4">
	<a href="<%=Config.base_url%>index/Pensiun/input/-1">Tambah Data</a> | </span></c:if> 
  <span class="style4"><a href="<%=Config.base_url%>index/Pensiun/print/print">Cetak</a> |  <a href="<%=Config.base_url%>index/Pensiun/print/download">Download</a></span>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th class="rounded-company style4" scope="col">No.</th>
  <th class="rounded-q1 style4" scope="col">Nip</th>
  <th class="rounded-q1 styLE4" scope="col">Sk Pensiun</th>
  <th class="rounded-q1 style4" scope="col">Tmt Pensiun</th>
  <th class="rounded-q1 style4" scope="col">Alasan Pensiun</th>
   <c:if test="${user_credential.role=='Administrator'}">
  <th class="rounded-q4 style4" scope="col">Aksi</th>
  </c:if>
  </tr>
</thead>
<tfoot>
  <tr>
    <c:if test="${user_credential.role=='Administrator'}">
    <td colspan="6" class="rounded-foot-left style2 style1"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
	
	   <c:if test="${user_credential.role=='Pegawai'}">
    <td colspan="5" class="rounded-foot-left"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td><span class="style3">${status.count}</span></td>
      <td><span class="style3">${item.nip}</span></td>
      <td><span class="style3">${item.sk_pensiun}</span></td>
      <td><span class="style3">${item.tmt_pensiun}</span></td>
      <td><span class="style3">${item.alasan_pensiun}</span></td>
	   <c:if test="${user_credential.role=='Administrator'}">
      <td>
         <p class="style6 style11"><a href="<%=Config.base_url%>index/Pensiun/input/${item.idpensiun}">UBAH</a></p>
         <p class="style6 style11">  <a href="<%=Config.base_url%>index/Pensiun/delete/${item.idpensiun}" class="style6" onClick="return        confirm('Apakah Anda yakin?');">HAPUS</a> </p></td>
	  </c:if>
    </tr>
  </c:forEach>
</tbody>
</table>

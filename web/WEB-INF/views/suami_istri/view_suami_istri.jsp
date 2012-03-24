<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<style type="text/css">
<!--
.style2 {font-size: 14px}
.style5 {font-size: 14px; font-weight: bold; }
.style6 {color: #FF0000}
.style10 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
}
-->
</style>

  <c:if test="${user_credential.role=='Administrator'}">
  
  <span class="style10"><a href="<%=Config.base_url%>index/SuamiIstri/input/-1">Tambah Data</a> |
  </c:if>
  </span>  <span class="style10"><a href="<%=Config.base_url%>index/SuamiIstri/print/print" target="_blank">Cetak</a> |<a href="<%=Config.base_url%>  index/SuamiIstri/print/download">Download</a></span> 
  
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th class="rounded-company style2" scope="col">No.</th>
  <th class="rounded-q1 style2" scope="col">Nip</th>
  <th class="rounded-q1 style2" scope="col">Nama Suami Istri</th>
  <th class="rounded-q1 style2" scope="col">Tempat Lahir</th>
  <th class="rounded-q1 style2" scope="col">Tgl Lahir</th>
  <th class="rounded-q1 style2" scope="col">Status Suami Istri</th>
  <th class="rounded-q1 style2" scope="col">Pekerjaan</th>
  <th class="rounded-q1 style2" scope="col">Status Tunjangan</th>
  <th class="rounded-q1 style2" scope="col">Tgl Menikah</th>
    <c:if test="${user_credential.role=='Administrator'}">
  <th class="rounded-q4 style2" scope="col">Aksi</th>
  </c:if>
  </tr>
</thead>
<tfoot>
  <tr>
    <c:if test="${user_credential.role=='Administrator'}">
    <td colspan="10" class="rounded-foot-left style2"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
	
	 <c:if test="${user_credential.role=='Pegawai'}">
    <td colspan="9" class="rounded-foot-left style2"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td class="style3">${status.count}</td>
      <td class="style3">${item.nip}</td>
      <td class="style3">${item.nama_suami_istri}</td>
      <td class="style3">${item.tempat_lahir}</td>
      <td class="style3">${item.tgl_lahir}</td>
      <td class="style3">${item.status_suami_istri}</td>
      <td class="style3">${item.pekerjaan}</td>
      <td class="style3">${item.status_tunjangan}</td>
      <td class="style3">${item.tgl_menikah}</td>
	      <c:if test="${user_credential.role=='Administrator'}">
      <td>
         <span class="style5"><a href="<%=Config.base_url%>index/SuamiIstri/input/${item.idsuami_istri}">UBAH</a>
         <a href="<%=Config.base_url%>index/SuamiIstri/delete/${item.idsuami_istri}" class="style6" onClick="return confirm('Apakah Anda yakin?');">HAPUS</a> </span></td>
	  </c:if>
    </tr>
  </c:forEach>
</tbody>
</table>

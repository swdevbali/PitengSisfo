<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<style type="text/css">
<!--
.Style10 {font-family: Georgia, "Times New Roman", Times, serif}
.style2 {font-size: 14px}
.style3 {font-size: 14px; font-family: Georgia, "Times New Roman", Times, serif; }
.style5 {font-size: 14px; font-family: Georgia, "Times New Roman", Times, serif; font-weight: bold; }
.style6 {color: #FF0000}
-->
</style>

     <c:if test="${user_credential.role=='Administrator'}">
	 <td>       <strong><a href="<%=Config.base_url%>index/Pendidikan/input/-1">Tambah Data</a> | 
      
         <a href="<%=Config.base_url%>index/Pendidikan/print/print" target="_blank">Cetak</a> |
         <a href="<%=Config.base_url%>index/Pendidikan/print/download">Download</a></strong>  
       </c:if>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th class="rounded-company style2 Style10" scope="col">No.</th>
  <th class="rounded-q1 style2 Style10" scope="col">Nip</th>
  <th class="rounded-q1 style2 Style10" scope="col">Jenjang Pendidikan</th>
  <th class="rounded-q1 style2 Style10" scope="col">Nama Pendidikan</th>
  <th class="rounded-q1 style2 Style10" scope="col">Fakultas</th>
  <th class="rounded-q1 style2 Style10" scope="col">Jurusan</th>
  <th class="rounded-q1 style2 Style10" scope="col">No Ijazah Sttb</th>
  <th class="rounded-q1 style2 Style10" scope="col">Tgl Ijazah Sttb</th>
       <c:if test="${user_credential.role=='Administrator'}">
  <th class="rounded-q4 style2 Style10" scope="col">Aksi</th>
  </c:if>
  </tr>
</thead>
<tfoot>
  <tr>
       <c:if test="${user_credential.role=='Administrator'}">
    <td colspan="10" class="rounded-foot-left style2 Style10"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
	
	    <c:if test="${user_credential.role=='Pegawai'}">
    <td colspan="9" class="rounded-foot-left style2 Style10"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td class="style3">${status.count}</td>
      <td class="style3">${item.nip}</td>
      <td class="style3">${item.jenjang_pendidikan}</td>
      <td class="style3">${item.nama_pendidikan}</td>
      <td class="style3">${item.fakultas}</td>
      <td class="style3">${item.jurusan}</td>
      <td class="style3">${item.no_ijazah_sttb}</td>
      <td class="style3">${item.tgl_ijazah_sttb}</td>
	       <c:if test="${user_credential.role=='Administrator'}">
      <td>
         <span class="style5"><a href="<%=Config.base_url%>index/Pendidikan/input/${item.idpendidikan}">UBAH</a>
         <a href="<%=Config.base_url%>index/Pendidikan/delete/${item.idpendidikan}" class="style6" onClick="return confirm('Apakah Anda yakin?');">HAPUS</a> </span></td>
	  </c:if>
    </tr>
  </c:forEach>
</tbody>
</table>
	 
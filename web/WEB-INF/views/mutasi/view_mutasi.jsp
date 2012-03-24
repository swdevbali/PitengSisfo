<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<style type="text/css">
<!--
.style10 {font-family: Arial, Helvetica, sans-serif}
.style2 {font-size: 14px}
.style3 {font-family: Arial, Helvetica, sans-serif; font-size: 14px; }
-->
</style>

 <c:if test="${user_credential.role=='Administrator'}">
   <span class="style10"><a href="<%=Config.base_url%>index/Mutasi/input/-1">Tambah Data</a> | </span></c:if>
 <span class="style10"><a href="<%=Config.base_url%>index/Mutasi/print/print" target="_blank">Cetak</a> |
 <a href="<%=Config.base_url%>index/Mutasi/print/download">Download</a></span>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th scope="col" class="rounded-company">No.</th>
  <th scope="col" class="rounded-q1">Nip</th>
  <th scope="col" class="rounded-q1">No Sk Mutasi</th>
  <th scope="col" class="rounded-q1">Tmt Mutasi</th>
  <th scope="col" class="rounded-q1">Tujuan Mutasi</th>
  <th scope="col" class="rounded-q1">Jenis Mutasi</th>
  <th scope="col" class="rounded-q1">Pejabat Berwenang</th>
  <th scope="col" class="rounded-q1">Tempat Mutasi</th>
  <th scope="col" class="rounded-q1">Tgl Mutasi</th>
   <c:if test="${user_credential.role=='Administrator'}">
  <th scope="col" class="rounded-q4">Aksi</th>
  </c:if>
  </tr>
</thead>
<tfoot>
  <tr>
  <c:if test="${user_credential.role=='Administrator'}">
    <td colspan="10" class="rounded-foot-left"><%=Pagination.createLinks(pagenum)%></td>
 </c:if>
 
   <c:if test="${user_credential.role=='Pegawai'}">
    <td colspan="9" class="rounded-foot-left"><%=Pagination.createLinks(pagenum)%></td>
 </c:if>
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td><span class="style3">${status.count}</span></td>
      <td><span class="style3">${item.nip}</span></td>
      <td><span class="style3">${item.no_sk_mutasi}</span></td>
      <td><span class="style3">${item.tmt_mutasi}</span></td>
      <td><span class="style3">${item.tujuan_mutasi}</span></td>
      <td><span class="style3">${item.jenis_mutasi}</span></td>
      <td><span class="style3">${item.pejabat_berwenang}</span></td>
      <td><span class="style3">${item.tempat_mutasi}</span></td>
      <td><span class="style3">${item.tgl_mutasi}</span></td>
	   <c:if test="${user_credential.role=='Administrator'}">
      <td>
         <a href="<%=Config.base_url%>index/Mutasi/input/${item.idmutasi}">Ubah</a>
         <a href="<%=Config.base_url%>index/Mutasi/delete/${item.idmutasi}" onClick="return confirm('Apakah Anda yakin?');">Hapus</a>      </td>
	  </c:if>
    </tr>
  </c:forEach>
</tbody>
</table>

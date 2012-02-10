<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
  <c:if test="${user_credential.role=='Administrator'}">
<a href="<%=Config.base_url%>index/Pensiun/input/-1">Tambah Data</a> | </c:if> <a href="<%=Config.base_url%>index/Pensiun/print">Cetak</a>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th scope="col" class="rounded-company">No.</th>
  <th scope="col" class="rounded-q1">Nip</th>
  <th scope="col" class="rounded-q1">Sk Pensiun</th>
  <th scope="col" class="rounded-q1">Tmt Pensiun</th>
  <th scope="col" class="rounded-q1">Alasan Pensiun</th>
   <c:if test="${user_credential.role=='Administrator'}">
  <th scope="col" class="rounded-q4">Aksi</th>
  </c:if>
  </tr>
</thead>
<tfoot>
  <tr>
    <c:if test="${user_credential.role=='Administrator'}">
    <td colspan="6" class="rounded-foot-left"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
	
	   <c:if test="${user_credential.role=='Pegawai'}">
    <td colspan="5" class="rounded-foot-left"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
  
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td>${status.count}</td>
      <td>${item.nip}</td>
      <td>${item.sk_pensiun}</td>
      <td>${item.tmt_pensiun}</td>
      <td>${item.alasan_pensiun}</td>
	   <c:if test="${user_credential.role=='Administrator'}">
      <td>
         <a href="<%=Config.base_url%>index/Pensiun/input/${item.idpensiun}">Ubah</a>
         <a href="<%=Config.base_url%>index/Pensiun/delete/${item.idpensiun}" onClick="return confirm('Apakah Anda yakin?');">Hapus</a>
      </td>
	  </c:if>
    </tr>
  </c:forEach>
</tbody>
</table>

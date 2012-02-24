<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<c:if test="${user_credential.role=='Administrator'}">
<a href="<%=Config.base_url%>index/Anak/input/-1">Tambah Data</a> |
</c:if>
 <a href="<%=Config.base_url%>index/Anak/print/print" target="_blank">Cetak</a> | <a href="<%=Config.base_url%>index/Anak/print/download" >Download</a>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th scope="col" class="rounded-company">No.</th>
  <th scope="col" class="rounded-q1">Nip</th>
  <th scope="col" class="rounded-q1">Anak Ke</th>
  <th scope="col" class="rounded-q1">Nama Anak</th>
  <th scope="col" class="rounded-q1">Status Anak</th>
  <th scope="col" class="rounded-q1">Tempat Lahir</th>
  <th scope="col" class="rounded-q1">Tgl Lahir</th>
  <th scope="col" class="rounded-q1">Jenis Kelamin</th>
  <th scope="col" class="rounded-q1">Pendidikan</th>
  <th scope="col" class="rounded-q1">Pekerjaan</th>
  <th scope="col" class="rounded-q1">Status Tunjangan</th>
  <c:if test="${user_credential.role=='Administrator'}">
  <th scope="col" class="rounded-q4">Aksi</th>
  </c:if>
  </tr>
</thead>
<tfoot>
  <tr>
  <c:if test="${user_credential.role=='Administrator'}">
    <td colspan="12" class="rounded-foot-left"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
	
	 <c:if test="${user_credential.role=='Pegawai'}">
    <td colspan="11" class="rounded-foot-left"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
	  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td>${status.count}</td>
      <td>${item.nip}</td>
      <td>${item.anak_ke}</td>
      <td>${item.nama_anak}</td>
      <td>${item.status_anak}</td>
      <td>${item.tempat_lahir}</td>
      <td>${item.tgl_lahir}</td>
      <td>${item.jenis_kelamin}</td>
      <td>${item.pendidikan}</td>
      <td>${item.pekerjaan}</td>
      <td>${item.status_tunjangan}</td>
	  <c:if test="${user_credential.role=='Administrator'}">
      <td>
         <a href="<%=Config.base_url%>index/Anak/input/${item.idanak}">Ubah</a>
         <a href="<%=Config.base_url%>index/Anak/delete/${item.idanak}" onClick="return confirm('Apakah Anda yakin?');">Hapus</a>
      </td>
	  </c:if>
    </tr>
  </c:forEach>
</tbody>
</table>

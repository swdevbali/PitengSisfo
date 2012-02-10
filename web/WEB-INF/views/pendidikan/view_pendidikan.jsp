<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
     <c:if test="${user_credential.role=='Administrator'}">
<a href="<%=Config.base_url%>index/Pendidikan/input/-1">Tambah Data</a> | </c:if>
<a href="<%=Config.base_url%>index/Pendidikan/print">Cetak</a>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th scope="col" class="rounded-company">No.</th>
  <th scope="col" class="rounded-q1">Nip</th>
  <th scope="col" class="rounded-q1">Jenjang Pendidikan</th>
  <th scope="col" class="rounded-q1">Nama Pendidikan</th>
  <th scope="col" class="rounded-q1">Fakultas</th>
  <th scope="col" class="rounded-q1">Jurusan</th>
  <th scope="col" class="rounded-q1">No Ijazah Sttb</th>
  <th scope="col" class="rounded-q1">Tgl Ijazah Sttb</th>
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
      <td>${status.count}</td>
      <td>${item.nip}</td>
      <td>${item.jenjang_pendidikan}</td>
      <td>${item.nama_pendidikan}</td>
      <td>${item.fakultas}</td>
      <td>${item.jurusan}</td>
      <td>${item.no_ijazah_sttb}</td>
      <td>${item.tgl_ijazah_sttb}</td>
	       <c:if test="${user_credential.role=='Administrator'}">
      <td>
         <a href="<%=Config.base_url%>index/Pendidikan/input/${item.idpendidikan}">Ubah</a>
         <a href="<%=Config.base_url%>index/Pendidikan/delete/${item.idpendidikan}" onClick="return confirm('Apakah Anda yakin?');">Hapus</a>
      </td>
	  </c:if>
    </tr>
  </c:forEach>
</tbody>
</table>

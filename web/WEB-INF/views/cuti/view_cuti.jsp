<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
 <c:if test="${user_credential.role=='Administrator'}">
<a href="<%=Config.base_url%>index/Cuti/input/-1">Tambah Data</a> |
</c:if>
<a href="<%=Config.base_url%>index/Cuti/print/print" target="_blank">Cetak</a> |
<a href="<%=Config.base_url%>index/Cuti/print/download" >Download</a>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th scope="col" class="rounded-company">No.</th>
  <th scope="col" class="rounded-q1">Nip</th>
  <th scope="col" class="rounded-q1">Jenis Cuti</th>
  <th scope="col" class="rounded-q1">No Surat Ijin Cuti</th>
  <th scope="col" class="rounded-q1">Tgl Surat Ijin Cuti</th>
  <th scope="col" class="rounded-q1">Tgl Awal Cuti</th>
  <th scope="col" class="rounded-q1">Tgl Akhir Cuti</th>
  <th scope="col" class="rounded-q1">Pejabat Berwenang</th>
   <c:if test="${user_credential.role=='Administrator'}">
  <th scope="col" class="rounded-q4">Aksi</th>
  </c:if>
  </tr>
</thead>
<tfoot>
  <tr>
   <c:if test="${user_credential.role=='Administrator'}">
    <td colspan="9" class="rounded-foot-left"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
	
	 <c:if test="${user_credential.role=='Pegawai'}">
    <td colspan="8" class="rounded-foot-left"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
    
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td>${status.count}</td>
      <td>${item.nip}</td>
      <td>${item.jenis_cuti}</td>
      <td>${item.no_surat_ijin_cuti}</td>
      <td>${item.tgl_surat_ijin_cuti}</td>
      <td>${item.tgl_awal_cuti}</td>
      <td>${item.tgl_akhir_cuti}</td>
      <td>${item.pejabat_berwenang}</td>
	  <c:if test="${user_credential.role=='Administrator'}">
      <td>
         <a href="<%=Config.base_url%>index/Cuti/input/${item.idcuti}">Ubah</a>
         <a href="<%=Config.base_url%>index/Cuti/delete/${item.idcuti}" onClick="return confirm('Apakah Anda yakin?');">Hapus</a>
      </td>
	  </c:if>
    </tr>
  </c:forEach>
</tbody>
</table>

<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
 <c:if test="${user_credential.role=='Administrator'}">
<a href="<%=Config.base_url%>index/NaikPangkat/input/-1">Tambah Data</a> | </c:if>
<a href="<%=Config.base_url%>index/NaikPangkat/print">Cetak</a>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th scope="col" class="rounded-company">No.</th>
  <th scope="col" class="rounded-q1">Nip</th>
  <th scope="col" class="rounded-q1">Jenis Kenaikan Pangkat</th>
  <th scope="col" class="rounded-q1">Kenaikan Pangkat Pilihan</th>
  <th scope="col" class="rounded-q1">Tmt Pangkat</th>
  <th scope="col" class="rounded-q1">Gaji Pokok</th>
  <th scope="col" class="rounded-q1">No Sk Pangkat</th>
  <th scope="col" class="rounded-q1">Tgl Sk Pangkat</th>
  <th scope="col" class="rounded-q1">Pejabat Berwenang</th>
  <th scope="col" class="rounded-q1">Nama Pangkat</th>
   <c:if test="${user_credential.role=='Administrator'}">
  <th scope="col" class="rounded-q4">Aksi</th>
  </c:if>
  </tr>
</thead>
<tfoot>
  <tr>
     <c:if test="${user_credential.role=='Administrator'}">
    <td colspan="11" class="rounded-foot-left"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
	
	  <c:if test="${user_credential.role=='Pegawai'}">
    <td colspan="10" class="rounded-foot-left"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
   
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td>${status.count}</td>
      <td>${item.nip}</td>
      <td>${item.jenis_kenaikan_pangkat}</td>
      <td>${item.kenaikan_pangkat_pilihan}</td>
      <td>${item.tmt_Pangkat}</td>
      <td>${item.gaji_pokok}</td>
      <td>${item.no_sk_pangkat}</td>
      <td>${item.tgl_sk_pangkat}</td>
      <td>${item.pejabat_berwenang}</td>
      <td>${item.nama_pangkat}</td>
	     <c:if test="${user_credential.role=='Administrator'}">
      <td>
         <a href="<%=Config.base_url%>index/NaikPangkat/input/${item.idpangkat}">Ubah</a>
         <a href="<%=Config.base_url%>index/NaikPangkat/delete/${item.idpangkat}" onClick="return confirm('Apakah Anda yakin?');">Hapus</a>
      </td>
	  </c:if>
    </tr>
  </c:forEach>
</tbody>
</table>

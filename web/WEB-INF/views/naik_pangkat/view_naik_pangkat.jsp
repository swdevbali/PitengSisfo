<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<style type="text/css">
<!--
.style1 {font-family: Georgia, "Times New Roman", Times, serif}
.style4 {font-family: Georgia, "Times New Roman", Times, serif; font-size: 14px; }
.style6 {font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-weight: bold; }
.style7 {color: #FF0000}
-->
</style>

 <c:if test="${user_credential.role=='Administrator'}">
   <span class="style1"><a href="<%=Config.base_url%>index/NaikPangkat/input/-1">Tambah Data</a> | </span></c:if>
 <span class="style1"><a href="<%=Config.base_url%>index/NaikPangkat/print/print" target="_blank">Cetak</a> |
 <a href="<%=Config.base_url%>index/NaikPangkat/print/download">Download</a></span> 
<table width="130%" id="rounded-corner">
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
      <td><div align="center"><span class="style4">${status.count}</span></div></td>
      <td><div align="center"><span class="style4">${item.nip}</span></div></td>
      <td><div align="center"><span class="style4">${item.jenis_kenaikan_pangkat}</span></div></td>
      <td><div align="center"><span class="style4">${item.kenaikan_pangkat_pilihan}</span></div></td>
      <td><div align="center"><span class="style4">${item.tmt_Pangkat}</span></div></td>
      <td><div align="center"><span class="style4">${item.gaji_pokok}</span></div></td>
      <td><div align="center"><span class="style4">${item.no_sk_pangkat}</span></div></td>
      <td><div align="center"><span class="style4">${item.tgl_sk_pangkat}</span></div></td>
      <td><div align="center"><span class="style4">${item.pejabat_berwenang}</span></div></td>
      <td><div align="center"><span class="style4">${item.nama_pangkat}</span></div></td>
	     <c:if test="${user_credential.role=='Administrator'}">
      <td>
         <div align="center"><span class="style6"><a href="<%=Config.base_url%>index/NaikPangkat/input/${item.idpangkat}">Ubah</a>
           <a href="<%=Config.base_url%>index/NaikPangkat/delete/${item.idpangkat}" class="style7" onClick="return confirm('Apakah Anda yakin?');">Hapus</a> </span></div></td>
	  </c:if>
    </tr>
  </c:forEach>
</tbody>
</table>

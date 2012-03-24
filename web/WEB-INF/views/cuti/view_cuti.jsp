<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<style type="text/css">
<!--
.style1 {font-family: Georgia, "Times New Roman", Times, serif}
.style2 {font-size: 14px}
.style3 {font-family: Georgia, "Times New Roman", Times, serif; font-size: 14px; }
.style5 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>

 <c:if test="${user_credential.role=='Administrator'}">
   <span class="style1"><span class="style2"><a href="<%=Config.base_url%>index/Cuti/input/-1">Tambah Data</a> |</span></span></c:if>
 <span class="style3"><a href="<%=Config.base_url%>index/Cuti/print/print" target="_blank">Cetak</a> |
 <a href="<%=Config.base_url%>index/Cuti/print/download" >Download</a> </span>
 <table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th class="rounded-company style1 style2" scope="col">No.</th>
  <th class="rounded-q1 style1 style2" scope="col">Nip</th>
  <th class="rounded-q1 style1 style2" scope="col">Jenis Cuti</th>
  <th class="rounded-q1 style1 style2" scope="col">No Surat Ijin Cuti</th>
  <th class="rounded-q1 style1 style2" scope="col">Tgl Surat Ijin Cuti</th>
  <th class="rounded-q1 style1 style2" scope="col">Tgl Awal Cuti</th>
  <th class="rounded-q1 style1 style2" scope="col">Tgl Akhir Cuti</th>
  <th class="rounded-q1 style1 style2" scope="col">Pejabat Berwenang</th>
   <c:if test="${user_credential.role=='Administrator'}">
  <th class="rounded-q4 style1 style2" scope="col">Aksi</th>
  </c:if>
  </tr>
</thead>
<tfoot>
  <tr>
   <c:if test="${user_credential.role=='Administrator'}">
    <td colspan="9" class="rounded-foot-left style1 style2"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
	
	 <c:if test="${user_credential.role=='Pegawai'}">
    <td colspan="8" class="rounded-foot-left style1 style2"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td><span class="style3">${status.count}</span></td>
      <td><span class="style3">${item.nip}</span></td>
      <td><span class="style3">${item.jenis_cuti}</span></td>
      <td><span class="style3">${item.no_surat_ijin_cuti}</span></td>
      <td><span class="style3">${item.tgl_surat_ijin_cuti}</span></td>
      <td><span class="style3">${item.tgl_awal_cuti}</span></td>
      <td><span class="style3">${item.tgl_akhir_cuti}</span></td>
      <td><span class="style3">${item.pejabat_berwenang}</span></td>
	  <c:if test="${user_credential.role=='Administrator'}">
      <td>
         <span class="style3"><a href="<%=Config.base_url%>index/Cuti/input/${item.idcuti}"><strong>Ubah</strong></a>
         <a href="<%=Config.base_url%>index/Cuti/delete/${item.idcuti}" class="style5" onClick="return confirm('Apakah Anda yakin?');">Hapus</a> </span></td>
	  </c:if>
    </tr>
  </c:forEach>
</tbody>
</table>

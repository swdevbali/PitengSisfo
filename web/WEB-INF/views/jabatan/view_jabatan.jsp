<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<style type="text/css">
<!--
.style2 {font-family: Georgia, "Times New Roman", Times, serif}
.style5 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-weight: bold;
	font-size: 18px;
}
.style6 {color: #FF0000}
.style8 {font-size: 14px; font-family: Arial, Helvetica, sans-serif; }
-->
</style>

<c:if test="${user_credential.role=='Administrator'}">
   <span class="style5">
   <a href="<%=Config.base_url%>index/Jabatan/input/-1">Tambah Data</a> |</span></c:if>
   <span class="style5">
       <a href="<%=Config.base_url%>index/Jabatan/print/print" target="_blank">Cetak</a> |</span>
   <span class="style5">
   <a href="<%=Config.base_url%>index/Jabatan/print/download">Download</a></span>
   
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th class="rounded-company style2" scope="col">No.</th>
  <th class="rounded-company style2" scope="col">Nip</th>
  <th class="rounded-company style2" scope="col">Nama Jabatan</th>
  <th class="rounded-company style2" scope="col">Jenis Jabatan</th>
  <th class="rounded-company style2" scope="col">Eselon</th>
  <th class="rounded-company style2" scope="col">Unit Kerja</th>
  <th class="rounded-company style2" scope="col">Kode Sub Unit Kerja</th>
  <th class="rounded-company style2" scope="col">Tmt Jabatan</th>
  <th class="rounded-company style2" scope="col">No Sk Jabatan</th>
  <th class="rounded-company style2" scope="col">No Surat Pelantikan</th>
 
  <th class="rounded-company style2" scope="col">Pejabat Berwenang</th>
  <th class="rounded-company style2" scope="col">Kode Bagian Unit Kerja</th>
  <c:if test="${user_credential.role=='Administrator'}">
  <th class="rounded-company style2" scope="col">Aksi</th>
  </c:if>
  </tr>
</thead>
<tfoot>
  <tr>
  <c:if test="${user_credential.role=='Administrator'}">
    <td colspan="16" class="rounded-foot-left style2"><%=Pagination.createLinks(pagenum)%></td>
  </c:if>
	 <c:if test="${user_credential.role=='Pegawai'}">
    <td colspan="16" class="rounded-foot-left style2"><%=Pagination.createLinks(pagenum)%></td>
	</c:if>
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td><span class="style8">${status.count}</span></td>
      <td><span class="style8">${item.nip}</span></td>
      <td><span class="style8">${item.nama_jabatan}</span></td>
      <td><span class="style8">${item.jenis_Jabatan}</span></td>
      <td><span class="style8">${item.eselon}</span></td>
      <td><span class="style8">${item.unit_kerja}</span></td>
      <td><span class="style8">${item.kode_sub_unit_kerja}</span></td>
      <td><span class="style8">${item.tmt_jabatan}</span></td>
      <td><span class="style8">${item.no_sk_jabatan}</span></td>
      <td><span class="style8">${item.no_surat_pelantikan}</span></td>
      
      <td><span class="style8">${item.pejabat_berwenang}</span></td>
      <td><span class="style8">${item.kode_bagian_unit_kerja}</span></td>
	    <c:if test="${user_credential.role=='Administrator'}">
      <td>
         <span class="style5">
         <a href="<%=Config.base_url%>index/Jabatan/input/${item.idjabatan}">UBAH</a>
         <a href="<%=Config.base_url%>index/Jabatan/delete/${item.idjabatan}" class="style6" onClick="return confirm('Apakah Anda yakin?');">HAPUS</a> </span></td>
	  </c:if>
    </tr>
  </c:forEach>
</tbody>
</table>

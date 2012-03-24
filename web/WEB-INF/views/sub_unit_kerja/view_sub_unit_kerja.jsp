<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<style type="text/css">
<!--
.style1 {font-family: Georgia, "Times New Roman", Times, serif}
.style3 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-weight: bold;
	font-size: 14px;
}
.style4 {color: #FF0000}
.style5 {font-size: 14px}
.style6 {font-family: Georgia, "Times New Roman", Times, serif; font-size: 14px; }
-->
</style>


<span class="style6"><a href="<%=Config.base_url%>index/SubUnitKerja/input/-1">Tambah Data</a>||</span>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th class="rounded-company style1 style5" scope="col">No.</th>
  <th class="rounded-q1 style1 style5" scope="col">Kode Sub Unit Kerja</th>
  <th class="rounded-q1 style1 style5" scope="col">Sub Unit Kerja</th>
  <th class="rounded-q1 style1 style5" scope="col">Kode Bagian Unit Kerja</th>
  <th class="rounded-q4 style1 style5" scope="col">Aksi</th>
  </tr>
</thead>
<tfoot>
  <tr>
    <td colspan="4" class="rounded-foot-left style1 style5"><%=Pagination.createLinks(pagenum)%></td>
    <td class="rounded-foot-right style1 style5">&nbsp;</td>
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td><span class="style6">${status.count}</span></td>
      <td><span class="style6">${item.kode_sub_unit_kerja}</span></td>
      <td><span class="style6">${item.sub_unit_kerja}</span></td>
      <td><span class="style6">${item.kode_bagian_unit_kerja}</span></td>
      <td>
         <span class="style3"><a href="<%=Config.base_url%>index/SubUnitKerja/input/${item.kode_sub_unit_kerja}">Ubah</a>
        <a href="<%=Config.base_url%>index/SubUnitKerja/delete/${item.kode_sub_unit_kerja}" class="style4" onClick="return confirm('Apakah Anda yakin?');">Hapus</a>         </span></td>
    </tr>
  </c:forEach>
</tbody>
</table>

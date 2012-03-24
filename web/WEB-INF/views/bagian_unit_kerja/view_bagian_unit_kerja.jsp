<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<style type="text/css">
<!--
.style1 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 14px;
	font-weight: bold;
}
.style2 {font-size: 14px}
.style4 {
	color: #0000FF;
	font-weight: bold;
}
.style5 {
	color: #FF0000;
	font-weight: bold;
}
.style7 {font-size: 14px; font-family: Georgia, "Times New Roman", Times, serif; }
.style8 {font-family: Georgia, "Times New Roman", Times, serif}
-->
</style>

<span class="style4">
<a href="<%=Config.base_url%>index/BagianUnitKerja/input/-1">Tambah Data</a>
|| <a href="<%=Config.base_url%>index/BagianUnitKerja/print">Cetak</a></span>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th class="style2 rounded-company style8" scope="col">No.</th>
  <th class="style2 rounded-q1 style8" scope="col">Kode Bagian Unit Kerja</th>
  <th class="style2 rounded-q1 style8" scope="col">Bagian Unit Kerja</th>
  <th class="style2 rounded-q4 style8" scope="col">Aksi</th>
  </tr>
</thead>
<tfoot>
  <tr>
    <td colspan="3" class="style2 rounded-foot-left"><%=Pagination.createLinks(pagenum)%></td>
    <td class="style2 rounded-foot-right">&nbsp;</td>
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td><span class="style7">${status.count}</span></td>
      <td><span class="style7">${item.kode_bagian_unit_kerja}</span></td>
      <td><span class="style7">${item.bagian_unit_kerja}</span></td>
      <td>
         <span class="style7"><a href="<%=Config.base_url%>index/BagianUnitKerja/input/${item.kode_bagian_unit_kerja}" class="style4">Ubah</a>
        <a href="<%=Config.base_url%>index/BagianUnitKerja/delete/${item.kode_bagian_unit_kerja}" class="style5" onClick="return confirm('Apakah Anda yakin?');">Hapus</a>         </span></td>
    </tr>
  </c:forEach>
</tbody>
</table>

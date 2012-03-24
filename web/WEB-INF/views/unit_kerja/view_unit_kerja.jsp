<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<style type="text/css">
<!--
.style1 {
	font-size: 14px;
	font-family: Georgia, "Times New Roman", Times, serif;
}
.style2 {font-size: 14px}
.style3 {font-family: Georgia, "Times New Roman", Times, serif}
.style5 {font-size: 14px; font-family: Georgia, "Times New Roman", Times, serif; font-weight: bold; }
.style6 {color: #FF0000}
-->
</style>

	<span class="style1"><a href="<%=Config.base_url%>index/UnitKerja/input/-1">Tambah Data</a>|| 
	</c:if>
	</span>
	<table width="100%" align="center" id="rounded-corner">
<thead>
  <tr>
  <th class="rounded-company style2 style3" scope="col">No.</th>
  <th class="rounded-q1 style2 style3" scope="col">Nama Unit Kerja</th>
  <th class="rounded-q4 style2 style3" scope="col">Aksi</th>
  </tr>
</thead>
<tfoot>
  <tr>
    <td colspan="3" class="rounded-foot-left style2 style3"><%=Pagination.createLinks(pagenum)%></td>
    <td class="rounded-foot-right">&nbsp;</td>
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td><span class="style1">${status.count}</span></td>
      <td><span class="style1">${item.Nama_Unit_Kerja}</span></td>
      <td>
         <div align="center"><span class="style5"><a href="<%=Config.base_url%>index/UnitKerja/input/${item.Idunit_Kerja}">Ubah</a>
             <a href="<%=Config.base_url%>index/UnitKerja/delete/${item.Idunit_Kerja}" class="style6" onClick="return confirm('Apakah Anda yakin?');">Hapus</a> </span></div></td>
    </tr>
  </c:forEach>
</tbody>
</table>

<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<style type="text/css">
<!--
.style6 {
	color: #FF0033;
	font-size: 14px;
	font-weight: bold;
}
.style2 {
	color: #0000FF;
	font-size: 14px;
	font-weight: bold;
}
.style3 {font-family: Georgia, "Times New Roman", Times, serif}
.style4 {font-size: 14px}
.style8 {font-family: Georgia, "Times New Roman", Times, serif; font-size: 14px; font-weight: bold; }
-->
</style>

<a href="<%=Config.base_url%>index/Akses/input/-1">Tambah Data</a>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th class="style4 style3 rounded-company" scope="col"><strong>No.</strong></th>
  <th class="style4 style3 rounded-q1" scope="col"><strong>Name</strong></th>
  <th class="style4 style3 rounded-q1" scope="col"><strong>Password</strong></th>
  <th class="style4 style3 rounded-q1" scope="col"><strong>Email</strong></th>
  <th class="style4 style3 rounded-q1" scope="col"><strong>Hak Akses</strong></th>
  <th class="style4 style3 rounded-q4" scope="col"><strong>Aksi</strong></th>
  </tr>
</thead>
<tfoot>
  <tr>
    <td colspan="6" class="style4 style3 rounded-foot-left"><strong><%=Pagination.createLinks(pagenum)%></strong></td>
    <td class="rounded-foot-right">&nbsp;</td>
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td><span class="style8">${status.count}</span></td>
      <td><span class="style8">${item.Name}</span></td>
      <td><span class="style8">${item.Password}</span></td>
      <td><span class="style8">${item.Email}</span></td>
      <td><span class="style8">${item.Hak_Akses}</span></td>
      <td>
         <span class="style8"><a href="<%=Config.base_url%>index/Akses/input/${item.Nip}" class="style2">Ubah</a>
         <a href="<%=Config.base_url%>index/Akses/delete/${item.Nip}" class="style6" onClick="return confirm('Apakah Anda yakin?');">Hapus</a></span> </td>
    </tr>
  </c:forEach>
</tbody>
</table>

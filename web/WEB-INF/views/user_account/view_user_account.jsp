<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<style type="text/css">
<!--
.style1 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 14px;
}
.style2 {font-size: 14px}
.style3 {font-family: Georgia, "Times New Roman", Times, serif}
.style6 {color: #FF0000}
.style14 {font-size: 14px; font-weight: bold; }
body,td,th {
	font-family: Georgia, Times New Roman, Times, serif;
	font-size: 14px;
}
-->
</style>

<span class="style3"><a href="<%=Config.base_url%>index/UserAccount/input/-1">Tambah Data</a>||</span>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
    <th class="rounded-company style4" scope="col"><p align="center">No.</p></th>
    <th class="rounded-q1 style4" scope="col"><p align="center">NIP</p></th>
    <th class="rounded-q1 style4" scope="col"><p align="center">Role</p></th>
    <th class="rounded-q1 style4" scope="col"><p align="center">Username</p></th>
    <th class="style6 style4 rounded-q4" scope="col"><p align="center"><strong>Aksi</strong></p></th>
  </tr>
</thead>
<tfoot>
  <tr>
    <td colspan="4" class="rounded-foot-left style2 style3"><%=Pagination.createLinks(pagenum)%></td>
    <td class="rounded-foot-right style2 style3">&nbsp;</td>
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      
	    <td><span class="style4">${status.count}</span></p></td>
            <td><span class="style4">${item.nip}</span></p></td>
            <td><span class="style4">${item.role}</span></p></td>
            <td><span class="style4">${item.username}</span></p></td>
           
            <td><span class="style9">
                    
        <div align="center"><span class="style5"><a href="<%=Config.base_url%>index/UserAccount/input/${item.nip}">UBAH</a>
           <a href="<%=Config.base_url%>index/UserAccount/delete/${item.nip}" class="style6" onClick="return confirm('Apakah Anda yakin?');">HAPUS</a></span> </div>
      </div></td>
    </tr>
  </c:forEach>
</tbody>
</table>

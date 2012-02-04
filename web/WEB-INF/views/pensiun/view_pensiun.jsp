<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<a href="<%=Config.base_url%>index/Pensiun/input/-1">Tambah Data</a>
|| <a href="<%=Config.base_url%>index/Pensiun/print">Cetak</a>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th scope="col" class="rounded-company">No.</th>
  <th scope="col" class="rounded-q1">Nip</th>
  <th scope="col" class="rounded-q1">Sk Pensiun</th>
  <th scope="col" class="rounded-q1">Tmt Pensiun</th>
  <th scope="col" class="rounded-q1">Alasan Pensiun</th>
  <th scope="col" class="rounded-q4">Aksi</th>
  </tr>
</thead>
<tfoot>
  <tr>
    <td colspan="6" class="rounded-foot-left"><%=Pagination.createLinks(pagenum)%></td>
    <td class="rounded-foot-right">&nbsp;</td>
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td>${status.count}</td>
      <td>${item.nip}</td>
      <td>${item.sk_pensiun}</td>
      <td>${item.tmt_pensiun}</td>
      <td>${item.alasan_pensiun}</td>
      <td>
         <a href="<%=Config.base_url%>index/Pensiun/input/${item.idpensiun}">Ubah</a>
         <a href="<%=Config.base_url%>index/Pensiun/delete/${item.idpensiun}" onClick="return confirm('Apakah Anda yakin?');">Hapus</a>
      </td>
    </tr>
  </c:forEach>
</tbody>
</table>

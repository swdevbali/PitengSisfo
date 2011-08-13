<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<a href="<%=Config.base_url%>index/SubUnitKerja/input/-1">Tambah Data</a>
|| <a href="<%=Config.base_url%>index/SubUnitKerja/print">Cetak</a>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th scope="col" class="rounded-company">No.</th>
  <th scope="col" class="rounded-q1">Kode Sub Unit Kerja</th>
  <th scope="col" class="rounded-q1">Sub Unit Kerja</th>
  <th scope="col" class="rounded-q1">Kode Bagian Unit Kerja</th>
  <th scope="col" class="rounded-q4">Aksi</th>
  </tr>
</thead>
<tfoot>
  <tr>
    <td colspan="4" class="rounded-foot-left"><%=Pagination.createLinks(pagenum)%></td>
    <td class="rounded-foot-right">&nbsp;</td>
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td>${status.count}</td>
      <td>${item.kode_sub_unit_kerja}</td>
      <td>${item.sub_unit_kerja}</td>
      <td>${item.kode_bagian_unit_kerja}</td>
      <td>
         <a href="<%=Config.base_url%>index/SubUnitKerja/input/${item.kode_sub_unit_kerja}">Ubah</a>
         <a href="<%=Config.base_url%>index/SubUnitKerja/delete/${item.kode_sub_unit_kerja}" onClick="return confirm('Apakah Anda yakin?');">Hapus</a>
      </td>
    </tr>
  </c:forEach>
</tbody>
</table>

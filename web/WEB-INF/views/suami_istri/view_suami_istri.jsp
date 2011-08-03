<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<a href="<%=Config.base_url%>index/SuamiIstri/input/-1">Tambah Data</a>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th scope="col" class="rounded-company">No.</th>
  <th scope="col" class="rounded-q1">Nip</th>
  <th scope="col" class="rounded-q1">Nama Suami Istri</th>
  <th scope="col" class="rounded-q1">Tempat Lahir</th>
  <th scope="col" class="rounded-q1">Tgl Lahir</th>
  <th scope="col" class="rounded-q1">Status Suami Istri</th>
  <th scope="col" class="rounded-q1">Pekerjaan</th>
  <th scope="col" class="rounded-q1">Status Tunjangan</th>
  <th scope="col" class="rounded-q1">Tgl Menikah</th>
  <th scope="col" class="rounded-q4">Aksi</th>
  </tr>
</thead>
<tfoot>
  <tr>
    <td colspan="10" class="rounded-foot-left"><%=Pagination.createLinks(pagenum)%></td>
    <td class="rounded-foot-right">&nbsp;</td>
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td>${status.count}</td>
      <td>${item.nip}</td>
      <td>${item.nama_suami_istri}</td>
      <td>${item.tempat_lahir}</td>
      <td>${item.tgl_lahir}</td>
      <td>${item.status_suami_istri}</td>
      <td>${item.pekerjaan}</td>
      <td>${item.status_tunjangan}</td>
      <td>${item.tgl_menikah}</td>
      <td>
         <a href="<%=Config.base_url%>index/SuamiIstri/input/${item.idsuami_istri}">Ubah</a>
         <a href="<%=Config.base_url%>index/SuamiIstri/delete/${item.idsuami_istri}" onClick="return confirm('Apakah Anda yakin?');">Hapus</a>
      </td>
    </tr>
  </c:forEach>
</tbody>
</table>

<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<a href="<%=Config.base_url%>index/Pegawai/input/-1">Tambah Data</a>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th scope="col" class="rounded-company">No.</th>
  <th scope="col" class="rounded-q1">NIP</th>
  <th scope="col" class="rounded-q1">Nama</th>
  <th scope="col" class="rounded-q1">Tempat Lahir</th>
  <th scope="col" class="rounded-q1">Agama</th>
  <th scope="col" class="rounded-q4">Aksi</th>
  </tr>
</thead>
<tfoot>
  <tr>
    <td colspan="5" class="rounded-foot-left"><%=Pagination.createLinks(pagenum)%></td>
    <td class="rounded-foot-right">&nbsp;</td>
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td>${status.count}</td>
      <td>${item.nip}</td>
      <td>${item.nama_pegawai}</td>
      <td>${item.tempat_lahir}</td>
      <td>${item.agama}</td>
      <td>
         <a href="<%=Config.base_url%>index/Pegawai/input/${item.nip}">Ubah</a>
         <a href="<%=Config.base_url%>index/Pegawai/delete/${item.nip}" onClick="return confirm('Apakah Anda yakin?');">Hapus</a>
         <a href="<%=Config.base_url%>index/Pegawai/chooseAsMaster/${item.nip}">Pilih</a>
      </td>
    </tr>
  </c:forEach>
</tbody>
</table>

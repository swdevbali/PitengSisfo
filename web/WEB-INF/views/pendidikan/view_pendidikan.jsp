<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<a href="<%=Config.base_url%>index/Pendidikan/input/-1">Tambah Data</a>
|| <a href="<%=Config.base_url%>index/Pendidikan/print">Cetak</a>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th scope="col" class="rounded-company">No.</th>
  <th scope="col" class="rounded-q1">Nip</th>
  <th scope="col" class="rounded-q1">Jenjang Pendidikan</th>
  <th scope="col" class="rounded-q1">Nama Pendidikan</th>
  <th scope="col" class="rounded-q1">Fakultas</th>
  <th scope="col" class="rounded-q1">Jurusan</th>
  <th scope="col" class="rounded-q1">No Ijazah Sttb</th>
  <th scope="col" class="rounded-q1">Tgl Ijazah Sttb</th>
  <th scope="col" class="rounded-q4">Aksi</th>
  </tr>
</thead>
<tfoot>
  <tr>
    <td colspan="9" class="rounded-foot-left"><%=Pagination.createLinks(pagenum)%></td>
    <td class="rounded-foot-right">&nbsp;</td>
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td>${status.count}</td>
      <td>${item.nip}</td>
      <td>${item.jenjang_pendidikan}</td>
      <td>${item.nama_pendidikan}</td>
      <td>${item.fakultas}</td>
      <td>${item.jurusan}</td>
      <td>${item.no_ijazah_sttb}</td>
      <td>${item.tgl_ijazah_sttb}</td>
      <td>
         <a href="<%=Config.base_url%>index/Pendidikan/input/${item.idpendidikan}">Ubah</a>
         <a href="<%=Config.base_url%>index/Pendidikan/delete/${item.idpendidikan}" onClick="return confirm('Apakah Anda yakin?');">Hapus</a>
      </td>
    </tr>
  </c:forEach>
</tbody>
</table>

<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<a href="<%=Config.base_url%>index/Prajabatan/input/-1">Tambah Data</a>
|| <a href="<%=Config.base_url%>index/Prajabatan/print">Cetak</a>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th scope="col" class="rounded-company">No.</th>
  <th scope="col" class="rounded-q1">Nip</th>
  <th scope="col" class="rounded-q1">Jenis Prajabatan</th>
  <th scope="col" class="rounded-q1">Tempat</th>
  <th scope="col" class="rounded-q1">Penyelenggara</th>
  <th scope="col" class="rounded-q1">Tgl Pelaksanaan</th>
  <th scope="col" class="rounded-q1">No Sttpl</th>
  <th scope="col" class="rounded-q1">Tgl Sttpl</th>
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
      <td>${item.jenis_prajabatan}</td>
      <td>${item.tempat}</td>
      <td>${item.penyelenggara}</td>
      <td>${item.tgl_pelaksanaan}</td>
      <td>${item.no_sttpl}</td>
      <td>${item.tgl_sttpl}</td>
      <td>
         <a href="<%=Config.base_url%>index/Prajabatan/input/${item.idprajabatan}">Ubah</a>
         <a href="<%=Config.base_url%>index/Prajabatan/delete/${item.idprajabatan}" onClick="return confirm('Apakah Anda yakin?');">Hapus</a>
      </td>
    </tr>
  </c:forEach>
</tbody>
</table>

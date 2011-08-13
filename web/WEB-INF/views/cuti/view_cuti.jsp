<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<a href="<%=Config.base_url%>index/Cuti/input/-1">Tambah Data</a>
|| <a href="<%=Config.base_url%>index/Cuti/print">Cetak</a>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th scope="col" class="rounded-company">No.</th>
  <th scope="col" class="rounded-q1">Nip</th>
  <th scope="col" class="rounded-q1">Jenis Cuti</th>
  <th scope="col" class="rounded-q1">No Surat Ijin Cuti</th>
  <th scope="col" class="rounded-q1">Tgl Surat Ijin Cuti</th>
  <th scope="col" class="rounded-q1">Tgl Awal Cuti</th>
  <th scope="col" class="rounded-q1">Tgl Akhir Cuti</th>
  <th scope="col" class="rounded-q1">Pejabat Berwenang</th>
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
      <td>${item.jenis_cuti}</td>
      <td>${item.no_surat_ijin_cuti}</td>
      <td>${item.tgl_surat_ijin_cuti}</td>
      <td>${item.tgl_awal_cuti}</td>
      <td>${item.tgl_akhir_cuti}</td>
      <td>${item.pejabat_berwenang}</td>
      <td>
         <a href="<%=Config.base_url%>index/Cuti/input/${item.idcuti}">Ubah</a>
         <a href="<%=Config.base_url%>index/Cuti/delete/${item.idcuti}" onClick="return confirm('Apakah Anda yakin?');">Hapus</a>
      </td>
    </tr>
  </c:forEach>
</tbody>
</table>

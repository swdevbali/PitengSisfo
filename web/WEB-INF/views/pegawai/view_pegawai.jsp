<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<style type="text/css">
<!--
.style1 {font-weight: bold}
-->
</style>

<c:if test="${user_credential.role=='Administrator'}">
<a href="<%=Config.base_url%>index/Pegawai/input/-1">Tambah Data</a> | 
</c:if>
<a href="<%=Config.base_url%>index/Pegawai/print/">Print</a> 
<form action="<%=Config.base_url%>index/Pegawai/search/" method="post">
  <div align="center">Cari berdasarkan 
    <select name="search_criteria">
      <option value="nip" 
      <c:if test="${sess_search_criteria=='nip'}">selected="selected"</c:if>
      >NIP
      </option>
      <option value="jenis_kelamin" 
      <c:if test="${sess_search_criteria=='jenis_kelamin'}">selected="selected"</c:if>
      >Jenins Kelamin
      </option>
      <option value="nama_pegawai" 
      <c:if test="${sess_search_criteria=='nama_pegawai'}">selected="selected"</c:if>
      >Nama
      </option>
      <option value="pangkat_golongan_ruang" 
      <c:if test="${sess_search_criteria=='pangkat_golongan_ruang'}">selected="selected"</c:if>
      >Pangkat/Golongan
      </option>
      <option value="kode_bagian_unit_kerja" 
      <c:if test="${sess_search_criteria=='kode_bagian_unit_kerja'}">selected="selected"</c:if>
      >Bagian Unit Kerja
      </option>
      <option value="kode_sub_unit_kerja" 
      <c:if test="${sess_search_criteria=='kode_sub_unit_kerja'}">selected="selected"</c:if>
      >Sub Unit Kerja
      </option>
    </select> 
Nilai 
<input name="search_value" id="search_value" type="text" value="${sess_search_value}"/> 
<input name="search_submit" type="submit" value="Cari"/>
  </div>
</form>
<br />
<br />
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th scope="col" class="rounded-company">No.</th>
  <th scope="col" class="rounded-q1">Foto</th>
  <th scope="col" class="rounded-q1">Nip</th>
  <th scope="col" class="rounded-q1">Nama</th>
  <th scope="col" class="rounded-q1">Tempat Lahir</th>
  <th scope="col" class="rounded-q1">Tgl Lahir</th>
  <th scope="col" class="rounded-q1">Jenkel</th>
  <th scope="col" class="rounded-q1">Agama</th>
  <th scope="col" class="rounded-q1">Bagian Unit Kerja</th>
  <th scope="col" class="rounded-q1">Sub Unit Kerja</th>
  <th scope="col" class="rounded-q1">Pangkat/Gol</th>
<!--  <th scope="col" class="rounded-q1">Alamat KTP</th>-->
  <th scope="col" class="rounded-q4">Aksi</th>
  </tr>
</thead>
<tfoot>
  <tr>
    <td colspan="11" class="rounded-foot-left"><%=Pagination.createLinks(pagenum)%></td>
	 <td class="rounded-foot-right">&nbsp;</td>
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td>${status.count}</td>
      <td><img src="<%=Config.base_url%>upload/${item.foto}" width=100 height=100/></td>
      <td>${item.nip}</td>
      <td>${item.nama_pegawai}</td>
      <td>${item.tempat_lahir}</td>
      <td>${item.tgl_lahir}</td>
      <td>${item.jenis_kelamin}</td>
      <td>${item.agama}</td>
      <td>${item.bagian_unit_kerja}</td>
      <td>${item.sub_unit_kerja}</td>
      <td>${item.pangkat_golongan_ruang}</td>
     <!-- <td>${item.alamat_ktp}</td>-->
      <td bordercolor="#0000FF">
	  <c:if test="${user_credential.role=='Administrator'}">
         <a href="<%=Config.base_url%>index/Pegawai/input/${item.nip}"><strong>Ubah</strong></a>
         <span class="style1"><a href="<%=Config.base_url%>index/Pegawai/delete/${item.nip}" onClick="return confirm('Apakah Anda yakin?');">Hapus</a> </span></c:if>
        <strong><a href="<%=Config.base_url%>index/Pegawai/chooseAsMaster/${item.nip}">Pilih</a> </strong> </td>
    </tr>
  </c:forEach>
</tbody>
</table>

<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination,application.models.*,java.text.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% int pagenum = 0; %>
<% 
DateFormat df = new SimpleDateFormat("dd/MMM/yyyy");
%>
<style type="text/css">
<!--
.style4 {font-size: 14px}
.style6 {color: #FF0000}
.style9 {
	font-size: 14px;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
}
.style11 {font-family: Arial, Helvetica, sans-serif}
.style15 {font-weight: bold}
.style16 {font-size: 14px; font-family: Arial, Helvetica, sans-serif; }
-->
</style>

<form action="<%=Config.base_url%>index/Pegawai/search" method="post">
  <div align="center">Cari berdasarkan<span class="style4"> 
    <select name="search_criteria">
      <option value="nip" 
      <c:if test="${sess_search_criteria=='nip'}">selected="selected"</c:if>
      >NIP
      </option>
      <option value="jenis_kelamin" 
      <c:if test="${sess_search_criteria=='jenis_kelamin'}">selected="selected"</c:if>
      >Jenins Kelami
      </option>
      <option value="agama"
      <c:if test="${sess_search_criteria=='agama'}">selected="selected"</c:if>
     >Agama
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
      <option value="golongan_darah" 
      <c:if test="${sess_search_criteria=='golongan_darah'}">selected="selected"</c:if>
      >Golongan Darah
      </option>
    </select>
    </span>Nilai<span class="style4">
    <input name="search_value" id="search_value" type="text" value="${sess_search_value}"/> 
    <input name="search_submit" type="submit" value="Cari"/>
    </span></div>
</form>

<c:if test="${user_credential.role=='Administrator'}">
  <p class="style4">
  <p class="style4"><span class="style11"><a href="<%=Config.base_url%>index/Pegawai/input/-1">Tambah Data</a> | 
    <a href="<%=Config.base_url%>index/Pegawai/print/print" target="_blank">Print Semua Pegawai |</a>
      <a href="<%=Config.base_url%>index/Pegawai/print/download">Download Semua Pegawai |</a> </span></p>
</c:if>

<span class="style16">
<c:if test="${pegawai_terpilih_nip!=null}">
  <a href="<%=Config.base_url%>index/Pegawai/printSingle/${pegawai_terpilih_nip}" target="_blank">Print Pegawai Terpilih</a></c:if>
</span><br />
<br />
<table width="50%" id="rounded-corner">
<thead>
  <tr>
  <th class="rounded-company style4" scope="col"><p align="center">No</p></th> 
  
  <th class="rounded-q1 style4" scope="col"><p align="center">Foto</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Nip</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Nomor</p>
    <p align="center">Karpeg</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Nomor</p>
    <p align="center">KartuAskes</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Nama</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Tempat </p>
    <p align="center">Lahir</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Tgl </p>
    <p align="center">Lahir</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Jenis</p>
    <p align="center">Kelaminkel</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Agama</div></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Golongan</p>
    <p align="center">Darah</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Status</p>
    <p align="center"> Kawin</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Pendidkan </p>
    <p align="center">terakhir</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Status</p>
    <p align="center"> Pegawai</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">TMT </p>
    <p align="center">Pangkat</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">No.SK</p>
    <p align="center"> Pangkat</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Tgl Mulai</p>
    <p align="center">Kerja</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Pejabat </p>
    <p align="center">Berwenang</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Bagian </p>
    <p align="center">Unit Kerja</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Sub</p>
    <p align="center"> Unit Kerja</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Pangkat/Gol</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">No.KTP</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Alamat KTP</p></th>
  <th class="rounded-q1 style4" scope="col"><p align="center">Alamat  </p>
  <p align="center">Domisili</p></th>
  <!--  <th scope="col" class="rounded-q1">Alamat KTP</th>-->
  <th class="style6 style4 rounded-q4" scope="col"><p align="center"><strong>Aksi</strong></p></th>
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
      <td><span class="style4">${status.count}</span></p></td>
	     
      <td><p align="justify" class="style11"><img src="<%=Config.base_url%>upload/${item.foto}" width=76 height=100/></p></td>
      <td><span class="style4">${item.nip}</span></p></td>
	  <td><span class="style4">${item.no_karpeg}</span></p></td>
	  <td><span class="style4">${item.no_kartu_askes}</span></p></td>
      <td><span class="style4">${item.nama_pegawai}</span></p></td>
      <td><span class="style4">${item.tempat_lahir}</span></p></td>
      <td><span class="style4">${item.tgl_lahir}</span></p></td>
      <td><span class="style4">${item.jenis_kelamin}</span></p></td>
      <td><span class="style4">${item.agama}</span></p></td>
	  <td><span class="style4">${item.golongan_darah}</span></p></td>
	  <td><span class="style4">${item.status_perkawinan}</span></p></td>
	  <td><span class="style4">${item.pendidikan_terakhir}</span></p></td>
	  <td><span class="style4">${item.status_kepegawaian}</span></p></td>
	  <td><span class="style4">${item.pangkat_golongan_ruang}</span></p></td>
	  <td><span class="style4">${item.tmt_pangkat}</span></p></td>
	  <td><span class="style4">${item.no_sk}</span></p></td>
	  <td><span class="style4">${item.tgl_mulai_kerja}</span></p></td>
	  <td><span class="style4">${item.pejabat_berwenang}</span></p></td>
      <td><span class="style4">${item.bagian_unit_kerja}</span></p></td>
      <td><span class="style4">${item.sub_unit_kerja}</span></p></td>
	  <td><span class="style4">${item.no_ktp}</span></p></td>
	  <td><span class="style4">${item.alamat_ktp}</span></p></td>
	  <td><span class="style4">${item.alamat_domisili}</span></p></td>
     <!-- <td>${item.alamat_ktp}</td>-->
        <td><span class="style9">
<c:if test="${user_credential.role=='Administrator'}">	      </c:if>
	    </span><span class="style11">
	    <c:if test="${user_credential.role=='Administrator'}">	      </c:if>
	    </span>
	    <c:if test="${user_credential.role=='Administrator'}"><span class="style4"><span class="style11"><span class="style15"><a href="<%=Config.base_url%>
		index/Pegawai/input/${item.nip}" class="style4">UBAH</a>
	            <a href="<%=Config.base_url%>index/Pegawai/delete/${item.nip}" class="style4" onClick="return confirm('Apakah Anda   yakin?');">HAPUS</a> </span></span></span></p>
	    </c:if>        
	    <span class="style6 style11"><strong>
		<a href="<%=Config.base_url%>index/Pegawai/chooseAsMaster/${item.nip}" class="style6">PILIH</a></strong></span>  	    </p></td>
    </tr>
  </c:forEach>
</tbody>
</table>

<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#E8EDFF">
<tr>
<td>
<form action="<%=Config.base_url%>index/Jabatan/save" method="post" enctype="multipart/form-data">
<table id="hor-zebra" summary="Form Jabatan">
<thead>
<tr>
<th colspan="2" class="odd" scope="col">FORM JABATAN </th>
</tr>
</thead>
<tbody>
<tr>
<input name="hidden_idjabatan" type="hidden" id="hidden_idjabatan" value="${model.idjabatan}"/>
</td>
</tr>
<tr>
<td><span class="style1">NIP</span></td>
<td>
<input name="nip" type="hidden" id="nip" value="${model.nip}"/>
<input name="label_nip" readonly="true" type="text" id="label_nip" value="${model.nip}"/>
<a href="<%=Config.base_url%>index/Pegawai/chooseView?height=220&width=700" class="thickbox">Pilih</a></td>
</tr>
<tr>
<td><span class="style1">Nama Jabatan</span></td>
<td>
<input name="nama_jabatan" type="text" id="nama_jabatan" value="${model.nama_jabatan}"/>
${nama_jabatan_error}
</td>
</tr>
<tr>
<td><span class="style1">Jenis Jabatan</span></td>
<td>
<select name="jenis_Jabatan" id="jenis_Jabatan">
	<option <c:if test="${model.jenis_Jabatan=='Struktural'}"> selected="selected" </c:if> value="Struktural">Struktural</option>
	<option <c:if test="${model.jenis_Jabatan=='Fungsional Tertentu'}"> selected="selected" </c:if> value="Fungsional Tertentu">Fungsional Tertentu</option>
	<option <c:if test="${model.jenis_Jabatan=='Struktural dan Fungsional Tertentu (Rangkap)'}"> selected="selected" </c:if> value="Struktural dan Fungsional Tertentu (Rangkap)">Struktural dan Fungsional Tertentu (Rangkap)</option>
	<option <c:if test="${model.jenis_Jabatan=='Fungsional Umum/Staf'}"> selected="selected" </c:if> value="Fungsional Umum/Staf">Fungsional Umum/Staf</option>
</select>

</td>
</tr>
<tr>
<td><span class="style1">Eselon</span></td>
<td>
<input name="eselon" type="text" id="eselon" value="${model.eselon}"/>
${eselon_error}
</td>
</tr>
<tr>
<td><span class="style1">Unit Kerja</span></td>
<td>
<select name="unit_kerja" id="unit_kerja">
	<option <c:if test="${model.unit_kerja=='Badan Kepegawaian'}"> selected="selected" </c:if> value="Badan Kepegawaian">Badan Kepegawaian</option>
</select>

</td>
</tr>
<tr>
<td><span class="style1">Kode Sub Unit Kerja</td>
<td>
<input name="kode_sub_unit_kerja" type="hidden" id="kode_sub_unit_kerja" value="${model.kode_sub_unit_kerja}"/>
<input name="label_kode_sub_unit_kerja" readonly="true" type="text" id="label_kode_sub_unit_kerja" value="${model.kode_sub_unit_kerja}"/>
<a href="<%=Config.base_url%>index/SubUnitKerja/chooseView?height=220&width=700" class="thickbox">Pilih</a></td>
</tr>
<tr>
<td><span class="style1">TMT Jabatan</span></td>
<td>
<input name="tmt_jabatan" type="text" id="tmt_jabatan" value="${model.tmt_jabatan}"/>
<script>
 if(!isValidDate($('#tmt_jabatan').val())) $('#tmt_jabatan').val('1980-1-1');
  (function($){
  $('#tmt_jabatan').click(function() {
    $('#tmt_jabatan').DatePickerShow();
  });
  $('#tmt_jabatan').DatePicker({
    format:'Y-m-d',
    date: $('#tmt_jabatan').val(),
    current: $('#tmt_jabatan').val(),
    starts: 1,
    position: 'r',
    onBeforeShow: function(){
      $('#tmt_jabatan').DatePickerSetDate($('#tmt_jabatan').val(), true);
    },
    onChange: function(formated, dates){
      $('#tmt_jabatan').DatePickerHide();
      $('#tmt_jabatan').val(formated);
    }
  });
  })(jQuery)
 </script>
</td>
</tr>
<tr>
<td><span class="style1">No.SK Jabatan</span></td>
<td>
<input name="no_sk_jabatan" type="text" id="no_sk_jabatan" value="${model.no_sk_jabatan}"/>
${no_sk_jabatan_error}
</td>
</tr>
<tr>
<td><span class="style1">Tgl SK Jabatan</span></td>
<td>
<input name="tgl_sk_jabatan" type="text" id="tgl_sk_jabatan" value="${model.tgl_sk_jabatan}"/>
<script>
 if(!isValidDate($('#tgl_sk_jabatan').val())) $('#tgl_sk_jabatan').val('1980-1-1');
  (function($){
  $('#tgl_sk_jabatan').click(function() {
    $('#tgl_sk_jabatan').DatePickerShow();
  });
  $('#tgl_sk_jabatan').DatePicker({
    format:'Y-m-d',
    date: $('#tgl_sk_jabatan').val(),
    current: $('#tgl_sk_jabatan').val(),
    starts: 1,
    position: 'r',
    onBeforeShow: function(){
      $('#tgl_sk_jabatan').DatePickerSetDate($('#tgl_sk_jabatan').val(), true);
    },
    onChange: function(formated, dates){
      $('#tgl_sk_jabatan').DatePickerHide();
      $('#tgl_sk_jabatan').val(formated);
    }
  });
  })(jQuery)
 </script>
</td>
</tr>
<tr>
<td><span class="style1">No. surat Pelantikan</span></td>
<td>
<input name="no_surat_pelantikan" type="text" id="no_surat_pelantikan" value="${model.no_surat_pelantikan}"/>
${no_surat_pelantikan_error}
</td>
</tr>
<tr>
<td><span class="style1">Tgl Surat Pelantikan</span></td>
<td>
<input name="tgl_surat_pelantikan" type="text" id="tgl_surat_pelantikan" value="${model.tgl_surat_pelantikan}"/>
<script>
 if(!isValidDate($('#tgl_surat_pelantikan').val())) $('#tgl_surat_pelantikan').val('1980-1-1');
  (function($){
  $('#tgl_surat_pelantikan').click(function() {
    $('#tgl_surat_pelantikan').DatePickerShow();
  });
  $('#tgl_surat_pelantikan').DatePicker({
    format:'Y-m-d',
    date: $('#tgl_surat_pelantikan').val(),
    current: $('#tgl_surat_pelantikan').val(),
    starts: 1,
    position: 'r',
    onBeforeShow: function(){
      $('#tgl_surat_pelantikan').DatePickerSetDate($('#tgl_surat_pelantikan').val(), true);
    },
    onChange: function(formated, dates){
      $('#tgl_surat_pelantikan').DatePickerHide();
      $('#tgl_surat_pelantikan').val(formated);
    }
  });
  })(jQuery)
 </script>
</td>
</tr>
<tr>
<td><span class="style1">Pejabat Berwenang</span></td>
<td>
<input name="pejabat_berwenang" type="text" id="pejabat_berwenang" value="${model.pejabat_berwenang}"/>
${pejabat_berwenang_error}
</td>
</tr>
<tr>
<td><span class="style1">Kode Bagian Unit Kerja</span></td>
<td>
<input name="kode_bagian_unit_kerja" type="hidden" id="kode_bagian_unit_kerja" value="${model.kode_bagian_unit_kerja}"/>
<input name="label_kode_bagian_unit_kerja" readonly="true" type="text" id="label_kode_bagian_unit_kerja" value="${model.kode_bagian_unit_kerja}"/>
<a href="<%=Config.base_url%>index/BagianUnitKerja/chooseView?height=220&width=700" class="thickbox">Pilih</a></td>
</tr>
<tr class="odd">
<td>&nbsp;</td>
<td><input type="submit" name="Submit" value="SIMPAN"><input name="Button" type="button" id="Submit" value="BATAL" onClick="javascript:history.back(-1);"></td>
</tr>
</tbody>
</table>
</form></td>
</tr>
</table>

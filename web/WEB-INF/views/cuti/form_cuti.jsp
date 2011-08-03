<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#E8EDFF">
<tr>
<td>
<form action="<%=Config.base_url%>index/Cuti/save" method="post" enctype="multipart/form-data">
<table id="hor-zebra" summary="Form Cuti">
<thead>
<tr>
<th colspan="2" class="odd" scope="col">Form Cuti </th>
</tr>
</thead>
<tbody>
<tr>
<input name="hidden_idcuti" type="hidden" id="hidden_idcuti" value="${model.idcuti}"/>
</td>
</tr>
<tr>
<td>nip</td>
<td>
<input name="nip" type="hidden" id="nip" value="${model.nip}"/>
<input name="label_nip" readonly="true" type="text" id="label_nip" value="${model.nip}"/>
<a href="<%=Config.base_url%>index/Pegawai/chooseView?height=220&width=700" class="thickbox">Pilih</a></td>
</tr>
<tr>
<td>jenis_cuti</td>
<td>
<select name="jenis_cuti" id="jenis_cuti">
	<option <c:if test="${model.jenis_cuti=='Cuti Tahunan'}"> selected="selected" </c:if> value="Cuti Tahunan">Cuti Tahunan</option>
	<option <c:if test="${model.jenis_cuti=='Cuti Sakit'}"> selected="selected" </c:if> value="Cuti Sakit">Cuti Sakit</option>
	<option <c:if test="${model.jenis_cuti=='Cuti Bersalin'}"> selected="selected" </c:if> value="Cuti Bersalin">Cuti Bersalin</option>
	<option <c:if test="${model.jenis_cuti=='Cuti Alasan Penting'}"> selected="selected" </c:if> value="Cuti Alasan Penting">Cuti Alasan Penting</option>
	<option <c:if test="${model.jenis_cuti=='CLTN'}"> selected="selected" </c:if> value="CLTN">CLTN</option>
</select>

</td>
</tr>
<tr>
<td>no_surat_ijin_cuti</td>
<td>
<input name="no_surat_ijin_cuti" type="text" id="no_surat_ijin_cuti" value="${model.no_surat_ijin_cuti}"/>
${no_surat_ijin_cuti_error}
</td>
</tr>
<tr>
<td>tgl_surat_ijin_cuti</td>
<td>
<input name="tgl_surat_ijin_cuti" type="text" id="tgl_surat_ijin_cuti" value="${model.tgl_surat_ijin_cuti}"/>
<script>
 if(!isValidDate($('#tgl_surat_ijin_cuti').val())) $('#tgl_surat_ijin_cuti').val('1980-1-1');
  (function($){
  $('#tgl_surat_ijin_cuti').click(function() {
    $('#tgl_surat_ijin_cuti').DatePickerShow();
  });
  $('#tgl_surat_ijin_cuti').DatePicker({
    format:'Y-m-d',
    date: $('#tgl_surat_ijin_cuti').val(),
    current: $('#tgl_surat_ijin_cuti').val(),
    starts: 1,
    position: 'r',
    onBeforeShow: function(){
      $('#tgl_surat_ijin_cuti').DatePickerSetDate($('#tgl_surat_ijin_cuti').val(), true);
    },
    onChange: function(formated, dates){
      $('#tgl_surat_ijin_cuti').DatePickerHide();
      $('#tgl_surat_ijin_cuti').val(formated);
    }
  });
  })(jQuery)
 </script>
</td>
</tr>
<tr>
<td>tgl_awal_cuti</td>
<td>
<input name="tgl_awal_cuti" type="text" id="tgl_awal_cuti" value="${model.tgl_awal_cuti}"/>
<script>
 if(!isValidDate($('#tgl_awal_cuti').val())) $('#tgl_awal_cuti').val('1980-1-1');
  (function($){
  $('#tgl_awal_cuti').click(function() {
    $('#tgl_awal_cuti').DatePickerShow();
  });
  $('#tgl_awal_cuti').DatePicker({
    format:'Y-m-d',
    date: $('#tgl_awal_cuti').val(),
    current: $('#tgl_awal_cuti').val(),
    starts: 1,
    position: 'r',
    onBeforeShow: function(){
      $('#tgl_awal_cuti').DatePickerSetDate($('#tgl_awal_cuti').val(), true);
    },
    onChange: function(formated, dates){
      $('#tgl_awal_cuti').DatePickerHide();
      $('#tgl_awal_cuti').val(formated);
    }
  });
  })(jQuery)
 </script>
</td>
</tr>
<tr>
<td>tgl_akhir_cuti</td>
<td>
<input name="tgl_akhir_cuti" type="text" id="tgl_akhir_cuti" value="${model.tgl_akhir_cuti}"/>
<script>
 if(!isValidDate($('#tgl_akhir_cuti').val())) $('#tgl_akhir_cuti').val('1980-1-1');
  (function($){
  $('#tgl_akhir_cuti').click(function() {
    $('#tgl_akhir_cuti').DatePickerShow();
  });
  $('#tgl_akhir_cuti').DatePicker({
    format:'Y-m-d',
    date: $('#tgl_akhir_cuti').val(),
    current: $('#tgl_akhir_cuti').val(),
    starts: 1,
    position: 'r',
    onBeforeShow: function(){
      $('#tgl_akhir_cuti').DatePickerSetDate($('#tgl_akhir_cuti').val(), true);
    },
    onChange: function(formated, dates){
      $('#tgl_akhir_cuti').DatePickerHide();
      $('#tgl_akhir_cuti').val(formated);
    }
  });
  })(jQuery)
 </script>
</td>
</tr>
<tr>
<td>pejabat_berwenang</td>
<td>
<input name="pejabat_berwenang" type="text" id="pejabat_berwenang" value="${model.pejabat_berwenang}"/>
${pejabat_berwenang_error}
</td>
</tr>
<tr class="odd">
<td>&nbsp;</td>
<td><input type="submit" name="Submit" value="Simpan"><input name="Button" type="button" id="Submit" value="Batal" onClick="javascript:history.back(-1);"></td>
</tr>
</tbody>
</table>
</form></td>
</tr>
</table>

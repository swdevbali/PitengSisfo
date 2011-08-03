<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#E8EDFF">
<tr>
<td>
<form action="<%=Config.base_url%>index/SuamiIstri/save" method="post" enctype="multipart/form-data">
<table id="hor-zebra" summary="Form SuamiIstri">
<thead>
<tr>
<th colspan="2" class="odd" scope="col">Form SuamiIstri </th>
</tr>
</thead>
<tbody>
<tr>
<input name="hidden_idsuami_istri" type="hidden" id="hidden_idsuami_istri" value="${model.idsuami_istri}"/>
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
<td>nama_suami_istri</td>
<td>
<input name="nama_suami_istri" type="text" id="nama_suami_istri" value="${model.nama_suami_istri}"/>
${nama_suami_istri_error}
</td>
</tr>
<tr>
<td>tempat_lahir</td>
<td>
<input name="tempat_lahir" type="text" id="tempat_lahir" value="${model.tempat_lahir}"/>
${tempat_lahir_error}
</td>
</tr>
<tr>
<td>tgl_lahir</td>
<td>
<input name="tgl_lahir" type="text" id="tgl_lahir" value="${model.tgl_lahir}"/>
<script>
 if(!isValidDate($('#tgl_lahir').val())) $('#tgl_lahir').val('1980-1-1');
  (function($){
  $('#tgl_lahir').click(function() {
    $('#tgl_lahir').DatePickerShow();
  });
  $('#tgl_lahir').DatePicker({
    format:'Y-m-d',
    date: $('#tgl_lahir').val(),
    current: $('#tgl_lahir').val(),
    starts: 1,
    position: 'r',
    onBeforeShow: function(){
      $('#tgl_lahir').DatePickerSetDate($('#tgl_lahir').val(), true);
    },
    onChange: function(formated, dates){
      $('#tgl_lahir').DatePickerHide();
      $('#tgl_lahir').val(formated);
    }
  });
  })(jQuery)
 </script>
</td>
</tr>
<tr>
<td>status_suami_istri</td>
<td>
<select name="status_suami_istri" id="status_suami_istri">
	<option <c:if test="${model.status_suami_istri=='Suami'}"> selected="selected" </c:if> value="Suami">Suami</option>
	<option <c:if test="${model.status_suami_istri=='Istri'}"> selected="selected" </c:if> value="Istri">Istri</option>
</select>

</td>
</tr>
<tr>
<td>pekerjaan</td>
<td>
<select name="pekerjaan" id="pekerjaan">
	<option <c:if test="${model.pekerjaan=='PNS'}"> selected="selected" </c:if> value="PNS">PNS</option>
	<option <c:if test="${model.pekerjaan=='Non PNS'}"> selected="selected" </c:if> value="Non PNS">Non PNS</option>
</select>

</td>
</tr>
<tr>
<td>status_tunjangan</td>
<td>
<select name="status_tunjangan" id="status_tunjangan">
	<option <c:if test="${model.status_tunjangan=='Dapat'}"> selected="selected" </c:if> value="Dapat">Dapat</option>
	<option <c:if test="${model.status_tunjangan=='Tidak Dapat'}"> selected="selected" </c:if> value="Tidak Dapat">Tidak Dapat</option>
</select>

</td>
</tr>
<tr>
<td>tgl_menikah</td>
<td>
<input name="tgl_menikah" type="text" id="tgl_menikah" value="${model.tgl_menikah}"/>
<script>
 if(!isValidDate($('#tgl_menikah').val())) $('#tgl_menikah').val('1980-1-1');
  (function($){
  $('#tgl_menikah').click(function() {
    $('#tgl_menikah').DatePickerShow();
  });
  $('#tgl_menikah').DatePicker({
    format:'Y-m-d',
    date: $('#tgl_menikah').val(),
    current: $('#tgl_menikah').val(),
    starts: 1,
    position: 'r',
    onBeforeShow: function(){
      $('#tgl_menikah').DatePickerSetDate($('#tgl_menikah').val(), true);
    },
    onChange: function(formated, dates){
      $('#tgl_menikah').DatePickerHide();
      $('#tgl_menikah').val(formated);
    }
  });
  })(jQuery)
 </script>
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

<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#E8EDFF">
<tr>
<td>
<form action="<%=Config.base_url%>index/Anak/save" method="post" enctype="multipart/form-data">
<table id="hor-zebra" summary="Form Anak">
<thead>
<tr>
<th colspan="2" class="odd" scope="col">FORM ANAK </th>
</tr>
</thead>
<tbody>
<tr>
<input name="hidden_idanak" type="hidden" id="hidden_idanak" value="${model.idanak}"/>
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
<td><span class="style1">Anak Ke</span></td>
<td>
<input name="anak_ke" type="text" id="anak_ke" value="${model.anak_ke}"/>
${anak_ke_error}
</td>
</tr>
<tr>
<td><span class="style1">Nama Anak</span></td>
<td>
<input name="nama_anak" type="text" id="nama_anak" value="${model.nama_anak}"/>
${nama_anak_error}
</td>
</tr>
<tr>
<td><span class="style1">Status Anak</span></td>
<td>
<select name="status_anak" id="status_anak">
	<option <c:if test="${model.status_anak=='Anak Kandung'}"> selected="selected" </c:if> value="Anak Kandung">Anak Kandung</option>
	<option <c:if test="${model.status_anak=='Anak Angkat'}"> selected="selected" </c:if> value="Anak Angkat">Anak Angkat</option>
	<option <c:if test="${model.status_anak=='Anak Tiri'}"> selected="selected" </c:if> value="Anak Tiri">Anak Tiri</option>
</select>

</td>
</tr>
<tr>
<td><span class="style1">Tempat Lahir</span></td>
<td>
<input name="tempat_lahir" type="text" id="tempat_lahir" value="${model.tempat_lahir}"/>
${tempat_lahir_error}
</td>
</tr>
<tr>
<td><span class="style1">Tgl Lahir</span></td>
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
<td><span class="style1">Jenis Kelamin</span></td>
<td>
<select name="jenis_kelamin" id="jenis_kelamin">
	<option <c:if test="${model.jenis_kelamin=='Pria'}"> selected="selected" </c:if> value="Pria">Pria</option>
	<option <c:if test="${model.jenis_kelamin=='Wanita'}"> selected="selected" </c:if> value="Wanita">Wanita</option>
</select>

</td>
</tr>
<tr>
<td><span class="style1">Pendidikan</span></td>
<td>
<select name="pendidikan" id="pendidikan">
	<option <c:if test="${model.pendidikan=='SD'}"> selected="selected" </c:if> value="SD">SD</option>
	<option <c:if test="${model.pendidikan=='SMP'}"> selected="selected" </c:if> value="SMP">SMP</option>
	<option <c:if test="${model.pendidikan=='SMA'}"> selected="selected" </c:if> value="SMA">SMA</option>
	<option <c:if test="${model.pendidikan=='D-I'}"> selected="selected" </c:if> value="D-I">D-I</option>
	<option <c:if test="${model.pendidikan=='D-II'}"> selected="selected" </c:if> value="D-II">D-II</option>
	<option <c:if test="${model.pendidikan=='D-III'}"> selected="selected" </c:if> value="D-III">D-III</option>
	<option <c:if test="${model.pendidikan=='S-1'}"> selected="selected" </c:if> value="S-1">S-1</option>
	<option <c:if test="${model.pendidikan=='S-2'}"> selected="selected" </c:if> value="S-2">S-2</option>
</select>

</td>
</tr>
<tr>
<td><span class="style1">Pekerjaan</span></td>
<td>
<input name="pekerjaan" type="text" id="pekerjaan" value="${model.pekerjaan}"/>
${pekerjaan_error}
</td>
</tr>
<tr>
<td><span class="style1">Status Tunjangan</span></td>
<td>
<select name="status_tunjangan" id="status_tunjangan">
	<option <c:if test="${model.status_tunjangan=='Dapat'}"> selected="selected" </c:if> value="Dapat">Dapat</option>
	<option <c:if test="${model.status_tunjangan=='Tidak Dapat'}"> selected="selected" </c:if> value="Tidak Dapat">Tidak Dapat</option>
</select>

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

<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#E8EDFF">
<tr>
<td>
<form action="<%=Config.base_url%>index/Pendidikan/save" method="post" enctype="multipart/form-data">
<table id="hor-zebra" summary="Form Pendidikan">
<thead>
<tr>
<th colspan="2" class="odd" scope="col">FORM PENDIDIKAN</th>
</tr>
</thead>
<tbody>
<tr>
<input name="hidden_idpendidikan" type="hidden" id="hidden_idpendidikan" value="${model.idpendidikan}"/>
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
<td><span class="style1">Jenjang Pendidikan</span></td>
<td>
<select name="jenjang_pendidikan" id="jenjang_pendidikan">
	<option <c:if test="${model.jenjang_pendidikan=='SD'}"> selected="selected" </c:if> value="SD">SD</option>
	<option <c:if test="${model.jenjang_pendidikan=='SMP'}"> selected="selected" </c:if> value="SMP">SMP</option>
	<option <c:if test="${model.jenjang_pendidikan=='SMA'}"> selected="selected" </c:if> value="SMA">SMA</option>
	<option <c:if test="${model.jenjang_pendidikan=='D-I'}"> selected="selected" </c:if> value="D-I">D-I</option>
	<option <c:if test="${model.jenjang_pendidikan=='D-II'}"> selected="selected" </c:if> value="D-II">D-II</option>
	<option <c:if test="${model.jenjang_pendidikan=='D-III'}"> selected="selected" </c:if> value="D-III">D-III</option>
	<option <c:if test="${model.jenjang_pendidikan=='S-1'}"> selected="selected" </c:if> value="S-1">S-1</option>
	<option <c:if test="${model.jenjang_pendidikan=='S-2'}"> selected="selected" </c:if> value="S-2">S-2</option>
	<option <c:if test="${model.jenjang_pendidikan=='S-3'}"> selected="selected" </c:if> value="S-3">S-3</option>
</select>

</td>
</tr>
<tr>
<td><span class="style1">Nama Pendidikan</span></td>
<td>
<input name="nama_pendidikan" type="text" id="nama_pendidikan" value="${model.nama_pendidikan}"/>
${nama_pendidikan_error}
</td>
</tr>
<tr>
<td><span class="style1">Fakultas</span></td>
<td>
<input name="fakultas" type="text" id="fakultas" value="${model.fakultas}"/>
${fakultas_error}
</td>
</tr>
<tr>
<td><span class="style1">Jurusan</span></td>
<td>
<input name="jurusan" type="text" id="jurusan" value="${model.jurusan}"/>
${jurusan_error}
</td>
</tr>
<tr>
<td><span class="style1">No.Ijazah STTB</span></td>
<td>
<input name="no_ijazah_sttb" type="text" id="no_ijazah_sttb" value="${model.no_ijazah_sttb}"/>
${no_ijazah_sttb_error}
</td>
</tr>
<tr>
<td><span class="style1">Tgl Ijazah STTB</span></td>
<td>
<input name="tgl_ijazah_sttb" type="text" id="tgl_ijazah_sttb" value="${model.tgl_ijazah_sttb}"/>
<script>
 if(!isValidDate($('#tgl_ijazah_sttb').val())) $('#tgl_ijazah_sttb').val('1980-1-1');
  (function($){
  $('#tgl_ijazah_sttb').click(function() {
    $('#tgl_ijazah_sttb').DatePickerShow();
  });
  $('#tgl_ijazah_sttb').DatePicker({
    format:'Y-m-d',
    date: $('#tgl_ijazah_sttb').val(),
    current: $('#tgl_ijazah_sttb').val(),
    starts: 1,
    position: 'r',
    onBeforeShow: function(){
      $('#tgl_ijazah_sttb').DatePickerSetDate($('#tgl_ijazah_sttb').val(), true);
    },
    onChange: function(formated, dates){
      $('#tgl_ijazah_sttb').DatePickerHide();
      $('#tgl_ijazah_sttb').val(formated);
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

<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#E8EDFF">
<tr>
<td>
<form action="<%=Config.base_url%>index/Prajabatan/save" method="post" enctype="multipart/form-data">
<table id="hor-zebra" summary="Form Prajabatan">
<thead>
<tr>
<th colspan="2" class="odd" scope="col">FORM PRAJABATAN </th>
</tr>
</thead>
<tbody>
<tr>
<input name="hidden_idprajabatan" type="hidden" id="hidden_idprajabatan" value="${model.idprajabatan}"/>
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
<td><span class="style1">Jenis Prajabatan</span></td>
<td>
<select name="jenis_prajabatan" id="jenis_prajabatan">
	<option <c:if test="${model.jenis_prajabatan=='Diklat Prajabatan Golongan I'}"> selected="selected" </c:if> value="Diklat Prajabatan Golongan I">Diklat Prajabatan Golongan I</option>
	<option <c:if test="${model.jenis_prajabatan=='Diklat Prajabatan Golongan II'}"> selected="selected" </c:if> value="Diklat Prajabatan Golongan II">Diklat Prajabatan Golongan II</option>
	<option <c:if test="${model.jenis_prajabatan=='Diklat Prajabatan Golongan III'}"> selected="selected" </c:if> value="Diklat Prajabatan Golongan III">Diklat Prajabatan Golongan III</option>
</select>

</td>
</tr>
<tr>
<td><span class="style1">Tempat</span></td>
<td>
<input name="tempat" type="text" id="tempat" value="${model.tempat}"/>
${tempat_error}
</td>
</tr>
<tr>
<td><span class="style1">Penyelenggara</span></td>
<td>
<input name="penyelenggara" type="text" id="penyelenggara" value="${model.penyelenggara}"/>
${penyelenggara_error}
</td>
</tr>
<tr>
<td><span class="style1">Tgl Pelaksanaan</span></td>
<td>
<input name="tgl_pelaksanaan" type="text" id="tgl_pelaksanaan" value="${model.tgl_pelaksanaan}"/>
<script>
 if(!isValidDate($('#tgl_pelaksanaan').val())) $('#tgl_pelaksanaan').val('1980-1-1');
  (function($){
  $('#tgl_pelaksanaan').click(function() {
    $('#tgl_pelaksanaan').DatePickerShow();
  });
  $('#tgl_pelaksanaan').DatePicker({
    format:'Y-m-d',
    date: $('#tgl_pelaksanaan').val(),
    current: $('#tgl_pelaksanaan').val(),
    starts: 1,
    position: 'r',
    onBeforeShow: function(){
      $('#tgl_pelaksanaan').DatePickerSetDate($('#tgl_pelaksanaan').val(), true);
    },
    onChange: function(formated, dates){
      $('#tgl_pelaksanaan').DatePickerHide();
      $('#tgl_pelaksanaan').val(formated);
    }
  });
  })(jQuery)
 </script>
</td>
</tr>
<tr>
<td><span class="style1">No.STTPL</span></td>
<td>
<input name="no_sttpl" type="text" id="no_sttpl" value="${model.no_sttpl}"/>
${no_sttpl_error}
</td>
</tr>
<tr>
<td><span class="style1">Tgl STTPL</span></td>
<td>
<input name="tgl_sttpl" type="text" id="tgl_sttpl" value="${model.tgl_sttpl}"/>
<script>
 if(!isValidDate($('#tgl_sttpl').val())) $('#tgl_sttpl').val('1980-1-1');
  (function($){
  $('#tgl_sttpl').click(function() {
    $('#tgl_sttpl').DatePickerShow();
  });
  $('#tgl_sttpl').DatePicker({
    format:'Y-m-d',
    date: $('#tgl_sttpl').val(),
    current: $('#tgl_sttpl').val(),
    starts: 1,
    position: 'r',
    onBeforeShow: function(){
      $('#tgl_sttpl').DatePickerSetDate($('#tgl_sttpl').val(), true);
    },
    onChange: function(formated, dates){
      $('#tgl_sttpl').DatePickerHide();
      $('#tgl_sttpl').val(formated);
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

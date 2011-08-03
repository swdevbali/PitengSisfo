<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#E8EDFF">
<tr>
<td>
<form action="<%=Config.base_url%>index/Pensiun/save" method="post" enctype="multipart/form-data">
<table id="hor-zebra" summary="Form Pensiun">
<thead>
<tr>
<th colspan="2" class="odd" scope="col">Form Pensiun </th>
</tr>
</thead>
<tbody>
<tr>
<td>nip</td>
<td>
<input name="nip" type="hidden" id="nip" value="${model.nip}"/>
<input name="label_nip" readonly="true" type="text" id="label_nip" value="${model.nip}"/>
<a href="<%=Config.base_url%>index/Pegawai/chooseView?height=220&width=700" class="thickbox">Pilih</a></td>
</tr>
<tr>
<td>sk_pensiun</td>
<td>
<input name="sk_pensiun" type="text" id="sk_pensiun" value="${model.sk_pensiun}"/>
${sk_pensiun_error}
</td>
</tr>
<tr>
<td>tmt_pensiun</td>
<td>
<input name="tmt_pensiun" type="text" id="tmt_pensiun" value="${model.tmt_pensiun}"/>
<script>
 if(!isValidDate($('#tmt_pensiun').val())) $('#tmt_pensiun').val('1980-1-1');
  (function($){
  $('#tmt_pensiun').click(function() {
    $('#tmt_pensiun').DatePickerShow();
  });
  $('#tmt_pensiun').DatePicker({
    format:'Y-m-d',
    date: $('#tmt_pensiun').val(),
    current: $('#tmt_pensiun').val(),
    starts: 1,
    position: 'r',
    onBeforeShow: function(){
      $('#tmt_pensiun').DatePickerSetDate($('#tmt_pensiun').val(), true);
    },
    onChange: function(formated, dates){
      $('#tmt_pensiun').DatePickerHide();
      $('#tmt_pensiun').val(formated);
    }
  });
  })(jQuery)
 </script>
</td>
</tr>
<tr>
<td>alasan_pensiun</td>
<td>
<input name="alasan_pensiun" type="text" id="alasan_pensiun" value="${model.alasan_pensiun}"/>
${alasan_pensiun_error}
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

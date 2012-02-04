<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#E8EDFF">
<tr>
<td>
<form action="<%=Config.base_url%>index/Diklat/save" method="post" enctype="multipart/form-data">
<table id="hor-zebra" summary="Form Diklat">
<thead>
<tr>
<th colspan="2" class="odd" scope="col">Form Diklat </th>
</tr>
</thead>
<tbody>
<tr>
<input name="hidden_iddiklat" type="hidden" id="hidden_iddiklat" value="${model.iddiklat}"/>
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
<td>nama_diklat</td>
<td>
<input name="nama_diklat" type="text" id="nama_diklat" value="${model.nama_diklat}"/>
${nama_diklat_error}
</td>
</tr>
<tr>
<td>tempat</td>
<td>
<input name="tempat" type="text" id="tempat" value="${model.tempat}"/>
${tempat_error}
</td>
</tr>
<tr>
<td>penyelenggara</td>
<td>
<input name="penyelenggara" type="text" id="penyelenggara" value="${model.penyelenggara}"/>
${penyelenggara_error}
</td>
</tr>
<tr>
<td>tgl_mulai</td>
<td>
<input name="tgl_mulai" type="text" id="tgl_mulai" value="${model.tgl_mulai}"/>
<script>
 if(!isValidDate($('#tgl_mulai').val())) $('#tgl_mulai').val('1980-1-1');
  (function($){
  $('#tgl_mulai').click(function() {
    $('#tgl_mulai').DatePickerShow();
  });
  $('#tgl_mulai').DatePicker({
    format:'Y-m-d',
    date: $('#tgl_mulai').val(),
    current: $('#tgl_mulai').val(),
    starts: 1,
    position: 'r',
    onBeforeShow: function(){
      $('#tgl_mulai').DatePickerSetDate($('#tgl_mulai').val(), true);
    },
    onChange: function(formated, dates){
      $('#tgl_mulai').DatePickerHide();
      $('#tgl_mulai').val(formated);
    }
  });
  })(jQuery)
 </script>
</td>
</tr>
<tr>
<td>tgl_selesai</td>
<td>
<input name="tgl_selesai" type="text" id="tgl_selesai" value="${model.tgl_selesai}"/>
<script>
 if(!isValidDate($('#tgl_selesai').val())) $('#tgl_selesai').val('1980-1-1');
  (function($){
  $('#tgl_selesai').click(function() {
    $('#tgl_selesai').DatePickerShow();
  });
  $('#tgl_selesai').DatePicker({
    format:'Y-m-d',
    date: $('#tgl_selesai').val(),
    current: $('#tgl_selesai').val(),
    starts: 1,
    position: 'r',
    onBeforeShow: function(){
      $('#tgl_selesai').DatePickerSetDate($('#tgl_selesai').val(), true);
    },
    onChange: function(formated, dates){
      $('#tgl_selesai').DatePickerHide();
      $('#tgl_selesai').val(formated);
    }
  });
  })(jQuery)
 </script>
</td>
</tr>
<tr>
<td>no_sttpl</td>
<td>
<input name="no_sttpl" type="text" id="no_sttpl" value="${model.no_sttpl}"/>
${no_sttpl_error}
</td>
</tr>
<tr>
<td>tgl_sttpl</td>
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
<tr>
<td>jumlah_jam</td>
<td>
<input name="jumlah_jam" type="text" id="jumlah_jam" value="${model.jumlah_jam}"/>
${jumlah_jam_error}
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

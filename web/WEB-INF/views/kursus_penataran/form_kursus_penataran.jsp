<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#E8EDFF">
<tr>
<td>
<form action="<%=Config.base_url%>index/KursusPenataran/save" method="post" enctype="multipart/form-data">
<table id="hor-zebra" summary="Form KursusPenataran">
<thead>
<tr>
<th colspan="2" class="odd" scope="col">FORM KURSUS DAN PENATARAN </th>
</tr>
</thead>
<tbody>
<tr>
<input name="hidden_idkursus_penataran" type="hidden" id="hidden_idkursus_penataran" value="${model.idkursus_penataran}"/>
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
<td><span class="style1">Nama Kursus/Penataran</span></td>
<td>
<input name="nama_kursus_penataran" type="text" id="nama_kursus_penataran" value="${model.nama_kursus_penataran}"/>
${nama_kursus_penataran_error}
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
<td><span class="style1">Tgl Mulai</span></td>
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
<td><span class="style1">Tgl Selesai</span></td>
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
<td><span class="style1">No.Sertifikat</span></td>
<td>
<input name="no_sertifikat" type="text" id="no_sertifikat" value="${model.no_sertifikat}"/>
${no_sertifikat_error}
</td>
</tr>
<tr>
<td><span class="style1">Tgl.Sertifikat</span></td>
<td>
<input name="tgl_sertifikat" type="text" id="tgl_sertifikat" value="${model.tgl_sertifikat}"/>
<script>
 if(!isValidDate($('#tgl_sertifikat').val())) $('#tgl_sertifikat').val('1980-1-1');
  (function($){
  $('#tgl_sertifikat').click(function() {
    $('#tgl_sertifikat').DatePickerShow();
  });
  $('#tgl_sertifikat').DatePicker({
    format:'Y-m-d',
    date: $('#tgl_sertifikat').val(),
    current: $('#tgl_sertifikat').val(),
    starts: 1,
    position: 'r',
    onBeforeShow: function(){
      $('#tgl_sertifikat').DatePickerSetDate($('#tgl_sertifikat').val(), true);
    },
    onChange: function(formated, dates){
      $('#tgl_sertifikat').DatePickerHide();
      $('#tgl_sertifikat').val(formated);
    }
  });
  })(jQuery)
 </script>
</td>
</tr>
<tr>
<td><span class="style1">jumlah Jam</span></td>
<td>
<input name="jumlah_jam" type="text" id="jumlah_jam" value="${model.jumlah_jam}"/>
${jumlah_jam_error}
</td>
</tr>
<tr>
<td><span class="style1">Jenis</span></td>
<td>
<select name="jenis" id="jenis">
	<option <c:if test="${model.jenis=='Kursus'}"> selected="selected" </c:if> value="Kursus">Kursus</option>
	<option <c:if test="${model.jenis=='Penataran'}"> selected="selected" </c:if> value="Penataran">Penataran</option>
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

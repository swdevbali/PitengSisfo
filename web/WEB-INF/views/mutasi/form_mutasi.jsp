<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#E8EDFF">
<tr>
<td>
<form action="<%=Config.base_url%>index/Mutasi/save" method="post" enctype="multipart/form-data">
<table id="hor-zebra" summary="Form Mutasi">
<thead>
<tr>
<th colspan="2" class="odd" scope="col">FORM MUTASI </th>
</tr>
</thead>
<tbody>
<tr>
<input name="hidden_idmutasi" type="hidden" id="hidden_idmutasi" value="${model.idmutasi}"/>
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
<td><span class="style1">No.SK Mutasi</span></td>
<td>
<input name="no_sk_mutasi" type="text" id="no_sk_mutasi" value="${model.no_sk_mutasi}"/>
${no_sk_mutasi_error}
</td>
</tr>
<tr>
<td><span class="style1">TMT Mutasi</span></td>
<td>
<input name="tmt_mutasi" type="text" id="tmt_mutasi" value="${model.tmt_mutasi}"/>
<script>
 if(!isValidDate($('#tmt_mutasi').val())) $('#tmt_mutasi').val('1980-1-1');
  (function($){
  $('#tmt_mutasi').click(function() {
    $('#tmt_mutasi').DatePickerShow();
  });
  $('#tmt_mutasi').DatePicker({
    format:'Y-m-d',
    date: $('#tmt_mutasi').val(),
    current: $('#tmt_mutasi').val(),
    starts: 1,
    position: 'r',
    onBeforeShow: function(){
      $('#tmt_mutasi').DatePickerSetDate($('#tmt_mutasi').val(), true);
    },
    onChange: function(formated, dates){
      $('#tmt_mutasi').DatePickerHide();
      $('#tmt_mutasi').val(formated);
    }
  });
  })(jQuery)
 </script>
</td>
</tr>
<tr>
<td><span class="style1">Tujuan Mutasi</span></td>
<td>
<input name="tujuan_mutasi" type="text" id="tujuan_mutasi" value="${model.tujuan_mutasi}"/>
${tujuan_mutasi_error}
</td>
</tr>
<tr>
<td><span class="style1">Jenis Mutasi</span></td>
<td>
<input name="jenis_mutasi" type="text" id="jenis_mutasi" value="${model.jenis_mutasi}"/>
${jenis_mutasi_error}
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
<td><span class="style1">Tempat Mutasi</span></td>
<td>
<input name="tempat_mutasi" type="text" id="tempat_mutasi" value="${model.tempat_mutasi}"/>
${tempat_mutasi_error}
</td>
</tr>
<tr>
<td><span class="style1">Tgl Mutasi</span></td>
<td>
<input name="tgl_mutasi" type="text" id="tgl_mutasi" value="${model.tgl_mutasi}"/>
<script>
 if(!isValidDate($('#tgl_mutasi').val())) $('#tgl_mutasi').val('1980-1-1');
  (function($){
  $('#tgl_mutasi').click(function() {
    $('#tgl_mutasi').DatePickerShow();
  });
  $('#tgl_mutasi').DatePicker({
    format:'Y-m-d',
    date: $('#tgl_mutasi').val(),
    current: $('#tgl_mutasi').val(),
    starts: 1,
    position: 'r',
    onBeforeShow: function(){
      $('#tgl_mutasi').DatePickerSetDate($('#tgl_mutasi').val(), true);
    },
    onChange: function(formated, dates){
      $('#tgl_mutasi').DatePickerHide();
      $('#tgl_mutasi').val(formated);
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

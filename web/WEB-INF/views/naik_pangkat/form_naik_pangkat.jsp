<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#E8EDFF">
<tr>
<td>
<form action="<%=Config.base_url%>index/NaikPangkat/save" method="post" enctype="multipart/form-data">
<table id="hor-zebra" summary="Form NaikPangkat">
<thead>
<tr>
<th colspan="2" class="odd" scope="col">FORM KENAIKAN PANGKAT </th>
</tr>
</thead>
<tbody>
<tr>
<input name="hidden_idpangkat" type="hidden" id="hidden_idpangkat" value="${model.idpangkat}"/>
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
<td><span class="style1">Jenis Kenaikan Pangkat</span></td>
<td>
<select name="jenis_kenaikan_pangkat" id="jenis_kenaikan_pangkat">
	<option <c:if test="${model.jenis_kenaikan_pangkat=='Kenaikan Pangkat Reguler'}"> selected="selected" </c:if> value="Kenaikan Pangkat Reguler">Kenaikan Pangkat Reguler</option>
	<option <c:if test="${model.jenis_kenaikan_pangkat=='Kenaikan Pangkat Pilihan'}"> selected="selected" </c:if> value="Kenaikan Pangkat Pilihan">Kenaikan Pangkat Pilihan</option>
	<option <c:if test="${model.jenis_kenaikan_pangkat=='Kenaikan Pangkat Anumerta'}"> selected="selected" </c:if> value="Kenaikan Pangkat Anumerta">Kenaikan Pangkat Anumerta</option>
	<option <c:if test="${model.jenis_kenaikan_pangkat=='Kenaikan Pangkat Pengabdian'}"> selected="selected" </c:if> value="Kenaikan Pangkat Pengabdian">Kenaikan Pangkat Pengabdian</option>
</select>

</td>
</tr>
<tr>
<td><span class="style1">Kenaikan Pangkat Pilihan</td>
<td>
<select name="kenaikan_pangkat_pilihan" id="kenaikan_pangkat_pilihan">
	<option <c:if test="${model.kenaikan_pangkat_pilihan=='Menduduki jabatan struktural atau jabatan tertentu'}"> selected="selected" </c:if> value="Menduduki jabatan struktural atau jabatan tertentu">Menduduki jabatan struktural atau jabatan tertentu</option>
	<option <c:if test="${model.kenaikan_pangkat_pilihan=='Menduduki jabatan tertentu yang pengangkatannya ditetapkan dengan keputusan presiden'}"> selected="selected" </c:if> value="Menduduki jabatan tertentu yang pengangkatannya ditetapkan dengan keputusan presiden">Menduduki jabatan tertentu yang pengangkatannya ditetapkan dengan keputusan presiden</option>
	<option <c:if test="${model.kenaikan_pangkat_pilihan=='Menunjukkan prestasi kerja luar biasa baiknya'}"> selected="selected" </c:if> value="Menunjukkan prestasi kerja luar biasa baiknya">Menunjukkan prestasi kerja luar biasa baiknya</option>
	<option <c:if test="${model.kenaikan_pangkat_pilihan=='Menemukan penemuan baru yang bermanfaat bagi negara'}"> selected="selected" </c:if> value="Menemukan penemuan baru yang bermanfaat bagi negara">Menemukan penemuan baru yang bermanfaat bagi negara</option>
	<option <c:if test="${model.kenaikan_pangkat_pilihan=='Diangkat menjadi pejabat negara'}"> selected="selected" </c:if> value="Diangkat menjadi pejabat negara">Diangkat menjadi pejabat negara</option>
	<option <c:if test="${model.kenaikan_pangkat_pilihan=='Memperoleh surat tanda tamat belajar atau ijazah'}"> selected="selected" </c:if> value="Memperoleh surat tanda tamat belajar atau ijazah">Memperoleh surat tanda tamat belajar atau ijazah</option>
	<option <c:if test="${model.kenaikan_pangkat_pilihan=='Melaksanakan tugas belajar dan sebelumnya menduduki jabatan struktural atau jabatan fungsional tertentu'}"> selected="selected" </c:if> value="Melaksanakan tugas belajar dan sebelumnya menduduki jabatan struktural atau jabatan fungsional tertentu">Melaksanakan tugas belajar dan sebelumnya menduduki jabatan struktural atau jabatan fungsional tertentu</option>
	<option <c:if test="${model.kenaikan_pangkat_pilihan=='Telah selesai mengikuti dan lulus tugas belajar'}"> selected="selected" </c:if> value="Telah selesai mengikuti dan lulus tugas belajar">Telah selesai mengikuti dan lulus tugas belajar</option>
	<option <c:if test="${model.kenaikan_pangkat_pilihan=='Dipekerjakan atau diperbantukan secara penuh diluar instansi induknya yang diangkat dalam jabatan pimpinan yang telah ditetapkan persamaan eselonnya atau jabatan fungsional tertentu'}"> selected="selected" </c:if> value="Dipekerjakan atau diperbantukan secara penuh diluar instansi induknya yang diangkat dalam jabatan pimpinan yang telah ditetapkan persamaan eselonnya atau jabatan fungsional tertentu">Dipekerjakan atau diperbantukan secara penuh diluar instansi induknya yang diangkat dalam jabatan pimpinan yang telah ditetapkan persamaan eselonnya atau jabatan fungsional tertentu</option>
</select>

</td>
</tr>
<tr>
<td><span class="style1">TMT Pangkat</span></td>
<td>
<input name="tmt_Pangkat" type="text" id="tmt_Pangkat" value="${model.tmt_Pangkat}"/>
<script>
 if(!isValidDate($('#tmt_Pangkat').val())) $('#tmt_Pangkat').val('1980-1-1');
  (function($){
  $('#tmt_Pangkat').click(function() {
    $('#tmt_Pangkat').DatePickerShow();
  });
  $('#tmt_Pangkat').DatePicker({
    format:'Y-m-d',
    date: $('#tmt_Pangkat').val(),
    current: $('#tmt_Pangkat').val(),
    starts: 1,
    position: 'r',
    onBeforeShow: function(){
      $('#tmt_Pangkat').DatePickerSetDate($('#tmt_Pangkat').val(), true);
    },
    onChange: function(formated, dates){
      $('#tmt_Pangkat').DatePickerHide();
      $('#tmt_Pangkat').val(formated);
    }
  });
  })(jQuery)
 </script>
</td>
</tr>
<tr>
<td><span class="style1">Gaji Pokok</span></td>
<td>
<input name="gaji_pokok" type="text" id="gaji_pokok" value="${model.gaji_pokok}"/>
${gaji_pokok_error}
</td>
</tr>
<tr>
<td><span class="style1">No.SK Pangkat</span></td>
<td>
<input name="no_sk_pangkat" type="text" id="no_sk_pangkat" value="${model.no_sk_pangkat}"/>
${no_sk_pangkat_error}
</td>
</tr>
<tr>
<td><span class="style1">Tgl SK Pangkat</span></td>
<td>
<input name="tgl_sk_pangkat" type="text" id="tgl_sk_pangkat" value="${model.tgl_sk_pangkat}"/>
<script>
 if(!isValidDate($('#tgl_sk_pangkat').val())) $('#tgl_sk_pangkat').val('1980-1-1');
  (function($){
  $('#tgl_sk_pangkat').click(function() {
    $('#tgl_sk_pangkat').DatePickerShow();
  });
  $('#tgl_sk_pangkat').DatePicker({
    format:'Y-m-d',
    date: $('#tgl_sk_pangkat').val(),
    current: $('#tgl_sk_pangkat').val(),
    starts: 1,
    position: 'r',
    onBeforeShow: function(){
      $('#tgl_sk_pangkat').DatePickerSetDate($('#tgl_sk_pangkat').val(), true);
    },
    onChange: function(formated, dates){
      $('#tgl_sk_pangkat').DatePickerHide();
      $('#tgl_sk_pangkat').val(formated);
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
<td><span class="style1">Nama Pangkat</span></td>
<td>
<input name="nama_pangkat" type="text" id="nama_pangkat" value="${model.nama_pangkat}"/>
${nama_pangkat_error}
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

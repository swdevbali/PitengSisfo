<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination,java.text.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Cetak Pegawai</title>
<script language="Javascript1.2">
  <!--
  function printpage() {
  	window.print();
  }
  //-->
</script>
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-weight: bold;
}
.style2 {
	font-size: 18px;
	font-weight: bold;
}
-->
</style>
</head>

<body onLoad="printpage()">
<table width="100%" border="0">
  <tr>
    <td width="20%" align="center" valign="top"><img src="../../../images/report-logo.gif" alt="logo" width="98" height="125" /></td>
    <td width="80%" valign="top"><p align="center" class="style1">BADAN KEPEGAWAIAN DAERAH PEMERINTAH DAERAH<br />
      KABUPATEN BANTUL YOGYAKARTA </p>
    <p align="center">Alamat Jln. R. W. Monginsidi No. 01 Kompleks Parasamnya Bantul, Telp. (0274) 367 509 </p>
    </td>
  </tr>
</table>
<hr size="4" noshade="noshade" />
<% 
DateFormat df = new SimpleDateFormat("dd/MMM/yyyy");
String formattedDate = df.format(new java.util.Date());
%>
Tanggal : <%=formattedDate%>

<p align="center" class="style2">LAPORAN DATA PEGAWAI</p>
<p align="center" class="style2">&nbsp;</p>
<table align="center">
  <tr>
    <td width="200" rowspan="23" valign="top"><img src=<%=Config.base_url%>upload/${model.foto} alt="${model.nama_pegawai}" width="176" height="145"  /> </td>
    <td width="183">Nip</td>
    <td width="392">${model.nip}</td>
  </tr>
  <tr>
    <td>No.Karpeg</td>
    <td>${model.no_karpeg} </td>
  </tr>
  <tr>
    <td>No.Kartu Askes</td>
    <td>${model.no_kartu_askes} </td>
  </tr>
  <tr>
    <td>Nama Pegawai </td>
    <td>${model.nama_pegawai} </td>
  </tr>
  <tr>
    <td>Tempat Lahir </td>
    <td>${model.tempat_lahir} </td>
  </tr>
  <tr>
    <td>Tgl Lahir </td>
    <td>${model.tgl_lahir}
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
  </script>    </td>
  </tr>
  <tr>
    <td>Jenis Kelamin </td>
    <td>${model.jenis_kelamin} </td>
  </tr>
  <tr>
    <td>Agama</td>
    <td>${model.agama} </td>
  </tr>
  <tr>
    <td>Gol.Darah</td>
    <td>${model.golongan_darah} </td>
  </tr>
  <tr>
    <td>Status Kawin </td>
    <td>${model.status_perkawinan} </td>
  </tr>
  <tr>
    <td>Pendidikan Akhir </td>
    <td>${model.pendidikan_terakhir}</td>
  </tr>
  <tr>
    <td>Status Pegawai </td>
    <td>${model.status_kepegawaian} </td>
  </tr>
  <tr>
    <td>Pangkat/Gol</td>
    <td>${model.pangkat_golongan_ruang} </td>
  </tr>
  <tr>
    <td>TMT Pangkat </td>
    <td>${model.tmt_pangkat}
        <script>
 if(!isValidDate($('#tmt_pangkat').val())) $('#tmt_pangkat').val('1980-1-1');
  (function($){
  $('#tmt_pangkat').click(function() {
    $('#tmt_pangkat').DatePickerShow();
  });
  $('#tmt_pangkat').DatePicker({
    format:'Y-m-d',
    date: $('#tmt_pangkat').val(),
    current: $('#tmt_pangkat').val(),
    starts: 1,
    position: 'r',
    onBeforeShow: function(){
      $('#tmt_pangkat').DatePickerSetDate($('#tmt_pangkat').val(), true);
    },
    onChange: function(formated, dates){
      $('#tmt_pangkat').DatePickerHide();
      $('#tmt_pangkat').val(formated);
    }
  });
  })(jQuery)
  </script>    </td>
  </tr>
  <tr>
    <td>No.SK</td>
    <td>${model.no_sk} </td>
  </tr>
  <tr>
    <td>Tgl Mulai Kerja </td>
    <td>${model.tgl_mulai_kerja}
        <script>
 if(!isValidDate($('#tgl_mulai_kerja').val())) $('#tgl_mulai_kerja').val('1980-1-1');
  (function($){
  $('#tgl_mulai_kerja').click(function() {
    $('#tgl_mulai_kerja').DatePickerShow();
  });
  $('#tgl_mulai_kerja').DatePicker({
    format:'Y-m-d',
    date: $('#tgl_mulai_kerja').val(),
    current: $('#tgl_mulai_kerja').val(),
    starts: 1,
    position: 'r',
    onBeforeShow: function(){
      $('#tgl_mulai_kerja').DatePickerSetDate($('#tgl_mulai_kerja').val(), true);
    },
    onChange: function(formated, dates){
      $('#tgl_mulai_kerja').DatePickerHide();
      $('#tgl_mulai_kerja').val(formated);
    }
  });
  })(jQuery)
  </script>    </td>
  </tr>
  <tr>
    <td>Pejabat Berwenang </td>
    <td>${model.pejabat_berwenang} </td>
  </tr>
  <tr>
    <td>Unit Kerja </td>
    <td>${model.unit_kerja} </td>
  </tr>
  <tr>
    <td>Bagian Unit Kerja </td>
    <td>${model.kode_bagian_unit_kerja}
      <a href="<%=Config.base_url%>index/BagianUnitKerja/chooseView?height=220&amp;width=700" class="thickbox"></a></td>
  </tr>
  <tr>
    <td>Sub Bagian Unit Kerja </td>
    <td>${model.kode_sub_unit_kerja}
      <a href="<%=Config.base_url%>index/SubUnitKerja/chooseView?height=220&amp;width=700" class="thickbox"></a></td>
  </tr>
  <tr>
    <td>No.KTP</td>
    <td>${model.no_ktp} </td>
  </tr>
  <tr>
    <td>Alamat KTP </td>
    <td>${model.alamat_ktp} </td>
  </tr>
  <tr>
    <td>Alamat Domisi </td>
    <td>${model.alamat_domisili} </td>
  </tr>
  <tr class="odd">
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr class="odd">
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr class="odd">
    <td colspan="3">
      <p align="center">Mengetahui</p>
      <p align="center">Kepala Badan Kepegawaian </p>
      <p align="center">&nbsp;</p>
      <p align="center">&nbsp;</p>
      <p align="center"><u>Drs.Maman Permana</u></p>
      <p align="center"> Nip: 197802042006041013</p>
      
      <div align="center">
        <table cellspacing="0" cellpadding="0">
          <tr>
            <td height="17" width="128">&nbsp;</td>
          </tr>
        </table>
      </div></td></tr>
</table>
<p>&nbsp;</p>
</body>
</html>

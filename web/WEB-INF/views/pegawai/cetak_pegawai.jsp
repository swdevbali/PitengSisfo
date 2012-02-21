<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<table>
  <tr>
    <td>Nip</td>
    <td><input name="nip" type="text" id="nip" value="${model.nip}"/>
        <input name="hidden_nip" type="hidden" id="hidden_nip" value="${model.nip}"/>    </td>
  </tr>
  <tr>
    <td>No.Karpeg</td>
    <td><input name="no_karpeg" type="text" id="no_karpeg" value="${model.no_karpeg}"/>    </td>
  </tr>
  <tr>
    <td>No.Kartu Askes</td>
    <td><input name="no_kartu_askes" type="text" id="no_kartu_askes" value="${model.no_kartu_askes}"/>    </td>
  </tr>
  <tr>
    <td>Nama Pegawai </td>
    <td><input name="nama_pegawai" type="text" id="nama_pegawai" value="${model.nama_pegawai}"/>    </td>
  </tr>
  <tr>
    <td>Tempat Lahir </td>
    <td><input name="tempat_lahir" type="text" id="tempat_lahir" value="${model.tempat_lahir}"/>    </td>
  </tr>
  <tr>
    <td>Tgl Lahir </td>
    <td><input name="tgl_lahir" type="text" id="tgl_lahir" value="${model.tgl_lahir}"/>
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
    <td><select name="jenis_kelamin" id="jenis_kelamin">
      <option 
      <c:if test="${model.jenis_kelamin=='Pria'}"> selected="selected" </c:if>
       value="Pria">Pria
      </option>
      <option 
      <c:if test="${model.jenis_kelamin=='Wanita'}"> selected="selected" </c:if>
       value="Wanita">Wanita
      </option>
    </select>    </td>
  </tr>
  <tr>
    <td>Agama</td>
    <td><select name="agama" id="agama">
      <option 
      <c:if test="${model.agama=='Islam'}"> selected="selected" </c:if>
       value="Islam">Islam
      </option>
      <option 
      <c:if test="${model.agama=='Protestan'}"> selected="selected" </c:if>
       value="Protestan">Protestan
      </option>
      <option 
      <c:if test="${model.agama=='Katholik'}"> selected="selected" </c:if>
       value="Katholik">Katholik
      </option>
      <option 
      <c:if test="${model.agama=='Hindu'}"> selected="selected" </c:if>
       value="Hindu">Hindu
      </option>
      <option 
      <c:if test="${model.agama=='Budha'}"> selected="selected" </c:if>
       value="Budha">Budha
      </option>
      <option 
      <c:if test="${model.agama=='Konghucu'}"> selected="selected" </c:if>
       value="Konghucu">Konghucu
      </option>
      <option 
      <c:if test="${model.agama=='Advent'}"> selected="selected" </c:if>
       value="Advent">Advent
      </option>
      <option 
      <c:if test="${model.agama=='Kepercayaan'}"> selected="selected" </c:if>
       value="Kepercayaan">Kepercayaan
      </option>
      <option 
      <c:if test="${model.agama=='Lainnya'}"> selected="selected" </c:if>
       value="Lainnya">Lainnya
      </option>
    </select>    </td>
  </tr>
  <tr>
    <td>Gol.Darah</td>
    <td><select name="golongan_darah" id="golongan_darah">
      <option 
      <c:if test="${model.golongan_darah=='A'}"> selected="selected" </c:if>
       value="A">A
      </option>
      <option 
      <c:if test="${model.golongan_darah=='B'}"> selected="selected" </c:if>
       value="B">B
      </option>
      <option 
      <c:if test="${model.golongan_darah=='AB'}"> selected="selected" </c:if>
       value="AB">AB
      </option>
      <option 
      <c:if test="${model.golongan_darah=='O'}"> selected="selected" </c:if>
       value="O">O
      </option>
    </select>    </td>
  </tr>
  <tr>
    <td>Status Kawin </td>
    <td><select name="status_perkawinan" id="status_perkawinan">
      <option 
      <c:if test="${model.status_perkawinan=='Belum Kawin'}"> selected="selected" </c:if>
       value="Belum Kawin">Belum Kawin
      </option>
      <option 
      <c:if test="${model.status_perkawinan=='Kawin'}"> selected="selected" </c:if>
       value="Kawin">Kawin
      </option>
      <option 
      <c:if test="${model.status_perkawinan=='Janda'}"> selected="selected" </c:if>
       value="Janda">Janda
      </option>
      <option 
      <c:if test="${model.status_perkawinan=='Duda'}"> selected="selected" </c:if>
       value="Duda">Duda
      </option>
    </select>    </td>
  </tr>
  <tr>
    <td>Pendidikan Akhir </td>
    <td><select name="pendidikan_terakhir" id="pendidikan_terakhir">
      <option 
      <c:if test="${model.pendidikan_terakhir=='SD'}"> selected="selected" </c:if>
       value="SD">SD
      </option>
      <option 
      <c:if test="${model.pendidikan_terakhir=='SMP'}"> selected="selected" </c:if>
       value="SMP">SMP
      </option>
      <option 
      <c:if test="${model.pendidikan_terakhir=='SMA'}"> selected="selected" </c:if>
       value="SMA">SMA
      </option>
      <option 
      <c:if test="${model.pendidikan_terakhir=='D-I'}"> selected="selected" </c:if>
       value="D-I">D-I
      </option>
      <option 
      <c:if test="${model.pendidikan_terakhir=='D-II'}"> selected="selected" </c:if>
       value="D-II">D-II
      </option>
      <option 
      <c:if test="${model.pendidikan_terakhir=='D-III'}"> selected="selected" </c:if>
       value="D-III">D-III
      </option>
      <option 
      <c:if test="${model.pendidikan_terakhir=='S-1'}"> selected="selected" </c:if>
       value="S-1">S-1
      </option>
      <option 
      <c:if test="${model.pendidikan_terakhir=='S-2'}"> selected="selected" </c:if>
       value="S-2">S-2
      </option>
      <option 
      <c:if test="${model.pendidikan_terakhir=='S-3'}"> selected="selected" </c:if>
       value="S-3">S-3
      </option>
    </select>    </td>
  </tr>
  <tr>
    <td>Status Pegawai </td>
    <td><select name="status_kepegawaian" id="status_kepegawaian">
      <option 
      <c:if test="${model.status_kepegawaian=='CPNS'}"> selected="selected" </c:if>
       value="CPNS">CPNS
      </option>
      <option 
      <c:if test="${model.status_kepegawaian=='PNS'}"> selected="selected" </c:if>
       value="PNS">PNS
      </option>
    </select>    </td>
  </tr>
  <tr>
    <td>Pangkat/Gol</td>
    <td><select name="pangkat_golongan_ruang" id="pangkat_golongan_ruang">
      <option 
      <c:if test="${model.pangkat_golongan_ruang=='I/a - Juru Muda'}"> selected="selected" </c:if>
       value="I/a - Juru Muda">I/a - Juru Muda
      </option>
      <option 
      <c:if test="${model.pangkat_golongan_ruang=='I/b - Juru Muda Tk.I'}"> selected="selected" </c:if>
       value="I/b - Juru Muda Tk.I">I/b - Juru Muda Tk.I
      </option>
      <option 
      <c:if test="${model.pangkat_golongan_ruang=='I/c - Juru'}"> selected="selected" </c:if>
       value="I/c - Juru">I/c - Juru
      </option>
      <option 
      <c:if test="${model.pangkat_golongan_ruang=='I/d - Juru Tk.I'}"> selected="selected" </c:if>
       value="I/d - Juru Tk.I">I/d - Juru Tk.I
      </option>
      <option 
      <c:if test="${model.pangkat_golongan_ruang=='II/a - Pengatur Muda'}"> selected="selected" </c:if>
       value="II/a - Pengatur Muda">II/a - Pengatur Muda
      </option>
      <option 
      <c:if test="${model.pangkat_golongan_ruang=='II/b - Pengatur Muda Tk.I'}"> selected="selected" </c:if>
       value="II/b - Pengatur Muda Tk.I">II/b - Pengatur Muda Tk.I
      </option>
      <option 
      <c:if test="${model.pangkat_golongan_ruang=='II/c - Pengatur'}"> selected="selected" </c:if>
       value="II/c - Pengatur">II/c - Pengatur
      </option>
      <option 
      <c:if test="${model.pangkat_golongan_ruang=='II/d - Pegatur Tk.I'}"> selected="selected" </c:if>
       value="II/d - Pegatur Tk.I">II/d - Pegatur Tk.I
      </option>
      <option 
      <c:if test="${model.pangkat_golongan_ruang=='III/a - Penata Muda'}"> selected="selected" </c:if>
       value="III/a - Penata Muda">III/a - Penata Muda
      </option>
      <option 
      <c:if test="${model.pangkat_golongan_ruang=='III/b - Penata Muda Tk.I'}"> selected="selected" </c:if>
       value="III/b - Penata Muda Tk.I">III/b - Penata Muda Tk.I
      </option>
      <option 
      <c:if test="${model.pangkat_golongan_ruang=='III/c - Penata'}"> selected="selected" </c:if>
       value="III/c - Penata">III/c - Penata
      </option>
      <option 
      <c:if test="${model.pangkat_golongan_ruang=='III/d - Penata Tk.I'}"> selected="selected" </c:if>
       value="III/d - Penata Tk.I">III/d - Penata Tk.I
      </option>
      <option 
      <c:if test="${model.pangkat_golongan_ruang=='IV/a - Pembina'}"> selected="selected" </c:if>
       value="IV/a - Pembina">IV/a - Pembina
      </option>
      <option 
      <c:if test="${model.pangkat_golongan_ruang=='IV/b - Pembina Tk.I'}"> selected="selected" </c:if>
       value="IV/b - Pembina Tk.I">IV/b - Pembina Tk.I
      </option>
      <option 
      <c:if test="${model.pangkat_golongan_ruang=='IV/c - Pembina Utama Muda'}"> selected="selected" </c:if>
       value="IV/c - Pembina Utama Muda">IV/c - Pembina Utama Muda
      </option>
      <option 
      <c:if test="${model.pangkat_golongan_ruang=='IV/d - Pembina Utama Madya'}"> selected="selected" </c:if>
       value="IV/d - Pembina Utama Madya">IV/d - Pembina Utama Madya
      </option>
      <option 
      <c:if test="${model.pangkat_golongan_ruang=='IV/e - Pembina Utama'}"> selected="selected" </c:if>
       value="IV/e - Pembina Utama">IV/e - Pembina Utama
      </option>
    </select>    </td>
  </tr>
  <tr>
    <td>TMT Pangkat </td>
    <td><input name="tmt_pangkat" type="text" id="tmt_pangkat" value="${model.tmt_pangkat}"/>
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
    <td><input name="no_sk" type="text" id="no_sk" value="${model.no_sk}"/>    </td>
  </tr>
  <tr>
    <td>Tgl Mulai Kerja </td>
    <td><input name="tgl_mulai_kerja" type="text" id="tgl_mulai_kerja" value="${model.tgl_mulai_kerja}"/>
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
    <td><input name="pejabat_berwenang" type="text" id="pejabat_berwenang" value="${model.pejabat_berwenang}"/>    </td>
  </tr>
  <tr>
    <td>Unit Kerja </td>
    <td><select name="unit_kerja" id="unit_kerja">
      <option 
      <c:if test="${model.unit_kerja=='Badan Kepegawaian'}"> selected="selected" </c:if>
       value="Badan Kepegawaian">Badan Kepegawaian
      </option>
    </select>    </td>
  </tr>
  <tr>
    <td>Bagian Unit Kerja </td>
    <td><input name="kode_bagian_unit_kerja" type="hidden" id="kode_bagian_unit_kerja" value="${model.kode_bagian_unit_kerja}"/>
        <input name="label_kode_bagian_unit_kerja" readonly="true" type="text" id="label_kode_bagian_unit_kerja" value="${model.kode_bagian_unit_kerja}"/>
      <a href="<%=Config.base_url%>index/BagianUnitKerja/chooseView?height=220&amp;width=700" class="thickbox">Pilih</a></td>
  </tr>
  <tr>
    <td>Sub Bagian Unit Kerja </td>
    <td><input name="kode_sub_unit_kerja" type="hidden" id="kode_sub_unit_kerja" value="${model.kode_sub_unit_kerja}"/>
        <input name="label_kode_sub_unit_kerja" readonly="true" type="text" id="label_kode_sub_unit_kerja" value="${model.kode_sub_unit_kerja}"/>
      <a href="<%=Config.base_url%>index/SubUnitKerja/chooseView?height=220&amp;width=700" class="thickbox">Pilih</a></td>
  </tr>
  <tr>
    <td>No.KTP</td>
    <td><input name="no_ktp" type="text" id="no_ktp" value="${model.no_ktp}"/>    </td>
  </tr>
  <tr>
    <td>Alamat KTP </td>
    <td><input name="alamat_ktp" type="text" id="alamat_ktp" value="${model.alamat_ktp}"/>    </td>
  </tr>
  <tr>
    <td>Alamat Domisi </td>
    <td><input name="alamat_domisili" type="text" id="alamat_domisili" value="${model.alamat_domisili}"/>    </td>
  </tr>
  <tr class="odd">
    <td>&nbsp;</td>
    <td><input type="submit" name="Submit" value="Simpan" />
        <input name="Button" type="button" id="Submit" value="Batal" onclick="javascript:history.back(-1);" /></td>
  </tr>
  <tr class="odd">
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr class="odd">
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>

<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<style type="text/css">
<!--
.style1 {
	color: #0000FF;
	font-weight: bold;
	font-size: 18px;
}
.style2 {color: #0099FF}
.style3 {color: #000000}
body,td,th {
	color: #0000FF;
}
.style5 {font-size: 16px}
.style6 {font-size: 16; }
.style8 {font-family: "Courier New", Courier, monospace}
.style10 {font-family: Georgia, "Times New Roman", Times, serif}
.style14 {font-size: 14px; font-family: Georgia, "Times New Roman", Times, serif; }
.style15 {font-size: 14px}
.style16 {color: #0066FF}
.style17 {
	color: #0000FF;
	font-weight: bold;
	font-size: 16px;
	font-family: Georgia, "Times New Roman", Times, serif;
}
-->
</style>
  
<fieldset>
<legend class="style17">Ubah Password </legend>
<div align="center" class="style1"></div>
<p align="center" class="style1">&nbsp;</p>

<form name="form1" action="<%=Config.base_url%>index/Profil/saveProfil">
  <div align="center">
    <table width="48%" border="0" align="center">
      <tr>
        <td width="53%" class="style1"><div align="justify" class="style14">Username</div></td>
        <td width="47%" class="style2"><label>
          <input name="username" type="text" id="username" value="${username}">
          <input name="nip" type="hidden" id="nip" value="${nip}">
        </label></td>
      </tr>
      <tr>
        <td class="style1"><div align="justify" class="style14">Password Lama </div></td>
        <td class="style2"><label>
          <input name="password_lama" type="password" id="password_lama">
        </label></td>
      </tr>
      <tr>
        <td class="style1"><div align="justify" class="style14">Password Baru </div></td>
        <td class="style2"><label>
          <input name="password_baru" type="password" id="password_baru">
        </label></td>
      </tr>
      <tr>
        <td class="style1"><div align="justify" class="style14">Konfirmasi Password Baru </div></td>
        <td class="style2"><label>
          <input name="password_baru_ulang" type="password" id="password_baru_ulang">
        </label></td>
      </tr>
      <tr>
        <td class="style1"><div align="justify" class="style3"><span class="style5"><span class="style6"><span class="style8"><span class="style10"><span class="style15"><span class="style15"></span></span></span></span></span></span></div></td>
        <td class="style2"><label>
          <input type="submit" name="Submit" value="Simpan">
        </label></td>
      </tr>
    </table>
  </div>
  <div align="center" class="style2"></div>
  <div align="center" class="style2"></div>
  
  <p align="center" class="style2">&nbsp;</p>
  <p align="center" class="style2">&nbsp;</p>
  <p align="right" class="style15 style16">${message} </p>
</form>
</fieldset> 

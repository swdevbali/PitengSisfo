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
-->
</style>
  
<fieldset>
<legend class="style1">UBAH PASSWORD </legend>
<p class="style1">&nbsp;</p>
<form name="form1" action="<%=Config.base_url%>index/Profil/saveProfil">
  <table width="50%" border="0" align="center" bgcolor="#FFFFFF">
    <tr>
      <td class="style2">Username</td>
      <td class="style2"><label>
        <input name="username" type="text" id="username" value="${username}">
        <input name="nip" type="hidden" id="nip" value="${nip}">
      </label></td>
    </tr>
    <tr>
      <td class="style2">Password Lama </td>
      <td class="style2"><label>
        <input name="password_lama" type="password" id="password_lama">
      </label></td>
    </tr>
    <tr>
      <td class="style2">Password Baru </td>
      <td class="style2"><label>
        <input name="password_baru" type="password" id="password_baru">
      </label></td>
    </tr>
    <tr>
      <td class="style2">Konfirmasi Password Baru </td>
      <td class="style2"><label>
        <input name="password_baru_ulang" type="password" id="password_baru_ulang">
      </label></td>
    </tr>
    <tr>
      <td class="style2">&nbsp;</td>
      <td class="style2"><label>
        <input type="submit" name="Submit" value="Simpan">
        <input name="Submit" type="submit" id="Submit" value="Batal">
      </label></td>
    </tr>
  </table>
  <div align="center" class="style2"></div>
  <div align="center" class="style2"></div>
  <div align="justify">
    <p align="center" class="style2">&nbsp;</p>
    <p align="center" class="style2">&nbsp;</p>
    <p align="center">${message} </p>
  </div>
</form>
</fieldset> 

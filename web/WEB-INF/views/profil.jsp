<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<fieldset><legend>Ubah Profil</legend>
<form name="form1" method="post" action="<%=Config.base_url%>index/Profil/saveProfil">
  ${message}
  <table width="50%" border="0">
    <tr>
      <td>Username</td>
      <td><label>
        <input name="username" type="text" id="username" value="${username}">
        <input name="nip" type="hidden" id="nip" value="${nip}">
      </label></td>
    </tr>
    <tr>
      <td>Password Lama </td>
      <td><label>
        <input name="password_lama" type="password" id="password_lama">
      </label></td>
    </tr>
    <tr>
      <td>Password Baru </td>
      <td><label>
        <input name="password_baru" type="password" id="password_baru">
      </label></td>
    </tr>
    <tr>
      <td>Konfirmasi Password Baru </td>
      <td><label>
        <input name="password_baru_ulang" type="password" id="password_baru_ulang">
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><label>
        <input type="submit" name="Submit" value="Simpan">
        <input name="Submit" type="submit" id="Submit" value="Batal">
      </label></td>
    </tr>
  </table>
</form>
</fieldset> 

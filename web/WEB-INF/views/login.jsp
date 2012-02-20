<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %>
<style type="text/css">
<!--
.style3 {
	color: #0000FF;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style4 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	color: #0000FF;
}
.style5 {
	color: #0000FF;
	font-weight: bold;
}
.style6 {font-weight: bold}
-->
</style>
<p align="center">
<table width="50%" border="0" align="center" bordercolor="#FFFFFF" bgcolor="#996600" style="background-repeat:no-repeat;background:url('<%=Config.base_url%>images/Kabupaten_Bantul.png')">
  <tr>
  <td width="70%" valign="top"><h1 align="center" class="style4">SELAMAT DATANG !</h1>
    <span class="style5"><br />
      </span>
    <p align="center" class="style4">DI  SISTEM INFORMASI BADAN KEPEGAWAIAN DAERAH BANTUL.</p>
    <p align="center" class="style4"><em>LOGIN</em> TERLEBIH DAHULU UNTUK MASUK PADA SISTEM INI. </p>
    <p align="center" class="style4">SELAMAT BEKERJA !!! </p>
    <span class="style4"><BR />
      </span>
    <p class="style3">&nbsp;</p></td>
	<br />
  	<br />
  </tr>
    <td width="40px" valign="top"><form action="<%=Config.base_url%>index/login/doLogin" method="post" class="style5">
        <div align="center">Username :      
            <input type="text" id="username" name="username"/>
            <br />
            Password :      
            <input type="password" id="password" name="password"/>
            <br />
            <br />
            <input name="Submit" type="submit" value="Login"/>
            <label>
            <input name="Reset" type="reset" id="Submit" value="Batal" onclick="javascript:history.back(-1);" />
            </label>
        </div>
    </form>
	    <p><br/>
      </p>
      <p>&nbsp;</p>
      <p>&nbsp;    </p></td>
    
</table>
</p>
<p align="center">${flash_login_message}</p>

<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %>
<style type="text/css">
<!--
.style4 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	color: #339900;
}
body,td,th {
	color: #FFFFFF;
}
body {
	background-image: url();
}
.style8 {color: #0000FF}
.style11 {font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FFFFFF; }
.style12 {font-family: Verdana, Arial, Helvetica, sans-serif}
.style19 {
	font-family: "Courier New", Courier, monospace;
	font-weight: bold;
	color: #000000;
	font-size: 14px;
}
.style20 {
	font-size: 14px;
	color: #000000;
}
.style21 {color: #000000}
-->
</style>
<p align="center">
<table width="45%" height="334" border="0" align="center">
  <tr>
  <td width="582" height="196" valign="top" ><h1 align="center" class="style4 style21"><marquee>SELAMAT DATANG !</marquee></h1>
    <p align="center" class="style19 style20">DI  SISTEM INFORMASI BADAN KEPEGAWAIAN DAERAH BANTUL.</p>
    <p align="center" class="style19">LOGIN TERLEBIH DAHULU UNTUK MASUK PADA SISTEM INI. </p>
    <p align="center" class="style11"><span class="style19">SELAMAT BEKERJA !!! </span></p>    </td>
  <br />
  	<br />
  </tr>
   <td width="500" height="127" align="center" valign="top" bordercolor="#000000" ><form action="<%=Config.base_url%>index/login/doLogin" method="post">
        <div align="center"><br/>
          <table width="100%" border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
            <tr>
              <td><table width="100%" border="0">
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td width="15%">&nbsp;</td>
                  <td width="15%"><span class="style21">Username</span></td>
                  <td width="51%"><span class="style11"><span class="style21">
                    <input type="text" id="username" name="username"/>
                  </span></span></td>
                  <td width="19%">&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><span class="style21">Password</span></td>
                  <td><span class="style11">
                    <input type="password" id="password" name="password"/>
                  </span></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td><span class="style11">
                    <input name="Submit" type="submit" value="Login"/>
                    <input name="Reset" type="reset" id="Submit" value="Batal" onclick="javascript:history.back(-1);" />
                  </span></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
              </table></td>
            </tr>
          </table>
          </div>
        <span class="style11"><label></label>
        </span><span class="style11"><br />
        </span></form>
     </td>
    
</table>
<div align="center"><div align="justify"><div align="right"><div align="left"><div align="center"><div align="justify"><blockquote>
  <p> </p>
  </p>
<p>${flash_login_message}</p>
</blockquote>
</div></div></div></div></div></div>
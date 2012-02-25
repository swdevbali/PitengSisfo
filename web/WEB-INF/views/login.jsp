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
.style11 {font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FFFFFF; }
.style21 {color: #000000}
.style23 {
	font-size: 36px;
	color: #0000FF;
}
.style26 {font-family: Verdana, Arial, Helvetica, sans-serif}
.style27 {
	color: #0000FF;
	font-size: 14px;
	font-style: italic;
}
.style28 {
	font-size: 14px;
	color: #0000CC;
	font-style: italic;
}
-->
</style>
<p align="center" class="style23"><marquee><span class="style26">SELAMAT DATANG DI SISTEM INFORMASI BADAN KEPEGAWAIAN DAERAH BANTUL</span></marquee></h1>
<br />
<table width="45%" height="35
0" border="0" align="center" bgcolor="#99FFFF">
  <tr>
  <td width="582" height="20" valign="top" bgcolor="#FFFFFF" ><marquee>
  </marquee>      <span class="style27">Silahkan Masukkan Usrname dan Password </span><span class="style28">Anda</span></td>
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
        </span></form>     </td>
    
</table>
<div align="center"><div align="justify"><div align="right"><div align="left"><div align="center"><div align="justify"><blockquote>
  <p> </p>
  </p>
<p>${flash_login_message}</p>
</blockquote>
</div></div></div></div></div></div>
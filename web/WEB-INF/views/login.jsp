<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %>
<style type="text/css">
<!--
body,td,th {
	color: #0000FF;
	font-weight: bold;
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
.style28 {
	font-size: 14px;
	color: #0000CC;
	font-style: italic;
}
.style33 {
	color: #0000FF;
	font-size: 24px;
	font-style: italic;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
.style34 {font-size: 18px}
.style41 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 12px;
	color: #006699;
}
.style46 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 12px;
	font-style: italic;
	color: #0000FF;
}
-->
</style>
<p align="center" class="style23"><marquee class="style28 style34">
<span class="style28">SELAMAT DATANG DI SISTEM INFORMASI BADAN KEPEGAWAIAN DAERAH BANTUL</span>
</marquee>
  
  <span class="style33">
  </h1>
  <br />
  </span>
<table width="43%" height="30
0" border="1" align="center" cellpadding="1" cellspacing="1" bordercolor="#FF9900" background="<%=Config.base_url%>upload/images1.jpeg" bgcolor="">
  <tr>
  <td height="20" colspan="2" valign="top" ><marquee>
  </marquee><div align="center" class="style41"><em>Silahkan Masukkan Usrname dan Password </em><em>Anda</em></div>
  </br /></td>
  <br />
  </tr>
   <td width="389" height="127" align="center" valign="top" bordercolor="#000000" >
   <form action="<%=Config.base_url%>index/login/doLogin" method="post">
        <div align="center"><br/>
          <table width="72%" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFF22" background="<%=Config.base_url%>upload/images1.jpeg">
            <tr>
              <td><table width="71%" border="0" align="center" bordercolor="#FFFFFF" background="<%=Config.base_url%>upload/images1.jpeg" bgcolor="#CC9900">
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="2" rowspan="2">&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td width="15%">&nbsp;</td>
                  <td width="15%"><span class="style41">Username</span></td>
                  <td width="51%"><span class="style11"><span class="style21">
                    <input type="text" id="username" name="username"/>
                  </span></span></td>
                  <td width="19%">&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><span class="style41">Password</span></td>
                  <td><span class="style11">
                    <input type="password" id="password" name="password"/>
                  </span></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td><span class="style16">
                   <div align="center"> <input name="Submit" type="submit" value="Login"/></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="2" rowspan="2"><div align="center" class="style46">${flash_login_message}</div></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
              </table></td>
            </tr>
          </table>
        </div>
        <span class="style11"><label></label></span><span class="style11"><br /></span>
      </form>     </td>
    
</table>

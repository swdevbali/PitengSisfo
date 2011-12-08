<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><table width="100%" border="0">
  <tr>
    <td width="47px" valign="top"><form action="<%=Config.base_url%>index/login/doLogin" method="post">
      Username :
      <input type="text" id="username" name="username" value="piteng"/>
      <br />
      Password :
<input type="password" id="password" name="password" value="101"/>
  <br />
  <br />
<input name="Submit" type="submit" value="Submit"/>
    </form></td>
    <td width="50%" valign="top"><p>Selamat Datang!</p>
    <p>Ini adalah Sistem Infomasi Badan Kepegawaian Daerah. Anda harus login terlebih dahulu untuk memasuki sistem ini.</p>
    <p>Selamat bekerja</p></td>
  </tr>
</table>

<p align="center">${flash_login_message}</p>

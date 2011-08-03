<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %>
<form action="<%=Config.base_url%>index/login/doLogin" method="post">
  Username : <input type="text" id="username" name="username" value="piteng"/>
  Password : <input type="password" id="password" name="password" value="101"/>
  <input name="Submit" type="submit" value="Submit"/>
</form>
<hr/>
<p align="center">${flash_login_message}</p>

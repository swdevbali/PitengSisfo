<style type="text/css">
<!--
body {
	background-image: url();
}
.style25 {
	font-size: 24px;
	font-weight: bold;
	color: #0099FF;
}
-->
</style>
<c:if test="${body_content !=null && body_content != ''}">
  <jsp:include page="${body_content}" />
</c:if>
<c:if test="${body_content==null || body_content == ''}">
 
    <tr>
   <td width="9%" rowspan="2" align="left" valign="top"><p>&nbsp;</p>
    </td>
      <td height="24" valign="top">
	  <div align="center">Selamat Datang  ${user_credential.role}</div>

	      <table width="100%" border="0">
            <tr>
              <td width="32%" valign="top"><img src="<%=Config.base_url%>upload/animasi1.gif" alt="d" /></td>
              <td width="68%" rowspan="4" valign="top"><h1>Sistem Informasi </h1>
              <p>Sistem ini.. </p></td>
            </tr>
            <tr valign="top">
              <td><img src="<%=Config.base_url%>upload/animasi2.gif" alt="d" /></td>
            </tr>
            <tr valign="top">
              <td><img src="<%=Config.base_url%>upload/animasi3.gif" alt="d" /></td>
            </tr>
            <tr valign="top">
              <td><img src="<%=Config.base_url%>upload/animasi4.gif" alt="d" /></td>
            </tr>
          </table>
	      </table>
</c:if>
        
    
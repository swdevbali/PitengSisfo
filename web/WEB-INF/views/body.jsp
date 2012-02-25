<c:if test="${body_content !=null && body_content != ''}">
  <jsp:include page="${body_content}" />
</c:if>
<c:if test="${body_content==null || body_content == ''}">
  <table width="100%" border="0">
    <tr>
      <td width="53%" height="400" align="left" valign="top"><img src="<%=Config.base_url%>animasi3.gif" width="250" height="200" /><img src="<%=Config.base_url%>animasi1.gif" width="250" height="200" /><img src="<%=Config.base_url%>animasi2.gif" width="250" height="200" /></td>
      <td width="47%" valign="top"><p align="justify">Selamat Datang ${user_credential.role}!</p>
        <p align="justify">&nbsp;</p>
      <p align="justify">Aplikasi ini dibagi ke dalam menu-menu yang masing-masing menunjukkan fungsinya. Silahkan mulai bekerja pada suatu modul aplikasi dengan memilih menu pada navigasi di atas.</p>
      <p align="justify">&nbsp;</p>
      <p align="justify">Selamat bekerja!</p></td>
    </tr>
  </table>
</c:if>

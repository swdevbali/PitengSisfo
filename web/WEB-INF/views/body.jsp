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

	      </table>
          </c:if>
        
    
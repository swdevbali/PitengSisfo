<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#E8EDFF">
<tr>
<td>
<form action="<%=Config.base_url%>index/UserAccount/save" method="post" enctype="multipart/form-data">
<table id="hor-zebra" summary="Form UserAccount">
<thead>
<tr>
<th colspan="2" class="odd" scope="col">Form UserAccount </th>
</tr>
</thead>
<tbody>
<tr>
<td>nip</td>
<td>
<input name="nip" type="hidden" id="nip" value="${model.nip}"/>
<input name="label_nip" readonly="true" type="text" id="label_nip" value="${model.nip}"/>
<a href="<%=Config.base_url%>index/Pegawai/chooseView?height=220&width=700" class="thickbox">Pilih</a></td>
</tr>
<tr>
<td>name</td>
<td>
<input name="name" type="text" id="name" value="${model.name}"/>
${name_error}
</td>
</tr>
<tr>
<td>password</td>
<td>
<input name="password" type="text" id="password" value="${model.password}"/>
${password_error}
</td>
</tr>
<tr>
<td>email</td>
<td>
<input name="email" type="text" id="email" value="${model.email}"/>
${email_error}
</td>
</tr>
<tr>
<td>role</td>
<td>
<select name="role" id="role">
	<option <c:if test="${model.role=='Pegawai'}"> selected="selected" </c:if> value="Pegawai">Pegawai</option>
	<option <c:if test="${model.role=='Administrator'}"> selected="selected" </c:if> value="Administrator">Administrator</option>
</select>

</td>
</tr>
<tr>
<td>username</td>
<td>
<input name="username" type="text" id="username" value="${model.username}"/>
${username_error}
</td>
</tr>
<tr class="odd">
<td>&nbsp;</td>
<td><input type="submit" name="Submit" value="Simpan"><input name="Button" type="button" id="Submit" value="Batal" onClick="javascript:history.back(-1);"></td>
</tr>
</tbody>
</table>
</form></td>
</tr>
</table>

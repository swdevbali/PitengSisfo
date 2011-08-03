<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#E8EDFF">
<tr>
<td
<form action="<%=Config.base_url%>index/Akses/save">
<table id="hor-zebra" summary="Form Akses">
<thead>
<tr>
<th colspan="2" class="odd" scope="col">Form Akses </th>
</tr>
</thead>
<tbody>
<tr>
<input name="Nip" type="hidden" id="Nip" value="${model.Nip}"/>
</tr>
<tr>
<td>Name</td>
<td>
<input name="Name" type="text" id="Name" value="${model.Name}"/>
</td>
</tr>
<tr>
<td>Password</td>
<td>
<input name="Password" type="text" id="Password" value="${model.Password}"/>
</td>
</tr>
<tr>
<td>Email</td>
<td>
<input name="Email" type="text" id="Email" value="${model.Email}"/>
</td>
</tr>
<tr>
<td>Hak_Akses</td>
<td>
<input name="Hak_Akses" type="text" id="Hak_Akses" value="${model.Hak_Akses}"/>
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

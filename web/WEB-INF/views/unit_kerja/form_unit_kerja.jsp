<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#E8EDFF">
<tr>
<td
<form action="<%=Config.base_url%>index/UnitKerja/save">
<table id="hor-zebra" summary="Form UnitKerja">
<thead>
<tr>
<th colspan="2" class="odd" scope="col">Form UnitKerja </th>
</tr>
</thead>
<tbody>
<tr>
<input name="Idunit_Kerja" type="hidden" id="Idunit_Kerja" value="${model.Idunit_Kerja}"/>
</tr>
<tr>
<td>Nama_Unit_Kerja</td>
<td>
<input name="Nama_Unit_Kerja" type="text" id="Nama_Unit_Kerja" value="${model.Nama_Unit_Kerja}"/>
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

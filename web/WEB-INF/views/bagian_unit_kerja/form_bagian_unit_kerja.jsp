<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#E8EDFF">
<tr>
<td>
<form action="<%=Config.base_url%>index/BagianUnitKerja/save" method="post" enctype="multipart/form-data">
<table id="hor-zebra" summary="Form BagianUnitKerja">
<thead>
<tr>
<th colspan="2" class="odd" scope="col">Form BagianUnitKerja </th>
</tr>
</thead>
<tbody>
<tr>
<td>kode_bagian_unit_kerja</td>
<td>
<input name="kode_bagian_unit_kerja" type="text" id="kode_bagian_unit_kerja" value="${model.kode_bagian_unit_kerja}"/>
${kode_bagian_unit_kerja_error}
<input name="hidden_kode_bagian_unit_kerja" type="hidden" id="hidden_kode_bagian_unit_kerja" value="${model.kode_bagian_unit_kerja}"/>
</td>
</tr>
<tr>
<td>bagian_unit_kerja</td>
<td>
<input name="bagian_unit_kerja" type="text" id="bagian_unit_kerja" value="${model.bagian_unit_kerja}"/>
${bagian_unit_kerja_error}
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

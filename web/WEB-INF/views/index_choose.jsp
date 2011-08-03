<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<html>
<head>
</head>
<body>
<table width="100%" id="rounded-corner">
<thead>
  <tr>
  <th scope="col" class="rounded-company">No.</th>
  <th scope="col" class="rounded-q1">Data</th>
  </tr>
</thead>
<tfoot>
  <tr>
    <td colspan="1" class="rounded-foot-left"></td>
    <td class="rounded-foot-right">&nbsp;</td>
  </tr>
</tfoot>
<tbody>
  <c:forEach items="${row}" var="item" varStatus="status" >
    <tr>
      <td>${status.count}</td>
      <td><a href="#" 
             onClick="javascript:
                      window.document.getElementById('${choose_pkFieldName}').value='${item.id}';
                      self.parent.tb_remove();
                      window.document.getElementById('label_${choose_pkFieldName}').value='${item.label}';
                      ">${item.label}</a></td>
    </tr>
  </c:forEach>
</tbody>
</table>
</body>
</html>

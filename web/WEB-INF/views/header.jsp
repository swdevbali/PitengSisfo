<!--<div align="center"><a href="<%=Config.base_url%>"><img src="<%=Config.base_url%>images/header.gif"/></a><br />
      <br />
<!-- Navigational menu -->
<div id="header">
  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="1100" height="120" title="Kab Bantul">
    <param name="movie" value="<%=Config.base_url%>Movie1.swf" />
    <param name="quality" value="high" />
    <embed src="<%=Config.base_url%>Movie1.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="1100" height="120"></embed>
  </object>
<ul class="topnav">  
  <li><a href="<%=Config.base_url%>">Home</a></li>  
  <c:if test="${user_credential.role=='Administrator'}">
         <%@ include file="nav_admin.jsp" %>
  </c:if>
  <c:if test="${user_credential.role=='Pegawai'}">
    <li>  
      <a href="#">Modules</a>  
      <ul class="subnav"> 
        <%@ include file="nav_pegawai.jsp" %>
      </ul>
    </li>     
  </c:if>
  <li><a href="<%=Config.base_url%>index/login/doLogout">Logout</a></li> 
  <li><a href="#">[${user_credential.nip} ~ ${user_credential.role}]</a></li>
</ul>  
</div>
<c:if test="${pegawai_terpilih_nip!=null}">
<ol id="tab_toc">
    <li <c:if test="${active_controller=='Anak'}"> class="current" </c:if>><a href="<%=Config.base_url%>index/Anak"><span>Anak</span></a></li>
    <li <c:if test="${active_controller=='Diklat'}"> class="current" </c:if>><a href="<%=Config.base_url%>index/Diklat"><span>Diklat</span></a></li>
    <li <c:if test="${active_controller=='SuamiIstri'}"> class="current" </c:if>><a href="<%=Config.base_url%>index/SuamiIstri"><span>Pasangan</span></a></li>
    <li <c:if test="${active_controller=='Pensiun'}"> class="current" </c:if>><a href="<%=Config.base_url%>index/Pensiun"><span>Pensiun</span></a></li>
    <li <c:if test="${active_controller=='Cuti'}"> class="current" </c:if>><a href="<%=Config.base_url%>index/Cuti"><span>Cuti</span></a></li>
    <li <c:if test="${active_controller=='Jabatan'}"> class="current" </c:if>><a href="<%=Config.base_url%>index/Jabatan"><span>Jabatan</span></a></li>
    <li <c:if test="${active_controller=='NaikPangkat'}"> class="current" </c:if>><a href="<%=Config.base_url%>index/NaikPangkat"><span>Naik Pangkat</span></a></li>
    <li <c:if test="${active_controller=='KursusPenataran'}"> class="current" </c:if>><a href="<%=Config.base_url%>index/KursusPenataran"><span>Kursus/Penataran</span></a></li>
    <li <c:if test="${active_controller=='Pendidikan'}"> class="current" </c:if>><a href="<%=Config.base_url%>index/Pendidikan"><span>Pendidikan</span></a></li>
    <li <c:if test="${active_controller=='Prajabatan'}"> class="current" </c:if>><a href="<%=Config.base_url%>index/Prajabatan"><span>Prajabatan</span></a></li>
    <li <c:if test="${active_controller=='Mutasi'}"> class="current" </c:if>><a href="<%=Config.base_url%>index/Mutasi"><span>Mutasi</span></a></li>
</ol>
<br/>
<br/>
<br/>
<table  border="0">
<tr>
  <td>NIP</td>
  <td>:</td>
  <td>${pegawai_terpilih.nip}</td>
<tr>

<tr>
  <td>Nama</td>
  <td>:</td>
  <td>${pegawai_terpilih.nama_pegawai}</td>
</tr>
<tr>
  <td colspan="2">
    <a href="<%=Config.base_url%>index/Pegawai/chooseAnother">Pilih pegawai yang lain</a>
  </td>
</tr>
</table>
</c:if>


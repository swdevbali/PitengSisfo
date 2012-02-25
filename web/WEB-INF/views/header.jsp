<!--<div align="center"><a href="<%=Config.base_url%>"><img src="<%=Config.base_url%>images/header.gif"/></a><br />
      <br />
<!-- Navigational menu -->
<style type="text/css">
<!--
.style5 {font-size: 14px}
-->
</style>

<div id="header">
  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="1100" height="120" title="Kab Bantul">
    <param name="movie" value="<%=Config.base_url%>Movie1.swf" />
    <param name="quality" value="high" />
    <embed src="<%=Config.base_url%>Movie1.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="1100" height="120"></embed>
  </object>
<ul class="topnav">  
  <li><a href="<%=Config.base_url%>">HOME</a></li>  
  <c:if test="${user_credential.role=='Administrator'}">
    <%@ include file="nav_admin.jsp" %>
  </c:if>
  <c:if test="${user_credential.role=='Pegawai'}">
    <li>  
      <a href="#">MODUL</a>  
      <ul class="subnav"> 
        <%@ include file="nav_pegawai.jsp" %>
      </ul>
    </li>     
  </c:if>
  <li><a href="<%=Config.base_url%>index/login/doLogout">LOGOUT</a></li> 
  <li><a href="#">[${user_credential.nip} ~ ${user_credential.role}]</a></li>
</ul>  
</div>
<c:if test="${pegawai_terpilih_nip!=null}">
<ol id="tab_toc">
  <strong>    <li 
    <c:if test="${active_controller=='Anak'}"> class="current" </c:if>
    ><a href="<%=Config.base_url%>index/SuamiIstri">Pasangan</a>
    </li>
    <li 
    
    <c:if test="${active_controller=='Diklat'}"> class="current" </c:if>
    ><a href="<%=Config.base_url%>index/Anak">Anak</a>
    </li>
    <li 
    <c:if test="${active_controller=='SuamiIstri'}"> class="current" </c:if>
    ><a href="<%=Config.base_url%>index/Prajabatan">Prajabatan</a>
    </li>
    <li 
    <c:if test="${active_controller=='Pensiun'}"> class="current" </c:if>
    ><a href="<%=Config.base_url%>index/Pendidikan">Pendidikan</a>
    </li>
    <li 
    
    <c:if test="${active_controller=='Cuti'}"> class="current" </c:if>
    ><a href="<%=Config.base_url%>index/Diklat">Diklat</a>
    </li>
    <li 
    <c:if test="${active_controller=='Jabatan'}"> class="current" </c:if>
    ><a href="<%=Config.base_url%>index/Jabatan">Jabatan</a>
    </li>
    <li 
    <c:if test="${active_controller=='NaikPangkat'}"> class="current" </c:if>
    ><a href="<%=Config.base_url%>index/NaikPangkat">Naik Pangkat</a>
    </li>
    <li 
    <c:if test="${active_controller=='KursusPenataran'}"> class="current" </c:if>
    ><a href="<%=Config.base_url%>index/KursusPenataran">Kursus/Penataran</a>
    </li>
    <li 
    <c:if test="${active_controller=='Pendidikan'}"> class="current" </c:if>
    ><a href="<%=Config.base_url%>index/Pendidikan"><a href="<%=Config.base_url%>index/Cuti">Cuti</a></a>
    </li>
    <li 
    <c:if test="${active_controller=='Prajabatan'}"> class="current" </c:if>
    ><a href="<%=Config.base_url%>index/Prajabatan"><a href="<%=Config.base_url%>index/Mutasi">Mutasi</a>
    </li>
    </a>
    </li>
    <li 
    <c:if test="${active_controller=='Mutasi'}"> class="current" </c:if>
    ><a href="<%=Config.base_url%>index/Pensiun">Pensiun</a>  </strong>
</ol>
<br/>
<br/>
<br/>
<table  border="1" align="center" bordercolor="#000000">
<tr>
  <td><span class="style5">NIP</span></td>
  <td><div align="center" class="style5">:</div></td>
  <td><span class="style5">${pegawai_terpilih.nip}</span></td>
<tr>
<tr>
  <td><span class="style5">Nama</span></td>
  <td><div align="center" class="style5">:</div></td>
  <td><span class="style5">${pegawai_terpilih.nama_pegawai}</span></td>
</tr>
<tr>
  <td colspan="2">
    <div align="center"><a href="<%=Config.base_url%>index/Pegawai/chooseAnother">Pilih pegawai yang lain</a> </div></td>
</tr>
</table>
</c:if>


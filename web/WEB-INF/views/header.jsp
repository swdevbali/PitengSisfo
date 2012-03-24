<!--<div align="center"><a href="<%=Config.base_url%>"><img src="<%=Config.base_url%>images/header.gif"/></a><br />
      <br />
<!-- Navigational menu -->
<style type="text/css">
<!--
.style6 {
   
	font-family: Arial, "Times New Roman", Times, serif;
	font-weight: bold;
}
.style14 {font-family: Arial, "Times New Roman", Times, serif; color: #0000FF; font-size: 14px;}
.style15 {font-size: 14px}
.style16 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
-->
</style>

<div id="header">
  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="1115" height="120" title="Kab Bantul">
    <param name="movie" value="<%=Config.base_url%>Movie1.swf" />
    <param name="quality" value="high" />
    <embed src="<%=Config.base_url%>Movie1.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="1050" height="120"></embed>
  </object>
  <ul class="topnav style15">  
  <c:if test="${user_credential.role=='Administrator'}">
	  <li><a href="<%=Config.base_url%>">HOME</a></li>  
    <%@ include file="nav_admin.jsp" %>
  <li><a href="<%=Config.base_url%>index/login/doLogout">LOGOUT</a></li> 
  <li><a href="#" class=" style15">[${user_credential.nip} ~ ${user_credential.role}]</a></li>
	
  </c:if>
  <c:if test="${user_credential.role=='Pegawai'}">
      <li><a href="<%=Config.base_url%>">HOME</a></li>  

	<%@ include file="nav_pegawai.jsp" %>
	  <li><a href="<%=Config.base_url%>index/login/doLogout">LOGOUT</a></li> 
  <li><a href="#" class=" style15">[${user_credential.nip} ~ ${user_credential.role}]</a></li>
  </c:if>
</ul>  
</div>
<c:if test="${pegawai_terpilih_nip!=null}">
<ol class="style15" id="tab_toc">
    <li <c:if test="${active_controller=='SuamiIstri'}"> class="current" </c:if>
    ><a href="<%=Config.base_url%>index/SuamiIstri">Pasangan</a>
    </li>
    <li 
    
    
    <c:if test="${active_controller=='Anak'}"> class="current" </c:if>
    ><a href="<%=Config.base_url%>index/Anak">Anak</a>
    </li>
	
    <li <c:if test="${active_controller=='Prajabatan'}"> class="current" </c:if>
    ><a href="<%=Config.base_url%>index/Prajabatan">Prajabatan</a>
    </li>
	
    <li <c:if test="${active_controller=='Pendidikan'}"> class="current" </c:if>
    ><a href="<%=Config.base_url%>index/Pendidikan">Pendidikan</a>
    </li>
    
	<li <c:if test="${active_controller=='Diklat'}"> class="current" </c:if>
    ><a href="<%=Config.base_url%>index/Diklat">Diklat</a>
    </li>
    
	<li
    <c:if test="${active_controller=='Jabatan'}"> class="current" </c:if>
    ><a href="<%=Config.base_url%>index/Jabatan">Jabatan</a>
    </li>
    
	<li <c:if test="${active_controller=='NaikPangkat'}"> class="current" </c:if>
    ><a href="<%=Config.base_url%>index/NaikPangkat">Naik Pangkat</a>
    </li>
    
	<li <c:if test="${active_controller=='KursusPenataran'}"> class="current" </c:if>
    ><a href="<%=Config.base_url%>index/KursusPenataran">Kursus/Penataran</a>
    </li>
	
    <li 
    
    <c:if test="${active_controller=='Cuti'}"> class="current" </c:if>>
	<a href="<%=Config.base_url%>index/Cuti">Cuti</a></a>
    </li>
    <li 
    
    <c:if test="${active_controller=='Mutasi'}"> class="current" </c:if>>
	<a href="<%=Config.base_url%>index/Mutasi">Mutasi</a>
    </li>
    </a>
    </li>
    <li 
    
    <c:if test="${active_controller=='Pensiun'}"> class="current" </c:if>
    ><a href="<%=Config.base_url%>index/Pensiun">Pensiun</a>  
    	
	
</ol>
<br/>
<br/>
<br/>
<br/>
<br/>
<table  border="1" bordercolor="#FFFFCC" bgcolor="#99CCFF">
<tr>
  <td bgcolor="#FFCC00"><div align="left"><span class="style14">NIP</span></div></td>
  <td bgcolor="#FFCC00"><div align="center" class="style14">:</div></td>
  <td bgcolor="#FFCC00"><span class="style14">${pegawai_terpilih.nip}</span></td>
<tr>
<tr>
  <td bgcolor="#FFCC00"><div align="left"><span class="style14">Nama</span></div></td>
  <td bgcolor="#FFCC00"><div align="center" class="style14">:</div></td>
  <td bgcolor="#FFCC00"><span class="style14">${pegawai_terpilih.nama_pegawai}</span></td>
</tr>
<c:if test="${user_credential.role=='Administrator'}">
<tr>
  <td colspan="2">
    <p align="left"><a href="<%=Config.base_url%>index/Pegawai/chooseAnother" class="style12 style15 style16">Pilih pegawai yang lain</a> </p></td>
</tr>
</c:if>
</table>
</c:if>


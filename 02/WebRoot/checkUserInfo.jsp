<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<meta http-equiv = "x-ua-compatible" content="ie=7"/>
<jsp:directive.page import="com.wy.model.UserInfoForm"/>
<%@ taglib prefix="s" uri="/struts-tags"%>
<script   language="javascript">   
  window.onbeforeunload   =   function   ()   
  {   
            if   (event.clientY   <   0   &&   event.clientX>document.body.scrollWidth)   {   
           window.location.href="loginOut.jsp";
        }   
  }   
</script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>����ϵ����վ-�û���¼</title>
<link href="css/style.css" type="text/css" rel="stylesheet">
</head>
<script language="javascript" src="js/js.js" type="text/javascript"></script>
<body>
<table width="870" height="83" border="0" align="center" cellpadding="0" cellspacing="0" background="images/land_01.gif">
  <tr>
    <td width="200">&nbsp;</td>
    <td width="670" valign="top"><table width="647" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="647" height="56" valign="bottom">
		
		 <a href="#" class="a3">���������</a> &nbsp;&nbsp;&nbsp;<a href="#" class="a3">����������</a>&nbsp;&nbsp; &nbsp;<a href="#"  class="a3">������Ϸ��</a> &nbsp;&nbsp;&nbsp;<a href="#" class="a3">����ͼ����</a>&nbsp; &nbsp;&nbsp;<a href="#" class="a3">����������</a> &nbsp;&nbsp;<a href="#" class="a3">&nbsp;���彻����</a> &nbsp;&nbsp;&nbsp;&nbsp;<a href="#" class="a3">��������</a> &nbsp;&nbsp;&nbsp;<a href="#" class="a3">PC������</a>		</td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="870" height="29" border="0" align="center" cellpadding="0" cellspacing="0" background="images/land_02.gif">
  <tr>
    <td width="563">
	
    <%if(null==session.getAttribute("form")){ %>
    <table width="546" border="0" align="left" cellpadding="0" cellspacing="0">
	<s:form action="userInfo_checkUserInfo">
      <tr>
	    <td width="10">&nbsp;</td>
        <td width="50" class="word_white">�˺ţ�</td>
        <td width="76"><s:textfield name="account" size="10"/></td>
        <td width="50" class="word_white">���룺</td>
        <td width="76"><s:password name="password"  size="10"/></td>
        <td width="59" class="word_white">��֤�룺</td>
        <td width="67"><s:textfield name="code"  size="10"/></td>
		<td width="32"><a href="#" onClick="reload()"><img border=0 src="image.jsp" name="checkCode"></a></td>
        <td width="136">&nbsp;&nbsp;<s:submit value="" cssStyle="background-image:url(images/land_button.gif);border:0;width:44;height:16"/></td>
      </tr>
	</s:form>
    </table>
    <%}else{ 
    UserInfoForm userInfo=(UserInfoForm)session.getAttribute("form");
    
    %>
  &nbsp;&nbsp;<span class="word_white"><%=userInfo.getAccount()%> �Ѿ���¼�� </span><a href="loginOut.jsp" class="a3">�����������˳���¼��</a>
    <%} %>
	</td>
    <td width="307"><font color="#BEEBFF"><s:fielderror><s:param value="%{'account'}"/></s:fielderror><s:fielderror><s:param value="%{'password'}"/></s:fielderror><s:fielderror><s:param value="%{'code'}"/></s:fielderror></font>
  </td></tr>
</table>
<table width="870" height="133" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="images/land_03.gif" width="870" height="133"></td>
  </tr>
</table>

<table width="870" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="325" height="68"><img src="images/land_04.gif" width="325" height="272"></td>
    <td width="272"><img src="images/land_05.gif" width="325" height="272"></td>
    <td width="273"><img src="images/land_06.gif" width="220" height="272" border="0" usemap="#Map"></td>
  </tr>
</table>
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="images/land_07.gif" width="870" height="104"></td>
  </tr>
</table>

<map name="Map">
	<area shape="rect" coords="15,30,202,62" href="saveUserInfo.jsp">
</map></body>
</html>

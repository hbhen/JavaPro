<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script language="javascript" src="js/js.js" type="text/javascript"></script>
<title>����ϵ����վ-�û�ע��</title>
<link href="css/style.css" type="text/css" rel="stylesheet">
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
-->
</style>
</head>
<%@ taglib prefix="s" uri="/struts-tags"%>


<body onLoad="clockon(bgclock);">
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
    <td width="656">&nbsp;&nbsp;&nbsp;<span class="word_white">�û�ע��</span>	</td>
    <td width="214"><font color="#BEEBFF">
      <div id="bgclock"></div></font>
  </td></tr>
</table>




<table width="870" height="133" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="images/land_03.gif" width="870" height="133"></td>
  </tr>
</table>
















<table width="870" border="00" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="172" valign="top" bgcolor="#FFFFFF"><img src="images/land_11.gif" width="270" height="497" border="0" usemap="#Map"></td>
    <td width="698" valign="top"><table width="543" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="543"><img src="images/land_14.gif" width="601" height="53"></td>
      </tr>
    </table>
      <table width="601" border="0" cellpadding="0" cellspacing="0" background="images/land_15.gif">
        <tr>
          <td height="137">
		  
		  <table width="518" border="0" align="center" cellpadding="0" cellspacing="0">
      <s:form action="userInfo_saveUserInfo">      
      
        <tr>
          <td width="106" height="30">�û�����</td>
          <td height="30"><s:textfield name="account"/></td>
          <td height="30"><s:fielderror><s:param value="%{'account'}"/></s:fielderror>&nbsp;</td>
        </tr>
        <tr>
          <td height="30">���룺</td>
          <td height="30"><s:password name="password"/></td>
          <td height="30"><s:fielderror><s:param value="%{'password'}"/></s:fielderror>&nbsp;</td>
        </tr>
        <tr>
          <td height="30">ȷ�����룺</td>
          <td height="30"><s:password name="repassword"/></td>
          <td height="30"><s:fielderror><s:param value="%{'repassword'}"/></s:fielderror>&nbsp;</td>
        </tr>
        <tr>
          <td height="30">���뱣�����⣺</td>
          <td height="30"><s:select name="question" list="{'��ĸ��׽�ʲô����','���ĸ�׽�ʲô����','��ĳ��������Ƕ���','����������ѧ��ҵ��','��İ�����ʲô'}"/></td>
          <td height="30">&nbsp;</td>
        </tr>
        <tr>
          <td height="30">���뱣���𰸣�</td>
          <td height="30"><s:textfield name="result"/></td>
          <td height="30"><s:fielderror><s:param value="%{'reslut'}"/></s:fielderror>&nbsp;</td>
        </tr>
        <tr>
          <td height="30">&nbsp;</td>
          <td height="30" colspan="2"><span class="STYLE1">һ����д�Ͳ��ɸ��ģ�������Լ��ı�������ʹ�</span></td>
        </tr>
        <tr>
          <td height="30">Email��</td>
          <td height="30"><s:textfield name="email"/></td>
          <td height="30">&nbsp;</td>
        </tr>
      
        <tr>
          <td height="30">������</td>
          <td height="30"><s:textfield name="realName"/></td>
          <td height="30">&nbsp;</td>
        </tr>
        <tr>
          <td height="30">����֤�ţ�</td>
          <td height="30"><s:textfield name="iDCard"/></td>
          <td height="30">&nbsp;</td>
        </tr>
        <tr>
          <td height="30">���գ�</td>
          <td height="30"><s:textfield name="birthday"/></td>
          <td height="30"><s:fielderror><s:param value="%{'birthday'}"/></s:fielderror>&nbsp;</td>
        </tr>
        <tr>
          <td height="30">�Ա�</td>
          <td height="30"><s:radio name="sex" list="{'��','Ů' }" value="%{'��'}" cssClass="cannelBorder"/></td>
          <td height="30">&nbsp;</td>
        </tr>
        <tr>
          <td height="30">�������ڵأ�</td>
          <td height="30"><s:textfield name="spaceForm"/></td>
          <td height="30">&nbsp;</td>
        </tr>
        <tr>
          <td height="30">ѧ����</td>
          <td height="30"><s:select name="schoolAge" list="{'��ר','����','�о���'}"/></td>
          <td height="30">&nbsp;</td>
        </tr>
        <tr>
          <td height="30">ְҵ��</td>
          <td height="30"><s:textfield name="profession"/></td>
          <td height="30">&nbsp;</td>
        </tr>
        <tr>
          <td height="30">���룺</td>
          <td height="30"><s:select name="income" list="{'800-1000','1000-2000','2000-3000','3000-4000','4000����'}"/></td>
          <td height="30">&nbsp;</td>
        </tr>
        <tr>
          <td colspan="3">����ϵ��ʽ</td>
        </tr>
        <tr>
          <td height="30">��ϵ�绰��</td>
          <td height="30"><s:textfield name="tel"/></td>
          <td height="30">&nbsp;</td>
        </tr>
        <tr>
          <td height="30">QQ���룺</td>
          <td height="30"><s:textfield name="qqNumber"/></td>
          <td height="30"><s:fielderror><s:param value="%{'qqNumber'}"/></s:fielderror>&nbsp;</td>
        </tr>
        <tr>
          <td height="30">MSN���룺</td>
          <td height="30"><s:textfield name="msnNumber"/></td>
          <td height="30"><s:fielderror><s:param value="%{'msnNumber'}"/></s:fielderror>&nbsp;</td>
        </tr>
        <tr>
          <td height="30">������ҳ��</td>
          <td height="30"><s:textfield name="selfPage"/></td>
          <td height="30">&nbsp;</td>
        </tr>
        <tr>
          <td height="30">��ϵ��ַ��</td>
          <td height="30"><s:textfield name="address"/></td>
          <td height="30">&nbsp;</td>
        </tr>
        <tr>
          <td height="30">�������룺</td>
          <td height="30"><s:textfield name="post"/></td>
          <td height="30"><s:fielderror><s:param value="%{'post'}"/></s:fielderror>&nbsp;</td>
        </tr>
      
        <tr>
          <td height="30">ע��У�飺</td>
          <td width="129" height="30"><s:textfield name="code"/></td>
          <td width="261"><s:fielderror><s:param value="%{'code'}"/></s:fielderror>&nbsp;</td>
        </tr>
		 <tr>
          <td height="30">&nbsp;</td>
          <td height="30"><a href="#bottom" onClick="reload()"><img border=0 src="image.jsp" name="checkCode"></a></td>
          <td height="30">&nbsp;</td>
		 </tr>
		 <tr>
          <td height="30" colspan="3" align="center">
		  
		  <s:submit value="" cssStyle="background-image:url(images/land_17.gif);border:0;width:245;height:43"/>
		  
		  </td>
        </tr>
         <tr>
          <td height="30" colspan="3" align="center">&nbsp;
          <s:property value="#request.inforamtion"/>
          
          </td>
        </tr>
        
        </s:form>
      </table>
		  
		  
		  </td>
        </tr>
      </table>
      <table border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td><img src="images/land_16.gif" width="601" height="15"></td>
        </tr>
      </table></td>
  </tr>
</table>
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="images/land_13.gif" width="870" height="75"></td>
  </tr>
</table>


<map name="Map"><area shape="rect" coords="29,223,232,255" href="index.jsp">
</map></body>
</html>
<%@page contentType="text/html" pageEncoding="gb2312"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
        <link href="css/style.css" type="text/css" rel="stylesheet">
       
    <title>���幤����-�һ������һ��</title>    </head>
    

    
    <META HTTP-EQUIV="Pragma" CONTENT="no-cache"> 
    <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache"> 
    <META HTTP-EQUIV="Expires" CONTENT="0"> 
        
<script language="javascript">

function checkForm(form){   
   if(form.account.value==""){
      window.alert("�������û���¼�ǳ�!");     
      return false;
   }    
}

</script>
 
    
    
    
    
    
    
    
    
    
    
    
    <body>
        <table width="765" height="120" border="0" align="center" cellpadding="0" cellspacing="0" background="images/re_top.jpg">
          <tr>
            <td width="520">&nbsp;</td>
            <td width="245" valign="top"><table width="214" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="252" height="43" valign="bottom"><a href="#" class="a2">��Ϊ��ҳ</a> / <a href="#" class="a2">�����ղ�</a> / <a href="#" class="a2">��ϵ����</a></td>
              </tr>
            </table></td>
          </tr>
        </table>
        <table width="765" border="0" align="center" cellpadding="0" cellspacing="0" background="images/re_center.jpg">
          <tr>
            <td width="538" height="93" align="center" valign="top">
			 �������û��ǳ�<br>
			 <br> 
			   <form name="form" method="post" action="userInfo?method=3" onSubmit="return checkForm(form)">
         <table width="367" border="0">
                  <tr>
                    <td width="99" height="25">�û���¼�ǳƣ�</td>
                    <td width="163" colspan="2"><input name="account" type="text"></td>
                  </tr>
                  <tr>
                    <td height="25">&nbsp;</td>
                    <td><input type="submit" name="Submit" value=" �� �� �� �� "></td>
                    <td><a href="index.jsp" class="a2">���ص�¼</a></td>
                  </tr>
				  
				   <tr>
                <td height="30">&nbsp;</td>
                <td colspan="3">${requestScope.information}</td>
            </tr>
                </table>
			   </form>			</td>
            <td width="227">
			<table width="174" height="546" border="0" align="center">
                <tr>
                    <td width="164" height="35">��Ա����</td>
                </tr>
                <tr>
                    <td><p>A:��ע�ᵫδ������û�</p>
                    <p><a href="#" class="a6">���ϼ����ҵ��ʻ�</a></p></td>
                </tr>
                <tr>
                    <td height="68">����ļ����붪ʧ�������:<a href="#" class="a6">����ͨ�������ȡ������</a>�����͵����ע�����䣩</td>
                </tr>
                <tr>
                    <td height="55">������ע������û�н��յ������룬����ԣ�<a href="#" class="a6">�޸����ע������</a>������֪���ʻ����룩</td>
                </tr>
                <tr>
                    <td height="30">B:�Ѽ���ȴ������������û�</td>
                </tr>
                <tr>
                    <td height="20"><a href="#" class="a2">ͨ���ش�������������</a></td>
                </tr>
                <tr>
                    <td height="20"><a href="#" class="a2">��������������ӷ���ע��Email</a></td>
                </tr>
                <tr>
                    <td height="30">C:�ѵ�¼�û�</td>
                </tr>
                <tr>
                    <td height="48"><a href="#" class="a2">ע����¼</a>&nbsp;<a href="#" class="a2">�޸���ʾ�������</a><br> <br><a href="#" class="a2">�޸�ע������</a>&nbsp;&nbsp;&nbsp;<a href="#" class="a2">��������</a></td>
                </tr>
                <tr>
                    <td height="30">D:ע������</td>
                </tr>
                <tr>
                    <td height="133">                    
                        
                        ��������Լ��������뷢���ʼ����������䣺<a href="#" class="a2">wy9wy163@163.com</a>	   <br>
                        ��Ҫ��ѯʱ������ذ����ע���û�����ע��Email���Լ�����֤������˺����������Ϣһ�𷢹�����<br>
                    ��bug������ʱ������ذѳ��ֵ�bug�Ĳ������̣���Ҫ�Ľ�ͼһ�𷢹�����</td>
                </tr>
                
        </table>
			
			
			</td>
          </tr>
    </table>
        <table width="765" height="90" border="0" align="center" cellpadding="0" cellspacing="0" background="images/re_down.jpg">
          <tr>
            <td align="center">	<font color="#666666">
			�����������ߣ�0431-84972266 &nbsp;���棺0431-84972266 &nbsp;��ҵ���䣺mingrisoft@mingrisoft.com<br><br>
            Copyright&reg; &nbsp;2008 &nbsp;<a href="http://www.mingrisoft.com" class="a2">http://www.mingrisoft.com</a> &nbsp;All Right Reserved!			</font>	</td>
          </tr>
        </table>
    </body>
</html>

<%@page contentType="text/html" pageEncoding="gb2312"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
        <link href="css/style.css" type="text/css" rel="stylesheet">
       
    <title>���幤����-�û�ע��</title>    </head>
    

    
    <META HTTP-EQUIV="Pragma" CONTENT="no-cache"> 
    <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache"> 
    <META HTTP-EQUIV="Expires" CONTENT="0"> 
        
<script language="javascript">


function checkemail(email){
 var str=email;
  //��JavaScript�У�������ʽֻ��ʹ��"/"��ͷ�ͽ���������ʹ��˫����
 var Expression=/\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/; 
 var objExp=new RegExp(Expression);
 if(objExp.test(str)==true){
  return true;
 }else{
  return false;
 }
}




function checkForm(form){   
   if(form.account.value==""){
      window.alert("�������û���¼�ǳ�!");     
      return false;
   }  
   if(form.account.value.length < 5 ||form.account.value.length > 20){
      window.alert("�û���¼�ǳƱ�����5-20֮�䣡");     
      return false;
   } 
   if(form.password.value==""){
      window.alert("�������û���¼���룡");
      return false;
   }
   if(form.password.value.length < 8){
      window.alert("�û���¼���������8λ����");
      return false;
   } 
   if(form.repassword.value==""){
      window.alert("�������û���¼�ظ����룡");
      return false;
   }
   if(form.repassword.value!=form.password.value){
      window.alert("��������������붼����ȷ��");
      return false;
   }
   if(form.email.value==""){
      window.alert("������email��ַ");
      return false;
   }
   if(!checkemail(form.email.value)){
      window.alert("�������email��ַ��ʽ����ȷ");
      return false;
   }
   if(form.code.value==""){
      window.alert("������У����");
      return false;
   }  
}
 function reload(){
 	document.checkCode.src="PictureCheckCode";
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
            <td width="538" height="93" align="center">
			
			   <form name="form" method="post" action="userInfo?method=2" onSubmit="return checkForm(form)">
                <table width="509" height="290" border="0" align="center">
                <tr>
                    <td width="105" height="30" align="right">�û���¼�ǳƣ�</td>
                    <td colspan="2">
                        <input name="account" type="text">&nbsp;*</td>
                </tr>
                <tr>
                    <td width="105" height="30" align="right">&nbsp;</td>
                    <td colspan="2">5-20λ��ĸ�����ֻ��ַ���ϣ�����ĸ����Ϊ��ĸ��</td>
                </tr>
                <tr>
                    <td height="30" align="right">&nbsp;</td>
                    <td colspan="2">Ϊ�������ʻ���ȫ��ǿ�ҽ����������ʹ���ַ�+����+�����ַ���ʽ����������ĳ��ȴ���8λ��</td>
                </tr>
                
                
                <tr>
                    <td height="30" align="right">���룺</td>
                    <td colspan="2">
                        <input name="password" type="password">
                    &nbsp;*</td>
                </tr>
                <tr>
                    
                    
                    <td height="30" align="right">�ظ��������룺</td>
                    <td colspan="2">
                        <input name="repassword" type="password">
                    &nbsp;*</td>
                </tr>
                <tr>
                    <td height="30" align="right">&nbsp;</td>
                    <td colspan="2">
                        ע�⣺�����������յ����幤���Ҽ�����ġ�<br>
                    �û�ע�����Ҫ����ſ���ʹ�ã�������ֻ�ᷢ����ע�������С�			   </td>
                </tr>
                 <tr>    
                <td height="30" align="right">Email��ַ��</td>
                <td colspan="2"><input name="email" type="text"  size="40">&nbsp;*</td>
                  </tr>
            
            
            <tr>
                <td height="30" colspan="3" align="center">��������ѡ�ֻҪ���κ�һ��û�����룬�㽫������ʹ��ͨ������������������Ĺ��ܡ�</td>
            </tr>
            <tr>
                <td height="30" align="right">&nbsp;</td>
                <td colspan="2" valign="bottom">�û������һ����ǵ����룡</td>
            </tr> 
            
            <tr>
                <td height="30" align="right">������ʾ���⣺</td>
                <td colspan="2">
                    <input name="question" type="text" id="question" size="60">                </td>
            </tr>
            <tr>
                <td height="30" align="right">&nbsp;</td>
                <td colspan="2" valign="bottom">�û������һ����ǵ����룡</td>
            </tr> 
            <tr>
                <td height="30" align="right">��ʾ����𰸣�</td>
                <td colspan="2">
                    <input name="result" type="text" id="result" size="60">                </td>
            </tr>
            <tr>
                <td height="30" align="right">У���룺</td>
                <td colspan="2">  
                    <img border=0 src="PictureCheckCode" name="checkCode">                </td>
            </tr>
            <tr>
                <td height="30" align="right">&nbsp; </td>
                <td colspan="2"><a href="#" onClick="reload()">���»����֤��</a></td>
            </tr> 
            <tr>
                <td height="30" align="right">����У���룺</td>
                <td colspan="2">
                    <input name="code" type="text">&nbsp;*</td>
            </tr>
            <tr>
                <td height="30">&nbsp;</td>
              <td width="307"><input type="submit" name="Submit" value=" ע �� �� �� ">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td width="83">&nbsp; <a href="index.jsp" class="a2">���ص�¼</a></td>
            </tr>
            <tr>
                <td height="30">&nbsp;</td>
                <td colspan="2">${requestScope.information}</td>
            </tr>
        </table>
        </form>
        
			
			
			
			
			
			
			
			
			
			
			
			</td>
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

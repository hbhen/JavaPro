<%@page contentType="text/html" pageEncoding="gb2312"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
        <link href="css/style.css" type="text/css" rel="stylesheet">
       
    <title>狼族工作室-用户注册</title>    </head>
    

    
    <META HTTP-EQUIV="Pragma" CONTENT="no-cache"> 
    <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache"> 
    <META HTTP-EQUIV="Expires" CONTENT="0"> 
        
<script language="javascript">


function checkemail(email){
 var str=email;
  //在JavaScript中，正则表达式只能使用"/"开头和结束，不能使用双引号
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
      window.alert("请输入用户登录昵称!");     
      return false;
   }  
   if(form.account.value.length < 5 ||form.account.value.length > 20){
      window.alert("用户登录昵称必须在5-20之间！");     
      return false;
   } 
   if(form.password.value==""){
      window.alert("请输入用户登录密码！");
      return false;
   }
   if(form.password.value.length < 8){
      window.alert("用户登录密码必须在8位以上");
      return false;
   } 
   if(form.repassword.value==""){
      window.alert("请输入用户登录重复密码！");
      return false;
   }
   if(form.repassword.value!=form.password.value){
      window.alert("您输入的两次密码都不正确！");
      return false;
   }
   if(form.email.value==""){
      window.alert("请输入email地址");
      return false;
   }
   if(!checkemail(form.email.value)){
      window.alert("您输入的email地址格式不正确");
      return false;
   }
   if(form.code.value==""){
      window.alert("请输入校验码");
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
                <td width="252" height="43" valign="bottom"><a href="#" class="a2">设为首页</a> / <a href="#" class="a2">加入收藏</a> / <a href="#" class="a2">联系我们</a></td>
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
                    <td width="105" height="30" align="right">用户登录昵称：</td>
                    <td colspan="2">
                        <input name="account" type="text">&nbsp;*</td>
                </tr>
                <tr>
                    <td width="105" height="30" align="right">&nbsp;</td>
                    <td colspan="2">5-20位字母、数字或字符组合，首字母必须为字母。</td>
                </tr>
                <tr>
                    <td height="30" align="right">&nbsp;</td>
                    <td colspan="2">为了您的帐户安全，强烈建议你的密码使用字符+数字+特殊字符方式，并且密码的长度大于8位。</td>
                </tr>
                
                
                <tr>
                    <td height="30" align="right">密码：</td>
                    <td colspan="2">
                        <input name="password" type="password">
                    &nbsp;*</td>
                </tr>
                <tr>
                    
                    
                    <td height="30" align="right">重复输入密码：</td>
                    <td colspan="2">
                        <input name="repassword" type="password">
                    &nbsp;*</td>
                </tr>
                <tr>
                    <td height="30" align="right">&nbsp;</td>
                    <td colspan="2">
                        注意：邮箱必须可以收到狼族工作室激活码的。<br>
                    用户注册后，需要激活，才可以使用！激活码只会发到你注册邮箱中。			   </td>
                </tr>
                 <tr>    
                <td height="30" align="right">Email地址：</td>
                <td colspan="2"><input name="email" type="text"  size="40">&nbsp;*</td>
                  </tr>
            
            
            <tr>
                <td height="30" colspan="3" align="center">以下两个选项，只要有任何一个没有输入，你将不可能使用通过答案问题新设置密码的功能。</td>
            </tr>
            <tr>
                <td height="30" align="right">&nbsp;</td>
                <td colspan="2" valign="bottom">用户帮您找回忘记的密码！</td>
            </tr> 
            
            <tr>
                <td height="30" align="right">密码提示问题：</td>
                <td colspan="2">
                    <input name="question" type="text" id="question" size="60">                </td>
            </tr>
            <tr>
                <td height="30" align="right">&nbsp;</td>
                <td colspan="2" valign="bottom">用户帮您找回忘记的密码！</td>
            </tr> 
            <tr>
                <td height="30" align="right">提示问题答案：</td>
                <td colspan="2">
                    <input name="result" type="text" id="result" size="60">                </td>
            </tr>
            <tr>
                <td height="30" align="right">校验码：</td>
                <td colspan="2">  
                    <img border=0 src="PictureCheckCode" name="checkCode">                </td>
            </tr>
            <tr>
                <td height="30" align="right">&nbsp; </td>
                <td colspan="2"><a href="#" onClick="reload()">重新获得验证码</a></td>
            </tr> 
            <tr>
                <td height="30" align="right">输入校验码：</td>
                <td colspan="2">
                    <input name="code" type="text">&nbsp;*</td>
            </tr>
            <tr>
                <td height="30">&nbsp;</td>
              <td width="307"><input type="submit" name="Submit" value=" 注 册 用 户 ">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td width="83">&nbsp; <a href="index.jsp" class="a2">返回登录</a></td>
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
                    <td width="164" height="35">会员帮助</td>
                </tr>
                <tr>
                    <td><p>A:已注册但未激活的用户</p>
                    <p><a href="#" class="a6">马上激活我的帐户</a></p></td>
                </tr>
                <tr>
                    <td height="68">如果的激活码丢失，你可以:<a href="#" class="a6">重新通过邮箱获取激活码</a>（发送到你的注册邮箱）</td>
                </tr>
                <tr>
                    <td height="55">如果你的注册邮箱没有接收到激活码，你可以：<a href="#" class="a6">修改你的注册邮箱</a>（必须知道帐户密码）</td>
                </tr>
                <tr>
                    <td height="30">B:已激活却忘记了密码的用户</td>
                </tr>
                <tr>
                    <td height="20"><a href="#" class="a2">通过回答问题新设密码</a></td>
                </tr>
                <tr>
                    <td height="20"><a href="#" class="a2">把新设密码的连接发到注册Email</a></td>
                </tr>
                <tr>
                    <td height="30">C:已登录用户</td>
                </tr>
                <tr>
                    <td height="48"><a href="#" class="a2">注销登录</a>&nbsp;<a href="#" class="a2">修改提示问题与答案</a><br> <br><a href="#" class="a2">修改注册邮箱</a>&nbsp;&nbsp;&nbsp;<a href="#" class="a2">新设密码</a></td>
                </tr>
                <tr>
                    <td height="30">D:注册条款</td>
                </tr>
                <tr>
                    <td height="133">                    
                        
                        建议意见以及错误反馈请发送邮件到以下邮箱：<a href="#" class="a2">wy9wy163@163.com</a>	   <br>
                        需要咨询时候，请务必把你的注册用户名、注册Email、以及其他证明这个账号属于你的信息一起发过来。<br>
                    有bug反馈的时候，请务必把出现的bug的操作过程，必要的截图一起发过来。</td>
                </tr>
                
        </table>
			
			
			</td>
          </tr>
    </table>
        <table width="765" height="90" border="0" align="center" cellpadding="0" cellspacing="0" background="images/re_down.jpg">
          <tr>
            <td align="center">	<font color="#666666">
			技术服务热线：0431-84972266 &nbsp;传真：0431-84972266 &nbsp;企业邮箱：mingrisoft@mingrisoft.com<br><br>
            Copyright&reg; &nbsp;2008 &nbsp;<a href="http://www.mingrisoft.com" class="a2">http://www.mingrisoft.com</a> &nbsp;All Right Reserved!			</font>	</td>
          </tr>
        </table>
    </body>
</html>

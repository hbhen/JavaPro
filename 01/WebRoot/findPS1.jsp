<%@page contentType="text/html" pageEncoding="gb2312"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
        <link href="css/style.css" type="text/css" rel="stylesheet">
       
    <title>狼族工作室-找回密码第一步</title>    </head>
    

    
    <META HTTP-EQUIV="Pragma" CONTENT="no-cache"> 
    <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache"> 
    <META HTTP-EQUIV="Expires" CONTENT="0"> 
        
<script language="javascript">

function checkForm(form){   
   if(form.account.value==""){
      window.alert("请输入用户登录昵称!");     
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
                <td width="252" height="43" valign="bottom"><a href="#" class="a2">设为首页</a> / <a href="#" class="a2">加入收藏</a> / <a href="#" class="a2">联系我们</a></td>
              </tr>
            </table></td>
          </tr>
        </table>
        <table width="765" border="0" align="center" cellpadding="0" cellspacing="0" background="images/re_center.jpg">
          <tr>
            <td width="538" height="93" align="center" valign="top">
			 请输入用户昵称<br>
			 <br> 
			   <form name="form" method="post" action="userInfo?method=3" onSubmit="return checkForm(form)">
         <table width="367" border="0">
                  <tr>
                    <td width="99" height="25">用户登录昵称：</td>
                    <td width="163" colspan="2"><input name="account" type="text"></td>
                  </tr>
                  <tr>
                    <td height="25">&nbsp;</td>
                    <td><input type="submit" name="Submit" value=" 提 交 用 户 "></td>
                    <td><a href="index.jsp" class="a2">返回登录</a></td>
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

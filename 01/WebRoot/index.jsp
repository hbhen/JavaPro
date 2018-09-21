<%@page contentType="text/html" pageEncoding="gb2312"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>狼族工作室-用户登录</title>
		<link href="css/style.css" type="text/css" rel="stylesheet">

		<script language="javascript">
 function reload(){
 	document.checkCode.src="PictureCheckCode";
}

function checkEmpty(form){
for(i=0;i<form.length;i++){
if(form.elements[i].value==""){
alert(form.elements[i].title);
return false;
}
}
}
 </script>
	</head>
	<body>





		<br>
		<table width="766" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td width="496" valign="top">
					<table width="496" height="205" border="0" cellpadding="0"
						cellspacing="0" background="images/banne.jpg">
						<tr>
							<td width="204">
								&nbsp;
							</td>
							<td width="278" class="line">

								<b>关于狼族工作室</b>
								<br>
								<br>
								狼族工作室是由几个志同道合的朋友一起创办的集博客、论坛、空间、新闻等8大功能于一身的门户网站机构、先已拥有800万固定网友......
								<br>
								<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="#" class="a3">现在注册&nbsp;>></a>
							</td>
							<td width="14">
								&nbsp;
							</td>
						</tr>
					</table>
					<table width="496" border="0" cellpadding="0" cellspacing="0"
						background="images/char.jpg">
						<tr>
							<td height="31" class="word">
								&nbsp;
							</td>
						</tr>
					</table>
					<table width="496" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="55" height="233">
								<img src="images/left.jpg" width="55" height="233">
							</td>
							<td width="10">
								&nbsp;
							</td>
							<td width="212" valign="top">
								<table width="205" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td height="45" valign="bottom" class="word">
											<span class="lineline"><strong>狼族空间</strong>
											<br> 提供50MB免费空间，支持MySQL数据库</span>
										</td>
									</tr>
								</table>
								<table width="205" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td height="54" valign="bottom" class="word">
											<span class="lineline"><strong>狼族博客</strong>
											<br> 新近研发博客搬家工具，方便之门</span>
										</td>
									</tr>
								</table>
								<table width="205" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td height="58" valign="bottom" class="word">
											<span class="lineline"><strong>狼族新闻</strong>
											<br> 最新最全的国内外大事全记录</span>
										</td>
									</tr>
								</table>
								<table width="205" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td height="56" valign="bottom" class="word">
											<span class="lineline"><strong>狼族文档</strong>
											<br> 还在费力的到处查找文档吗，快请进</span>
										</td>
									</tr>
								</table>
							</td>
							<td width="34">
								<img src="images/right.jpg" width="34" height="233">
							</td>
							<td width="10">
								&nbsp;
							</td>
							<td width="175" valign="top">
								<table width="168" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td width="168" height="45" valign="bottom" class="word">
											<span class="lineline"><strong>狼族空间</strong>
											<br> 30位斑竹热聘中....</span>
										</td>
									</tr>
								</table>
								<table width="163" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td width="163" height="54" valign="bottom" class="word">
											<span class="lineline"><strong>狼族下载</strong>
											<br> 500万资源供您下载</span>
										</td>
									</tr>
								</table>
								<table width="167" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td width="167" height="58" valign="bottom" class="word">
											<span class="lineline"><strong>狼族网摘</strong>
											<br> 就像天空的浮云一样</span>
										</td>
									</tr>
								</table>
								<table width="166" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td width="166" height="56" valign="bottom" class="word">
											<span class="lineline"><strong>狼族读书</strong>
											<br> 到狼族读书“武装”自己</span>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
				<td width="270" valign="top">
					<table width="237" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td height="18" align="center">
								<a href="#" class="a4">设为首页</a> /
								<a href="#" class="a4">加入收藏</a> /
								<a href="#" class="a4">联系我们</a>
							</td>
						</tr>
					</table>
					<table width="128" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<img src="images/land.jpg" width="270" height="56">
							</td>
						</tr>
					</table>
					<table width="270" height="304" border="0" cellpadding="0"
						cellspacing="0">
						<tr>
							<td background="images/land1.jpg" valign="top">




								<%
								if (null == session.getAttribute("userInfo")) {
								%>
								<form name="form" method="post" action="userInfo?method=1"
									onSubmit="return checkEmpty(form)">
									<table width="231" border="0" align="center">

										<tr>
											<td width="53" height="25">
												登录名：
											</td>
											<td width="168" height="25">
												<input type="text" name="account" title="请输入登录用户名">
											</td>
										</tr>
										<tr>
											<td height="25">
												密&nbsp;&nbsp;码：
											</td>
											<td height="25">
												<input type="password" name="password" title="请输入登录密码">
											</td>
										</tr>
										<tr>
											<td height="25">
												校验码：
											</td>
											<td height="25">
												<input type="text" name="code" title="请输入验证码">
											</td>
										</tr>
										<tr>
											<td height="25" colspan="2" align="center" valign="middle">


												<table width="185" border="0" cellpadding="0"
													cellspacing="0">
													<tr>
														<td width="69">
															<img border=0 src="PictureCheckCode" name="checkCode">
														</td>
														<td width="116">
															&nbsp;
															<a href="#" onClick="reload()" class="a2">重新获得验证码</a>
														</td>
													</tr>
												</table>
											</td>
										</tr>

										<tr>
											<td height="25" colspan="2" align="center">
												<input name="Submit" type="image" class="noborder"
													src="images/land.gif">
											</td>
										</tr>
										<tr>
											<td height="15" colspan="2" align="center">

												<a href="register.jsp" class="a2">没有注册？点此处注册</a>
												<br>
												<br>
												<a href="findPS1.jsp" class="a2">如果密码丢失？请找回密码</a>

											</td>
										</tr>
									</table>
								</form>
								<div align="center">
									${requestScope.information}
									<%
									} else {
									%>
									<br>
									<br>
								</div>
								<table width="230" border="0" align="center">
									<tr>
										<td height="20">
											用&nbsp;户&nbsp;名：
										</td>
										<td>
											${sessionScope.userInfo.account}
										</td>
									</tr>
									<tr>
										<td height="20">
											联系邮箱：
										</td>
										<td>
											${sessionScope.userInfo.email}
										</td>
									</tr>
									<tr>
										<td height="20">
											&nbsp;
										</td>
										<td>
											<a href="loginOut.jsp" class="a2">重新登录</a>
										</td>
									</tr>
								</table>
								<%
								}
								%>



							</td>
						</tr>
					</table>
					<table width="270" height="69" border="0" cellpadding="0"
						cellspacing="0" background="images/cidian.jpg">
						<tr>
							<td width="87">
								&nbsp;
							</td>
							<td width="183" class="lineline">
								<strong><a href="#" class="a5">编程词典</a>（程序学习工具）</strong>
								<br>
								咨询：400-175-1066
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<table width="766" height="80" border="0" align="center"
			cellpadding="0" cellspacing="0" background="images/downLine.jpg">
			<tr>
				<td align="center">
					<font color="#666666"> 技术服务热线：0431-84972266
						&nbsp;传真：0431-84972266 &nbsp;企业邮箱：mingrisoft@mingrisoft.com<br>
						<br> Copyright&reg; &nbsp;2008 &nbsp;<a
						href="http://www.mingrisoft.com" class="a2">http://www.mingrisoft.com</a>
						&nbsp;All Right Reserved! </font>
				</td>
			</tr>
		</table>
	</body>
</html>

<%@page contentType="text/html" pageEncoding="gb2312"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>���幤����-�û���¼</title>
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

								<b>�������幤����</b>
								<br>
								<br>
								���幤�������ɼ���־ͬ���ϵ�����һ�𴴰�ļ����͡���̳���ռ䡢���ŵ�8������һ����Ż���վ����������ӵ��800��̶�����......
								<br>
								<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="#" class="a3">����ע��&nbsp;>></a>
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
											<span class="lineline"><strong>����ռ�</strong>
											<br> �ṩ50MB��ѿռ䣬֧��MySQL���ݿ�</span>
										</td>
									</tr>
								</table>
								<table width="205" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td height="54" valign="bottom" class="word">
											<span class="lineline"><strong>���岩��</strong>
											<br> �½��з����Ͱ�ҹ��ߣ�����֮��</span>
										</td>
									</tr>
								</table>
								<table width="205" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td height="58" valign="bottom" class="word">
											<span class="lineline"><strong>��������</strong>
											<br> ������ȫ�Ĺ��������ȫ��¼</span>
										</td>
									</tr>
								</table>
								<table width="205" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td height="56" valign="bottom" class="word">
											<span class="lineline"><strong>�����ĵ�</strong>
											<br> ���ڷ����ĵ��������ĵ��𣬿����</span>
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
											<span class="lineline"><strong>����ռ�</strong>
											<br> 30λ������Ƹ��....</span>
										</td>
									</tr>
								</table>
								<table width="163" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td width="163" height="54" valign="bottom" class="word">
											<span class="lineline"><strong>��������</strong>
											<br> 500����Դ��������</span>
										</td>
									</tr>
								</table>
								<table width="167" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td width="167" height="58" valign="bottom" class="word">
											<span class="lineline"><strong>������ժ</strong>
											<br> ������յĸ���һ��</span>
										</td>
									</tr>
								</table>
								<table width="166" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td width="166" height="56" valign="bottom" class="word">
											<span class="lineline"><strong>�������</strong>
											<br> ��������顰��װ���Լ�</span>
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
								<a href="#" class="a4">��Ϊ��ҳ</a> /
								<a href="#" class="a4">�����ղ�</a> /
								<a href="#" class="a4">��ϵ����</a>
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
												��¼����
											</td>
											<td width="168" height="25">
												<input type="text" name="account" title="�������¼�û���">
											</td>
										</tr>
										<tr>
											<td height="25">
												��&nbsp;&nbsp;�룺
											</td>
											<td height="25">
												<input type="password" name="password" title="�������¼����">
											</td>
										</tr>
										<tr>
											<td height="25">
												У���룺
											</td>
											<td height="25">
												<input type="text" name="code" title="��������֤��">
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
															<a href="#" onClick="reload()" class="a2">���»����֤��</a>
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

												<a href="register.jsp" class="a2">û��ע�᣿��˴�ע��</a>
												<br>
												<br>
												<a href="findPS1.jsp" class="a2">������붪ʧ�����һ�����</a>

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
											��&nbsp;��&nbsp;����
										</td>
										<td>
											${sessionScope.userInfo.account}
										</td>
									</tr>
									<tr>
										<td height="20">
											��ϵ���䣺
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
											<a href="loginOut.jsp" class="a2">���µ�¼</a>
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
								<strong><a href="#" class="a5">��̴ʵ�</a>������ѧϰ���ߣ�</strong>
								<br>
								��ѯ��400-175-1066
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
					<font color="#666666"> �����������ߣ�0431-84972266
						&nbsp;���棺0431-84972266 &nbsp;��ҵ���䣺mingrisoft@mingrisoft.com<br>
						<br> Copyright&reg; &nbsp;2008 &nbsp;<a
						href="http://www.mingrisoft.com" class="a2">http://www.mingrisoft.com</a>
						&nbsp;All Right Reserved! </font>
				</td>
			</tr>
		</table>
	</body>
</html>

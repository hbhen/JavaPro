/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.wy.servlet;

import com.wy.dao.*;
import com.wy.model.*;
import java.io.*;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;


public class UserInfoServlet extends HttpServlet {

	private int method;

	private UserInfo userInfo = null;

	private UserInfoDaoImp userInfoDao = null;



	private HttpSession session = null;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		method = Integer.parseInt(request.getParameter("method"));
		if (method == 1) {			
			this.checkAccount(request, response);
		}
		if (method == 2) {
			this.register(request, response);
		}
		if (method == 3) {
			this.findPS1(request, response);
		}
		if (method == 4) {
			this.findPS2(request, response);
		}

	}

	private void sendEmail(String content) {
		try {
			String from = "sk666888@sohu.com";
			String to = "wgh717@sohu.com";
			String subject = "找回密码";
			String messageText = content;
			String password = "111111";
			String mailserver = "wanggh";
			Properties prop = new Properties();
			prop.put("mail.smtp.host", mailserver);
			prop.put("mail.smtp.auth", "true");
			Session sess = Session.getInstance(prop);
			sess.setDebug(true);
			MimeMessage message = new MimeMessage(sess);
			// 给消息对象设置收件人、发件人、主题、发信时间
			InternetAddress mail_from = new InternetAddress(from);
			message.setFrom(mail_from);
			InternetAddress mail_to = new InternetAddress(to);
			message.setRecipient(Message.RecipientType.TO, mail_to);
			message.setSubject(subject);
			message.setSentDate(new Date());

			Multipart mul = new MimeMultipart(); // 新建一个MimeMultipart对象来存放多个BodyPart对象
			BodyPart mdp = new MimeBodyPart(); // 新建一个存放信件内容的BodyPart对象
			mdp.setContent(messageText, "text/html;charset=gb2312");
			mul.addBodyPart(mdp); // 将含有信件内容的BodyPart加入到MimeMulitipart对象中
			message.setContent(mul); // 把mul作为消息对象的内容
			message.saveChanges();
			Transport transport = sess.getTransport("smtp");
			// 以smtp方式登陆邮箱，第1个参数是发送邮件用的邮件服务器SMTP地址，第2个参数为用户名，第3个参数为密码
			transport.connect(mailserver, from, password);
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();
		} catch (Exception e) {
			System.out.println("发送邮件产生的错误：" + e.getMessage());

		}
	}

	private void findPS2(HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException,
			ServletException, IOException {
		userInfoDao = new UserInfoDao();
		String account = new String(request.getParameter("account").getBytes(
				"ISO8859_1"), "gb2312");
		UserInfo userInfo = userInfoDao.queryUserInfo(account);
		String result = new String(request.getParameter("result").getBytes(
				"ISO8859_1"), "gb2312");
		if (result.equals(userInfo.getResult())) {
			String password = "111";
			String enPasswor = com.wy.tools.Encrypt.encodeMD5(password);
			userInfo.setPassword(enPasswor);
			userInfoDao.updateUserInfo(userInfo);
			String content = "您的密码是：" + password + ",请您牢记！";
			sendEmail(content);
			request.setAttribute("information", "已经将您的密码发送到邮箱！");
		} else {
			request.setAttribute("information", "您输入的密码答案不正确！");
			
		}
		request.getRequestDispatcher("findPS2.jsp").forward(request,
				response);

	}

	private void findPS1(HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException,
			ServletException, IOException {
		userInfoDao = new UserInfoDao();
		String account = new String(request.getParameter("account").getBytes(
				"ISO8859_1"), "gb2312");
		UserInfo userInfo = userInfoDao.queryUserInfo(account);
		if (null != userInfo) {
			request.setAttribute("userInfo", userInfo);
			request.getRequestDispatcher("findPS2.jsp").forward(request,
					response);
		} else {
			request.setAttribute("information", "您输入用户并不存在！");
			request.getRequestDispatcher("findPS1.jsp").forward(request,
					response);
		}
	}

	private void checkAccount(HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException,
			ServletException, IOException {
		String information = "";
		userInfoDao = new UserInfoDao();
		session = request.getSession();
		String rand = (String) session.getAttribute("rand");
		String code = (String) request.getParameter("code");
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		if (com.wy.tools.Encrypt.isValidInput(account)
				&& com.wy.tools.Encrypt.isValidInput(password)) {
			account = new String(account.getBytes("ISO8859_1"), "gb2312");
			password = com.wy.tools.Encrypt.encodeMD5(password);
		} else {
			information = "您输入的用户或密码存在非法字符串";
		}
		if (information.equals("")) {

			if (rand.equals(code)) {
				userInfo = userInfoDao.queryUserInfo(account);
				if (null != userInfo) {
					if (userInfo.getPassword().equals(password)) {
						session.setAttribute("userInfo", userInfo);
					} else {
						information = "您输入的密码不正确";
					}
				} else {
					information = "您输入的用户名不存在！";
				}
			} else {
				information = "您输入的验证码不正确！";
			}
		}
		System.out.println(information);
		request.setAttribute("information", information);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	private void register(HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException,
			ServletException, IOException {
		String information = "";
		response.setContentType("text/html;charset=GBK");
		PrintWriter out = response.getWriter();
		userInfo = new UserInfo();
		userInfoDao = new UserInfoDao();
		session = request.getSession();
		String rand = (String) session.getAttribute("rand");
		String code = (String) request.getParameter("code");

		String account = request.getParameter("account");
		String password = request.getParameter("password");
		if (com.wy.tools.Encrypt.isValidInput(account)
				&& com.wy.tools.Encrypt.isValidInput(password)) {
			account = new String(account.getBytes("ISO8859_1"), "gb2312");
			password = com.wy.tools.Encrypt.encodeMD5(password);
		} else {
			information = "您输入的用户或密码存在非法字符串";
		}

		if (information.equals("")) {
			if (rand.equals(code)) {
				userInfo.setAccount(account);
				userInfo.setPassword(password);
				userInfo.setEmail(request.getParameter("email"));
				userInfo.setQuestion(new String(request
						.getParameter("question").getBytes("ISO8859_1"),
						"gb2312"));
				userInfo.setResult(new String(request.getParameter("result")
						.getBytes("ISO8859_1"), "gb2312"));
				System.out.println(userInfo);
				if (!userInfoDao.saveUserInfo(userInfo)) {
					information = "您输入的用户名已经存在！";
				}
			} else {
				information = "您输入的校验码不正确！";

			}
			if (information.equals("")) {
				information = "您注册成功！";
				request.setAttribute("information", information);
				request.getRequestDispatcher("register.jsp").forward(request,
						response);
			} else {
				out.print("<script language=javascript>alert('" + information
						+ "');history.go(-1);</script>");
			}
		} else {
			out.print("<script language=javascript>alert('" + information
					+ "');history.go(-1);</script>");

		}
	}
}

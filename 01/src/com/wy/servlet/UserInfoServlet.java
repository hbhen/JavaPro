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
			String subject = "�һ�����";
			String messageText = content;
			String password = "111111";
			String mailserver = "wanggh";
			Properties prop = new Properties();
			prop.put("mail.smtp.host", mailserver);
			prop.put("mail.smtp.auth", "true");
			Session sess = Session.getInstance(prop);
			sess.setDebug(true);
			MimeMessage message = new MimeMessage(sess);
			// ����Ϣ���������ռ��ˡ������ˡ����⡢����ʱ��
			InternetAddress mail_from = new InternetAddress(from);
			message.setFrom(mail_from);
			InternetAddress mail_to = new InternetAddress(to);
			message.setRecipient(Message.RecipientType.TO, mail_to);
			message.setSubject(subject);
			message.setSentDate(new Date());

			Multipart mul = new MimeMultipart(); // �½�һ��MimeMultipart��������Ŷ��BodyPart����
			BodyPart mdp = new MimeBodyPart(); // �½�һ������ż����ݵ�BodyPart����
			mdp.setContent(messageText, "text/html;charset=gb2312");
			mul.addBodyPart(mdp); // �������ż����ݵ�BodyPart���뵽MimeMulitipart������
			message.setContent(mul); // ��mul��Ϊ��Ϣ���������
			message.saveChanges();
			Transport transport = sess.getTransport("smtp");
			// ��smtp��ʽ��½���䣬��1�������Ƿ����ʼ��õ��ʼ�������SMTP��ַ����2������Ϊ�û�������3������Ϊ����
			transport.connect(mailserver, from, password);
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();
		} catch (Exception e) {
			System.out.println("�����ʼ������Ĵ���" + e.getMessage());

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
			String content = "���������ǣ�" + password + ",�����μǣ�";
			sendEmail(content);
			request.setAttribute("information", "�Ѿ����������뷢�͵����䣡");
		} else {
			request.setAttribute("information", "�����������𰸲���ȷ��");
			
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
			request.setAttribute("information", "�������û��������ڣ�");
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
			information = "��������û���������ڷǷ��ַ���";
		}
		if (information.equals("")) {

			if (rand.equals(code)) {
				userInfo = userInfoDao.queryUserInfo(account);
				if (null != userInfo) {
					if (userInfo.getPassword().equals(password)) {
						session.setAttribute("userInfo", userInfo);
					} else {
						information = "����������벻��ȷ";
					}
				} else {
					information = "��������û��������ڣ�";
				}
			} else {
				information = "���������֤�벻��ȷ��";
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
			information = "��������û���������ڷǷ��ַ���";
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
					information = "��������û����Ѿ����ڣ�";
				}
			} else {
				information = "�������У���벻��ȷ��";

			}
			if (information.equals("")) {
				information = "��ע��ɹ���";
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

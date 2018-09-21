/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.wy.dao;

import com.wy.model.UserInfo;
import com.wy.tools.JDBConnection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * 
 * @author Administrator
 */
public class UserInfoDao implements UserInfoDaoImp {

	private JDBConnection connection = null;
	private String sql = null;

	public boolean updateUserInfo(UserInfo userInfo) {
		connection = new JDBConnection();
		boolean flag = false;
		sql = "update tb_register1 set password='" + userInfo.getPassword()
				+ "' where id=" + userInfo.getId() + "";
		if (connection.executeUpdate(sql)) {
			flag = true;
		}
		return flag;
	}

	public boolean saveUserInfo(UserInfo userinfo) {
		connection = new JDBConnection();
		boolean flag = false;
		sql = "insert into tb_register1 values ('" + userinfo.getAccount()
				+ "','"
				+ userinfo.getPassword()
				+ "','" + userinfo.getEmail() + "','" + userinfo.getQuestion()
				+ "','" + userinfo.getResult() + "')";
		if (connection.executeUpdate(sql)) {
			flag = true;
		}
		return flag;
	}

	public UserInfo queryUserInfo(String account) {
		UserInfo userinfo = null;
		connection = new JDBConnection();
		try {
			sql = "select * from tb_register1 where account='" + account + "'";
			ResultSet rs = connection.executeQuery(sql);
			while (rs.next()) {
				userinfo = new UserInfo();
				userinfo.setId(rs.getInt(1));
				userinfo.setAccount(rs.getString(2));
				userinfo.setPassword(rs.getString(3));
				userinfo.setEmail(rs.getString(4));
				userinfo.setQuestion(rs.getString(5));
				userinfo.setResult(rs.getString(6));
			}
		} catch (SQLException ex) {		
			return null;
		} finally {
			connection.closeConnection();//不管怎样 , 最后都要执行 closeConnection的操作;
		}
		return userinfo;
	}
}

package com.wy.tools;

import java.sql.*;

/**
 * 
 * @author Administrator
 */
public class JDBConnection {
	private final String dbDriver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private final String url = "jdbc:sqlserver://localhost:1433;DatabaseName=db_register";
	private final String userName = "sa";
	private final String password = "";
	private ResultSet rs = null;
	private Statement stmt = null;
	private Connection con = null;

	public JDBConnection() {
		try {
			Class.forName(dbDriver).newInstance();//为什么用反射?
		} catch (Exception ex) {
			System.out.println("数据库加载失败");
		}
	}//用到反射?干嘛用的?

	private boolean creatConnection() {
		try {
			con = DriverManager.getConnection(url, userName, password);
			con.setAutoCommit(true);
			return true;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return false;
		}
		
	}

	public boolean executeUpdate(String sql) {
		if (null == con) {
			creatConnection();
		}
		try {
			stmt = con.createStatement();
			stmt.executeUpdate(sql);
			return true;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return false;
		}
	}

	public ResultSet executeQuery(String sql) {
		try {
			if (null == con) {
				creatConnection();
			}
			stmt = con.createStatement();
			try {
				rs = stmt.executeQuery(sql);
				return rs;
			} catch (SQLException e) {
				System.out.println(e.getMessage());
				return null;
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return null;
		}	
	}

	public void closeConnection() {
		if (null != rs) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (null != stmt) {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (null != con) {
			try {
				con.close();
			} catch (SQLException e) {
			} finally {
				con = null;
			}
		}
	}
}

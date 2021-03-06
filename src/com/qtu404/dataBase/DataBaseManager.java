package com.qtu404.dataBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DataBaseManager {
	private static String datasorce = "slide";
	private static String url = "jdbc:mysql://120.24.186.116:3306/" + datasorce + "?characterEncoding=utf-8";
	private static String id = "root";;
	private static String password = "geralt";

	public static String verifyLogin(String usrname_String, String password_String) {
		String result_String = "";
		String SQL = "select userId from account where username = '" + usrname_String + "'and password='"
				+ password_String + "'";
		Connection con;
		System.out.println(SQL);
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.print(e);
		}
		try {
			con = DriverManager.getConnection(url, id, password);
			Statement sql = con.createStatement();
			ResultSet rs = sql.executeQuery(SQL);
			while (rs.next()) {
				result_String = rs.getString(1);
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("result_String:" + result_String);
		return result_String;
	}

	/**
	 * 联合查询语句
	 * 
	 * @param SQL
	 *            SQL语句
	 * @param columnCount
	 *            字段数
	 * @return 二维数组
	 */
	public static Object[][] unionQuery(String SQL, int columnCount) {		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.print(e);
		}
		Object[][] data = null;
		Connection con;
		try {
			con = DriverManager.getConnection(url, id, password);
			Statement sql = con.createStatement();
			ResultSet rs = sql.executeQuery(SQL);
			int count = 0;
			while (rs.next()) {
				count++;
			}
			data = new String[count][columnCount];
			while (rs.previous()) {
				count--;
				for (int k = 1; k <= columnCount; k++) { // 一个字段一个字段的取出来,构建一条记录
					data[count][k - 1] = rs.getString(k);
				}
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return data;
	}
	
	/**
	 * 通用的更新语句
	 * 
	 * @param SQL
	 *            查询语句
	 */
	public static void generalUpdate(String SQL) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.print(e);
		}
		try {
			Connection con;
			PreparedStatement sql;
			con = DriverManager.getConnection(url, id, password);
			sql = con.prepareStatement(SQL);
			sql.executeUpdate();
			con.close();
		} catch (SQLException e) {
			System.out.println(e);
		}
	} 
}

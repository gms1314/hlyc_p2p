package com.hlyc.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class DropTableTest {
	public static void main(String[] args) throws SQLException {
		ApplicationContext ac=new ClassPathXmlApplicationContext("config/applicationContext.xml");
		DataSource ds=ac.getBean(DataSource.class);
		Connection conn = ds.getConnection();
		
		PreparedStatement ps=conn.prepareStatement("select object_name from user_objects where object_type = 'TABLE' and created > to_date('2018-7-27','yyyy-mm-dd') and created < to_date('2018-7-28','yyyy-mm-dd')");
		ResultSet executeQuery = ps.executeQuery();
		while(executeQuery.next()){
			String tableName=executeQuery.getString(1);
			String sql="drop table "+tableName;
			ps=conn.prepareStatement(sql);
			ps.executeUpdate();
			
		}
		conn.close();
		
	}

}

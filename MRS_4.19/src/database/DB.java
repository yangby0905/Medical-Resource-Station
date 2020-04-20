package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB {
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("org.sqlite.JDBC");
		return DriverManager.getConnection("jdbc:sqlite:D:/study/eclipse/workspace/MRS/MRS.db");
		//开发和测试的时候都需要把上面一行代码中数据库的路径暂时改成自己电脑的绝对路径
		//不知道为什么相对路径不好用总是出问题
		//大家可以去 https://sqlitebrowser.org/ 这个网站下载数据库可视化 IDE 来方便数据库的查看和更改
		//数据库依赖的 jar 包在 WebContent 下，到时候自己重新 build path 就可以了
	}

}

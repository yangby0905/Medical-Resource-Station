package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB {
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("org.sqlite.JDBC");
		return DriverManager.getConnection("jdbc:sqlite:D:\\Java\\eclipse-workspace\\Medical-Resource-Station\\MRS\\MRS.db");
		//�����Ͳ��Ե�ʱ����Ҫ������һ�д��������ݿ��·����ʱ�ĳ��Լ����Եľ���·��
		//��֪��Ϊʲô���·�����������ǳ�����
		//��ҿ���ȥ https://sqlitebrowser.org/ �����վ�������ݿ���ӻ� IDE ���������ݿ�Ĳ鿴�͸���
		//���ݿ������� jar ���� WebContent �£���ʱ���Լ����� build path �Ϳ�����
	}

}

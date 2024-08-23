package dao;

import util.DBHelper;

public class OrderDAO extends DBHelper{

	private static OrderDAO instance = new OrderDAO();
	
	public static OrderDAO getInstance() {
		return instance;
	}
	
	private OrderDAO () {}
	
	
}

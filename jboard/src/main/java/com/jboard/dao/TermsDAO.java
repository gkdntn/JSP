package com.jboard.dao;

import com.jboard.dto.TermsDTO;

import util.DBHelper;

public class TermsDAO extends DBHelper{

	private static TermsDAO instance = new TermsDAO();
	public static TermsDAO getInstance() {
		return instance;
	}
	
	private TermsDAO () {}
	
	public TermsDTO selectTerms() {
		TermsDTO dto = null;
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from terms");
			
			if(rs.next()) {
				dto = new TermsDTO();
				dto.setTerms(rs.getString(1));
				dto.setPrivacy(rs.getString(2));
			}
				closeAll();
		} catch (Exception e) {

		}
		return dto;
	}

}
	

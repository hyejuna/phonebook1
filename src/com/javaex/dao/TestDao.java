package com.javaex.dao;

import java.util.List;

import com.javaex.vo.PersonVo;

public class TestDao {
	// phoneDao 확인용
	public static void main(String[] args) {
		
		PhoneDao phoneDao = new PhoneDao();
		List<PersonVo> personList = phoneDao.getPersonList();
		
		System.out.println(personList.toString());

	}

}

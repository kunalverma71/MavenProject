package com.niit.test;

import static org.junit.Assert.*;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import com.niit.dao.UserDao;
import com.niit.model.User;


public class AddUserTestCase 
{

	@Autowired 
	static AnnotationConfigApplicationContext context;
	
	@Autowired
	private static UserDao userDao;
	
	@Autowired
	private static User user;
	
	
	@BeforeClass
	public static void initialize()
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		userDao = (UserDao) context.getBean("userDao");
		user = (User) context.getBean("user");
		
	}
	
	@Test
	public void test() 
	{
		user.setAddress("Address");
		user.setEmail("email");
		user.setName("Name");
		user.setPassword("Password");
		user.setPhone("mobile");
		user.setEnabled(true);
		user.setRole("ROLE_USER");
		
		boolean flag = userDao.insertOrUpdateUser(user);
		
		assertEquals("User add test case", true, flag);
	}

}

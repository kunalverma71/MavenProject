package com.niit.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.CategoryDao;
 
import com.niit.model.Category;
 

public class AddCategoryTestCase {

	@Autowired 
	static AnnotationConfigApplicationContext context;
	
	@Autowired
	private static CategoryDao categoryDao;
	
	@Autowired
	private static Category category;
	
	
	@BeforeClass
	public static void initialize()
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		categoryDao = (CategoryDao) context.getBean("categoryDao");
		category = (Category) context.getBean("category");
		
	}
	
	@Test
	public void test() 
	{
		category.setCat_name("TestName");
		category.setCat_desc("TestDescreption");
		
		boolean flag = categoryDao.insertOrUpdateCategory(category);
		
		assertEquals("Category add test case", true, flag);
	}

	
}

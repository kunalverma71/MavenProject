package com.niit.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

 
import com.niit.dao.ProductDao;
 
import com.niit.model.Product;

public class AddProductTestCase {
	
	@Autowired 
	static AnnotationConfigApplicationContext context;
	
	@Autowired
	private static ProductDao productDao;
	
	@Autowired
	private static Product product;
	
	
	@BeforeClass
	public static void initialize()
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		productDao = (ProductDao) context.getBean("productDao");
		product = (Product) context.getBean("product");
		
	}
	
	@Test
	public void test() 
	{
		product.setPro_name("TestName");
		product.setPro_price(100);
		product.setPro_stock(100);
		product.setPro_imagename("TestImageName");
		product.setPro_writer("TestWriter");
		
		boolean flag = productDao.insertOrUpdateProduct(product);
		
		assertEquals("Product add test case", true, flag);
	}

	

}

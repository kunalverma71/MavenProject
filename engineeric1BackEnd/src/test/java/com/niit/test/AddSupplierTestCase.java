package com.niit.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.SupplierDao;
 
import com.niit.model.Supplier;
 

public class AddSupplierTestCase {
	
	@Autowired 
	static AnnotationConfigApplicationContext context;
	
	@Autowired
	private static SupplierDao supplierDao;
	
	@Autowired
	private static Supplier supplier;
	
	
	@BeforeClass
	public static void initialize()
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		supplierDao = (SupplierDao) context.getBean("supplierDao");
		supplier = (Supplier) context.getBean("supplier");
		
	}
	
	@Test
	public void test() 
	{
		supplier.setSupp_name("TestName");
		supplier.setSupp_address("TestAddress");
		
		boolean flag = supplierDao.insertOrUpdateSupplier(supplier);
		
		assertEquals("Suplier add test case", true, flag);
	}

}

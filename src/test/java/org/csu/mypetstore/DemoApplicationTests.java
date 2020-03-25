package org.csu.mypetstore;

import org.csu.mypetstore.domain.Category;
import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.service.CatalogService;
import org.junit.jupiter.api.Test;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
@MapperScan("org.csu.mypetstore.persistence")
class DemoApplicationTests {

	@Autowired
	CatalogService catalogService;

	@Test
	void contextLoads() {
	}

	@Test
	void view() {
		Category c = catalogService.getCategory("BIRDS");
		System.out.println(c.getCategoryId()+","+c.getName()+","+c.getDescription());
	}

	@Test
	void testProduct() {
		List<Product> productList = catalogService.getProductListByCategory("BIRDS");
		System.out.println(productList.size());
	}
}
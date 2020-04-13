package org.csu.mypetstore;

import org.csu.mypetstore.service.CatalogService;
import org.csu.mypetstore.service.MailService;
import org.junit.jupiter.api.Test;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@MapperScan("org.csu.mypetstore.persistence")
class MypetstoreApplicationTests {

    @Autowired
    CatalogService catalogService;

    @Autowired
    MailService mailService;

    @Test
    void contextLoads() {
    }

    @Test
    void testCategory()
    {

        System.out.println(catalogService.getCategory("BIRDS").getName());
    }

    @Test
    void testEmail() {
        mailService.sendSimpleMail("2397526659@qq.com","testtitle","233333");
//        大成功！
    }

}

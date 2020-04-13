package org.csu.mypetstore.controller;

import org.csu.mypetstore.service.MailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Random;

@Controller
@RequestMapping("/eac")
public class MsgController {
    /**
     * 实现： 向对应邮箱发送码
     */
    @Autowired
    MailService mailService;

    @RequestMapping("getCode")
    @ResponseBody
    public String getCheckCode(String email){
        System.out.println("HERE??????");
        String checkCode = String.valueOf(new Random().nextInt(899999) + 100000);
        String message = "您的注册验证码为："+checkCode;
        try {
            System.out.println("this step");
            mailService.sendSimpleMail(email, "注册验证码", message);
        }catch (Exception e){
            return "";
        }
        System.out.println("return");
        return checkCode;
    }


}

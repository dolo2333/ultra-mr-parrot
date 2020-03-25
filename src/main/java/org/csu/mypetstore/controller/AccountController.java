package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.service.AccountService;
import org.csu.mypetstore.service.CatalogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// 账号Controller
@Controller
@RequestMapping("/account")
public class AccountController {

    @Autowired
    private CatalogService catalogService;
    @Autowired
    private AccountService accountService;

    // 收到登录请求，跳转到对应页面
    @GetMapping("/signon")
    public String signon() {
        return "signon";
    }

    // 接受登录表单post来的数据 进行验证
    @PostMapping("/signonForm")
    public String signonForm(@RequestParam("username")String username,
                             @RequestParam("password")String password,
                             HttpServletRequest request, Model model) {
        Account account = accountService.getAccount(username, password);
        if (account == null) {
            String value = "用户名或密码错误，请重新输入。";
            model.addAttribute("message", value);
            return "error";
        } else {
            account.setPassword(null);
            List<Product> productList = catalogService.getProductListByCategory(account.getFavouriteCategoryId());
            boolean authenticated = true;
            HttpSession session = request.getSession();
            session.setAttribute("authenticated", authenticated);
            session.setAttribute("account",account);
            session.setAttribute("productList",productList);
            return "main";
        }

    }

    // 登出： 清除session中的所有内容并退回到主页
    @RequestMapping("/signoff")
    public String signoff(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();
        return "main";
    }

    // 新账号
    @GetMapping("/newAccount")
    public String newAccount(Model model) {
        model.addAttribute("languages",initLanguageList());
        model.addAttribute("categories",initCategoryList());
        return "newaccount";
    }


    private Map<String, String> initLanguageList() {
        Map<String, String> langList = new HashMap<String, String>();
        langList.put("英语(美国)", "english");
        langList.put("简体中文", "chinese");
        return langList;
    }

    private Map<String, String> initCategoryList() {
        Map<String, String> catList = new HashMap<String, String>();
        catList.put("鱼", "FISH");
        catList.put("狗", "DOGS");
        catList.put("爬虫", "REPTILES");
        catList.put("猫", "CATS");
        catList.put("鸟", "BIRDS");
        return catList;
    }

    // 接受新账号表单post请求 创建账号
    @PostMapping("/newAccountForm")
    public String newAccountForm(@ModelAttribute("newAccount")Account account) {
        accountService.insertAccount(account);
        return "signon";
    }

    // 修改账号desu
    @GetMapping("/editAccount")
    public String editAccount(Model model) {
        model.addAttribute("languages", initLanguageList());
        model.addAttribute("categories",initCategoryList());
        return "editaccount";
    }

    // 老套路了
    @PostMapping("/editAccountForm")
    public String editAccountForm(@ModelAttribute("editAccount") Account account, HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();
        accountService.updateAccount(account);
        return "signon";
    }
}

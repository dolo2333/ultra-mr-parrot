package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.service.AccountService;
import org.csu.mypetstore.service.CatalogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/account/")
@SessionAttributes({"account","myList","authenticated"})
public class AccountController {

    @Autowired
    private AccountService accountService;

    @Autowired
    private CatalogService catalogService;

    @GetMapping("signonForm")
    public String signonForm(){
        return "account/signon";
    }

    @PostMapping("signon")
    public String signon(String username, String password, Model model){
        Account loginAccount = accountService.getAccount(username,password);

        if(loginAccount == null){
            String msg = "Invalid username or password.  Signon failed.";
            model.addAttribute("msg",msg);
            return "account/signon";
        }else {
            loginAccount.setPassword(null);
            List<Product> myList =catalogService.getProductListByCategory(loginAccount.getFavouriteCategoryId());
            boolean authenticated = true;
            model.addAttribute("account", loginAccount);
            model.addAttribute("myList",myList);
            model.addAttribute("authenticated",authenticated);
            return "catalog/main";
        }
    }
    @GetMapping("registerPage")
    public String registerPage()
    {
        return "account/NewAccountForm";
    }
    @PostMapping("register")
    public String register(String userId,String password,String firstName,String lastName,String email,String phone,String addr1,String addr2,String city,String state,String zip,String country,Model model)
    {
        Account account = new Account();
        account.setUsername(userId);
        account.setPassword(password);
        account.setFirstName(firstName);
        account.setLastName(lastName);
        account.setEmail(email);
        account.setPhone(phone);
        account.setAddress1(addr1);
        account.setAddress2(addr2);
        account.setCity(city);
        account.setState(state);
        account.setZip(zip);
        account.setCountry(country);
        System.out.println(account.toString());
        accountService.insertAccount(account);
        return "catalog/main";
    }

}

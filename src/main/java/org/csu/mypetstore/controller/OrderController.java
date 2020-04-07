package org.csu.mypetstore.controller;

import com.sun.org.apache.xpath.internal.operations.Or;
import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.domain.Cart;
import org.csu.mypetstore.domain.LineItem;
import org.csu.mypetstore.domain.Order;
import org.csu.mypetstore.service.AccountService;
import org.csu.mypetstore.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
@SessionAttributes({"account", "myList", "authenticated"})

@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private OrderService orderService;
    @Autowired
    private AccountService accountService;

    @GetMapping("/viewOrderList")
    public String viewOrderList(@SessionAttribute("account") Account account, Model model){
        List<Order> orderList = orderService.getOrderListByUsername(account.getUsername());
        model.addAttribute("orderList",orderList);
        model.addAttribute("account",account);
        return "order/orderList";
    }

    @GetMapping("/viewOrder")
    public String viewOrder(int orderId, Model model){
        Order order = orderService.getOrder(orderId);

        model.addAttribute("order",order);
        return "order/viewOrder";
    }




}

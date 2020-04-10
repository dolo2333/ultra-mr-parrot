package org.csu.mypetstore.controller;


import org.csu.mypetstore.domain.*;
import org.csu.mypetstore.service.AccountService;
import org.csu.mypetstore.service.CatalogService;
import org.csu.mypetstore.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

@SessionAttributes({"account", "myList", "authenticated", "cart", "order"})

@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private OrderService orderService;
    @Autowired
    private AccountService accountService;
    @Autowired
    private CatalogService catalogService;

    @GetMapping("/viewOrderList")
    public String viewOrderList(@SessionAttribute("account") Account account, Model model) {
        List<Order> orderList = orderService.getOrderListByUsername(account.getUsername());
        model.addAttribute("orderList", orderList);
        model.addAttribute("account", account);
        return "order/orderList";
    }

    @GetMapping("/viewOrder")
    public String viewOrder(int orderId, Model model) {
        Order order = orderService.getOrder(orderId);

        model.addAttribute("order", order);
        return "order/viewOrder";
    }

    @GetMapping("/newOrder")
    public String newOrder(HttpServletRequest request, Model model) {
//        没登录就去登录
        if (request.getSession().getAttribute("account") == null) {
            return "account/signon";
        } else {
            Cart cart = (Cart) (request.getSession().getAttribute("cart"));
            Iterator<CartItem> cartItems = cart.getAllCartItems();
            boolean inStock = true;     //用来标记购物车内是否有商品超出库存了
            while (cartItems.hasNext()) {
                CartItem cartItem = cartItems.next();
                if (cartItem.isInStock() == true) {

                } else {
                    inStock = false;
                }
            }

            if (inStock != true) {
                return "cart/cart";
            } else {
                return "order/newOrderForm";
            }
        }
    }

    @PostMapping("/confirmOrder")
    public String confirmOrder(HttpServletRequest request, String shipAddr, Model model) {
        Order order = new Order();
        //设置一个order入数据库
        HttpSession session = request.getSession();
        order.setUsername(((Account) session.getAttribute("account")).getUsername());
        order.setOrderDate(new Date());
        order.setBillAddress1((String) request.getParameter("billAddr1"));
        order.setBillAddress2((String) request.getParameter("billAddr2"));
        order.setBillCity((String) request.getParameter("billCity"));
        order.setBillState((String) request.getParameter("billState"));
        order.setBillZip((String) request.getParameter("billZip"));
        order.setBillCountry((String) request.getParameter("billCountry"));
        order.setTotalPrice(((Cart) session.getAttribute("cart")).getSubTotal());
        order.setBillToFirstName((String) request.getParameter("billFirstName"));
        order.setBillToLastName((String) request.getParameter("billLastName"));
        order.setCreditCard((String) request.getParameter("cardNumber"));
        order.setExpiryDate((String) request.getParameter("exprDate"));
        order.setCardType((String) request.getParameter("cardType"));
        order.setLocale("CA");
        order.setCourier("UPS");
        order.setShipAddress1((String) request.getParameter("billAddr1"));
        order.setShipAddress2((String) request.getParameter("billAddr2"));
        order.setShipCity((String) request.getParameter("billCity"));
        order.setShipState((String) request.getParameter("billState"));
        order.setShipZip((String) request.getParameter("billZip"));
        order.setShipCountry((String) request.getParameter("billCountry"));
        order.setShipToFirstName((String) request.getParameter("billFirstName"));
        order.setShipToLastName((String) request.getParameter("billLastName"));
        order.setStatus("P");
        session.setAttribute("order", order);
        model.addAttribute("order", order);
//        if(shipAddr==null){

        return "order/confirmOrder";    //去确认订单


//        }
//        else{
//
//        }
    }


    @PostMapping("/confirm")
    public String confirm(HttpServletRequest request, Model model) {

        //将库存数量减去购物车里数量
        Cart cart = (Cart) (request.getSession().getAttribute("cart"));
        Iterator<CartItem> cartItems = cart.getAllCartItems();
        while (cartItems.hasNext()) {
            CartItem cartItem = cartItems.next();
            Map<String, Object> param = new HashMap<String, Object>(2);
            String itemId = cartItem.getItem().getItemId();
            Integer increment = cartItem.getQuantity();
            param.put("itemId", itemId);
            param.put("increment", increment);
            catalogService.updateInventoryQuantity(param);
        }

        Order order = (Order) (request.getSession().getAttribute("order"));
        //将order入库
        orderService.insertOrder(order);
        orderService.insertOrderStatus(order);
        cart.clean();//清空购物车

        return "catalog/main";

    }


}

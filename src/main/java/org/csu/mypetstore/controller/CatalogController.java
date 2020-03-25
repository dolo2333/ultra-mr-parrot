package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Category;
import org.csu.mypetstore.domain.Item;
import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.service.CatalogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/catalog")
public class CatalogController {

    @Autowired
    private CatalogService catalogService;

    @GetMapping("/view")
    public String view() {
        return "main";
    }

    @GetMapping("/viewCategory")
    public String viewCategory(@RequestParam(value = "categoryId", required = true)String categoryId, Model model) {
        List<Product> productList = catalogService.getProductListByCategory(categoryId);
        Category category = catalogService.getCategory(categoryId);
        model.addAttribute("productList", productList);
        model.addAttribute("category",category);
        return "category";
    }

    @GetMapping("/viewProduct")
    public String viewProduct(@RequestParam("productId")String productId, Model model) {
        List<Item> itemList = catalogService.getItemListByProduct(productId);
        Product product = catalogService.getProduct(productId);
        model.addAttribute("product",product);
        model.addAttribute("itemList",itemList);
        return "product";
    }

//    @RequestMapping(value = "viewproduct", method = RequestMethod.GET)
//    public ModelAndView viewProduct(HttpServletRequest request,
//                       HttpServletResponse response) {
//        String productId = request.getParameter("productId");
//        List<Item> itemList = catalogService.getItemListByProduct(productId);
//        Product product = catalogService.getProduct(productId);
//
//        ModelAndView mv = new ModelAndView("product");
//        mv.addObject("product", product);
//        mv.addObject("itemList", itemList);
//        return mv;
//    }

    @RequestMapping(value = "viewitem", method = RequestMethod.GET)
    public ModelAndView viewItem(HttpServletRequest request,
                                 HttpServletResponse response) {
        String itemId = request.getParameter("itemId");
        Item item = catalogService.getItem(itemId);
        Product product = item.getProduct();

        ModelAndView mv = new ModelAndView("item");
        mv.addObject("product", product);
        mv.addObject("item", item);
        return mv;
    }

    @RequestMapping(value = "searchproducts", method = RequestMethod.GET)
    public ModelAndView searchProducts(HttpServletRequest request,
                                       HttpServletResponse response) {
        ModelAndView mv = new ModelAndView("searchproducts");

        String keyword = request.getParameter("keyword");
        List<Product> productList = catalogService.searchProductList(keyword.toLowerCase());
        if(productList.isEmpty()) {
            mv.addObject("message", "对不起，没有符合条件的宠物。");
        } else {
            mv.addObject("productList", productList);
        }
        return mv;
    }
}

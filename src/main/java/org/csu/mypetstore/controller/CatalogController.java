package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Category;
import org.csu.mypetstore.domain.Item;
import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.service.CatalogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
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



    @GetMapping("viewItem")
    public String viewItem(String itemId, Model model) {
        Item item = catalogService.getItem(itemId);
        Product product = item.getProduct();

        processProductDescription(product);
        model.addAttribute("item", item);
        model.addAttribute("product", product);
        return "item";
    }





    @PostMapping("searchProducts")
    public String searchProducts(String keyword, Model model) {
        if (keyword == null || keyword.length() < 1) {
            String msg = "Please enter a keyword to search for, then press the search button.";
            model.addAttribute("msg", msg);
            return "error";
        } else {
            List<Product> productList = catalogService.searchProductList(keyword.toLowerCase());
            processProductDescription(productList);
            model.addAttribute("productList", productList);
            return "catalog/search_products";
        }

    }

    private void processProductDescription(Product product){
//        String [] temp = product.getDescription().split("\"");
        product.setDescriptionImage("/images/"+product.getDescriptionImage());
//        product.setDescriptionText(product.getDescription()+"hh");
    }
    private void processProductDescription(List<Product> productList){
        for(Product product : productList) {
            processProductDescription(product);
        }
    }
}

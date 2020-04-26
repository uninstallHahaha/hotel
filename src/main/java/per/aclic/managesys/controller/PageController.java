package per.aclic.managesys.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import per.aclic.managesys.service.DishService;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class PageController {

    @Autowired
    DishService dishService;


    //    模板跳转通用公式
//    @RequestMapping("/{first}/{second}")
//    public String getPage(@PathVariable String first, @PathVariable String second) {
//        String preStr = "mm/classic/mmenu/html/";
//        String[] splitSec = second.split(".html");
//        String resStr = preStr + first + "/" + splitSec[0];
//        return resStr;
//    }

    @RequestMapping("/")
    public String getIndex(Model model) {
        model.addAttribute("topDish", dishService.findTopDish());
        return "index";
    }



    @RequestMapping("/getCheckoutPage")
    public String getCheckoutPage(Model model) {
        return "checkout";
    }



    @RequestMapping("/getBillPage")
    public String getBillPage(Model model) {
        return "bills";
    }
}
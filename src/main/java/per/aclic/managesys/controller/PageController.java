package per.aclic.managesys.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import per.aclic.managesys.model.OrderI;
import per.aclic.managesys.model.mixmodel.OrderCollection;
import per.aclic.managesys.model.utilmodel.Item;
import per.aclic.managesys.service.DishService;
import per.aclic.managesys.service.OrderService;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

@Controller
public class PageController {

    @Autowired
    DishService dishService;
    @Autowired
    OrderService orderService;


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
        List<OrderI> orderIS = orderService.findAll();
        List<OrderCollection> resList = new ArrayList<OrderCollection>();
        HashSet<String> oids = new HashSet<>();
        for (OrderI order : orderIS) {
            oids.add(order.getOid());
        }
        oids.forEach((oid) -> {
            OrderCollection oc = new OrderCollection();
            int totalPrice = 0;
            oc.setOid(oid);
            List<Item> items = new ArrayList<Item>();
            for (OrderI order : orderIS) {
                if (order.getOid().equals(oid)) {
                    Item item = new Item(order.getItemid(), order.getItemname(),
                            order.getPrice(), order.getCount());
                    items.add(item);
                    totalPrice+=item.getPrice()*item.getCount();
                    oc.setBeizhu(order.getBeizhu());
                    oc.setCtime(order.getCtime());
                    oc.setRoom(order.getRoom());
                    oc.setUsername(order.getUsername());
                    oc.setUserphone(order.getUserphone());
                }
            }
            oc.setTotalPrice(totalPrice);
            oc.setItems(items);
            resList.add(oc);
        });
        model.addAttribute("bills",resList);
        return "bills";
    }


    @RequestMapping("/getServicePage")
    public String getServicePage(Model model){
        return "service";
    }


    @RequestMapping("/getServiceListPage")
    public String getServiceListPage(Model model){
        return "service";
    }


    @RequestMapping("/getServiceForm/{type}")
    public String getServiceForm(Model model,
                                 @PathVariable int type){
        model.addAttribute("type",type);
        return "serviceForm";
    }

}
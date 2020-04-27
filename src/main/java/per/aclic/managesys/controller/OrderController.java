package per.aclic.managesys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import per.aclic.managesys.Utils.CookieUtil;
import per.aclic.managesys.Utils.Utils;
import per.aclic.managesys.Utils.XJSON;
import per.aclic.managesys.model.OrderI;
import per.aclic.managesys.model.utilmodel.Item;
import per.aclic.managesys.service.OrderService;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@Controller
public class OrderController {

    @Autowired
    OrderService orderService;


    //提交订单
    @ResponseBody
    @RequestMapping("/subOrder")
    public int subOrder(
            HttpServletRequest request,
            HttpServletResponse response,
            String username,
            String userphone,
            String beizhu,
            String items) {
        List<Item> itemList = new ArrayList<>();
        try {
            itemList = (List<Item>) XJSON.JSON2List(items, Item.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
        String orderCode = Utils.genUUID();
        int addRes = 1;
        for (Item item : itemList) {
            OrderI order = new OrderI(Utils.genUUID(),
                    orderCode,
                    username,
                    userphone,
                    item.getId(),
                    item.getName(),
                    item.getPrice(),
                    item.getCount(),
                    Math.floor(Math.random() * 10) + "",
                    beizhu);
            int ers = orderService.addOrder(order);
            if (ers == 0) addRes = 0;
        }
//        if (addRes == 1) {
            //清空购物车
            Cookie car_cookie = new Cookie("CAR", "");
            car_cookie.setPath(request.getRequestURI() + "/");
            car_cookie.setMaxAge(0);
            response.addCookie(car_cookie);
//        }
        return addRes;
    }



    //删除服务
    @ResponseBody
    @RequestMapping("/delBill")
    public int delBill(
            HttpServletRequest request,
            HttpServletResponse response,
            String id) {
        return orderService.delOrder(id);
    }

}

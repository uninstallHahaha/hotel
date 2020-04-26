package per.aclic.managesys.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class CarController {

    //保存购物车到cookie , @分割属性, #分割条目
    @ResponseBody
    @RequestMapping("/addToCar")
    public int addToCar(HttpServletRequest request,
                        HttpServletResponse response,
                        String id,
                        String name,
                        int count,
                        int price) {
        Cookie[] cookies = request.getCookies();
        Cookie car_cookie = null;
        for (Cookie c :
                cookies) {
            if (c.getName().equals("CAR")) {
                car_cookie = c;
                break;
            }
        }
        if (car_cookie == null) {
            car_cookie = new Cookie("CAR", "");
            car_cookie.setValue("id:" + id + "@" +
                    "name:" + name + "@" +
                    "price:" + price + "@" +
                    "count:" + count + "#");
        } else {
            String car_cookieValue = car_cookie.getValue();
            String[] itmes = car_cookieValue.split("#");
            int itemloc = -1;
            //查看是否存在该条目记录, 如果存在返回该条目位置
            for (int i = 0; i < itmes.length; i++) {
                String[] kvs = itmes[i].split("@");
                boolean isit = false;
                for (String k : kvs) {
                    String[] kav = k.split(":");
                    if (kav[0].equals("id") && kav[1].equals(id)) {
                        isit = true;
                        break;
                    }
                }
                if (isit) {
                    itemloc = i;
                    break;
                }
            }
            String res = "";
            if (itemloc == -1) {
                //该条目不存在, 新加
                res = car_cookie.getValue() + "id:" + id + "@" +
                        "name:" + name + "@" +
                        "price:" + price + "@" +
                        "count:" + count + "#";
            } else {
                //该条目已存在, 追加
                for (int y = 0; y < itmes.length; y++) {
                    if (y != itemloc) {
                        res += itmes[y];
                    } else {
                        res += itmes[y].split("count:")[0]+"count:";
                        res += (Integer.parseInt(
                                itmes[y].split("count:")[1].split("#")[0])
                                + count
                        )+"#";
                    }
                }
            }
            car_cookie.setValue(res);
        }
        car_cookie.setValue(car_cookie.getValue().replace(' ','-'));
        car_cookie.setPath(request.getContextPath() + "/");
        car_cookie.setMaxAge(7 * 24 * 60 * 60);
        response.addCookie(car_cookie);
        return 1;
    }

    @ResponseBody
    @RequestMapping("/delete")
    public int delItem(
            HttpServletRequest request,
            HttpServletResponse response,
             String id){
        Cookie[] cookies = request.getCookies();
        Cookie car_cookie = null;
        for (Cookie c :
                cookies) {
            if (c.getName().equals("CAR")) {
                car_cookie = c;
                break;
            }
        }
        if(car_cookie == null) return 0;
        String[] itmes = car_cookie.getValue().split("#");
        int loc = -1;
        for(int i=0;i<itmes.length;i++) {
            if (itmes[i].startsWith("id:" + id)) {
                loc = i;
                break;
            }
        }
        if(loc==-1) return 0;
        String resStr = "";
        for(int i=0;i<itmes.length;i++){
            if(i!=loc) resStr+=itmes[i];
        }
        car_cookie.setValue(resStr);
        car_cookie.setPath(request.getContextPath() + "/");
        car_cookie.setMaxAge(7 * 24 * 60 * 60);
        response.addCookie(car_cookie);
        return 1;
    }
}

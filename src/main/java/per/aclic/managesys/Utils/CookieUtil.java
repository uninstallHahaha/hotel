package per.aclic.managesys.Utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieUtil {

    //清除cookie
    public static void clearCookie(String name,
                                   HttpServletRequest request,
                                   HttpServletResponse response){
        Cookie car_cookie = new Cookie(name, "");
        car_cookie.setPath(request.getRequestURI() + "/");
        car_cookie.setMaxAge(0);
        response.addCookie(car_cookie);
    }
}

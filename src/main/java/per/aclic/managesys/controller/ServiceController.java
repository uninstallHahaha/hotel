package per.aclic.managesys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import per.aclic.managesys.Utils.Utils;
import per.aclic.managesys.model.Serve;
import per.aclic.managesys.service.ServiceService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class ServiceController {

    @Autowired
    ServiceService serviceService;

    //提交呼叫的服务
    @ResponseBody
    @RequestMapping("/subServiceCall")
    public int subServiceCall(
            HttpServletRequest request,
            HttpServletResponse response,
            String username,
            String userphone,
            String beizhu,
            int serviceType) {
        Serve serviceModel = new Serve(Utils.genUUID(),
                username,userphone,"1",serviceType,beizhu,1);
        int res = serviceService.addService(serviceModel);
        return res;
    }
}

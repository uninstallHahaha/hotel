package per.aclic.managesys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;
import per.aclic.managesys.Utils.Utils;
import per.aclic.managesys.model.Serve;
import per.aclic.managesys.service.ServiceService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Timer;
import java.util.TimerTask;

@Controller
public class ServiceController {

    @Autowired
    ServiceService serviceService;



    //删除服务
    @ResponseBody
    @RequestMapping("/delServe")
    public int delServe(
            HttpServletRequest request,
            HttpServletResponse response,
            String id) {
        return serviceService.delServe(id);
    }



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
        String thisid = Utils.genUUID();
        Serve serviceModel = new Serve(thisid,
                username,userphone,"1",serviceType,beizhu,1);
        int res = serviceService.addService(serviceModel);
        //随机延时处理serve
        TimeTaskToModServe tk = new TimeTaskToModServe(thisid);
        Timer timer = new Timer();
        int dealtime = ((int)Math.floor(Math.random()*10)+1)*60*1000;
        timer.schedule(tk,dealtime);
        return res;
    }


    public class TimeTaskToModServe extends TimerTask {

        private String serveId;

        public TimeTaskToModServe() {
        }

        public TimeTaskToModServe(String serveId) {
            this.serveId = serveId;
        }

        public String getServeId() {
            return serveId;
        }

        public void setServeId(String serveId) {
            this.serveId = serveId;
        }

        @Override
        public void run() {
            int state = (int) Math.floor(Math.random()*2) + 2;
            int modRes = serviceService.modServeState(this.serveId, state);
        }
    }
}




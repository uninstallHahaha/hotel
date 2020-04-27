package per.aclic.managesys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import per.aclic.managesys.service.DishService;
import per.aclic.managesys.service.WineService;

@Controller
public class WineController {

    @Autowired
    WineService wineService;

    @RequestMapping("/getWine/{id}")
    public String getWine(Model model,@PathVariable String id){
        model.addAttribute("dishInfo",wineService.findOne(id));
        return "wineDetail";
    }

    @RequestMapping("/getWineList/{type}")
    public String getWineList(Model model, @PathVariable int type){
        if(type == 0){
            model.addAttribute("dishList",wineService.findAll());
            model.addAttribute("type",0);
        }else{
            model.addAttribute("dishList",wineService.findListByType(type));
            model.addAttribute("type",type);
        }
        return "wineList";
    }


}

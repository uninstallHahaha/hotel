package per.aclic.managesys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import per.aclic.managesys.service.DishService;

@Controller
public class DishController {

    @Autowired
    DishService dishService;

    @RequestMapping("/getDish/{id}")
    public String getDish(Model model,@PathVariable String id){
        model.addAttribute("dishInfo",dishService.findOne(id));
        return "dishDetail";
    }

    @RequestMapping("/getDishList/{type}")
    public String getDish(Model model, @PathVariable int type){
        if(type == 0){
            model.addAttribute("dishList",dishService.findAll());
            model.addAttribute("type",0);
        }else{
            model.addAttribute("dishList",dishService.findListByType(type));
            model.addAttribute("type",type);
        }
        return "dishList";
    }


}

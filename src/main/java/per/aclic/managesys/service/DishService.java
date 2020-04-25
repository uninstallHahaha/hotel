package per.aclic.managesys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import per.aclic.managesys.dao.DishMapper;
import per.aclic.managesys.model.Dish;
import per.aclic.managesys.model.DishExample;

import java.util.List;

@Service
public class DishService {

    @Autowired
    DishMapper dishMapper;

    public List<Dish> findTopDish(){
        return dishMapper.selectTopDish();
    }

    public Dish findOne(String id) {
        return dishMapper.selectByPrimaryKey(id);
    }

    public List<Dish> findAll() {
        return dishMapper.selectByExample(new DishExample());
    }

    public List<Dish> findListByType(int type) {
        return dishMapper.selectByType(type);
    }
}

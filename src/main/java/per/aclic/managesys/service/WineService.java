package per.aclic.managesys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import per.aclic.managesys.dao.DishMapper;
import per.aclic.managesys.dao.WineMapper;
import per.aclic.managesys.model.Dish;
import per.aclic.managesys.model.DishExample;
import per.aclic.managesys.model.Wine;
import per.aclic.managesys.model.WineExample;

import java.util.List;

@Service
public class WineService {

    @Autowired
    WineMapper wineMapper;

    public List<Wine> findTopDish(){
        return wineMapper.selectTopWine();
    }

    public Wine findOne(String id) {
        return wineMapper.selectByPrimaryKey(id);
    }

    public List<Wine> findAll() {
        return wineMapper.selectByExample(new WineExample());
    }

    public List<Wine> findListByType(int type) {
        return wineMapper.selectByType(type);
    }
}

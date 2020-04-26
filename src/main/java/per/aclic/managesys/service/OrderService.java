package per.aclic.managesys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import per.aclic.managesys.dao.OrderIMapper;
import per.aclic.managesys.model.OrderI;
import per.aclic.managesys.model.OrderIExample;

import java.util.List;

@Service
public class OrderService {

    @Autowired
    OrderIMapper orderMapper;

    public int addOrder(OrderI order){
        return orderMapper.insert(order);
    }

    public List<OrderI> finAll(){
        return orderMapper.selectByExample(new OrderIExample());
    }
}

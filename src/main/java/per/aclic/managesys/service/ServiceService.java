package per.aclic.managesys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import per.aclic.managesys.dao.ServeMapper;
import per.aclic.managesys.model.Serve;

@Service
public class ServiceService {

    @Autowired
    ServeMapper serveMapper;


    public int addService(Serve serviceModel) {

        return serveMapper.insert(serviceModel);
    }
}

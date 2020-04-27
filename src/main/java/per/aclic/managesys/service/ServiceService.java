package per.aclic.managesys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import per.aclic.managesys.dao.ServeMapper;
import per.aclic.managesys.model.Serve;
import per.aclic.managesys.model.ServeExample;

import java.util.List;

@Service
public class ServiceService {

    @Autowired
    ServeMapper serveMapper;


    public int addService(Serve serviceModel) {

        return serveMapper.insert(serviceModel);
    }

    public List<Serve> findAll() {

        return serveMapper.selectByExample(new ServeExample());
    }

    public int modServeState(String serveId, int state) {
        return serveMapper.modState(serveId,state);
    }
}

package per.aclic.managesys.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import per.aclic.managesys.model.Service;
import per.aclic.managesys.model.ServiceExample;

public interface ServiceMapper {
    long countByExample(ServiceExample example);

    int deleteByExample(ServiceExample example);

    int deleteByPrimaryKey(String id);

    int insert(Service record);

    int insertSelective(Service record);

    List<Service> selectByExample(ServiceExample example);

    Service selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") Service record, @Param("example") ServiceExample example);

    int updateByExample(@Param("record") Service record, @Param("example") ServiceExample example);

    int updateByPrimaryKeySelective(Service record);

    int updateByPrimaryKey(Service record);
}
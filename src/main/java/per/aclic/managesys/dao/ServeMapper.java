package per.aclic.managesys.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import per.aclic.managesys.model.Serve;
import per.aclic.managesys.model.ServeExample;
@Repository
public interface ServeMapper {
    long countByExample(ServeExample example);

    int deleteByExample(ServeExample example);

    int deleteByPrimaryKey(String id);

    int insert(Serve record);

    int insertSelective(Serve record);

    List<Serve> selectByExample(ServeExample example);

    Serve selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") Serve record, @Param("example") ServeExample example);

    int updateByExample(@Param("record") Serve record, @Param("example") ServeExample example);

    int updateByPrimaryKeySelective(Serve record);

    int updateByPrimaryKey(Serve record);
}
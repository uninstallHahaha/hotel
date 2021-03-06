package per.aclic.managesys.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import per.aclic.managesys.model.Wine;
import per.aclic.managesys.model.WineExample;

public interface WineMapper {
    long countByExample(WineExample example);

    int deleteByExample(WineExample example);

    int deleteByPrimaryKey(String id);

    int insert(Wine record);

    int insertSelective(Wine record);

    List<Wine> selectByExample(WineExample example);

    Wine selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") Wine record, @Param("example") WineExample example);

    int updateByExample(@Param("record") Wine record, @Param("example") WineExample example);

    int updateByPrimaryKeySelective(Wine record);

    int updateByPrimaryKey(Wine record);
}
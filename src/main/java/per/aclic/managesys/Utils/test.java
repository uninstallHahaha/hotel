package per.aclic.managesys.Utils;

import per.aclic.managesys.model.utilmodel.Item;

import java.util.List;

public class test {

    public static void main(String[] args) throws InstantiationException, IllegalAccessException {
        List list = XJSON.JSON2List("[{\"id\":\"jfejifojeiofjfijfi\",\"name\":\"新西兰羊排配黑椒蘑菇汁\",\"price\":\"298\",\"count\":\"3\"},{\"id\":\"fajkljkfkdlsf3\",\"name\":\"鲜柠香煎银鳕鱼\",\"price\":\"168\",\"count\":\"1\"}]", Item.class);
        return ;
    }
}

package per.aclic.managesys.Utils;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.*;

//json字符串解析
public class XJSON {

    public static List JSON2List(String json, Class type) throws IllegalAccessException, InstantiationException {
        List resList = new ArrayList();
        Method[] methods = type.getMethods();
        for (Method m :
                methods) {
            System.out.println(m.getName());
        }
        //处理json
        String arrStr = json.substring(1, json.length() - 1);
        String[] itmes = arrStr.split("\\}\\,\\{");
        for (int i = 0; i < itmes.length; i++) {
            //map
            Map<String, String> resMap = new HashMap<>();
            //当前对象
            Object o = type.newInstance();
            //属性字符串
            String kavstr="";
            if(itmes.length==1){
                //如果只有一个对象
                kavstr = itmes[i].substring(1, itmes[i].length()-1);
            }else if(i==0){
                //如果是多个对象且是第一个对象
                kavstr = itmes[i].substring(1, itmes[i].length());
            }else if(i==itmes.length-1){
                //如果是多个对象且是最后一个对象
                kavstr = itmes[i].substring(0, itmes[i].length() - 1);
            }else{
                //如果是多个对象且为中间的对象
                kavstr = itmes[i];
            }

            String[] kvs = kavstr.split(",");
            //分离属性和值
            for(int y=0;y<kvs.length;y++){
                String[] kv = kvs[y].split(":");
                String formaKey = forma(kv[0]);
                String formaVal = forma(kv[1]);
                resMap.put(formaKey,formaVal);
            }
            Set<String> keys = resMap.keySet();
            Collection<String> values = resMap.values();

            //装载对象
            for (Map.Entry<String, String> entry : resMap.entrySet()){
                for (Method m :
                        methods) {
                    String getMethodName = "set"+CapitalStr(entry.getKey());
                    if(m.getName().equals(getMethodName)){
                        try {
                            Class<?>[] parameterTypes = m.getParameterTypes();
                            Class<?> parameterType = parameterTypes[0];
                            Object paramVal=null;
                            //判断是否是int的值
                            if(parameterType.getName().equals("int")){
                                paramVal = (int)Integer.parseInt(entry.getValue());
                            }else{
                                paramVal = (String)entry.getValue();
                            }
                            m.invoke(o,paramVal);
                            break;
                        } catch (IllegalAccessException e) {
                            e.printStackTrace();
                        } catch (InvocationTargetException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }

            resList.add(o);
        }

        return resList;
    }

    public static String forma(String ori){
        if(ori.charAt(0)=='"' && ori.charAt(ori.length()-1)=='"'){
            return ori.substring(1,ori.length()-1);
        }else{
            return ori;
        }
    }

    //首字母转大写
    public static String CapitalStr(String ori){
        if(ori.charAt(0) >=97 && ori.charAt(0)<=122){
            return (char)(ori.charAt(0)-32) + ori.substring(1,ori.length());
        }else{
            return ori;
        }
    }
}

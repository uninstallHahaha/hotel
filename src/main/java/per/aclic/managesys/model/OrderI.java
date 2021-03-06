package per.aclic.managesys.model;

import java.util.Date;

public class OrderI {
    private String id;

    private String oid;

    private String username;

    private String userphone;

    private String itemid;

    private String itemname;

    private Integer price;

    private Integer count;

    private String room;

    private String beizhu;

    private Date ctime;

    public OrderI(String id, String oid, String username, String userphone, String itemid, String itemname, Integer price, Integer count, String room, String beizhu) {
        this.id = id;
        this.oid = oid;
        this.username = username;
        this.userphone = userphone;
        this.itemid = itemid;
        this.itemname = itemname;
        this.price = price;
        this.count = count;
        this.room = room;
        this.beizhu = beizhu;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid == null ? null : oid.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone == null ? null : userphone.trim();
    }

    public String getItemid() {
        return itemid;
    }

    public void setItemid(String itemid) {
        this.itemid = itemid == null ? null : itemid.trim();
    }

    public String getItemname() {
        return itemname;
    }

    public void setItemname(String itemname) {
        this.itemname = itemname == null ? null : itemname.trim();
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getRoom() {
        return room;
    }

    public void setRoom(String room) {
        this.room = room == null ? null : room.trim();
    }

    public String getBeizhu() {
        return beizhu;
    }

    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu == null ? null : beizhu.trim();
    }

    public Date getCtime() {
        return ctime;
    }

    public void setCtime(Date ctime) {
        this.ctime = ctime;
    }
}
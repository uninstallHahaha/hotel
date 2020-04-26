package per.aclic.managesys.model.mixmodel;

import per.aclic.managesys.model.utilmodel.Item;

import java.util.Date;
import java.util.List;

public class OrderCollection {

    private String oid;
    private String username;
    private String userphone;
    private List<Item> items;
    private String room;
    private String beizhu;
    private Date ctime;

    private int totalPrice;

    public OrderCollection() {
    }

    public OrderCollection(String oid, String username, String userphone, List<Item> items, String room, String beizhu, Date ctime) {
        this.oid = oid;
        this.username = username;
        this.userphone = userphone;
        this.items = items;
        this.room = room;
        this.beizhu = beizhu;
        this.ctime = ctime;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    public String getRoom() {
        return room;
    }

    public void setRoom(String room) {
        this.room = room;
    }

    public String getBeizhu() {
        return beizhu;
    }

    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu;
    }

    public Date getCtime() {
        return ctime;
    }

    public void setCtime(Date ctime) {
        this.ctime = ctime;
    }
}

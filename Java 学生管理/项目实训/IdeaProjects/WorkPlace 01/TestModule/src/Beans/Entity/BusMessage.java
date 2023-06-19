package Beans.Entity;

// Entity class for『Student』
public class BusMessage {
    private String userName;
    private String password;
    private String brand;
    private String email;
    private Integer ID;
    private int num;
    private int time;
    private int tel;
    private double balance;

    public String getSex() {
        return brand;
    }

    public void setSex(String brand) {
        this.brand = brand;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public int getAge() {
        return time;
    }

    public void setAge(int time) {
        this.time = time;
    }

    public int getTel() {
        return tel;
    }

    public void setTel(int tel) {
        this.tel = tel;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    // ——变量——
    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserName() {
        return userName;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }

    public static void main(String[] args) {
        // TODO 自动生成方法存根
    }

    public BusMessage() {
    }

    public BusMessage(Integer ID, String userName, String password) {
        this.userName = userName;
        this.password = password;
        this.ID = ID;
    }


    public BusMessage(Integer ID, String userName, String brand, String email, int num, int time, int tel, double balance) {
        this.userName = userName;
        this.brand = brand;
        this.email = email;
        this.num = num;
        this.time = time;
        this.tel = tel;
        this.balance = balance;
        this.ID = ID;
    }
}

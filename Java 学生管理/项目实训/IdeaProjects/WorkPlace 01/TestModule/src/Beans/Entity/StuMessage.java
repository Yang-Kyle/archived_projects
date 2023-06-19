package Beans.Entity;

// Entity class for『Student』
public class StuMessage {
    private String userName;
    private String password;
    private String sex;
    private String email;
    private Integer ID;
    // 这非常重要 不要尝试将其改为int 数据库会无法将int以null自增
    private int num;
    private int age;
    private int tel;
    private double balance;

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
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
        return age;
    }

    public void setAge(int age) {
        this.age = age;
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

    public StuMessage() {
    }

    public StuMessage(Integer ID, String userName, String password) {
        this.userName = userName;
        this.password = password;
        this.ID = ID;
    }


    public StuMessage(Integer ID, String userName, String sex, String email, int num, int age, int tel, double balance) {
        this.userName = userName;
        this.sex = sex;
        this.email = email;
        this.num = num;
        this.age = age;
        this.tel = tel;
        this.balance = balance;
        this.ID = ID;
    }
}

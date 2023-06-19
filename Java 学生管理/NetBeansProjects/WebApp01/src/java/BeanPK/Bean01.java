/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
// 需要序列化且实现Serializable接口，目的是为了让这个对象可以序列化和反序列化进行传输和保存到文件
package BeanPK;

public class Bean01 {

    private String User;
    // public Bean01 () {}

    public String getUser() {
        return User;
    }

    public void setUser(String User) {
        this.User = User;
    }
}

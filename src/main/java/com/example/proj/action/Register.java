package com.example.proj.action;

import com.opensymphony.xwork2.ActionSupport;                                                                                                            
import com.example.proj.model.Account;
                                        
import java.sql.Statement;
import java.sql.Connection;                
import java.sql.DriverManager;
import java.sql.SQLException;

public class Register extends ActionSupport {
    
    private static final long serialVersionUID = 1L;
                                 
    private Account accountBean;
    private String error = "Random";

    public String execute() throws Exception {
        accountBean = getAccountBean();
        if(saveToDB()) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    public boolean saveToDB() throws SQLException {
        Connection connection = null;
        Statement statement = null;
        try {
            String URL = "jdbc:mysql://localhost:3306/sampledb?useTimezone=true&serverTimezone=UTC";
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(URL, "root", "password");

            if (connection != null) {
                statement = connection.createStatement();
                String sql = "INSERT INTO accounts(first_name, last_name, age, email, password, user_type) VALUES('"+
                    accountBean.getFirstName()+"','"+accountBean.getLastName()+"','"+accountBean.getAge()+"','"+
                    accountBean.getEmail()+"','"+accountBean.getPassword()+"','"+accountBean.getUserType()+"')";
                statement.executeUpdate(sql);
                return true;
            } else {
                error = "DB connection failed";
                return false;
            }
         } catch (Exception e) {
             error = e.toString();
             return false;  
         } finally {
            if (statement != null) try { statement.close(); } catch (SQLException ignore) {}
            if (connection != null) try { connection.close(); } catch (SQLException ignore) {}
         }
    }

    public String getError() {
        return error;
    }
    
    public Account getAccountBean() {
        return accountBean;
    }
    
    public void setAccountBean(Account account) {
        accountBean = account;
    }

}
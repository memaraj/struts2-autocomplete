package com.example.proj.action;

import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.sql.PreparedStatement;
import java.sql.Connection;                
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;
import com.example.proj.model.Account;

public class List extends ActionSupport {

    ArrayList<Account> accounts = new ArrayList<Account>();
    public ArrayList listOfFirstNames = new ArrayList();
    public String nameInput;


    public ArrayList<Account> getAccounts() {  
        return accounts;  
    }  
    public void setList(ArrayList<Account> accounts) {  
        this.accounts = accounts;  
    }
    
    public String getNameInput() {
        return nameInput;
    }

    public void setNameInput(String nameInput) {
        this.nameInput = nameInput;
    }

    public String execute() throws Exception {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            String URL = "jdbc:mysql://localhost:3306/sampledb?useTimezone=true&serverTimezone=UTC";
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(URL, "root", "password");

            if (connection != null) {
                String sql = "SELECT * FROM accounts";
                preparedStatement = connection.prepareStatement(sql);
                ResultSet rs= preparedStatement.executeQuery();

                while(rs.next()){  
                    Account account=new Account();
                    account.setFirstName(rs.getString(2));   
                    account.setLastName(rs.getString(3)); 
                    account.setAge(rs.getInt(4)); 
                    accounts.add(account);
                    listOfFirstNames.add(account.getLastName());
                }
            } 
         } catch (Exception e) {

         } finally {
            if (preparedStatement != null) try { preparedStatement.close(); } catch (SQLException ignore) {}
            if (connection != null) try { connection.close(); } catch (SQLException ignore) {}
         }

         return SUCCESS;
    }

    public String displayUser() {
        return SUCCESS;
    }
    
}

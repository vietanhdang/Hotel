/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import models.Account;

/**
 *
 * @author Benjamin
 */
public class AccountDAO extends DBContext {

    PreparedStatement stm;
    ResultSet rs;

    public int accountRegister(Account account) {
        try {
            String sql = "insert into Account (name, password, roleID) values (?,?,?)";
            stm = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stm.setString(1, account.getName());
            stm.setString(2, account.getPassword());
            stm.setBoolean(3, account.isRole());
            return stm.executeUpdate();
        } catch (SQLException e) {
            System.out.println("register account error in DAO");
        }
        return 0;
    }

    public Account getAccountByName(Account account) {
        try {
            String sql = "select a.accountID, a.name, a.password, a.roleID from Account a";
            stm = connection.prepareStatement(sql);
            rs = stm.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getBoolean(4));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public int updateAccount(Account account) {
        try {
            String sql = "update Account\n"
                    + "set name = ?, password =?, roleID = ?\n"
                    + "where accountID = ";
            stm = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stm.setString(1, account.getName());
            stm.setString(2, account.getPassword());
            stm.setBoolean(3, account.isRole());
            return stm.executeUpdate();
        } catch (SQLException e) {
        }
        return 0;
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import models.RoomType;

/**
 *
 * @author ACER
 */
public class RoomTypeDAO extends DBContext {

    public ArrayList<RoomType> getAllRoomType() {
        ArrayList<RoomType> roomTypes = new ArrayList<>();
        try {
            String sql = "select * from RoomType";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
<<<<<<< Updated upstream
                roomTypes.add(new RoomType(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4),
=======
                roomTypes.add(new RoomType(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4),
>>>>>>> Stashed changes
                        rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getString(11)));
            }
        } catch (Exception e) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, e);
        }
        return roomTypes;
    }
<<<<<<< Updated upstream
    
=======

>>>>>>> Stashed changes
    public RoomType getRoomTypeByID(int id) {
        try {
            String sql = "select * from RoomType where typeID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
<<<<<<< Updated upstream
                return new RoomType(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4),
=======
                return new RoomType(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4),
>>>>>>> Stashed changes
                        rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getString(11));
            }
        } catch (Exception e) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }
}

package net.emmyzcs.dbregistration.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import net.emmyzcs.dbregistration.model.User;

public class UserInsertDao {
    public int insertUserData(User user) throws ClassNotFoundException {
    	
    	String url = "jdbc:mysql://localhost:3306/appuserdb";
        String userName = "root";
        String password = "Favour";
    	
        int result = 0;
        
        try {
        	
        	Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url, userName, password);
            String sql = "INSERT INTO bio_data (first_name, " +
                    "last_name, age, email, " +
                    "mobile_number, gender, address) " +
                    "VALUE (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user.getFirstName());
            statement.setString(2, user.getLastName());
            statement.setString(3, user.getAge());
            statement.setString(4, user.getEmail());
            statement.setString(5, user.getMobileNumber());
            statement.setString(6, user.getGender());
            statement.setString(7, user.getAddress());

            System.out.println(statement);

            result = statement.executeUpdate();
         

            statement.close();
            connection.close();
        } catch (SQLException e) {
            System.out.println("Oops, error");
            e.printStackTrace();
        }
        return result;
    }
    
    
}

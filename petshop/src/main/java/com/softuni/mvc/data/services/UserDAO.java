package com.softuni.mvc.data.services;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import java.sql.Connection;

import com.softuni.mvc.data.entities.Profile;
import com.softuni.mvc.data.entities.User;

public class UserDAO {
	
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
		//Create
		public void save(User user){
			
			String query = "insert into user (user_id, f_name, l_name, city, email, phone, profilPictureID,"
					+ " username, password, isAdmin) values (?,?,?,?,?,?,?,?,?,?)";
			Connection con = null;
			PreparedStatement ps = null;
			try{
				con = dataSource.getConnection();
				ps = con.prepareStatement(query);
				System.out.println(ps);
				ps.setInt(1, 0);
				ps.setString(2, user.getProfile().getFirstName());
				ps.setString(3, user.getProfile().getLastName());
				ps.setString(4, user.getProfile().getCity());
				ps.setString(5, user.getProfile().getEmail());
				ps.setString(6, user.getProfile().getPhone());
				ps.setInt(7, 0);
				ps.setString(8, user.getUsername());
				ps.setString(9, user.getPassword());
				ps.setInt(10, 0);
					
				int out = ps.executeUpdate();
				if(out !=0){
					System.out.println("Employee saved with id=" + user.getProfile());
				}else System.out.println("Employee save failed with id=" + user.getProfile());
			}catch(SQLException e){
				e.printStackTrace();
			}finally{
				try {
					ps.close();
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}			
		}
		
		public int getUserID(String username, String password) {
			String query = "select user_id from user where username = ? and password = ?";			
			Connection con = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			int id = -1;
			try{
				con = dataSource.getConnection();
				ps = con.prepareStatement(query);
				ps.setString(1, username);
				ps.setString(2, password);
				rs = ps.executeQuery();
				if(rs.next()){					
					id = rs.getInt("user_id");
				}else{
					System.out.println("No User found");
				}
			}catch(SQLException e){
				e.printStackTrace();
			}finally{
				try {
					rs.close();
					ps.close();
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			return id;
		}

		//Read
		public User getById(int id){
			String query = "select user_id, f_name, l_name, city, email, phone, profilPictureID,"
					+ " username, isAdmin from user where user_id = ?";
			User user = new User();
			Profile p = new Profile();
			Connection con = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			try{
				con = dataSource.getConnection();
				ps = con.prepareStatement(query);
				ps.setInt(1, id);
				rs = ps.executeQuery();
				if(rs.next()){					
					user.setUsername(rs.getString("username"));
					p.setFirstName(rs.getString("f_name"));
					p.setLastName(rs.getString("l_name"));
					p.setCity(rs.getString("city"));
					p.setEmail(rs.getString("email"));
					p.setPhone(rs.getString("phone"));
					user.setProfile(p);
					System.out.println("User Found::"+user);
				}else{
					System.out.println("No User found with id="+id);
				}
			}catch(SQLException e){
				e.printStackTrace();
			}finally{
				try {
					rs.close();
					ps.close();
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			return user;

		}
		//Update
		public void update(User user){
			
		}
		//Delete
		public void deleteById(int id){
			
		}
		//Get All
		public List<User> getAll(){
			return null;
		}
	
	

}

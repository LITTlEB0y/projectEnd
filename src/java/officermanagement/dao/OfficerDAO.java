    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package officermanagement.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import officermanagement.model.Officer;
/**
 *
 * @author user
 */
public class OfficerDAO {
//    private String jdbcURL = "jdbc:mysql://localhost:3306/demo?useSSL=false";
//	private String jdbcUsername = "root";
//	private String jdbcPassword = "";

	private static final String INSERT_OFFICERS_SQL = "INSERT INTO officers" + "  (name, information) VALUES "
			+ " (?,?);";

	private static final String SELECT_OFFICER_BY_ID = "select id,name,information from officers where id =?";
	private static final String SELECT_ALL_OFFICERS = "select * from officers";
	private static final String DELETE_OFFICERS_SQL = "delete from officers where id = ?;";
	private static final String UPDATE_OFFICERS_SQL = "update officers set name = ?,information= ? where id = ?;";
        
       protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo"+"?user=root&password=");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}
    //Create or insert officer
    public void insertOfficer(Officer officer) throws SQLException {   
        try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_OFFICERS_SQL)) {
            preparedStatement.setString(1, officer.getName());
            preparedStatement.setString(2, officer.getInformation());
            preparedStatement.executeUpdate();
    }catch (SQLException e) {
			e.printStackTrace();
		}
}
    
    //Update officer
    public boolean updateOfficer(Officer officer) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_OFFICERS_SQL);) {
			statement.setString(1, officer.getName());
			statement.setString(2, officer.getInformation());
			statement.setInt(4, officer.getId());

			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}
//select user by id
    public Officer selectOfficer(int id) {
		Officer officer = null;
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_OFFICER_BY_ID);) {
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				String name = rs.getString("name");
				String information = rs.getString("infotmation");
				
				officer = new Officer(id, name, information);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return officer;
}
    
//select users
    
   public List<Officer> selectAllOfficers() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<Officer> officers = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_OFFICERS);) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String information = rs.getString("information");
				
				officers.add(new Officer(id, name, information));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return officers;
	}
   
   //delete officer
   public boolean deleteOfficer(int id) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_OFFICERS_SQL);) {
			statement.setInt(1, id);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}

    private void printSQLException(SQLException e) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
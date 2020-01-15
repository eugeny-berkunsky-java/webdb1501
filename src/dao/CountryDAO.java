package dao;

import tables.Country;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CountryDAO {
    private final Connection connection;

    public CountryDAO(Connection connection) {
        this.connection = connection;
    }

    public List<Country> findAll() {
        List<Country> result = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from country");
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                result.add(new Country(id,name));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}

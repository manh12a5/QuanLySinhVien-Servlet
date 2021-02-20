package service;

import model.Student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class StudentService implements IStudentService {

    //Tạo connection lấy SQL
    private Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/casestudy3",
                    "root",
                    "admin");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }

    @Override
    public List<Student> findAll() {
        List<Student> students = new ArrayList<>();
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from student");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String gender = resultSet.getString("gender");
                int age = resultSet.getInt("age");
                String country = resultSet.getString("country");
                int phone = resultSet.getInt("phone");
                String email = resultSet.getString("email");
                students.add(new Student(id, name, gender, age, country, phone, email));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return students;
    }

    @Override
    public void insert(Student student) {
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("insert into student values (?, ?, ?, ?, ?, ?, ?)");
            preparedStatement.setInt(1, student.getId());
            preparedStatement.setString(2, student.getName());
            preparedStatement.setString(3, student.getGender());
            preparedStatement.setInt(4, student.getAge());
            preparedStatement.setString(5, student.getCountry());
            preparedStatement.setInt(6, student.getPhone());
            preparedStatement.setString(7, student.getEmail());
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public Student findById(int id) {
        Connection connection = getConnection();
        return null;
    }

}

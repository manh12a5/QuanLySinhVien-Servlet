package service;

import model.Student;

import java.util.List;

public interface IStudentService {

    List<Student> findAll();

    void insert(Student student);

    Student findById(int id);
}

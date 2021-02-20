package controller;

import model.Student;
import service.IStudentService;
import service.StudentService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "StudentServlet", value = "")
public class StudentServlet extends HttpServlet {

    IStudentService studentService = new StudentService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "":
                displayAll(request, response);
                break;
            case "create":
                showCreateStudent(request, response);
                break;

        }
    }

    private void displayAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
        List<Student> students = studentService.findAll();
        request.setAttribute("index", students);
        requestDispatcher.forward(request, response);
    }

    private void showCreateStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/create.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "":
                displayAll(request, response);
                break;
            case "create":
                createStudent(request, response);
                break;

        }
    }

    private void createStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        int age = Integer.parseInt(request.getParameter("age"));
        String country = request.getParameter("country");
        int phone = Integer.parseInt(request.getParameter("phone"));
        String email = request.getParameter("email");
        Student student = new Student(id, name, gender, age, country, phone, email);
        studentService.insert(student);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/create.jsp");
        requestDispatcher.forward(request, response);
    }

}

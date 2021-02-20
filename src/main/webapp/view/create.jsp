<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 2/15/2021
  Time: 3:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert</title>
</head>
<body>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Add New Student</h2>
            </caption>
            <tr>
                <th>Ma hoc sinh: </th>
                <td>
                    <input type="text" name="id" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Ho va ten: </th>
                <td>
                    <input type="text" name="name" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Gioi tinh: </th>
                <td>
                    <input type="text" name="gender" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Tuoi: </th>
                <td>
                    <input type="text" name="age" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Dia chi: </th>
                <td>
                    <input type="text" name="country" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Dien thoai: </th>
                <td>
                    <input type="text" name="phone" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Email: </th>
                <td>
                    <input type="text" name="email" size="45"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
    <a href="/">Home</a>
</div>
</body>
</html>

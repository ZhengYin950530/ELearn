<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增学生记录</title>
</head>
<body>
  <body>
  <form action="studentinertServlet.do" method="post">
  <table border="0" width="238" heigth="252">
  <tr><td>学生ID</td><td><input type="text" name="student_id"></td></tr>
  <tr><td>学生姓名</td><td><input type="text" name="student_name"></td></tr>
  <tr><td>性别</td><td><input type="text" name="student_sex"></td></tr>
  <tr><td>年龄</td><td><input type="text" name="student_age"></td></tr>
  <tr><td>电话</td><td><input type="text" name="student_tel"></td></tr>
  <tr><td>地址</td><td><input type="text" name="student_address"></td></tr>
  <tr><td>电子邮箱</td><td><input type="text" name="student_email"></td></tr>
  <tr align="center">
  <td colspan="2">
  <input type="submit" value="提交">&nbsp;&nbsp;&nbsp;
  <input type="reset" value="取消">
  </td>
  </tr>
  </table>
  </form>

</body>
</html>
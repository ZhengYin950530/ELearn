<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>loginCheck.jsp</title>
</head>
<body>
    <form action="loginCheckServlet.do" method="post">
    	<table>
    		<tr>
    			<td>用户名：</td>
    			<td><input type="text" name="name"/></td>
    		</tr>
    		<tr>
    			<td>密   码：</td>
    			<td><input type="password" name="pwd"/></td>
    		</tr>

    		<tr>
    			<td><input type="submit" value="登陆"/></td>
    			<td><input type="reset" value="注册"/></td>
    		</tr>

    	</table>	
    </form>

</body>


</html>
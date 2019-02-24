<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>studentsearch.jsp</title>
</head>
<body>
    <form action="selectst.do" method="post">
    	<table>
    		<tr>
    			<td>姓   名：</td>
    			<td><input type="text" name="stname"/></td>
    		</tr>
     		<tr>
    			<td>年   龄：</td>
    			<td><input type="text" name="stage"/></td>
    		</tr> 

    		<tr>
    			<td><input type="submit" value="查询"/></td>
    		</tr>

    	</table>	
    </form>
</body>
</html>
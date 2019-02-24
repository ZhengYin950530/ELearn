<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>studentsearchajax.jsp</title>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
</head>
<body>

	<table>
		<tr>
			<td>姓 名：</td>
			<td><input type="text" id="stname" /></td>
		</tr>
		<tr>
			<td>年 龄：</td>
			<td><input type="text" id="stage" /></td>
		</tr>

		<tr>
			<td>
				<button id="select" onclick="studentSearch()">查询</button>			</td>
		</tr>

	</table>

	<script>
		function studentSearch() {
			var stname = $("#stname").val();
			var stage = $("#stage").val();
			var params = {
				"stname" : stname,
				"stage" : stage
			};
			
			if (stname == "" || stname == null) {
				alert("请输入学生姓名");
			} else {
				if (stage == "" || stage == null) {
					alert("请输入年龄");
				} else {
					$.ajax({
						url : "selectstudent.do",
						type : "post",
						data : params,
						success : function(data) {
							if (data == null || data == "") {
								alert("error");
							} else {
								alert("success");
								//window.location.reload();
								window.location.href = "studentsearchajax.jsp";
							}

						}
					})
				}
			}
		}
	</script>
	
	
	<!--查询结果显示table  -->
	<table border="0" width="238" heigth="252">
		<tr>
			<td>学生ID</td>
			<td><input type="text"
				value="${sessionScope.studentresult.getSt_id()}" name="student_id"></td>
		</tr>
		<tr>
			<td>学生姓名</td>
			<td><input type="text"
				value="${sessionScope.studentresult.getSt_name()}"
				name="student_name"></td>
		</tr>
		<tr>
			<td>性别</td>
			<td><input type="text"
				value="${sessionScope.studentresult.getSt_sex()}" name="student_sex"></td>
		</tr>
		<tr>
			<td>年龄</td>
			<td><input type="text"
				value="${sessionScope.studentresult.getSt_age()}" name="student_age"></td>
		</tr>
		<tr>
			<td>电话</td>
			<td><input type="text"
				value="${sessionScope.studentresult.getSt_tel()}" name="student_tel"></td>
		</tr>
		<tr>
			<td>地址</td>
			<td><input type="text"
				value="${sessionScope.studentresult.getSt_address()}"
				name="student_address"></td>
		</tr>
		<tr>
			<td>电子邮箱</td>
			<td><input type="text"
				value="${sessionScope.studentresult.getSt_email()}"
				name="student_email"></td>
		</tr>
		<tr align="center">
			<td colspan="2"></td>
		</tr>
	</table>
	<%-- ${sessionScope.studentresult.getSt_email()} --%>
</body>
</html>
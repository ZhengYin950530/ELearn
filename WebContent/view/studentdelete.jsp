<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>studentdeleteajax</title>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script>
function studentDelete() {
	var stid = $("#stid").val();
	var params = {
			"stid" : stid
	};
	if (stid == "" || stid == null){
		alert("请输入学生ID");
	}else {
		$.ajax({
			url : "deletestudent.do",
			type : "post",
			data : params,
			success : function(data) {
				if (data == null || data ==""){
					alert("error");
				}else{
					alert("successfully to delete the student message!");
				}
			}
		})
	}
}
</script>
</head>
<body>
<table>
<tr>
<td>I D</td>
<td><input type = "text" id ="stid" /></td>
</tr>
<tr>
<td><button id="delete" onclick = "studentDelete()">确认删除</button></td>
</tr>
</table>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>studentinsertajax</title>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
</head>
<body>
 	<table>
 		<tr>
 		<td>请开始填入信息：</td>
 		</tr>
 		<tr>
 			<td>I D:</td>
 			<td><input type="text" id="stid" /></td>
		<tr>
			<td>姓 名：</td>
			<td><input type="text" id="stname" /></td>
		</tr>
		<tr>
			<td>性 别：</td>
			<td><input type="text" id="stsex" /></td>
		</tr>
		<tr>
			<td>年 龄：</td>
			<td><input type="text" id="stage" /></td>
		</tr>
		<tr>
			<td>电 话：</td>
			<td><input type="text" id="sttel" /></td>
		</tr>
		<tr>
			<td>地 址：</td>
			<td><input type="text" id="staddress" /></td>
		</tr>
		<tr>
			<td>邮 箱：</td>
			<td><input type="text" id="stemail" /></td>
		</tr>


		<tr>
			<td>
				<button id="inert" onclick="studentinsert()">保存</button></td>
		</tr>

	</table>
	
	<script>
		function studentinsert() {
			var stid = $("#stid").val();
			var stname = $("#stname").val();
			var stsex = $("#stsex").val();
			var stage = $("#stage").val();
			var sttel = $("#sttel").val();
			var staddress = $("#staddress").val();
			var stemail = $("#stemail").val();
			var params = {
				"stid"	: stid,		
				"stname" : stname,
				"stsex" : stsex,
				"stage" : stage,
				"sttel" : sttel,
				"staddress" : staddress,
				"stemail" : stemail
			};
			
			if (stid == "" || stid == null) {
				alert("请输入学生ID。");
			} else {
				if (stname == "" || stname == null) {
					alert("请输入姓名。");
				} else {
					if(stage == "" || stage == null) {
						alert("请输入年龄。");
					}else {
						if(stsex == "" || stsex == null) {
							alert("请输入性别。");
						}else{
						$.ajax({
						url : "insertstudent.do",
						type : "post",
						data : params,
						success : function(data) {
							if (data == null || data == "") {
								alert("error");
							} else {
								alert("success");
								//window.location.reload();
								//window.location.href = "studentinsertajax.jsp";
							}

						}
					})
						}
					}
				}
			}
		}
	</script>
  <tr align="center">
  <td colspan="2"></td>
  </tr>
  </table>
  </form>

</body>
</html>
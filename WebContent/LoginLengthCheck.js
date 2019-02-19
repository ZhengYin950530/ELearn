

    function sub() {
        var userId = $("#userId").val();
        var password = $("#password")[0].value;
        var password2 = $("#password")[1].value;
		var params = {
				"userId" : userId,
				"password" : password,
				"password2":password2
			};  
        if (userId.length < 6 || userId.length > 10) {
            alert('用户名长度为6~10位');
            return;
        }
        if (userId == "" || userId == null){
        	alert("用户名不能为空");
        }        
        if (!password || !password2) {
            alert('密码为空');
            return;
        } 
        if (password !== password2) {
            alert('两次密码输入不一样,请重新输入');
            return;
        } else {
			$.ajax({
				url : "login.do",
				type : "post",
				data : params,
				success : function(data) {
					if (data == null || data == "") {
						$("#message").text("用户名或密码错误");
					}
  
    }
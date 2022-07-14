<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="WebHocTap.DangNhap" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập</title>
    <link href="Style/Dangnhap.css" rel="stylesheet" />
</head>
<body>
    <div class="header">
		<div class="header_top">
			<p>WEB HỌC TẬP TRỰC TUYẾN</p>
			<div id="login" class="login" runat="server">
				<p class="user"></p>
				<a href="Dangnhap.aspx" title="Đăng nhập">Đăng nhập</a>
			</div>	
		</div>
            
		<div class="header_bot">
			<ul>
				<li><a href="TrangChu.aspx">Trang chủ</a></li>
				<li><a href="gioithieu.aspx">Giới thiệu</a></li>
				<li><a href="AllCourses.aspx">Toàn bộ khóa học</a></li>
                <li><a href="MyCourses.aspx">Khóa học của bạn</a></li>
				
				<li><a href="Lienhe.aspx">Liên hệ</a></li>
				
			</ul>
		</div>
	</div>
    <div class="content">

            <div id="login-form" class="auth" >
                <form action="Dangnhap.aspx" method="post" runat="server">
                <div class="auth__header">
                    <h2>Đăng nhập</h2>
                    <a href="Dangky.aspx">Đăng ký</a>
                </div>
                <div class="auth__form">
                    <div class="form-control">
                        <label for="username">Tên đăng nhập</label>
                        <input type="text" id="usernameL" placeholder="Nhập tên đăng nhập" name="usernameL">
                    </div>
                    <div class="form-control">
                        <label for="password">Mật khẩu</label>
                        <input type="password" id="passwordL" placeholder="Nhập mật khẩu" name="passwordL">
                    </div>
                    <p runat="server" id="errorL" style=" color:red"></p>
                    <button class="auth_btn" id="btnLogin" runat="server">Đăng nhập</button>
                </div>
                </form>
            </div>
		</div>
    <div class="footter">
		<div class="footter_top">
			<div class="Thongtinlienhe">
				<h1>Thông Tin Liên Hệ</h1>
				<p>Địa chỉ: Định Công, Hoàng Mai, Hà Nội	</p>
				<p>SĐT: 1910192092</p>
				<p>Gmail: abc1234@gmail.com</p>
			</div>
			<div class="Lienket">
				<h1>Liên Kết</h1>
				<ul>
					<li><a href="gioithieu.aspx">Giới thiệu</a></li>
					<li><a href="AllCourses.aspx">Học tập</a></li>
					
					<li><a href="Lienhe.aspx">Liên hệ</a></li>
				</ul>
			</div>
			<div class="Lienket">
				<h1>Hỗ Trợ</h1>
				<ul>
					<li><a href="#">Thảo luận</a></li>
					<li><a href="#">Điều khoản sử dụng</a></li>
					<li><a href="#">Về chúng tôi</a></li>
				</ul>
			</div>
		</div>
		<div class="footter_bot">
			<div class="copyright">
        		© Bản quyền thuộc về nhóm 10
			</div>
		</div>

	</div>
<script>
    btnLogin.onclick = function (e) {
        var valid = true;
        if (!(usernameL.value.trim() && passwordL.value.trim())) {
            valid = false;
        }
        if (!valid) {
            e.preventDefault();
            btn_error = document.getElementById("errorL");
            btn_error.innerHTML = "Điền đầy đủ tài khoản và mật khẩu";
        }
    }

</script>
</body>
</html>

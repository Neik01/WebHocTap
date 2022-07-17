<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyCourses.aspx.cs" Inherits="WebHocTap.MyCourses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang chủ</title>
    <link href="Style/trangchu.css" type="text/css" rel="stylesheet" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
		<div class="header_bot" id="header-bot">
			<ul id="nav_bar" runat="server">
				<li><a href="TrangChu.aspx">Trang chủ</a></li>
				
				<li><a href="AllCourses.aspx">Toàn bộ khóa học</a></li>
                <li><a href="MyCourses.aspx">Khóa học của bạn</a></li>
				
				<li><a href="Lienhe.aspx">Liên hệ</a></li>
				
				<a href="javascript:void(0);" style="font-size:35px;" class="icon" onclick="responsive() ">&#9776;</a>
			</ul>
		</div>
	</div>

	<h1 class="h1">Khóa học bạn đã đăng ký</h1>
	<div class="course">
			<asp:ListView ID="myCourses" runat="server">
				<ItemTemplate>
					<div class="hot">
					<a href="CourseDetail.aspx?id=<%# Eval("Id") %>">
						<img id="anh1" width="200" height="80" src="<%# Eval("Image") %>" title="Khóa học">
						<div class="course_name" id="course1">
							<strong id="ten1"><%# Eval("Name") %></strong>
							
						</div>
					</a>
					</div>
				</ItemTemplate>
			</asp:ListView>
	</div>

	<div class="footer">
		<div class="footer_top">
			<div class="Thongtinlienhe">
				<h1>Thông Tin Liên Hệ</h1>
				<p>Địa chỉ: Định Công, Hoàng Mai, Hà Nội	</p>
				<p>SĐT: 1910192092</p>
				<p>Gmail: abc1234@gmail.com</p>
			</div>
			<div class="Lienket">
				<h1>Liên Kết</h1>
				<ul>
					
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
		
	</div>
	
</body>
</html>

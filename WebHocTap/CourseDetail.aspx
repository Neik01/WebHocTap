<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseDetail.aspx.cs" Inherits="WebHocTap.CourseDetail" %>

<!DOCTYPE aspx>

<aspx xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8">
	<link rel="stylesheet" href="Style/CourseDetail.css">
    <title>Khóa học</title>
</head>
<body>
	<form id="form1" runat="server">
   <div class="header">
		<div class="header_top">
			<p>WEB HỌC TẬP TRỰC TUYẾN</p>
			<div id="login" class="login" runat="server">
				<p class="user"></p>
				<a href="Dangnhap.aspx" title="Đăng nhập">Đăng nhập</a>
			</div>	
		</div>
		<div class="header_bot" id="header-bot">
			<ul>
				<li><a href="TrangChu.aspx">Trang chủ</a></li>
				<li><a href="gioithieu.aspx">Giới thiệu</a></li>
				<li><a href="AllCourses.aspx">Toàn bộ khóa học</a></li>
                <li><a href="MyCourses.aspx">Khóa học của bạn</a></li>
				
				<li><a href="Lienhe.aspx">Liên hệ</a></li>
				
				<a href="javascript:void(0);" style="font-size:35px;" class="icon" onclick="responsive() ">&#9776;</a>
			</ul>
		</div>
	</div>
	<div>
	<div class="main">
		<asp:ListView ID="ListViewCoursesInformation" runat="server" >
			<ItemTemplate>
				<div class="anh">
					<img src="<%# Eval("Image") %>" title="ảnh đồng hồ">
				</div>

				<div class="content">
					<!----<p><a href="#">Trang chủ</a> / <a href="#">Đồng Hồ Nam</a></p>---->
					<h1 class="header-content"><%# Eval("Name") %></h1>
					<hr width="20px" />
					
					<p class="header-content"><%# Eval("Detail") %>
					</p>
					<ul class="header-content" id="Lessons" name="Lessons">
						
					</ul>
				</ItemTemplate>
		</asp:ListView>
		<div class="submit">
			<p class="add" name="add" runat="server" id="add" style="color:red"></p>
			<button type="submit" class="register" runat="server"  ID="AddToMyCourse" onserverclick="AddToMyCourseButton" >Đăng ký khóa học</button>
		</div>
		<div class="Lessons" id="Lessons" name="Lessons" runat="server">


		</div>
		</div>
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
		</div>
		
	
</form>
	
</body>
</aspx>
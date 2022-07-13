<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="WebHocTap.TrangChu" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang chủ</title>
    <link href="Style/trangchu.css" type="text/css" rel="stylesheet" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
	<div class="header">
		<div class="header_top" id="header-top">
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
				<li><a href="donghonam.aspx">Toàn bộ khóa học</a></li>
                <li><a href="Giohang.aspx">Khóa học của bạn</a></li>
				<li><a href="donghonu.aspx">Luyện tập</a></li>
				<li><a href="Lienhe.aspx">Liên hệ</a></li>
				
				<a href="javascript:void(0);" style="font-size:35px;" class="icon" onclick="responsive() ">&#9776;</a>
			</ul>
		</div>
	</div>

	<h1 class="h1">Các khóa học hot</h1>
	<div class="course">
			<asp:ListView ID="hot" runat="server">
				<ItemTemplate>
					<div class="hot">
					<a href="Trangsanphamchitiet.aspx?id=<%# Eval("Id") %>">
						<img id="anh1" width="200" height="80" src="<%# Eval("Image") %>" title="Khóa học">
						<div class="course_name" id="course1">
							<strong id="ten1"><%# Eval("Name") %></strong>
							
						</div>
					</a>
					</div>
				</ItemTemplate>
			</asp:ListView>
	</div>

	<h1 class="h1">Các khóa học mới</h1>
			<div class="new">
				<asp:ListView ID="New_Courses" runat="server">
		<ItemTemplate>
				<div class="New_Courses">
					<a href="Trangsanphamchitiet.aspx?id=<%# Eval("Id") %>">
						<img id="anh2" width="200" height="80" src="<%# Eval("Image") %>" title="Khóa học">
						<div class="New_Courses_Name">
							<strong><%# Eval("Name") %></strong>
						</div>
					</a>
				</div>
			</ItemTemplate>
	</asp:ListView>
			</div>
		
	<h1 class="h1">Hướng dẫn</h1>
	<div class="Tutorials">
		<div class="tutorial">
			<div class="tutorial_1">
				<a href="#">
					<img src="images/tintuc1.jpg" title="Hướng dẫn">
					<h5>Hướng dẫn giải đề thi THPT năm 2022</h5>
					<p>Hướng dẫn và đáp án đề thi THPT các môn năm 2022</p>
				</a>	
			</div>
		</div>
		<div class="tutorial">
			<div class="tutorial_1">
				<a href="#">
					<img src="images/tintuc2.jpg" title="Hướng dẫn">
					<h5>Tạo một trang Web bán hàng đơn giản với ASP.NET MVC</h5>
					<p>Trong loạt bài này, các bạn sẽ được hướng dẫn tạo ...</p>
				</a>	
			</div>
		</div>
		<div class="tutorial">
			<div class="tutorial_1">
				<a href="#">
					<img src="images/tintuc3.jpg" title="Hướng dẫn">
					<h5>Bộ 100 đề kiểm tra giải tích 1 kèm đáp án</h5>
					<p>100 đề kiểm tra giải tích 1 được tổng hợp từ các trường đại học trong nước</p>
				</a>	
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
					<li><a href="donghonam.aspx">Học tập</a></li>
					<li><a href="donghonu.aspx">Luyện tập</a></li>
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
		<div class="footer_bot">
			<div class="copyright">
        		© Bản quyền thuộc về nhóm 10
			</div>
		</div>
	</div>
	<script>
        
		function responsive()
		{
			var x = document.getElementById("header-bot");
			if (x.className === "header_bot"){
				x.className += "responsive";
			}
			else {
				x.className = "header_bot";
            }
		}
    </script>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IT.aspx.cs" Inherits="WebHocTap.IT" %>
<!DOCTYPE html>
<head runat="server">
    <title>Khóa học lập trình</title>
    <link href="Style/allcourses.css" type="text/css" rel="stylesheet" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
   <div class="header">
		<div class="header_top">
			<p>WEB HỌC TẬP TRỰC TUYẾN</p>
			<div id="login" class="login" runat="server">
				<p class="user"></p>
				<a href="DangNhap.aspx" title="Đăng nhập">Đăng nhập</a>
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
    <div class="up">
        <div class="abc">
            <a href="Trangchu.aspx"><strong>TRANG CHỦ</strong></a> / <a href="IT.aspx"><strong>Khóa học lập trình</strong></a>
        </div>
    </div>
    <div class="container">
        <div class="sidebar_one">
            <div class="row_1">
                <strong>Danh mục khóa học</strong>
                <div class="show">
                    <ul>
                        <li><a href="Allcourses.aspx">Tất cả khóa học</a></li>
                        <li><a href="IT.aspx">Lập trình</a></li>
						<li><a href="Math.aspx">Toán</a></li>
						<li><a href="Languages.aspx">Ngoại ngữ</a></li>
						
                    </ul>
                </div>
            </div>
            <div class="row_2"></div>
            <div class="row_3"></div>
        </div>
        <div class="sidebar_two">
            <div class="sanpham">
                <asp:ListView ID="ItCourses" runat="server">
                    <ItemTemplate>
                        <a href="CourseDetail.aspx?id=<%# Eval("Id") %>">
                            <div class="sanpham_show">
                                <img src="<%# Eval("Image") %>" alt="ảnh lỗi">
                                <div class="sanpham_gia">
                                    <strong><%# Eval("Name") %></strong>
                                    
                                </div>
                            </div>
                        </a>
                    </ItemTemplate>
                </asp:ListView>
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
</body>
</html>

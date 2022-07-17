<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WebHocTap.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang cho giảng viên</title>
	<link href="Style/Admin.css" type="text/css" rel="stylesheet"/>
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
				<li><a href="Trangchu.aspx">Trang chủ</a></li>
				
				<li><a href="AllCourses.aspx">Toàn bộ khóa học</a></li>
                <li><a href="MyCourses.aspx">Khóa học của bạn</a></li>
				<li><a href="Lienhe.aspx">Liên hệ</a></li>
			</ul>
		</div>
	</div>
	<div class="container"> 
		<div class="sidebar_one">
                <strong>Danh mục khóa học</strong>
                <div class="show">
                    <ul>
                        <li><a href="Admin.aspx">Thêm khóa học</a></li>
                        <li><a href="Admin2.aspx">Xóa khóa học</a></li>
                    </ul>
                </div>
            </div>
        <div class="sidebar_two"> 
		<form id="createCourseForm" method="post" runat="server" enctype="multipart/form-data">
			<div class="auth__form">
                    <div class="form-control">
                        <label for="CourseName">Tên khóa học</label>
                        <input type="text" id="CourseName" placeholder="Nhập tên khóa học" name="CourseName">
                    </div>
			</div>
			
			<div class="auth__form">
				<label>Loại khóa học</label>
                    <div class="form-control">
						<div class="radioButton">
							<input type="radio" id="type1" name="CourseType" value="IT">
							<label class="labelRadio" for="type1">Khóa học lập trình</label>
							<input type="radio" id="type2" name="CourseType" value="Math">
							<label class="labelRadio" for="type2">Khóa học toán</label>
							<input type="radio" id="type3" name="CourseType" value="Languages">
							<label class="labelRadio" for="type3">Khóa học ngoại ngữ</label>
						</div>
					</div>
			</div>

			<div class="auth__form">
                    <div class="form-control">
                        <label for="CourseName">Miêu tả khóa học</label>
                        <input type="text" id="CourseDetail" placeholder="Nhập miêu tả cho khóa học" name="CourseDetail">
                    </div>
			</div>

			<div class="auth__form">
                    <div class="form-control">
                        <label for="CourseImage">Ảnh khóa học:   </label>
                        <input type="file" id="CourseImage" name="CourseImage" accept="image/*"/>
                    </div>
			</div>
			<button type="submit" form="createCourseForm" class="auth_btn" id="btnReg" formaction="Admin.aspx" formmethod="post">Thêm khóa học</button>
    </form>
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

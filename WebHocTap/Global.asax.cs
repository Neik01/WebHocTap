using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace WebHocTap
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            //tài khoản 
            Application["Users"] = new List<User>();
            List<User> Userslist = (List<User>)Application["Users"];
            Userslist.Add(new User("administrator", "administrator@gmail.com", "administrator", "administrator"));

            //Các khóa học
            Application["CourseList"] = new List<Course>();
            List<Course> CourseList = new List<Course>();
            //khóa học hot
            CourseList.Add(new Course() { Id = "1", Name = "Lập trình C++ cơ bản", Type ="IT" , Image = "Images/c_logo.png", Detail = "Khóa học C++ cơ bản cho người mới bắt đầu" });
            CourseList.Add(new Course() { Id = "2", Name = "HTML cơ bản", Type = "IT", Image = "Images/html_logo.png", Detail = "Khóa học HTML cơ bản cho người mới bắt đầu" });
            CourseList.Add(new Course() { Id = "3", Name = "Xác suất thống kê", Type = "Math", Image = "Images/probability.jpg", Detail = "Khóa học xác suất thống kê" });
            CourseList.Add(new Course() { Id = "4", Name = "Tiếng Anh giao tiếp", Type = "Languages", Image = "Images/english.jpg", Detail = "Tiếng Anh giao tiếp cơ bản" });
            //khóa học mới
            CourseList.Add(new Course() { Id = "5", Name = "Tiếng Nhật cơ bản", Type = "Languages", Image = "Images/Japanese.png", Detail = "Tiếng Nhật giao tiếp cơ bản" });
            CourseList.Add(new Course() { Id = "6", Name = "ASP.Net cơ bản", Type = "IT", Image = "Images/asp.png", Detail = "ASP.Net cơ bản" });
            CourseList.Add(new Course() { Id = "7", Name = "ASP.NET Core", Type = "IT", Image = "Images/asp.png", Detail = "Tìm hiểu về ASP.Net Core" });
            CourseList.Add(new Course() { Id = "8", Name = "C++ hướng đối tượng", Type = "IT", Image = "Images/c_logo.png", Detail = "Lập trình hướng đối tượng với ngôn ngữ C++" });


            //Các khóa học khác
            CourseList.Add(new Course() { Id = "9", Name = "Toán 12", Type = "Math", Image = "Images/toan12.jpg", Detail = "Bài giảng về toán 12 chi tiết" });
            CourseList.Add(new Course() { Id = "10", Name = "Giải tích", Type = "Math", Image = "Images/giaiTich.png", Detail = "Khóa học giải tích đại học" });
            CourseList.Add(new Course() { Id = "11", Name = "Tiếng Pháp", Type = "Languages", Image = "Images/France.png", Detail = "Khóa học tiếng Pháp cho người mới bắt đầu" });



            Application["CourseList"] = CourseList;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["login"] = 0;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}
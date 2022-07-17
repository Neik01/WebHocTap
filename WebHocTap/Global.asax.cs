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
            CourseList.Add(new Course( "1", "Lập trình C++ cơ bản", "IT" , "Images/c_logo.png", "Khóa học C++ cơ bản cho người mới bắt đầu" ));
            CourseList.Add(new Course( "2",  "HTML cơ bản","IT", "Images/html_logo.png", "Khóa học HTML cơ bản cho người mới bắt đầu" ));
            CourseList.Add(new Course( "3", "Xác suất thống kê", "Math", "Images/probability.jpg", "Khóa học xác suất thống kê" ));
            CourseList.Add(new Course("4","Tiếng Anh giao tiếp",  "Languages", "Images/english.jpg",  "Tiếng Anh giao tiếp cơ bản" ));
            //khóa học mới
            CourseList.Add(new Course( "5",  "Tiếng Nhật cơ bản",  "Languages",  "Images/Japanese.png",  "Tiếng Nhật giao tiếp cơ bản" ));
            CourseList.Add(new Course( "6",  "ASP.Net cơ bản", "IT", "Images/asp.png", "ASP.Net cơ bản" ));
            CourseList.Add(new Course( "7",  "ASP.NET Core",  "IT", "Images/asp.png",  "Tìm hiểu về ASP.Net Core" ));
            CourseList.Add(new Course( "8", "C++ hướng đối tượng", "IT",  "Images/c_logo.png",  "Lập trình hướng đối tượng với ngôn ngữ C++" ));


            //Các khóa học khác
            CourseList.Add(new Course( "9",  "Toán 12", "Math","Images/toan12.jpg",  "Bài giảng về toán 12 chi tiết" ));
            CourseList.Add(new Course( "10",  "Giải tích",  "Math",  "Images/giaiTich.png",  "Khóa học giải tích đại học" ));
            CourseList.Add(new Course("11",  "Tiếng Pháp",  "Languages",  "Images/France.png", "Khóa học tiếng Pháp cho người mới bắt đầu" ));



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
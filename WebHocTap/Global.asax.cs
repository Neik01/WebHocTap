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
            CourseList.Add(new Course() { Id = "5", Name = "Tiếng Anh giao tiếp", Type = "Languages", Image = "Images/english.jpg", Detail = "Tiếng Anh giao tiếp cơ bản" });
            CourseList.Add(new Course() { Id = "6", Name = "Tiếng Anh giao tiếp", Type = "Languages", Image = "Images/english.jpg", Detail = "Tiếng Anh giao tiếp cơ bản" });
            CourseList.Add(new Course() { Id = "7", Name = "Tiếng Anh giao tiếp", Type = "Languages", Image = "Images/english.jpg", Detail = "Tiếng Anh giao tiếp cơ bản" });
            CourseList.Add(new Course() { Id = "8", Name = "Tiếng Anh giao tiếp", Type = "Languages", Image = "Images/english.jpg", Detail = "Tiếng Anh giao tiếp cơ bản" });


            Application["CourseList"] = CourseList;
        }

        protected void Session_Start(object sender, EventArgs e)
        {

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
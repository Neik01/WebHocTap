using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHocTap
{
    public partial class MyCourses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["username"] != null)
            {
                login.InnerHtml = "<p class='user'>Xin chào " + Session["username"].ToString() + " | " + "</p>" +
                                  "<a href = 'logout.aspx'> Đăng xuất </a>";
               
                    if (Session["username"].Equals("administrator"))
                    {
                        string html = "<li><a href='Admin.aspx'>Trang giảng viên</li>";
                        nav_bar.InnerHtml += html;
                    }

                
                string[] registered = Request.Cookies["MyCourses"].Value.Split(',');
                List<Course> CourseList = (List<Course>)Application["CourseList"];
                List<Course> list = new List<Course>();
                foreach (Course course in CourseList)
                {
                    foreach(string key in registered) { 
                    string id = course.Id;
                    if (id.Equals(key))
                    {
                        list.Add(course);
                    }
                    
                    }
                }

                myCourses.DataSource = list;
                myCourses.DataBind();
            }
            else
            {
                Response.Redirect("DangNhap.aspx");
            }


        }
    }
}
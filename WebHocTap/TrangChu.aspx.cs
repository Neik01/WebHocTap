using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHocTap
{
    public partial class TrangChu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                login.InnerHtml = "<p class='user'>Xin chào " + Session["username"].ToString() + " | " + "</p>" +
                                  "<a href = 'Dangxuat.aspx'> Đăng xuất </a>";

            }

            List<Course> ProductList = (List<Course>)Application["CourseList"];
            List<Course> HotCourses = new List<Course>();
            List<Course> NewCourses = new List<Course>();

            foreach (Course course in ProductList)
            {
                string id =course.Id;
                if (id == "1" || id == "2" || id == "3" || id == "4")
                {
                    HotCourses.Add(course);
                }
                if (id == "5" || id == "6" || id == "7" || id == "8")
                {
                    NewCourses.Add(course);
                }
            }
            hot.DataSource = HotCourses;
            hot.DataBind();
            New_Courses.DataSource = NewCourses;
            New_Courses.DataBind();
        }
    }
}

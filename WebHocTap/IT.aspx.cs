using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHocTap
{
    public partial class IT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                login.InnerHtml = "<p class='user'>Xin chào " + Session["username"].ToString() + " | " + "</p>" +
                                  "<a href = 'logout.aspx'> Đăng xuất </a>";

            }
            List<Course> CourseList = (List<Course>)Application["CourseList"];
            List<Course> list = new List<Course>();
            foreach (Course course in CourseList)
            {
                string type = course.Type;
                if (type.Equals("IT"))
                {
                    list.Add(course);
                }
                

            }
            ItCourses.DataSource = list;
            ItCourses.DataBind();

        }
    
    }
}
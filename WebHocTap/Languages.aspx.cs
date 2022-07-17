using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHocTap
{
    public partial class Languages : System.Web.UI.Page
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

            }
            List<Course> CourseList = (List<Course>)Application["CourseList"];
            List<Course> list = new List<Course>();
            foreach (Course course in CourseList)
            {
                string type = course.Type;
                if (type.Equals("Languages"))
                {
                    list.Add(course);
                }


            }
            languages.DataSource = list;
            languages.DataBind();

        }
    }
}
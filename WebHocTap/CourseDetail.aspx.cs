using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHocTap
{
    public partial class CourseDetail : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString.Get("id");

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
            
            if (id != null)
            {
                List<Course> CourseList = (List<Course>)Application["Courselist"];
                List<Course> information = new List<Course>();
                foreach (Course course in CourseList)
                {
                    if (id == course.Id)
                    {
                        information.Add(course);

                    }
                    ListViewCoursesInformation.DataSource = information;
                    ListViewCoursesInformation.DataBind();
                }
                
                showLessons(id, CourseList);
            }
            else
            {
                Response.Redirect("TrangChu.aspx");
            }

            

            

        }
        protected void AddToMyCourseButton(object sender, EventArgs e)
        {

            if (Session["username"] != null)
            {
                string id = Request.QueryString.Get("id");
                //Store cart to cookies
                if (Request.Cookies["MyCourses"] == null)
                {
                    Response.Cookies["MyCourses"].Value = $"{id},";
                    Response.Cookies["MyCourses"].Expires = DateTime.Now.AddDays(14);
                }
                else
                {

                    //Store cookies by productID, example: 1,2,3,40,50,... 
                    Response.Cookies["MyCourses"].Value = Request.Cookies["MyCourses"].Value + $"{id},";
                    Response.Cookies["MyCourses"].Expires = DateTime.Now.AddDays(14);
                }

                //Refresh to update cart number
                Response.Redirect(Request.Url.ToString());
                add.InnerHtml = "Đăng ký khóa học thành công";
                
            }
            else
            {
                Response.Redirect("Dangnhap.aspx");
            }
        }

        private void showLessons(string id, List<Course> CourseList)
        {
            string[] registered = Request.Cookies["MyCourses"].Value.Split(',');
            if (Session["username"] != null)
                foreach (string courseID in registered)
                {
                    if (id.Equals(courseID)){
                        AddToMyCourse.Style.Add("display", "none");
                        add.Style.Add("display", "none");
                        string html = "";
                        html += "<ul><li><a href='#'>Bài 1</li>";
                        html += "<li><a href='#'>Bài 2</li>";
                        html += "<li><a href='#'>Bài 3</li>";
                        html += "<li><a href='#'>Bài 4</li></ul>";
                        Lessons.InnerHtml = html;
                    }
                }
            
            
        }
    }
}
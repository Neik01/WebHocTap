using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHocTap
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            List<Course> CourseList = (List<Course>)Application["Courselist"];
            if (IsPostBack)
            {
                string name = Request.Form.Get("CourseName");
                string type = Request.Form.Get("CourseType");
                string detail= Request.Form.Get("CourseDetail");
                HttpPostedFile imageFile = Request.Files["CourseImage"];
                string fileName = Path.GetFileName(imageFile.FileName);
                string path = "Images/";
                string id = (CourseList.Count()+1).ToString();

                Course newCourse = new Course(id, name, type, path + fileName, detail);
                CourseList.Add(newCourse);

            }
           Application["Courselist"] = CourseList;



        }
    }
}
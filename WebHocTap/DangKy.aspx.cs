using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHocTap
{
    public partial class Dangky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string username = Request.Form.Get("username");
                string email = Request.Form.Get("email");
                string password = Request.Form.Get("password");
                string repassword = Request.Form.Get("re-password");
                List<User> users = (List<User>)Application["Users"];
                bool check = true;
                if (username != "" && email != "" && password != "" && repassword != "")
                {
                    foreach (User user in users)
                    {
                        if (username == user.username)
                        {
                            btn_error.InnerHtml = "Tài khoản đã được sử dụng";
                            check = false;
                        }
                    }

                    if (check)
                    {
                        btn_error.InnerHtml = "Đăng ký thành công";
                        User newUser = new User(username, email, password, repassword);
                        users.Add(newUser);
                        Application["Users"] = users;
                    }
                }
            }

        }
    }
}
/*if (email == user.email)
                        {
                            btn_error.InnerHtml = "Email đã được sử dụng";
                            check = false;
                        } */
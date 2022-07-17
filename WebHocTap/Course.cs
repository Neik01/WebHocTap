using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebHocTap
{
    public class Course
    {
        

        public string Id { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }
        public string Image { get; set; }
        public string Detail { get; set; }

        public Course(string id, string name, string type, string image, string detail)
        {
            Id = id;
            Name = name;
            Type = type;
            Image = image;
            Detail = detail;
        }
    }
}
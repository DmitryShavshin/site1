using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FirstWebsiteDemo
{
    public class News
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string NewsName { get; set; }
        public string Img { get; set; }

        public News(int id, string title, string newsName, string img)
        {
            this.Id = id;
            this.Title = title;
            this.NewsName = newsName;
            this.Img = img;
        }
    }
}
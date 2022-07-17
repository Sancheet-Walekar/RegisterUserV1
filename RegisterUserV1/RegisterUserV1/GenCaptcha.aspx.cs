using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;

namespace RegisterUserV1
{
    public partial class GenCaptcha : System.Web.UI.Page
    {
        public String GenerateCap()
        {
            //size is 6
            String allText = "abcdef2345ghijkuvwxyzABCDMNOPQRlmnopqrstSTUVWXYZ0167EFGHIJKL89";
            Random rnd = new Random();
            StringBuilder sb = new StringBuilder();
            for(int i =0; i<6; i++)
            {
                int temp = rnd.Next(allText.Length);
                sb.Append(allText[temp]);
            }
            return sb.ToString();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //Label1.Text = GenerateCap();
            Bitmap bmp = new Bitmap(140, 80);
            Font myFont = new Font("Arial", 20, FontStyle.Strikeout);
            Graphics g = Graphics.FromImage(bmp);
            g.Clear(Color.BlueViolet);
            String cap = GenerateCap();
            //create a session and store captcha in that session
            Session["cap"] = cap;
            Pen p1 = new Pen(Color.Chocolate, 20);
            g.DrawRectangle(p1, 0, 0, 140, 80);
            g.DrawString(cap, myFont, Brushes.White, 20, 15);
            bmp.Save(Response.OutputStream,ImageFormat.Gif);
        }
    }
}
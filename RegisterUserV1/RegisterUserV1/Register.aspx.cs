using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegisterUserV1
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void valcaptcha_ServerValidate(object source, ServerValidateEventArgs args)
        {
            String entCap = args.Value;
            String gCap = Session["cap"].ToString();
            if(entCap.Equals(gCap))
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void valdob_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime enteredDate = DateTime.Parse(args.Value);
            int age = DateTime.Now.Year - enteredDate.Year;
            args.IsValid = (age >= 18);
        }
    }
}
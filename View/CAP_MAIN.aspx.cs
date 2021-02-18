using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KPC_DT_CAP.View
{
    public partial class CAP_MAIN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnStart_Click(object sender, EventArgs e)
        {
            Response.Redirect(string.Format("/View/CAP_LIST.aspx"), false);
        }
    }
}
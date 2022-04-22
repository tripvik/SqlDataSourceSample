using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnUpdateExpProp_Click(object sender, EventArgs e)
    {
        SqlDataSource_usp_DBAcmdrPROP.DataBind();
        string script = "alert('Success');";
        ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
    }
}
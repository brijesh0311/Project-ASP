﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJECT_ASP
{
    public partial class Admin_Side : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                Literal1.Text = Session["email"].ToString();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["email"] = null;
            Response.Redirect("~/LOGIN.aspx");
        }
    }
}
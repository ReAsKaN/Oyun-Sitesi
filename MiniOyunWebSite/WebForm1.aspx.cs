﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniOyunWebSite
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                
                Response.Redirect("Login.aspx?message=Please+login+to+play+this+game");
            }


            var iframeContainer = new Literal();
            iframeContainer.Text = @"
        <div style='
            display: flex; 
            justify-content: center; 
            align-items: center; 
            height: 100vh; 
            background-color: #000;'>
            <iframe 
                src='Games/FlappyBird/index.html' 
                style='
                    width: 80%; 
                    height: 80%; 
                    max-width: 380px; 
                    max-height: 660px; 
                    border: none; 
                    overflow: hidden;'>
            </iframe>
        </div>";

            
            phIframeContainer.Controls.Add(iframeContainer);
        }
    }
}
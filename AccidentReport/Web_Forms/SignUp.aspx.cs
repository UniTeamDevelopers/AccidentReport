﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace AccidentReport.Web_Forms
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String connectionString;
            connectionString = @"Data Source=UNKNOWN\MYSQL;Initial Catalog=web;Integrated Security=True";
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            try
            {
                String sql = "insert into driver values('"+ txtNIC.Text + "','"+ txtFName.Text+ "','"+ txtLName.Text+"','"+ encryptAndDecrypt.Encrypt(txtPassword.Text)+ "','"+ Int32.Parse(mobileNumber.Text) + "','"+ selectGender.SelectedItem.ToString() + "','"+ txtLicence .Text+ "','"+ txtBirthday .Text+ "','"+ txtEmail .Text+ "') ";
                SqlCommand cmd = new SqlCommand(sql,con);
            }catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            con.Close();
        }
    }
}
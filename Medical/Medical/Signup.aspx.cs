using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Medical
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //try
            //{
                SqlConnection con = new SqlConnection(
                WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
                con.Open();

                SqlCommand cmd = new SqlCommand("INSERT INTO login(username,password) values(@user,@pass)", con);
                cmd.Parameters.Add("@user", SqlDbType.NVarChar).Value = TextBox1.Text;
                cmd.Parameters.Add("@pass", SqlDbType.NVarChar).Value = TextBox2.Text;
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("INSERT INTO PatientDetails(name,age,gender,bloodgroup,height,weight,history1,history2,history3,emailid,phonenumber,location) values(@name,@age,@gender,@bloodgroup,@height,@weight,@history1,@history2,@history3,@emailid,@phonenumber,@location)", con);
                cmd1.Parameters.Add("@name", SqlDbType.NVarChar).Value = TextBox4.Text;
                cmd1.Parameters.Add("@age", SqlDbType.NChar).Value = TextBox5.Text;
                cmd1.Parameters.Add("@gender", SqlDbType.NChar).Value = Gender.SelectedValue;
                cmd1.Parameters.Add("@bloodgroup", SqlDbType.NVarChar).Value = TextBox8.Text;
                cmd1.Parameters.Add("@height", SqlDbType.NChar).Value = TextBox6.Text;
                cmd1.Parameters.Add("@weight", SqlDbType.NChar).Value = TextBox7.Text;
                cmd1.Parameters.Add("@history1", SqlDbType.NVarChar).Value = TextBox14.Text;
                cmd1.Parameters.Add("@history2", SqlDbType.NVarChar).Value = TextBox9.Text;
                cmd1.Parameters.Add("@history3", SqlDbType.NVarChar).Value = TextBox10.Text;
                cmd1.Parameters.Add("@emailid", SqlDbType.NVarChar).Value = TextBox11.Text;
                cmd1.Parameters.Add("@phonenumber", SqlDbType.NVarChar).Value = TextBox12.Text;
                cmd1.Parameters.Add("@location", SqlDbType.NVarChar).Value = TextBox13.Text;



                cmd1.ExecuteNonQuery();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
                con.Close();

                Response.Redirect("Diagnosis.aspx");
           // }
           // catch (SqlException ex) { ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('failed')", true); }

        }
    }
}
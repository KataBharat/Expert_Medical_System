using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Linq;

namespace Medical
{
    public partial class Diagnosis : System.Web.UI.Page


    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable subjects = new DataTable();

            SqlConnection con = new SqlConnection(
                WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
                con.Open();

                if (!IsPostBack)
                {

                    try
                    {
                        SqlDataAdapter adapter = new SqlDataAdapter("Select distinct Symptoms from Symptoms", con);
                        adapter.Fill(subjects);

                        DropDownList1.DataSource = subjects;
                        DropDownList1.DataTextField = "Symptoms";
                        DropDownList1.DataValueField = "Symptoms";
                        DropDownList1.DataBind();

                        DropDownList2.DataSource = subjects;
                        DropDownList2.DataTextField = "Symptoms";
                        DropDownList2.DataValueField = "Symptoms";
                        DropDownList2.DataBind();

                        DropDownList3.DataSource = subjects;
                        DropDownList3.DataTextField = "Symptoms";
                        DropDownList3.DataValueField = "Symptoms";
                        DropDownList3.DataBind();

                        DropDownList4.DataSource = subjects;
                        DropDownList4.DataTextField = "Symptoms";
                        DropDownList4.DataValueField = "Symptoms";
                        DropDownList4.DataBind();

                        DropDownList5.DataSource = subjects;
                        DropDownList5.DataTextField = "Symptoms";
                        DropDownList5.DataValueField = "Symptoms";
                        DropDownList5.DataBind();
                    }
                    catch (Exception ex)
                    {
                        
                    }
                    con.Close();
                }

            

        }

       

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            List<string> Diseases = new List<string>();
            SqlConnection con = new SqlConnection(
                WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
            con.Open();
           // symptom1 = DropDownList1.SelectedItem.Value;
            SqlCommand cmd = new SqlCommand("Select Disease from DiseaseSymptoms where Symptom1='"+ DropDownList1.SelectedValue+"'", con);
            //cmd.Parameters.AddWithValue("@sym", symptom1);
            //cmd.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            int j = cmd.ExecuteNonQuery(); 
            string s=dt.Rows.Count.ToString();
          //  ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + dt.Rows.Count + "')", true);
            for (int i = 0; i < dt.Rows.Count; i++)

            {
                String dis = dt.Rows[i]["Disease"].ToString();
                Diseases.Add(dis);
             
            }
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + Diseases.Count + "')", true);


            SqlCommand cmd1 = new SqlCommand("Select Disease from DiseaseSymptoms where Symptom2='" + DropDownList2.SelectedValue + "'", con);
            SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            sda1.Fill(dt1);
            for (int i = 0; i < dt1.Rows.Count; i++)
            {
                String dis = dt1.Rows[i]["Disease"].ToString();
                Diseases.Add(dis);

            }

            SqlCommand cmd2 = new SqlCommand("Select Disease from DiseaseSymptoms where Symptom3='" + DropDownList3.SelectedValue + "'", con);
            SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            sda2.Fill(dt2);
            for (int i = 0; i < dt2.Rows.Count; i++)
            {
                String dis = dt2.Rows[i]["Disease"].ToString();
                Diseases.Add(dis);

            }

            SqlCommand cmd3 = new SqlCommand("Select Disease from DiseaseSymptoms where Symptom4='" + DropDownList4.SelectedValue + "'", con);
            SqlDataAdapter sda3 = new SqlDataAdapter(cmd3);
            DataTable dt3 = new DataTable();
            sda3.Fill(dt3);
            for (int i = 0; i < dt3.Rows.Count; i++)
            {
                String dis = dt3.Rows[i]["Disease"].ToString();
                Diseases.Add(dis);

            }

            SqlCommand cmd4 = new SqlCommand("Select Disease from DiseaseSymptoms where Symptom5='" + DropDownList5.SelectedValue + "'", con);
            SqlDataAdapter sda4 = new SqlDataAdapter(cmd4);
            DataTable dt4 = new DataTable();
            sda4.Fill(dt4);
            for (int i = 0; i < dt4.Rows.Count; i++)
            {
                String dis = dt4.Rows[i]["Disease"].ToString();
                Diseases.Add(dis);

            }

            
            

            //var most = Diseases.GroupBy(i >= 1).OrderByDescending(grp => grp.Count()).Select(grp => grp.key).First();
            String mostcommon = Diseases.GroupBy(v => v).OrderByDescending(g => g.Count()).First().Key;
           // ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + mostcommon + "')", true);



            SqlCommand cmd5= new SqlCommand("Select * from Prescription where disease='" + mostcommon + "'", con);
            SqlDataReader rdr = cmd5.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();
            con.Close();




        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        SqlConnection baglanti = new GetConnectionString().GetString();

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;

            if (!Page.IsPostBack)
            {
                baglanti.Open();
                SqlCommand komut = new SqlCommand("Select * from Tbl_Hakkimizda", baglanti);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TextBox1.Text = oku[0].ToString();
                }
                baglanti.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Update Tbl_Hakkimizda set Metin=@p1", baglanti);
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
        }
    }
}
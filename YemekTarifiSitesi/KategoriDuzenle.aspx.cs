using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        SqlConnection baglanti = new GetConnectionString().GetString();
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    id = Convert.ToInt32(Request.QueryString["KategoriID"]);
                    baglanti.Open();
                    SqlCommand komut = new SqlCommand("select * from Tbl_Kategoriler where KategoriID=@p1", baglanti);
                    komut.Parameters.AddWithValue("@p1", id);
                    SqlDataReader oku = komut.ExecuteReader();
                    while (oku.Read())
                    {
                        TextBox1.Text = oku[1].ToString();
                        TextBox2.Text = oku[2].ToString();
                    }
                    baglanti.Close();
                }
                catch (Exception)
                {
                    baglanti.Close();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                id = Convert.ToInt32(Request.QueryString["KategoriID"]);
                baglanti.Open();
                SqlCommand komut = new SqlCommand("Update Tbl_Kategoriler set KategoriAd=@p2,KategoriAdet=@p3 where KategoriID=@p1", baglanti);
                komut.Parameters.AddWithValue("@p1", id);
                komut.Parameters.AddWithValue("@p2", TextBox1.Text);
                komut.Parameters.AddWithValue("@p3", TextBox2.Text);
                komut.ExecuteNonQuery();
                baglanti.Close();
            }
            catch (Exception)
            {
                baglanti.Close();
            }
        }
    }
}
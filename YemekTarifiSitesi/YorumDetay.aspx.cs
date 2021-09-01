using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        SqlConnection baglanti = new GetConnectionString().GetString();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YorumID"];
            if (!Page.IsPostBack)
            {
                //YORUM BILGILERI GETIRME
                try
                {
                    baglanti.Open();
                    SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,YorumIcerik,Tbl_Yemekler.YemekAd from Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.YemekID=Tbl_Yemekler.YemekID where YorumID=@p1", baglanti);
                    komut.Parameters.AddWithValue("@p1", int.Parse(id));
                    SqlDataReader oku = komut.ExecuteReader();
                    while (oku.Read())
                    {
                        txtAdSoyad.Text = oku[0].ToString();
                        txtMailAdres.Text = oku[1].ToString();
                        txtIcerik.Text = oku[2].ToString();
                        txtYemek.Text = oku[3].ToString();
                    }
                    baglanti.Close();
                }
                catch (Exception)
                {
                    baglanti.Close();
                }
            }
        }

        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            try
            {
                baglanti.Open();
                SqlCommand komut = new SqlCommand("Update Tbl_Yorumlar set YorumIcerik=@p2,YorumOnay=@p3 where YorumID=@p1", baglanti);
                komut.Parameters.AddWithValue("@p1", int.Parse(id));
                komut.Parameters.AddWithValue("@p2", txtIcerik.Text);
                komut.Parameters.AddWithValue("@p3", "True");
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
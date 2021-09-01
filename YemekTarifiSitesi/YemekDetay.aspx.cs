using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlConnection baglanti = new GetConnectionString().GetString();
        string yemekID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                baglanti.Open();
                yemekID = Request.QueryString["YemekID"];
                SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler Where YemekID = @p1", baglanti);
                komut.Parameters.AddWithValue("@p1", Convert.ToInt32(yemekID));
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    Label3.Text = oku[1].ToString();
                }
                baglanti.Close();

                //Yorumları listeleme
                baglanti.Open();
                SqlCommand komut2 = new SqlCommand("Select * from Tbl_Yorumlar where YemekID=@p1", baglanti);
                komut2.Parameters.AddWithValue("@p1", Convert.ToInt32(yemekID));
                SqlDataReader oku2 = komut2.ExecuteReader();
                DataList2.DataSource = oku2;
                DataList2.DataBind();
                baglanti.Close();
            }
            catch (Exception)
            {
                baglanti.Close();
            }
        }

        protected void btnYorumYap_Click(object sender, EventArgs e)
        {
            try
            {
                baglanti.Open();
                SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar(YorumAdSoyad,YorumMail,YorumIcerik,YemekID) values(@p1,@p2,@p3,@p4)", baglanti);
                komut.Parameters.AddWithValue("@p1", txtAdSoyad.Text);
                komut.Parameters.AddWithValue("@p2", txtMail.Text);
                komut.Parameters.AddWithValue("@p3", txtYorum.Text);
                komut.Parameters.AddWithValue("@p4", Convert.ToInt32(yemekID));
                komut.ExecuteNonQuery();
                baglanti.Open();
            }
            catch (Exception)
            {
                baglanti.Close();
            }
        }
    }
}
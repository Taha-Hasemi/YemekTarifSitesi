using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class TarifOner : System.Web.UI.Page
    {
        SqlConnection baglanti = new GetConnectionString().GetString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTarifOner_Click(object sender, EventArgs e)
        {
            if (fileUploadResim.HasFile)
            {
                fileUploadResim.SaveAs(Server.MapPath("/Resimler/" + fileUploadResim.FileName));
            }

            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into Tbl_Tarifler(TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values (@p1,@p2,@p3,@p4,@p5,@p6)", baglanti);
            komut.Parameters.AddWithValue("@p1", txtTarifAd.Text);
            komut.Parameters.AddWithValue("@p2", txtTarifMelzeme.Text);
            komut.Parameters.AddWithValue("@p3", txtTarifYapilis.Text);
            komut.Parameters.AddWithValue("@p4", "~/Resimler/" + fileUploadResim.FileName);
            komut.Parameters.AddWithValue("@p5", txtTarifOneren.Text);
            komut.Parameters.AddWithValue("@p6", txtOnerenMail.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Write("Tarifiniz Alınmıştır");
        }
    }
}
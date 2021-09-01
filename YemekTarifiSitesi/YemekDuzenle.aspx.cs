using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        SqlConnection baglanti = new GetConnectionString().GetString();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YemekID"];
            if (!Page.IsPostBack)
            {
                //DropDown listeleme
                baglanti.Open();
                SqlCommand komut2 = new SqlCommand("select * from Tbl_Kategoriler", baglanti);
                SqlDataReader oku2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriID";
                DropDownList1.DataSource = oku2;
                DropDownList1.DataBind();
                baglanti.Close();

                //
                try
                {
                    baglanti.Open();
                    SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler where YemekID=@p1", baglanti);
                    komut.Parameters.AddWithValue("@p1", id);
                    SqlDataReader oku = komut.ExecuteReader();
                    while (oku.Read())
                    {
                        txtYemekAd.Text = oku[1].ToString();
                        txtYemekMalzeme.Text = oku[2].ToString();
                        txtYemekTarif.Text = oku[3].ToString();
                        DropDownList1.SelectedValue = oku[7].ToString();
                    }
                    baglanti.Close();
                }
                catch (Exception)
                {
                    baglanti.Close();
                }
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            try
            {
                if (FileUpload1.HasFile)
                {
                    FileUpload1.SaveAs(Server.MapPath("/Resimler/" + FileUpload1.FileName));
                }
                baglanti.Open();
                SqlCommand komut = new SqlCommand("Update Tbl_Yemekler set YemekAd=@p2,YemekMalzeme=@p3,YemekTarif=@p4,KategoriID=@p5,YemekResim=@p6 where YemekID=@p1", baglanti);
                komut.Parameters.AddWithValue("@p1", id);
                komut.Parameters.AddWithValue("@p2", txtYemekAd.Text);
                komut.Parameters.AddWithValue("@p3", txtYemekMalzeme.Text);
                komut.Parameters.AddWithValue("@p4", txtYemekTarif.Text);
                komut.Parameters.AddWithValue("@p5", DropDownList1.SelectedValue);
                komut.Parameters.AddWithValue("@p6", "~/Resimler/" + FileUpload1.FileName);
                komut.ExecuteNonQuery();
                baglanti.Close();
            }
            catch (Exception)
            {
                baglanti.Close();
            }
        }

        protected void btnGYSec_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Update Tbl_Yemekler set Durum=0", baglanti);
            komut.ExecuteNonQuery();
            baglanti.Close();

            baglanti.Open();
            SqlCommand komut2 = new SqlCommand("Update Tbl_Yemekler set Durum=1 where YemekID=@p1", baglanti);
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            baglanti.Close();
        }
    }
}
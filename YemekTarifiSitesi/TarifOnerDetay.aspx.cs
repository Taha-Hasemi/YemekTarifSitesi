using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        SqlConnection baglanti = new GetConnectionString().GetString();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["TarifID"];

            if (!Page.IsPostBack)
            {
                try
                {
                    baglanti.Open();
                    SqlCommand komut = new SqlCommand("Select * from Tbl_Tarifler where TarifID=@p1", baglanti);
                    komut.Parameters.AddWithValue("@p1", int.Parse(id));
                    SqlDataReader oku = komut.ExecuteReader();
                    while (oku.Read())
                    {
                        txtTarifAd.Text = oku[1].ToString();
                        txtMalzemeler.Text = oku[2].ToString();
                        txtYapilis.Text = oku[3].ToString();
                        txtTarifOneren.Text = oku[5].ToString();
                        txtTarifOnerenMail.Text = oku[6].ToString();
                    }
                    baglanti.Close();
                }
                catch (Exception)
                {
                    baglanti.Close();
                }

                try
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
                }
                catch (Exception)
                {
                    baglanti.Close();
                }
            }
        }

        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            //DURUM GÜNCELLEME
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Update Tbl_Tarifler set TarifDurum=1 where TarifID=@p1", baglanti);
            komut.Parameters.AddWithValue("@p1", int.Parse(id));
            komut.ExecuteNonQuery();
            baglanti.Close();

            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("/Resimler/" + FileUpload1.FileName));
            }

            //YEMEGI ANA SAYFAYA EKLEME
            baglanti.Open();
            SqlCommand komut2 = new SqlCommand("Insert into Tbl_Yemekler(YemekAd,YemekMalzeme,YemekTarif,YemekResim,KategoriID) values(@p1,@p2,@p3,@p4,@p5)", baglanti);
            komut2.Parameters.AddWithValue("@p1", txtTarifAd.Text);
            komut2.Parameters.AddWithValue("@p2", txtMalzemeler.Text);
            komut2.Parameters.AddWithValue("@p3", txtYapilis.Text);
            komut2.Parameters.AddWithValue("@p4", "~/Resimler/"+FileUpload1.FileName);
            komut2.Parameters.AddWithValue("@p5", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            baglanti.Close();
        }
    }
}
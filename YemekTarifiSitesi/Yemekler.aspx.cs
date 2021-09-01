using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class Yemekler : System.Web.UI.Page
    {
        SqlConnection baglanti = new GetConnectionString().GetString();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            //yemekleri listeleme

            try
            {
                baglanti.Open();
                SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler", baglanti);
                SqlDataReader oku = komut.ExecuteReader();
                DataList1.DataSource = oku;
                DataList1.DataBind();
                baglanti.Close();
            }
            catch (Exception)
            {
                baglanti.Close();
            }


            if (!Page.IsPostBack)
            {

                id = Request.QueryString["YemekID"];
                islem = Request.QueryString["islem"];

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

            if (islem == "Sil")
            {
                baglanti.Open();
                SqlCommand komut3 = new SqlCommand("Delete from Tbl_Yemekler where YemekID=@p1", baglanti);
                komut3.Parameters.AddWithValue("@p1", id);
                komut3.ExecuteNonQuery();
                baglanti.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("/Resimler/" + FileUpload1.FileName));
            }

            baglanti.Open();
            SqlCommand komut = new SqlCommand("Insert into Tbl_Yemekler(YemekAd,YemekMalzeme,YemekTarif,YemekResim,KategoriID) values(@p1,@p2,@p3,@p4,@p5)", baglanti);
            komut.Parameters.AddWithValue("@p1", txtYemekAd.Text);
            komut.Parameters.AddWithValue("@p2", txtYemekMalzeme.Text);
            komut.Parameters.AddWithValue("@p3", txtYemekTarif.Text);
            komut.Parameters.AddWithValue("@p4", "~/Resimler/" + FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p5", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            baglanti.Close();
        }
    }
}
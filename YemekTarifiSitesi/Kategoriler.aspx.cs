using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        SqlConnection baglanti = new GetConnectionString().GetString();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                id = Request.QueryString["KategoriID"];
                islem = Request.QueryString["islem"];
            }

            try
            {
                baglanti.Open();
                SqlCommand komut = new SqlCommand("Select * from Tbl_Kategoriler", baglanti);
                SqlDataReader oku = komut.ExecuteReader();
                DataList1.DataSource = oku;
                DataList1.DataBind();
                baglanti.Close();
            }
            catch (Exception)
            {
                baglanti.Close();
            }
            Panel2.Visible = false;
            Panel4.Visible = false;

            if (islem=="Sil")
            {
                baglanti.Open();
                SqlCommand komut = new SqlCommand("Delete from Tbl_Kategoriler where KategoriID=@p1", baglanti);
                komut.Parameters.AddWithValue("@p1", id);
                komut.ExecuteNonQuery();
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
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Insert into Tbl_Kategoriler(KategoriAd) values(@p1)", baglanti);
            komut.Parameters.AddWithValue("@p1", txtKategoriAd.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
        }
    }
}
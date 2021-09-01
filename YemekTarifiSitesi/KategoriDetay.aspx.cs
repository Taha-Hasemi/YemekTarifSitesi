using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        SqlConnection baglanti = new GetConnectionString().GetString();
        string kategoriID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                kategoriID = Request.QueryString["KategoriID"];
                baglanti.Open();
                SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler where KategoriID=@p1", baglanti);
                komut.Parameters.AddWithValue("@p1", kategoriID);
                SqlDataReader oku = komut.ExecuteReader();
                DataList2.DataSource = oku;
                DataList2.DataBind();
                baglanti.Close();
            }
            catch (Exception)
            {
                baglanti.Close();
            }
        }
    }
}
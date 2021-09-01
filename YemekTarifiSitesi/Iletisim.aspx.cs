using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class Iletisim : System.Web.UI.Page
    {
        SqlConnection baglanti = new GetConnectionString().GetString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                baglanti.Open();
                SqlCommand komut = new SqlCommand("insert into Tbl_Mesajlar values(@p1,@p2,@p3,@p4)", baglanti);
                komut.Parameters.AddWithValue("@p1", txtAdSoyad.Text);
                komut.Parameters.AddWithValue("@p2", txtKonu.Text);
                komut.Parameters.AddWithValue("@p3", txtMail.Text);
                komut.Parameters.AddWithValue("@p4", txtMesaj.Text);
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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        SqlConnection baglanti = new GetConnectionString().GetString();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["MesajID"];

            try
            {
                baglanti.Open();
                SqlCommand komut = new SqlCommand("Select * from Tbl_Mesajlar where MesajID=@p1", baglanti);
                komut.Parameters.AddWithValue("@p1", int.Parse(id));
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    txtGonderen.Text = oku[1].ToString();
                    txtBaslik.Text = oku[2].ToString();
                    txtMail.Text = oku[3].ToString();
                    txtIcerik.Text = oku[4].ToString();
                }
                baglanti.Close();
            }
            catch (Exception)
            {
                baglanti.Close();
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class Tarifler : System.Web.UI.Page
    {
        SqlConnection baglanti = new GetConnectionString().GetString();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            //ONAYLI TARİF LİSTESİ
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * from Tbl_Tarifler where TarifDurum=1", baglanti);
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();
            baglanti.Close();

            //ONAYSIZ TARİF LİSTESİ
            baglanti.Open();
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Tarifler where TarifDurum=0", baglanti);
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList1.DataSource = oku2;
            DataList1.DataBind();
            baglanti.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }
    }
}
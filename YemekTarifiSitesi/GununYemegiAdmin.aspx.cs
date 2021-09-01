using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class GununYemegiAdmin : System.Web.UI.Page
    {
        SqlConnection baglanti = new GetConnectionString().GetString();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;

            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler", baglanti);
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
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
    }
}
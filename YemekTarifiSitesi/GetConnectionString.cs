using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public class GetConnectionString
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=KI\SQLDEVELOPER;Initial Catalog=Dbo_YemekTarif;Integrated Security=True");
        public SqlConnection GetString()
        {
            baglanti.Close();
            return baglanti;
        }
    }
}
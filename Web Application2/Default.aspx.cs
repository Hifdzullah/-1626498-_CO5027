using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace Web_Application2
{
    public partial class Default : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
          
            
        }

        protected DataSet GetData()
        {
            string query = ConfigurationManager.ConnectionStrings["db_1626498_db_1626498_co5027_asgConnectionString"].ConnectionString;
            using (SqlConnection connect = new SqlConnection(query))
            {
                SqlDataAdapter sql = new SqlDataAdapter("SELECT * FROM [Product.tbl]", connect);
                DataSet tbl = new DataSet();
                sql.Fill(tbl);
                return tbl;
            }

        }
    }
}
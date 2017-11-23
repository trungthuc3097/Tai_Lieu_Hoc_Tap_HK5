using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class LoadData : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = WebConfigurationManager.ConnectionStrings["strConnQLDEAN"].ConnectionString;
        conn.Open();

        SqlCommand Command = new SqlCommand();
        Command.CommandText = "getDataNhanVien";
        Command.Connection = conn;
        Command.CommandType = CommandType.StoredProcedure;
        SqlDataReader show = Command.ExecuteReader();
        gridView.DataSource = show;
        gridView.DataBind();
        Command.Dispose();
        conn.Close();
    }
}
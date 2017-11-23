using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class LoadNhanVienPhong : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = WebConfigurationManager.ConnectionStrings["strConnQLDEAN"].ConnectionString;
        conn.Open();
        SqlCommand Command = new SqlCommand();
        SqlDataReader datar;
        if (!IsPostBack) {
            Command.CommandText = "getNamePB";
            Command.Connection = conn;
            Command.CommandType = CommandType.StoredProcedure;
            datar = Command.ExecuteReader();
            while (datar.Read()) {
                drop.Items.Add(datar[0].ToString());
            }
            Command.Dispose();
            datar.Dispose();
        }
        Command.CommandText = "getNhanVienPhongBan";
        Command.Connection = conn;
        Command.CommandType = CommandType.StoredProcedure;
        Command.Parameters.Add("@tenphong", SqlDbType.NVarChar).Value = drop.SelectedValue;
        datar = Command.ExecuteReader();
        gridView.DataSource = datar;
        gridView.DataBind();

        Command.Dispose();
        datar.Dispose();
        conn.Close();
    }
}
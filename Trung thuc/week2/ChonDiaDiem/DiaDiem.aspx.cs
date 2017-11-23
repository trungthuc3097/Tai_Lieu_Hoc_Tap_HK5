using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DiaDiem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack) {
            lblResult.Text = "Bạn Chọn : ";
            for (int i = 0; i < lbDiaDiem.Items.Count; ++i) {
                if(lbDiaDiem.Items[i].Selected)
                    lblResult.Text += lbDiaDiem.Items[i].Text+",";
            }
            String str = lblResult.Text;
            int vt = str.LastIndexOf(",");
            if (vt != -1)
            {
                String str1 = str.Remove(vt);
                String strlast = str1 + ".";
                lblResult.Text = strlast;
            }
        }
    }
}
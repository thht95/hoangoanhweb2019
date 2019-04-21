using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebBatDongSan
{
    public partial class ChiTietTinDang : System.Web.UI.Page
    {
        String sCn = @"Data Source=UONGSUADAUBUNG\UONGSUADAUBUNG;Initial Catalog=BatDongSan;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.Params["tindang"];
            if (!IsPostBack)
            {
                try
                {
                    using (SqlConnection cn = new SqlConnection(sCn))
                    {
                        cn.Open();
                        using (SqlCommand cmd = new SqlCommand("get_TinDangById", cn))
                        {
                            //cmd.Connection = cn;
                            //cmd.CommandText = "get_TinDangById";
                            cmd.CommandType = CommandType.StoredProcedure;
                            //param = new SqlParameter("@id", Int32.Parse(id));
                            //param.Direction = ParameterDirection.Input;
                            //param.DbType = DbType.Int32;
                            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Int32.Parse(id);


                            SqlDataReader sd = cmd.ExecuteReader();
                            if (sd.HasRows)
                            {
                                while (sd.Read())
                                {
                                    tieude.Text = sd.GetString(3);
                                    ngaydang.Text = sd.GetDateTime(4).ToLongDateString() ?? DateTime.Now.ToString("MM/dd/yyyy");
                                    anh.ImageUrl = sd.GetString(5);
                                    dientich.Text = sd.GetString(6);
                                    sotang.Text = sd.GetInt32(7).ToString();
                                    gia.Text = sd.GetInt32(8).ToString();
                                    vitri.Text = sd.GetString(9);
                                    //Console.WriteLine("{0}\t{1}", sd.GetString(3),
                                    //    sd.GetString(1));
                                }
                            }
                            sd.Close();

                            // tieude.Text = sd.GetString(3);
                            //DataTable tb = new DataTable();
                            //tb.Load(sd);
                            // listTintuc.DataSource = tb;
                            // listTintuc.DataBind();
                        }
                        cn.Close();
                    }
                }
                catch (Exception)
                {

                    throw;
                }
            }
        }
    }
}
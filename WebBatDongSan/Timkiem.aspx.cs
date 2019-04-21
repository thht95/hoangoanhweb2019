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
    public partial class Timkiem : System.Web.UI.Page
    {
        String sCn = @"Data Source=UONGSUADAUBUNG\UONGSUADAUBUNG;Initial Catalog=BatDongSan;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getTindang();
                Dropbox();
            } 
        }

        private void getTindang()
        {
            string loai = Request.Form["cboLoaiBDS"];
            string diachi = Request.Form["cbodiachi"];

            try
            {
                using (SqlConnection cn = new SqlConnection(sCn))
                {
                    cn.Open();
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.Connection = cn;
                        cmd.CommandText = "search_tblTindang";
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@loai", loai);
                        cmd.Parameters.AddWithValue("@diachi", diachi);
                        SqlDataReader sd = cmd.ExecuteReader();
                        DataTable tb = new DataTable();
                        tb.Load(sd);
                        listTimkiem.DataSource = tb;
                        listTimkiem.DataBind();
                    }
                    cn.Close();
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
        private void Dropbox()
        {
            DropDownList cboLoaiBDS  = null, cbodiachi = null;
            if (!IsPostBack)
            {
                try
                {
                    using (SqlConnection cn = new SqlConnection(sCn))
                    {
                        cn.Open();
                        using (SqlCommand cmd = new SqlCommand())
                        {
                            cmd.Connection = cn;
                            cmd.CommandText = "get_tblLoaiBDS";
                            cmd.CommandType = CommandType.StoredProcedure;
                            SqlDataReader sd = cmd.ExecuteReader();
                            DataTable tb = new DataTable();
                            tb.Load(sd);

                            cboLoaiBDS.DataSource = tb;
                            cboLoaiBDS.DataValueField = "tenloai";
                            cboLoaiBDS.DataBind();
                        }
                        cn.Close();
                    }
                }
                catch (Exception)
                {

                    throw;
                }

                try
                {
                    using (SqlConnection cn = new SqlConnection(sCn))
                    {
                        cn.Open();
                        using (SqlCommand cmd = new SqlCommand())
                        {
                            cmd.Connection = cn;
                            cmd.CommandText = "get_AddressTD";
                            cmd.CommandType = CommandType.StoredProcedure;
                            SqlDataReader sd = cmd.ExecuteReader();
                            DataTable tb = new DataTable();
                            tb.Load(sd);

                            cbodiachi.DataSource = tb;
                            cbodiachi.DataValueField = "vitri";
                            cbodiachi.DataBind();
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
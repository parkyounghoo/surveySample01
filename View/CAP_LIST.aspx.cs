using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KPC_DT_CAP.View
{
    public partial class CAP_LIST : System.Web.UI.Page
    {
        readonly string ID = "yhpark";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                setCAPList();
            }
        }

        protected void setCAPList()
        {
            DataSet ds = getCAPList();

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                //if (ds.Tables[0].Rows[i]["CAP_RESULT"].ToString() == "Y")
                //{
                //    if (ds.Tables[0].Rows[i]["CAP_CODE"].ToString() == "1000")
                //    {
                //        btn1000.BackColor = Color.Green;
                //    }
                //    else if (ds.Tables[0].Rows[i]["CAP_CODE"].ToString() == "2000")
                //    {
                //        btn2000.BackColor = Color.Green;
                //    }
                //    else if (ds.Tables[0].Rows[i]["CAP_CODE"].ToString() == "3000")
                //    {
                //        btn3000.BackColor = Color.Green;
                //    }
                //    else if (ds.Tables[0].Rows[i]["CAP_CODE"].ToString() == "4000")
                //    {
                //        btn4000.BackColor = Color.Green;
                //    }
                //    else if (ds.Tables[0].Rows[i]["CAP_CODE"].ToString() == "5000")
                //    {
                //        btn5000.BackColor = Color.Green;
                //    }
                //}

                string cnt = ds.Tables[1].Rows[i]["CAP_CNT"].ToString();
                string result_cnt = ds.Tables[1].Rows[i]["CAP_RESULT_CNT"].ToString();

                double Percent = Math.Round((double.Parse(result_cnt) / double.Parse(cnt)) * 100);

                if (ds.Tables[0].Rows[i]["CAP_CODE"].ToString() == "1000")
                {
                    dv_PrgT1.InnerText = Percent.ToString() + "%";
                    dv_Prg1.Style.Add("width", Percent + "%");
                    dv_Result1.InnerText = result_cnt + "/" + cnt;
                }
                else if (ds.Tables[0].Rows[i]["CAP_CODE"].ToString() == "2000")
                {
                    dv_PrgT2.InnerText = Percent.ToString() + "%";
                    dv_Prg2.Style.Add("width", Percent + "%");
                    dv_Result2.InnerText = result_cnt + "/" + cnt;
                }
                else if (ds.Tables[0].Rows[i]["CAP_CODE"].ToString() == "3000")
                {
                    dv_PrgT3.InnerText = Percent.ToString() + "%";
                    dv_Prg3.Style.Add("width", Percent + "%");
                    dv_Result3.InnerText = result_cnt + "/" + cnt;
                }
                else if (ds.Tables[0].Rows[i]["CAP_CODE"].ToString() == "4000")
                {
                    dv_PrgT4.InnerText = Percent.ToString() + "%";
                    dv_Prg4.Style.Add("width", Percent + "%");
                    dv_Result4.InnerText = result_cnt + "/" + cnt;
                }
                else if (ds.Tables[0].Rows[i]["CAP_CODE"].ToString() == "5000")
                {
                    dv_PrgT5.InnerText = Percent.ToString() + "%";
                    dv_Prg5.Style.Add("width", Percent + "%");
                    dv_Result5.InnerText = result_cnt + "/" + cnt;
                }
            }
        }

        protected DataSet getCAPList()
        {
            string queryString = "EXEC PROC_CAP_RESULT '" + ID + "'";
            using (SqlConnection sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString))
            {
                DataSet ds = new DataSet();
                SqlDataAdapter _SqlDataAdapter = new SqlDataAdapter();
                _SqlDataAdapter.SelectCommand = new SqlCommand(queryString, sqlConn);
                _SqlDataAdapter.Fill(ds);

                return ds;
            }
        }

        protected void btnResult_Click(object sender, EventArgs e)
        {
            Response.Redirect(string.Format("/View/CAP_RESULT.aspx"), false);
        }
    }
}
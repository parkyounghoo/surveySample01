using KPC_DT_CAP.Model;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI;

namespace KPC_DT_CAP.View
{
    public partial class CAP_POPUP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Q_CAP_LIST(Request["CAP_CODE"].ToString());
                btnEnd.Visible = false;
                btnPrev.Visible = false;
                btnClose.Visible = false;
            }
        }

        protected void Q_CAP_LIST(string code)
        {
            DataSet ds = getCAP_LIST(code);
            Session["TotCnt"] = ds.Tables[0].Rows.Count.ToString();
            List<CAP_MODEL> Q_LIST = new List<CAP_MODEL>();

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                CAP_MODEL model = new CAP_MODEL();
                model.CAP_NAME = ds.Tables[0].Rows[i]["CAP_NAME"].ToString();
                model.CAP_NAME_S = ds.Tables[0].Rows[i]["CAP_NAME_S"].ToString();
                model.CAP_NAME_D = ds.Tables[0].Rows[i]["CAP_NAME_D"].ToString();
                model.CAP_CODE = ds.Tables[0].Rows[i]["CAP_CODE"].ToString();
                model.CAP_ORDER = ds.Tables[0].Rows[i]["CAP_ORDER"].ToString();
                model.CAP_GUBUN = ds.Tables[0].Rows[i]["CAP_GUBUN"].ToString();

                Q_LIST.Add(model);
            }

            ViewState["Q_LIST"] = Q_LIST;

            setQ_LIST((List< CAP_MODEL >)ViewState["Q_LIST"]);
        }

        private void setQ_LIST(List<CAP_MODEL> list)
        {
            for (int i = 0; i < list.Count; i++)
            {
                if (list[i].CAP_RESULT == null)
                {
                    if (list.Count - 1 == i)
                    {
                        btnEnd.Visible = true;
                        btnNext.Visible = false;
                    }

                    if (list[i].CAP_NAME_S == "")
                    {
                        dvCodeName.InnerText = list[i].CAP_NAME;
                    }
                    else
                    {
                        dvCodeName.InnerHtml = list[i].CAP_GUBUN + ")" + list[i].CAP_NAME_S + "<br/>" + list[i].CAP_NAME;
                    }

                    dv_Q.InnerText = list[i].CAP_NAME_D;
                    dv_N.InnerText = "Q" + (i + 1).ToString() + ".";
                    dv_Cnt.InnerText = "문항수 : " + (i + 1).ToString() + "/" + Session["TotCnt"];

                    double Percent = Math.Round(((double)(i) / double.Parse(Session["TotCnt"].ToString())) * 100);

                    dv_PrgT.InnerText = Percent.ToString() + "%";
                    dv_Prg.Style.Add("width", Percent + "%");

                    break;
                }
            }
            
        }

        protected DataSet getCAP_LIST(string code)
        {
            string queryString = "EXEC PROC_CAP_LIST '" + code + "'";
            using (SqlConnection sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString))
            {
                DataSet ds = new DataSet();
                SqlDataAdapter _SqlDataAdapter = new SqlDataAdapter();
                _SqlDataAdapter.SelectCommand = new SqlCommand(queryString, sqlConn);
                _SqlDataAdapter.Fill(ds);

                return ds;
            }
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            btnPrev.Visible = true;

            List<CAP_MODEL> list = (List<CAP_MODEL>)ViewState["Q_LIST"];
            for (int i = 0; i < list.Count; i++)
            {
                if (list[i].CAP_RESULT == null)
                {
                    
                    list[i].CAP_RESULT = hdQst.Value;

                    SqlConnection sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString);
                    sqlConn.Open();

                    string cap_result = list.Count > (i + 1) ? list[i].CAP_RESULT : "1";

                    SqlCommand sqlComm = new SqlCommand();
                    sqlComm.Connection = sqlConn;
                    sqlComm.CommandText = "EXEC PROC_CAP_RESULT_INSERT 'yhpark', '" + list[i].CAP_CODE + "','"+ list[i].CAP_ORDER + "','"+ cap_result + "','"+ DateTime.Now.ToString() + "'";
                    sqlComm.ExecuteNonQuery();

                    break;
                }
            }

            ViewState["Q_LIST"] = list;

            setQ_LIST((List<CAP_MODEL>)ViewState["Q_LIST"]);
        }

        protected void btnEnd_Click(object sender, EventArgs e)
        {
            List<CAP_MODEL> list = (List<CAP_MODEL>)ViewState["Q_LIST"];
            for (int i = 0; i < list.Count; i++)
            {
                if (list[i].CAP_RESULT == null)
                {

                    list[i].CAP_RESULT = hdQst.Value;

                    SqlConnection sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString);
                    sqlConn.Open();

                    string cap_result = list.Count > (i + 1) ? list[i].CAP_RESULT : "1";

                    SqlCommand sqlComm = new SqlCommand();
                    sqlComm.Connection = sqlConn;
                    sqlComm.CommandText = "EXEC PROC_CAP_RESULT_INSERT 'yhpark', '" + list[i].CAP_CODE + "','" + list[i].CAP_ORDER + "','" + cap_result + "','" + DateTime.Now.ToString() + "'";
                    sqlComm.ExecuteNonQuery();

                    break;
                }
            }

            dv_main.Visible = true;
            tb_main.Visible = false;

            btnPrev.Visible = false;
            btnEnd.Visible = false;
            btnClose.Visible = true;

            dv_PrgT.InnerText ="100%";
            dv_Prg.Style.Add("width", "100%");
        }

        protected void btnPrev_Click(object sender, EventArgs e)
        {
            List<CAP_MODEL> list = (List<CAP_MODEL>)ViewState["Q_LIST"];
            for (int i = 0; i < list.Count; i++)
            {
                if (list[i].CAP_RESULT == null)
                {
                    if ((i - 1) == 0)
                    {
                        btnPrev.Visible = false;
                    }
                    else
                    {
                        btnNext.Visible = true;
                        btnEnd.Visible = false;
                    }

                    list[i - 1].CAP_RESULT = null;
                    break;
                }
            }

            ViewState["Q_LIST"] = list;

            setQ_LIST((List<CAP_MODEL>)ViewState["Q_LIST"]);
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "close", "<script language=javascript>opener.parent.location ='https://localhost:44378/View/CAP_LIST';self.close();</script>");
        }
    }
}
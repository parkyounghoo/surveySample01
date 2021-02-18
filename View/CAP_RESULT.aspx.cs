using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KPC_DT_CAP.View
{
    public partial class CAP_RESULT : System.Web.UI.Page
    {
        readonly string ID = "yhpark";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                setValidation();
            }
        }

        private void setValidation()
        {
            DataSet ds = getCAPList();

            List<double> list = new List<double>();

            for (int i = 0; i < ds.Tables[1].Rows.Count; i++)
            {
                if (ds.Tables[1].Rows[i]["RESULT_YN"].ToString() == "Y")
                {
                    list.Add(setResult(getResultCount(ds.Tables[1].Rows[i]["CAP_PARENT_CODE"].ToString().Substring(0, 1)), ds.Tables[1].Rows[i]["CAP_PARENT_CODE"].ToString()));
                }
                else
                {
                    list.Add(0);
                }
            }

            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Chart", setChart(list), true);
        }

        private string setChart(List<double> list)
        {
            StringBuilder sb = new StringBuilder();

            //sb.Append("var ctx = document.getElementById('myChart').getContext('2d');");
            //sb.Append("var myChart = new Chart(ctx, {");
            //sb.Append("        type: 'bar',");
            //sb.Append("        data:");
            //sb.Append("{");
            //sb.Append("labels: ['디지털 비전과 리더십'],");
            //sb.Append("            datasets: [{");
            //sb.Append("            label: '디지털 트랜스포메이션',");
            //sb.Append("    data: [" + list[0].ToString() + "],");
            //sb.Append("                backgroundColor: [");
            //sb.Append("                    'rgba(255, 99, 132, 0.2)',");
            //sb.Append("                    'rgba(54, 162, 235, 0.2)',");
            //sb.Append("                    'rgba(255, 206, 86, 0.2)',");
            //sb.Append("                    'rgba(75, 192, 192, 0.2)',");
            //sb.Append("                    'rgba(153, 102, 255, 0.2)'");
            //sb.Append("                ],");
            //sb.Append("                borderColor: [");
            //sb.Append("                    'rgba(255,99,132,1)',");
            //sb.Append("                    'rgba(54, 162, 235, 1)',");
            //sb.Append("                    'rgba(255, 206, 86, 1)',");
            //sb.Append("                    'rgba(75, 192, 192, 1)',");
            //sb.Append("                    'rgba(153, 102, 255, 1)'");
            //sb.Append("                ],");
            //sb.Append("                borderWidth: 1");
            //sb.Append("            }]");
            //sb.Append("        },");
            //sb.Append("        options:");
            //sb.Append("{");
            //sb.Append("scales:");
            //sb.Append("    {");
            //sb.Append("    yAxes: [{");
            //sb.Append("        ticks:");
            //sb.Append("            {");
            //sb.Append("            beginAtZero: true");
            //sb.Append("                    }");
            //sb.Append("        }]");
            //sb.Append("            }");
            //sb.Append("}");
            //sb.Append("});");

            return sb.ToString();
        }

        private DataSet getResultCount(string capCode)
        {
            string queryString = "EXEC PROC_CAP_RESULT_COUNT '" + capCode + "'";
            using (SqlConnection sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString))
            {
                DataSet ds = new DataSet();
                SqlDataAdapter _SqlDataAdapter = new SqlDataAdapter();
                _SqlDataAdapter.SelectCommand = new SqlCommand(queryString, sqlConn);
                _SqlDataAdapter.Fill(ds);

                return ds;
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

        private double setResult(DataSet ds, string capCode)
        {
            double cnt = 0;
            List<double> list = new List<double>();
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                cnt += double.Parse(ds.Tables[0].Rows[i]["RESULT_CNT"].ToString());
                list.Add(double.Parse(ds.Tables[0].Rows[i]["RESULT_CNT"].ToString()));
            }

            cnt = cnt / ds.Tables[0].Rows.Count;

            if (capCode == "1000")
            {
                tdP_M01.InnerText = cnt.ToString();
                tdT_M01.InnerText = resultText(cnt);
                tdP_M01_1.InnerText = list[0].ToString();
                tdT_M01_1.InnerText = resultText(list[0]);
                tdP_M01_2.InnerText = list[1].ToString();
                tdT_M01_2.InnerText = resultText(list[1]);
            }
            else if (capCode == "2000")
            {
                tdP_M02.InnerText = cnt.ToString();
                tdT_M02.InnerText = resultText(cnt);
                tdP_M02_1.InnerText = list[0].ToString();
                tdT_M02_1.InnerText = resultText(list[0]);
                tdP_M02_2.InnerText = list[1].ToString();
                tdT_M02_2.InnerText = resultText(list[1]);
            }
            else if (capCode == "3000")
            {
                tdP_M03.InnerText = cnt.ToString();
                tdT_M03.InnerText = resultText(cnt);

                double A01 = list[0];
                double A02 = list[1];
                double A03 = list[2];
                double A04 = list[3];
                double B01 = list[4];
                double B02 = list[5];
                double B03 = list[6];
                double B04 = list[7];


                tdP_M03_A_1.InnerText = A01.ToString();
                tdT_M03_A_1.InnerText = resultText(A01);
                tdP_M03_A_2.InnerText = A02.ToString();
                tdT_M03_A_2.InnerText = resultText(A02);
                tdP_M03_A_3.InnerText = A03.ToString();
                tdT_M03_A_3.InnerText = resultText(A03);
                tdP_M03_A_4.InnerText = A04.ToString();
                tdT_M03_A_4.InnerText = resultText(A04);

                tdP_M03_B_1.InnerText = B01.ToString();
                tdT_M03_B_1.InnerText = resultText(B01);
                tdP_M03_B_2.InnerText = B02.ToString();
                tdT_M03_B_2.InnerText = resultText(B02);
                tdP_M03_B_3.InnerText = B03.ToString();
                tdT_M03_B_3.InnerText = resultText(B03);
                tdP_M03_B_4.InnerText = B04.ToString();
                tdT_M03_B_4.InnerText = resultText(B04);

                tdP_M03_C_1.InnerText = (B01 - A01).ToString();
                tdT_M03_C_1.InnerText = resultText(B01 - A01);
                tdP_M03_C_2.InnerText = (B02 - A02).ToString();
                tdT_M03_C_2.InnerText = resultText(B02 - A02);
                tdP_M03_C_3.InnerText = (B03 - A03).ToString();
                tdT_M03_C_3.InnerText = resultText(B03 - A03);
                tdP_M03_C_4.InnerText = (B04 - A04).ToString();
                tdT_M03_C_4.InnerText = resultText(B04 - A04);
            }
            else if (capCode == "4000")
            {
                tdP_M04.InnerText = cnt.ToString();
                tdT_M04.InnerText = resultText(cnt);

                double A01 = list[0];
                double A02 = list[1];
                double B01 = list[2];

                tdP_M04_A_1.InnerText = A01.ToString();
                tdT_M04_A_1.InnerText = resultText(A01);
                tdP_M04_A_2.InnerText = A02.ToString();
                tdT_M04_A_2.InnerText = resultText(A02);

                tdP_M04_B_1.InnerText = B01.ToString();
                tdT_M04_B_1.InnerText = resultText(B01);

                tdP_M04_C_1.InnerText = (B01 - A02).ToString();
                tdT_M04_C_1.InnerText = resultText(B01 - A02);
            }
            else if (capCode == "5000")
            {
                tdP_M05.InnerText = cnt.ToString();
                tdT_M05.InnerText = resultText(cnt);
                tdP_M05_1.InnerText = list[0].ToString();
                tdT_M05_1.InnerText = resultText(list[0]);
                tdP_M05_2.InnerText = list[1].ToString();
                tdT_M05_2.InnerText = resultText(list[1]);
            }

            return cnt;
        }

        private string resultText(double cnt)
        {
            if (cnt < 2)
            {
                return "미흡 단계";
            }
            else if (cnt < 3 )
            {
                return "초기 단계";
            }
            else if (cnt < 3.7)
            {
                return "기반 구축 단계";
            }
            else if (cnt < 4.4)
            {
                return "강화 단계";
            }
            else if (cnt >= 4.4)
            {
                return "고도화 단계";
            }

            return "";
        }
    }
}
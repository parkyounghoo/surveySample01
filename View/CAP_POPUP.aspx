<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CAP_POPUP.aspx.cs" Inherits="KPC_DT_CAP.View.CAP_POPUP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="../Scripts/vendor/jquery/jquery.min.js"></script>
    <script src="../Scripts/js/jquery-1.12.4.js"></script>
    <script src="../Scripts/js/jquery-ui.js"></script>
    <script src="../Scripts/vendor/jquery/jquery.min.js"></script>
    <script src="../Scripts/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../Scripts/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="../Scripts/vendor/chart.js/Chart.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script type="text/javascript">
        function Q_Check(field) {
            var ele = document.getElementsByName('QstQ1');

            for (i = 0; i < ele.length; i++) {
                if (ele[i].checked)
                    document.getElementById('<%=hdQst.ClientID%>').value = ele[i].value;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:HiddenField runat="server" ID="hdQst" />
        <div style="margin-top: 20px; margin-left: 50px; width: 800px;" runat="server">
            <div runat="server" id="dvCodeName" style="text-align:right">
            </div>
            <div runat="server" id="dv_Cnt" style="float: left"></div>
            <div style="float: right">
                <div runat="server" id="dv_PrgT" style="float:left;padding:0px"></div>
                <div class="progress" style="width:200px;float:right;height:23px">
                    <div runat="server" id="dv_Prg" class="progress-bar" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
            </div>
            <div style="border: 1px solid; width: 800px;height:340px;margin-top:24px;background: url(../images/main.png) ;" runat="server" id="dv_main" visible="false">
                
            </div>
            <table cellspacing="0" border="0" cellpadding="5" style="border: 1px solid; width: 800px;" runat="server" id="tb_main"  visible="true">
                <tr>
                    <td style="background-color: #eef5fe; width: 75px; height: 35px; vertical-align: middle;">
                        <div runat="server" id="dv_N"></div>
                    </td>
                    <td id="QuestionTdTitle" style="background-color: #eef5fe; vertical-align: middle;">
                        <div runat="server" id="dv_Q"></div>
                    </td>
                    <td style="background-color: #eef5fe; width: 50px; height: 35px; vertical-align: middle;">&nbsp;
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">
                        <br />
                        <table border="0" cellspacing="0" cellpadding="0" style="width: 700px;">
                            <tr>
                                <td id="td1" style="padding: 5px;" onmouseover="this.style.backgroundColor='#dcdcdc'" onmouseout="this.style.backgroundColor='#ffffff'">&nbsp;
                                    <label style="cursor: pointer" for="QstQ1_01">
                                        <input type="radio" id="QstQ1_01" name="QstQ1" value="1" style="padding: 2px;" />
                                        &nbsp;매우 부정&nbsp;
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                <td id="td2" style="padding: 5px;" onmouseover="this.style.backgroundColor='#dcdcdc'" onmouseout="this.style.backgroundColor='#ffffff'">&nbsp;
                                    <label style="cursor: pointer" for="QstQ1_02">
                                        <input type="radio" id="QstQ1_02" name="QstQ1" value="2" style="padding: 2px;" />
                                        &nbsp;부정&nbsp;
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                <td id="td3" style="padding: 5px;" onmouseover="this.style.backgroundColor='#dcdcdc'" onmouseout="this.style.backgroundColor='#ffffff'">&nbsp;
                                    <label style="cursor: pointer" for="QstQ1_03">
                                        <input type="radio" id="QstQ1_03" name="QstQ1" value="3" style="padding: 2px;" checked="checked" />
                                        &nbsp;보통&nbsp;
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                <td id="td4" style="padding: 5px;" onmouseover="this.style.backgroundColor='#dcdcdc'" onmouseout="this.style.backgroundColor='#ffffff'">&nbsp;
                                    <label style="cursor: pointer" for="QstQ1_04">
                                        <input type="radio" id="QstQ1_04" name="QstQ1" value="4" style="padding: 2px;" />
                                        &nbsp;긍정&nbsp;
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                <td id="td5" style="padding: 5px;" onmouseover="this.style.backgroundColor='#dcdcdc'" onmouseout="this.style.backgroundColor='#ffffff'">&nbsp;
                                    <label style="cursor: pointer" for="QstQ1_05">
                                        <input type="radio" id="QstQ1_05" name="QstQ1" value="5" style="padding: 2px;" />
                                        &nbsp;매우 긍정&nbsp;
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                <td id="td6" style="padding: 5px;" onmouseover="this.style.backgroundColor='#dcdcdc'" onmouseout="this.style.backgroundColor='#ffffff'">&nbsp;
                                    <label style="cursor: pointer" for="QstQ1_06">
                                        <input type="radio" id="QstQ1_06" name="QstQ1" value="0" style="padding: 2px;" />
                                        &nbsp;해당 없음&nbsp;
                                    </label>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </td>
                </tr>
            </table>
            <div style="margin-top: 50px;text-align:center">
                <asp:Button runat="server" ID="btnPrev" OnClick="btnPrev_Click" Text="PREV" OnClientClick="Q_Check(QstQ1);" Width="100px" Height="50px" BackColor="YellowGreen" />
                <asp:Button runat="server" ID="btnNext" OnClick="btnNext_Click" Text="NEXT" OnClientClick="Q_Check(QstQ1);" Width="100px" Height="50px" BackColor="YellowGreen" />
                <asp:Button runat="server" ID="btnEnd" OnClick="btnEnd_Click" Text="완료" OnClientClick="Q_Check(QstQ1);" Width="100px" Height="50px" BackColor="YellowGreen" />
                <asp:Button runat="server" ID="btnClose" OnClick="btnClose_Click" Text="닫기" Width="100px" Height="50px" BackColor="YellowGreen" />
            </div>
        </div>
    </form>
</body>
</html>
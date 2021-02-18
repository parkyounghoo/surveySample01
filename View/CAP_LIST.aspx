<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CAP_LIST.aspx.cs" Inherits="KPC_DT_CAP.View.CAP_LIST" %>

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
        function popup(code) {
            w = "1000"; // 팝업창 가로크기
            h = "700"; // 팝업창 세로크기
            x = (screen.availWidth - w) / 2;
            y = (screen.availHeight - h) / 2;
            window.open('/View/CAP_POPUP.aspx?CAP_CODE=' + code, 'popup', 'width=' + w + ', height=' + h + ', left=' + x + ',top = ' + y);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" style="font-size: 15px;">
        <div>
            <div style="text-align: center">
                <h2>
                    <strong style="color: red; font-size: 40px"><em>디지털 트랜스포메이션
                        <br />
                        역량 측정도구</em></strong>
                </h2>
            </div>
        </div>
        <hr />
        <table border="1" style="text-align: center; font-size: small;margin-left:200px">
            <tr>
                <td style="font-weight: bold">체크 리스트
                </td>
                <td style="font-weight: bold">항목
                </td>
                <td style="font-weight: bold">진행상황
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 100px;">
                    <asp:Button runat="server" ID="btn1000" Text="디지털 비전과 리더십" Width="100%" Height="100%" Font-Size="20px" OnClientClick="popup(1000)" />
                </td>
                <td align="left" style="width: 500px">디지털 비전과 목표(6)<br />
                    디지털 리더십(7)
                </td>
                <td>
                    <div runat="server" id="dv_Result1">
                    </div>
                    <div runat="server" id="dv_PrgT1" style="float: left; padding: 0px"></div>
                    <div class="progress" style="width: 200px; float: right; height: 23px">
                        <div runat="server" id="dv_Prg1" class="progress-bar" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </td>
            </tr>
            <tr>
                <td style="width: 200px; height: 100px;">
                    <asp:Button runat="server" ID="btn2000" Text="디지털 전략과제" Width="100%" Height="100%" Font-Size="20px" OnClientClick="popup(2000)" />
                </td>
                <td align="left">전략과제 체계화 및 우선순위(9)<br />
                    전략과제 추진 실행력(13)
                </td>
                <td>
                    <div runat="server" id="dv_Result2">
                    </div>
                    <div runat="server" id="dv_PrgT2" style="float: left; padding: 0px"></div>
                    <div class="progress" style="width: 200px; float: right; height: 23px">
                        <div runat="server" id="dv_Prg2" class="progress-bar" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </td>
            </tr>
            <tr>
                <td style="width: 400px; height: 100px;">
                    <asp:Button runat="server" ID="btn3000" Text="디지털 혁신 영역" Width="100%" Height="100%" Font-Size="20px" OnClientClick="popup(3000)" />
                </td>
                <td align="left">A)디지털 혁신 영역에 대한 현재 수준 평가
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;운영 효율성 혁신(16)
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;비즈니스 모델 혁신(6)
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;고객경험증대(7)
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;협업과 정보관리(4)
                    <br />
                    <br />
                    B)디지털 혁신 영역에서 도입 기회나 영향도에 대한 수준 평가<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;운영 효율성 혁신(16)
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;비즈니스 모델 혁신(6)
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;고객경험증대(7)
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;협업과 정보관리(4)
                </td>
                <td>
                    <div runat="server" id="dv_Result3">
                    </div>
                    <div runat="server" id="dv_PrgT3" style="float: left; padding: 0px"></div>
                    <div class="progress" style="width: 200px; float: right; height: 23px">
                        <div runat="server" id="dv_Prg3" class="progress-bar" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </td>
            </tr>
            <tr>
                <td style="width: 400px; height: 100px;">
                    <asp:Button runat="server" ID="btn4000" Text="디지털 기술과 솔루션" Width="100%" Height="100%" Font-Size="20px" OnClientClick="popup(4000)" />
                </td>
                <td align="left">A)디지털 기술과 솔루션에 대한 현재 수준 평가<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;디지털기술과 솔루션 이해도(3)
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;디지털 기술과 솔루션의 활용(11)
                    <br />
                    <br />
                    B)디지털 기술과 솔루션의 도입 기회나 영향도에 대한 수준 평가<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;디지털기술 및 솔루션(7)
                </td>
                <td>
                    <div runat="server" id="dv_Result4">
                    </div>
                    <div runat="server" id="dv_PrgT4" style="float: left; padding: 0px"></div>
                    <div class="progress" style="width: 200px; float: right; height: 23px">
                        <div runat="server" id="dv_Prg4" class="progress-bar" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </td>
            </tr>
            <tr>
                <td style="width: 180px; height: 100px;">
                    <asp:Button runat="server" ID="btn5000" Text="디지털 인적역량과 조직문화" Width="100%" Height="100%" Font-Size="20px" OnClientClick="popup(5000)" />
                </td>
                <td align="left">인적역량(6)
                    <br />
                    조직문화(12)
                </td>
                <td>
                    <div runat="server" id="dv_Result5">
                    </div>
                    <div runat="server" id="dv_PrgT5" style="float: left; padding: 0px"></div>
                    <div class="progress" style="width: 200px; float: right; height: 23px">
                        <div runat="server" id="dv_Prg5" class="progress-bar" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </td>
            </tr>
        </table>
        <div style="margin-left: 750px; margin-top: 30px">
            <asp:Button runat="server" Text="결과 보기" ID="btnResult" Width="100px" Height="50px" BackColor="YellowGreen" OnClick="btnResult_Click" />
        </div>
    </form>
</body>
</html>
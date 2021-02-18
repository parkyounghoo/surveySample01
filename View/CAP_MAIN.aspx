<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CAP_MAIN.aspx.cs" Inherits="KPC_DT_CAP.View.CAP_MAIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 100%; height: 50rem; background: url(../images/img_mainvisual.jpg) no-repeat 50%; background-size: cover;">
            <div style="padding-top: 250px; padding-left: 350px; float: left">
                <h2>
                    <strong style="color: red; font-size: 40px"><em>디지털 트랜스포메이션
                        <br />
                        역량 측정도구</em></strong>
                    <br />
                    <span style="color: white">KPC DT Capability Assessment Toolkit</span>
                </h2>
            </div>
            <div style="float: right; padding-right: 300px; padding-top: 220px">
                <div style="height: 300px; width: 500px; background-color: white">
                    소개<br />
                    기존 비즈니스에 익숙한 기업들이 고객의 성향 변화에 맞춘 새 비즈니스 모델을 찾기란 쉽지 않다.<br />
                    이는 기업의 생존이 달린 문제가 되었다.<br />
                    그렇기에 어렵더라도 '디지털 트랜스포메이션'이라는 키워드에 대해
                    <br />
                    심각하게 고민하고 이를 기반으로 하루속히 혁신을 추진해야 할 것 같다.<br />
                    이에 무료료 제공되는 이 간편한 툴을 활용하여 기업의 현재 상태를 자가 진단하고 경쟁업체와 비교하여<br />
                    회사의 현재 상황과 강점 및 약점을 더 정확하게 파악하고<br />
                    이를 통해 IT 조직을 혁신하고 혁신을 가속화하여 향후 디지털 혁신 이니셔티브를 준비하는 여정을 바로 시작할 수 있다.<br />
                </div>
            </div>
        </div>

        <div style="margin-left:800px">
            <asp:Button runat="server" Text="평가시작" ID="btnStart" OnClick="btnStart_Click" Width="100px" Height="50px" BackColor="YellowGreen"/>
        </div>
    </form>
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CAP_RESULT.aspx.cs" Inherits="KPC_DT_CAP.View.CAP_RESULT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="../Scripts/vendor/jquery/jquery.min.js"></script>

    <script src="../Scripts/vendor/jquery/jquery.min.js"></script>
    <script src="../Scripts/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../Scripts/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="../Scripts/vendor/chart.js/Chart.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <style>
        body {
            padding: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="text-align: center">
                <h2>
                    <strong style="color: red; font-size: 40px"><em>디지털 트랜스포메이션
                        <br />
                        평가 결과</em></strong>
                </h2>
            </div>
        </div>
        <hr />
        <div style="float: left; margin-left: 30px">
            <div style="width: 820px;">
                <canvas id="myChart"></canvas>
            </div>
        </div>
        <div style="float: left; margin-left: 50px">
            <table align="center" style="margin-bottom: 80px; font-size: 12px">
                <tr>
                    <td style="width: 500px" align="center">항목
                    </td>
                    <td style="width: 100px" align="center">평점
                    </td>
                    <td style="width: 100px" align="center">평가
                    </td>
                </tr>
                <tr align="left" style="cursor: pointer; font-weight: bold">
                    <td style="width: 500px">
                        <span class="glyphicon glyphicon-plus plusIcon"></span>
                        <span class="glyphicon glyphicon-minus plusIcon" style="display: none"></span>
                        1. 디지털 비전과 리더십
                    </td>
                    <td style="width: 100px" align="center" runat="server" id="tdP_M01"></td>
                    <td style="width: 100px" align="center" runat="server" id="tdT_M01"></td>
                </tr>
                <tr align="left" style="display: none">
                    <td colspan="3">
                        <table>
                            <tr>
                                <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(1) 디지털 비전과 목표
                                </td>
                                <td style="width: 100px" align="center" runat="server" id="tdP_M01_1"></td>
                                <td style="width: 100px" align="center" runat="server" id="tdT_M01_1"></td>
                            </tr>
                            <tr align="left">
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(2) 디지털 리더십
                                </td>
                                <td style="width: 100px" align="center" runat="server" id="tdP_M01_2"></td>
                                <td style="width: 100px" align="center" runat="server" id="tdT_M01_2"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr style="height: 20px"></tr>
                <tr align="left" style="cursor: pointer; font-weight: bold">
                    <td style="width: 500px">
                        <span class="glyphicon glyphicon-plus plusIcon"></span>
                        <span class="glyphicon glyphicon-minus plusIcon" style="display: none"></span>
                        2. 디지털 전략과제
                    </td>
                    <td style="width: 100px" align="center" runat="server" id="tdP_M02"></td>
                    <td style="width: 100px" align="center" runat="server" id="tdT_M02"></td>
                </tr>
                <tr align="left" style="display: none">
                    <td colspan="3">
                        <table>
                            <tr>
                                <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(1) 전략과제 체계화 및 우선순위
                                </td>
                                <td style="width: 100px" align="center" runat="server" id="tdP_M02_1"></td>
                                <td style="width: 100px" align="center" runat="server" id="tdT_M02_1"></td>
                            </tr>
                            <tr align="left">
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(2) 전략과제 추진 실행력
                                </td>
                                <td style="width: 100px" align="center" runat="server" id="tdP_M02_2"></td>
                                <td style="width: 100px" align="center" runat="server" id="tdT_M02_2"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr style="height: 20px"></tr>
                <tr align="left" style="cursor: pointer; font-weight: bold">
                    <td style="width: 500px">
                        <span class="glyphicon glyphicon-plus plusIcon"></span>
                        <span class="glyphicon glyphicon-minus plusIcon" style="display: none"></span>
                        3. 디지털 혁신 영역
                    </td>
                    <td style="width: 100px" align="center" runat="server" id="tdP_M03"></td>
                    <td style="width: 100px" align="center" runat="server" id="tdT_M03"></td>
                </tr>
                <tr align="left" style="display: none">
                    <td colspan="3">
                        <table>
                            <tr style="cursor: pointer;">
                                <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <span class="glyphicon glyphicon-plus plusIcon"></span>
                                    <span class="glyphicon glyphicon-minus plusIcon" style="display: none"></span>
                                    (A) 디지털 혁신 영역에 대한 현재 수준 평가
                                </td>
                                <td style="width: 100px" align="center" runat="server" id="td1"></td>
                                <td style="width: 100px" align="center" runat="server" id="td2"></td>
                            </tr>
                            <tr style="display: none">
                                <td colspan="3">
                                    <table>
                                        <tr>
                                            <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            (1)운영 효율성 혁신
                                            </td>
                                            <td style="width: 100px" align="center" runat="server" id="tdP_M03_A_1"></td>
                                            <td style="width: 100px" align="center" runat="server" id="tdT_M03_A_1"></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            (2)비즈니스 모델 혁신
                                            </td>
                                            <td style="width: 100px" align="center" runat="server" id="tdP_M03_A_2"></td>
                                            <td style="width: 100px" align="center" runat="server" id="tdT_M03_A_2"></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            (3)고객경험증대
                                            </td>
                                            <td style="width: 100px" align="center" runat="server" id="tdP_M03_A_3"></td>
                                            <td style="width: 100px" align="center" runat="server" id="tdT_M03_A_3"></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            (4)협업과 정보관리
                                            </td>
                                            <td style="width: 100px" align="center" runat="server" id="tdP_M03_A_4"></td>
                                            <td style="width: 100px" align="center" runat="server" id="tdT_M03_A_4"></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="cursor: pointer;">
                                <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <span class="glyphicon glyphicon-plus plusIcon"></span>
                                    <span class="glyphicon glyphicon-minus plusIcon" style="display: none"></span>
                                    (B) 디지털 혁신 영역에서 도입 기회나 영향도에 대한 수준 평가
                                </td>
                                <td style="width: 100px" align="center" runat="server" id="td3"></td>
                                <td style="width: 100px" align="center" runat="server" id="td4"></td>
                            </tr>
                            <tr style="display: none">
                                <td colspan="3">
                                    <table>
                                        <tr>
                                            <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            (1)운영 효율성 혁신
                                            </td>
                                            <td style="width: 100px" align="center" runat="server" id="tdP_M03_B_1"></td>
                                            <td style="width: 100px" align="center" runat="server" id="tdT_M03_B_1"></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            (2)비즈니스 모델 혁신
                                            </td>
                                            <td style="width: 100px" align="center" runat="server" id="tdP_M03_B_2"></td>
                                            <td style="width: 100px" align="center" runat="server" id="tdT_M03_B_2"></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            (3)고객경험증대
                                            </td>
                                            <td style="width: 100px" align="center" runat="server" id="tdP_M03_B_3"></td>
                                            <td style="width: 100px" align="center" runat="server" id="tdT_M03_B_3"></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            (4)협업과 정보관리
                                            </td>
                                            <td style="width: 100px" align="center" runat="server" id="tdP_M03_B_4"></td>
                                            <td style="width: 100px" align="center" runat="server" id="tdT_M03_B_4"></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="cursor: pointer;">
                                <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <span class="glyphicon glyphicon-plus plusIcon"></span>
                                    <span class="glyphicon glyphicon-minus plusIcon" style="display: none"></span>
                                    (C) 디지털 혁신 영역에서 기회나 영향도 평가 결과(B)와 현재 수준(A) 비교
                                </td>
                                <td style="width: 100px" align="center" runat="server" id="td5"></td>
                                <td style="width: 100px" align="center" runat="server" id="td6"></td>
                            </tr>
                            <tr style="display: none">
                                <td colspan="3">
                                    <table>
                                        <tr>
                                            <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            (1)운영 효율성 혁신
                                            </td>
                                            <td style="width: 100px" align="center" runat="server" id="tdP_M03_C_1"></td>
                                            <td style="width: 100px" align="center" runat="server" id="tdT_M03_C_1"></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            (2)비즈니스 모델 혁신
                                            </td>
                                            <td style="width: 100px" align="center" runat="server" id="tdP_M03_C_2"></td>
                                            <td style="width: 100px" align="center" runat="server" id="tdT_M03_C_2"></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            (3)고객경험증대
                                            </td>
                                            <td style="width: 100px" align="center" runat="server" id="tdP_M03_C_3"></td>
                                            <td style="width: 100px" align="center" runat="server" id="tdT_M03_C_3"></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            (4)협업과 정보관리
                                            </td>
                                            <td style="width: 100px" align="center" runat="server" id="tdP_M03_C_4"></td>
                                            <td style="width: 100px" align="center" runat="server" id="tdT_M03_C_4"></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr style="height: 20px"></tr>
                <tr align="left" style="cursor: pointer; font-weight: bold">
                    <td style="width: 500px">
                        <span class="glyphicon glyphicon-plus plusIcon"></span>
                        <span class="glyphicon glyphicon-minus plusIcon" style="display: none"></span>
                        4. 디지털 기술과 솔루션
                    </td>
                    <td style="width: 100px" align="center" runat="server" id="tdP_M04"></td>
                    <td style="width: 100px" align="center" runat="server" id="tdT_M04"></td>
                </tr>
                <tr align="left" style="display: none">
                    <td colspan="3">
                        <table>
                            <tr style="cursor: pointer;">
                                <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <span class="glyphicon glyphicon-plus plusIcon"></span>
                                    <span class="glyphicon glyphicon-minus plusIcon" style="display: none"></span>
                                    (A) 디지털 기술과 솔루션에 대한 현재 수준 평가
                                </td>
                                <td style="width: 100px" align="center" runat="server" id="tdP_M04_A"></td>
                                <td style="width: 100px" align="center" runat="server" id="tdT_M04_A"></td>
                            </tr>
                            <tr style="display: none">
                                <td colspan="3">
                                    <table>
                                        <tr>
                                            <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            (1)디지털기술과 솔루션 이해도
                                            </td>
                                            <td style="width: 100px" align="center" runat="server" id="tdP_M04_A_1"></td>
                                            <td style="width: 100px" align="center" runat="server" id="tdT_M04_A_1"></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            (2)디지털 기술과 솔루션의 활용
                                            </td>
                                            <td style="width: 100px" align="center" runat="server" id="tdP_M04_A_2"></td>
                                            <td style="width: 100px" align="center" runat="server" id="tdT_M04_A_2"></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="cursor: pointer;">
                                <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <span class="glyphicon glyphicon-plus plusIcon"></span>
                                    <span class="glyphicon glyphicon-minus plusIcon" style="display: none"></span>
                                    (B) 디지털 기술과 솔루션의 도입 기회나 영향도에 대한 수준 평가
                                </td>
                                <td style="width: 100px" align="center" runat="server" id="tdP_M04_B"></td>
                                <td style="width: 100px" align="center" runat="server" id="tdT_M04_B"></td>
                            </tr>
                            <tr style="display: none">
                                <td colspan="3">
                                    <table>
                                        <tr>
                                            <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            (1)디지털기술 및 솔루션
                                            </td>
                                            <td style="width: 100px" align="center" runat="server" id="tdP_M04_B_1"></td>
                                            <td style="width: 100px" align="center" runat="server" id="tdT_M04_B_1"></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="cursor: pointer;">
                                <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <span class="glyphicon glyphicon-plus plusIcon"></span>
                                    <span class="glyphicon glyphicon-minus plusIcon" style="display: none"></span>
                                    (C) 디지털 기술과 솔루션의 도입 기회나 영향도 평가 결과(B)와 현재 수준(A) 비교
                                </td>
                                <td style="width: 100px" align="center" runat="server" id="tdP_M04_C"></td>
                                <td style="width: 100px" align="center" runat="server" id="tdT_M04_C"></td>
                            </tr>
                            <tr style="display: none">
                                <td colspan="3">
                                    <table>
                                        <tr>
                                            <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            (1)디지털기술 및 솔루션
                                            </td>
                                            <td style="width: 100px" align="center" runat="server" id="tdP_M04_C_1"></td>
                                            <td style="width: 100px" align="center" runat="server" id="tdT_M04_C_1"></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr style="height: 20px"></tr>
                <tr align="left" style="cursor: pointer; font-weight: bold">
                    <td style="width: 500px">
                        <span class="glyphicon glyphicon-plus plusIcon"></span>
                        <span class="glyphicon glyphicon-minus plusIcon" style="display: none"></span>
                        5. 디지털 인적역량과 조직문화
                    </td>
                    <td style="width: 100px" align="center" runat="server" id="tdP_M05"></td>
                    <td style="width: 100px" align="center" runat="server" id="tdT_M05"></td>
                </tr>
                <tr align="left" style="display: none">
                    <td colspan="3">
                        <table>
                            <tr>
                                <td style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(1) 인적역량
                                </td>
                                <td style="width: 100px" align="center" runat="server" id="tdP_M05_1"></td>
                                <td style="width: 100px" align="center" runat="server" id="tdT_M05_1"></td>
                            </tr>
                            <tr align="left">
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(2) 조직문화
                                </td>
                                <td style="width: 100px" align="center" runat="server" id="tdP_M05_2"></td>
                                <td style="width: 100px" align="center" runat="server" id="tdT_M05_2"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <div style="margin-left: 100px; margin-top: 450px; width: 700px">
            <span style="font-weight: bold; font-size: 20px">평가 지침</span>
            <hr />
            <div>
                1) 평가 방법
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;- 방법1 : 디지털 혁신 관련 또는 유관부서 담당자 3명 이상이 각자 평가 후 평균 집계<br />
                &nbsp;&nbsp;&nbsp;&nbsp;- 방법2 : 각 체크리스트에 대해 3명 이상이 설명을 듣고 협의해 평가, 집계<br />
                <br />

                2) 평가 척도 : 해당 없음(0), 매우 부정(1), 부정(2), 보통(3),<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                긍정(4), 매우 긍정(5) 기준으로 등급 체크<br />
                <br />

                3) 평가 기준 : 미흡 단계(2미만), 초기 단계(2이상~3미만), 기반 구축 단계(3.0이상~3.7미만),<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                강화 단계(3.7이상~4.4미만), 고도화 단계(4.4이상)<br />
                <br />

                ※ 체크리스트 해당 없음은 평가 기준에 적용되지 않음.
            </div>
        </div>
        <br />
        <br />

        <script>
            var ctx = document.getElementById('myChart').getContext('2d');
            var myChart = new Chart(ctx, {
                type: 'bar',
                data:
                {
                    labels: ['디지털 비전과 리더십'],
                    datasets: [{
                        label: '디지털 트랜스포메이션',
                        data: ["5"],
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)'
                        ],
                        borderColor: [
                            'rgba(255,99,132,1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(75, 192, 192, 1)',
                            'rgba(153, 102, 255, 1)'
                        ],
                        borderWidth: 1
                    },
                    {
                        label: '디지털 트랜스포메이션123',
                        data: ["5"],
                        backgroundColor: [
                            'rgba(54, 162, 235, 0.2)',
                        ],
                        borderColor: [
                            'rgba(54, 162, 235, 1)',
                        ],
                        borderWidth: 1
                    }]
                },
                options:
                {
                    scales:
                    {
                        yAxes: [{
                            ticks:
                            {
                                beginAtZero: true
                            }
                        }]
                    }
                }
            });
        </script>

        <script>
            $(".plusIcon").on("click", function () {
                var obj = $(this);
                if (obj.hasClass("glyphicon-plus")) {
                    obj.hide();
                    obj.next().show();
                    obj.parent().parent().next().show();
                } else {
                    obj.hide();
                    obj.prev().show();
                    obj.parent().parent().next().hide();
                }
            });
        </script>
    </form>
</body>
</html>
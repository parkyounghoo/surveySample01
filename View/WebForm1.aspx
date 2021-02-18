<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="KPC_DT_CAP.View.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <thead>
                <tr>
                    <th class="txtcenter">한국표준산업분류(KSIC 9차)</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <input type="checkbox" name="baseCheck" id="ALL0" class="checkbox" value="1">
                        <label for="ALL0" class="txt-gray">ALL 비농전산업</label></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="baseCheck" id="B~D1" class="checkbox" value="3">
                        <label for="B~D1" class="txt-gray">B~D 광공업</label></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="baseCheck" id="B2" class="checkbox" value="B">
                        <label for="B2" class="txt-gray">B 광업</label></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="baseCheck" id="C3" class="checkbox" value="C">
                        <label for="C3" class="txt-gray">+ C 제조업</label></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="baseCheck" id="D4" class="checkbox" value="D">
                        <label for="D4" class="txt-gray">D 전기, 가스, 증기 및 수도사업</label></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="baseCheck" id="E,G~S5" class="checkbox" value="2">
                        <label for="E,G~S5" class="txt-gray">E,G~S 서비스업</label></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="baseCheck" id="E6" class="checkbox" value="E">
                        <label for="E6" class="txt-gray">+ E 하수, 폐기물처리, 원료재생 및 환경복원업</label></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="baseCheck" id="F7" class="checkbox" value="F">
                        <label for="F7" class="txt-gray">F 건설업</label></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="baseCheck" id="G8" class="checkbox" value="G">
                        <label for="G8" class="txt-gray">+ G 도매 및 소매업</label></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="baseCheck" id="H9" class="checkbox" value="H">
                        <label for="H9" class="txt-gray">+ H 운수업</label></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="baseCheck" id="I10" class="checkbox" value="I">
                        <label for="I10" class="txt-gray">+ I 숙박 및 음식점업</label></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="baseCheck" id="J11" class="checkbox" value="J">
                        <label for="J11" class="txt-gray">+ J 출판, 영상, 방송통신 및 정보서비스업</label></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="baseCheck" id="K12" class="checkbox" value="K">
                        <label for="K12" class="txt-gray">+ K 금융 및 보험업</label></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="baseCheck" id="L13" class="checkbox" value="L">
                        <label for="L13" class="txt-gray">+ L 부동산 및 임대업</label></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="baseCheck" id="M14" class="checkbox" value="M">
                        <label for="M14" class="txt-gray">+ M 전문, 과학 및 기술 서비스업</label></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="baseCheck" id="N15" class="checkbox" value="N">
                        <label for="N15" class="txt-gray">+ N 사업시설관리 및 사업지원 서비스업</label></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="baseCheck" id="P16" class="checkbox" value="P">
                        <label for="P16" class="txt-gray">P 교육 서비스업</label></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="baseCheck" id="Q17" class="checkbox" value="Q">
                        <label for="Q17" class="txt-gray">+ Q 보건 및 사회복지사업</label></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="baseCheck" id="R18" class="checkbox" value="R">
                        <label for="R18" class="txt-gray">+ R 예술, 스포츠 및 여가관련 서비스업</label></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="baseCheck" id="S19" class="checkbox" value="S">
                        <label for="S19" class="txt-gray">+ S 협회 및 단체, 수리 및 기타 개인 서비스업</label></td>
                </tr>
            </tbody>
        </div>
    </form>
</body>
</html>
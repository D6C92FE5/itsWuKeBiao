<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>无课表登记</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
    <form runat="server">
        <div class="page-header">
            <h1>无课表登记</h1>
        </div>

        <input type="text" id="name" class="form-control input-lg" placeholder="请输入你的名字">
        <table class="table table-bordered">
            <tr>
                <th class="head">节次/星期</th>
                <th class="day">周一</th>
                <th class="day">周二</th>
                <th class="day">周三</th>
                <th class="day">周四</th>
                <th class="day">周五</th>
                <th class="day">周六</th>
                <th class="day">周日</th>
            </tr>
            <tr class="delimiter">
                <td class="order">12</td>
                <td class="choice" data-status="busy"></td>
                <td class="choice" data-status="busy"></td>
                <td class="choice" data-status="busy"></td>
                <td class="choice" data-status="busy"></td>
                <td class="choice" data-status="busy"></td>
                <td class="choice" data-status="free"></td>
                <td class="choice" data-status="free"></td>
            </tr>
            <tr>
                <td class="order">34</td>
                <td class="choice" data-status="busy"></td>
                <td class="choice" data-status="busy"></td>
                <td class="choice" data-status="busy"></td>
                <td class="choice" data-status="busy"></td>
                <td class="choice" data-status="busy"></td>
                <td class="choice" data-status="free"></td>
                <td class="choice" data-status="free"></td>
            </tr>
            <tr class="delimiter">
                <td class="order">56</td>
                <td class="choice" data-status="busy"></td>
                <td class="choice" data-status="busy"></td>
                <td class="choice" data-status="busy"></td>
                <td class="choice" data-status="free"></td>
                <td class="choice" data-status="busy"></td>
                <td class="choice" data-status="free"></td>
                <td class="choice" data-status="free"></td>
            </tr>
            <tr>
                <td class="order">78</td>
                <td class="choice" data-status="busy"></td>
                <td class="choice" data-status="busy"></td>
                <td class="choice" data-status="busy"></td>
                <td class="choice" data-status="free"></td>
                <td class="choice" data-status="busy"></td>
                <td class="choice" data-status="free"></td>
                <td class="choice" data-status="free"></td>
            </tr>
            <tr class="delimiter">
                <td class="order">90</td>
                <td class="choice" data-status="busy"></td>
                <td class="choice" data-status="busy"></td>
                <td class="choice" data-status="busy"></td>
                <td class="choice" data-status="busy"></td>
                <td class="choice" data-status="busy"></td>
                <td class="choice" data-status="free"></td>
                <td class="choice" data-status="free"></td>
            </tr>
        </table>
        <button class="btn btn-primary btn-lg">提交</button>

        <asp:ScriptManager ID="ctScriptManager" runat="server">
            <Services>
                <asp:ServiceReference Path="~/WebService.asmx" />
            </Services>
        </asp:ScriptManager>
    </form>

    <script src="assets/jquery/jquery-1.10.2.min.js"></script>
    <script src="assets/Bootstrap/js/bootstrap.min.js"></script>

    <script src="js/index.js"></script>
</body>
</html>

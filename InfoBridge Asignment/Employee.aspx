<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="InfoBridge_Assignment.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    

    <style type="text/css">
        .tdLable
        {
            text-align:left;
            font-family:Calibri;
            font-size:20px;
            font-weight:bold;
            margin-left:25px;
            border:groove;
            border-color:#3498DB;
        }
        
        .btnAdd{
            background-color:#4CAF50;
            border:none;
            color:white;
            
            padding:15px 32px;
            text-align:center;
            text-decoration:none;
            display:inline-block;
            font-size:16px;
            margin-left:10px
           
        }
        .btnView{
           background-color:#4CAF50;
            border:none;
            color:white;
            
            padding:15px 32px;
            text-align:center;
            text-decoration:none;
            display:inline-block;
            font-size:16px;
            margin-left:25px;
        }
        .btnEdit{
            background-color:#4CAF50;
            border:none;
            color:white;
            
            padding:15px 32px;
            text-align:center;
            text-decoration:none;
            display:inline-block;
            font-size:16px;
            margin-left:25px;
        }
        .btnDelete{
            background-color:#4CAF50;
            border:none;
            color:white;
            
            padding:15px 32px;
            text-align:center;
            text-decoration:none;
            display:inline-block;
            font-size:16px;
           margin-left:25px;
        }
       
        .auto-style1 {
            width: 50%;
        }
        .auto-style3 {
            width: 104%;
            height: 793px;
        }
        .auto-style4 {
            width: 93%;
            height: 603px;
        }
        .auto-style6 {
            width: 104%;
            height: 25px;
        }
        .auto-style8 {
            width: 104%;
            height: 26px;
        }
       
        .auto-style12 {
            width: 104%;
            height: 30px;
        }
        .auto-style14 {
            width: 104%;
            height: 36px;
        }
        .auto-style15 {
            height: 100px;
        }
               
        .auto-style17 {
            width: 6%;
        }
       
        .auto-style18 {
            height: 182px;
        }
       
        .auto-style19 {
            text-align: left;
            font-family: Calibri;
            font-size: 20px;
            font-weight: bold;
            margin-left: 25px;
            border: medium groove #3498DB;
            height: 36px;
        }
       
    </style>
</head>
    <body>
        <form id="form2" runat="server">
            <table style="background-color:#D3D3D3;" class="auto-style3">
                <tr>
                    <td class="auto-style17">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td ;valign="top" class="auto-style1">
                        <table style="border:1px solid #3498DB;" class="auto-style4">
                            <tr>
                                <td colspan="2" style="height:10px">
                                    <asp:Label ID="lblMessage" runat="server" ForeColor="#CC0000"></asp:Label>
                                    <asp:Label ID="lblId" runat="server" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td width="30%" class="auto-style19" >
                                   <asp:Label runat="server"> Id :   <span style="color:red;">*</span>                             </asp:Label>
                                       </td>
                                <td class="auto-style14" style="border-right-style: groove; border-right-width: medium; border-right-color: #FFFFFF; border-top-style: groove; border-top-width: medium; border-top-color: #FFFFFF;">
                                    <asp:TextBox ID="txtId" runat="server" Width="253px" ></asp:TextBox>
                                </td>
                            </tr>
                             <tr>
                                <td width="30%" class="tdLable">
                                    Name :<span style="color:red;">*</span>
                                </td>
                                <td class="auto-style8" style="border-right-style: groove; border-right-width: medium; border-right-color: #FFFFFF">
                                    <asp:TextBox ID="txtName" runat="server" Width="252px" ></asp:TextBox>
                                </td>
                            </tr>
                            
                            <tr>
                                <td width="30%" class="tdLable">
                                    Sex :<span style="color:red;">*</span>
                                    
                                </td>
                                <td class="auto-style8" style="border-right-style: groove; border-right-width: medium; border-right-color: #FFFFFF">
                                    <asp:DropDownList ID="drpSex" runat="server">
                                        <asp:ListItem Text="--Select Gender--" ></asp:ListItem>
                                        <asp:ListItem Value="Male" Text="Male" ></asp:ListItem>
                                        <asp:ListItem Value="Female" Text="Female" ></asp:ListItem>
                                        <asp:ListItem Value="Other" Text="Other" ></asp:ListItem>

                                    </asp:DropDownList>
                                    </td>
                                </tr>
                            <tr>
                                <td width="30%" class="tdLable">
                                    Phone :<span style="color:red;">*</span>
                                    
                                </td>
                                <td class="auto-style12" style="border-right-style: groove; border-right-width: medium; border-right-color: #FFFFFF">
                                    <asp:TextBox ID="txtPhone" runat="server" Width="251px" ></asp:TextBox>
                                </td>
                                </tr>
                            <tr>
                                <td width="30%" class="tdLable">
                                    Date Of Birth :<span style="color:red;">*</span>
                                    
                                </td>
                                <td class="auto-style6" style="border-right-style: groove; border-right-width: medium; border-right-color: #FFFFFF">
                                    <asp:TextBox ID="txtDateOfBirth" runat="server" Type="date"  Width="147px" Height="17px" TextMode="Date"></asp:TextBox>
                                    <%--<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/calander.jpg" ImageAlign="AbsBottom" Height="22px" Width="25px" onclick="ImageButton1_Click" />--%><%--<asp:Calendar ID="Calendar1" runat="server" Height="200px" Width="220px" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender">
                                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                        <OtherMonthDayStyle ForeColor="#999999" />
                                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                        <WeekendDayStyle BackColor="#CCCCFF" />
                               </asp:Calendar>--%>
                                        </td>
                                </tr>
                            <tr>
                                <td width="30%" class="tdLable">
                                    Address :<span style="color:red;">*</span>
                                    
                                </td>
                                <td class="auto-style6" style="border-right-style: groove; border-right-width: medium; border-right-color: #FFFFFF">
                                    <asp:TextBox ID="txtAddress" runat="server" Width="252px" ></asp:TextBox>
                                        </td>
                                </tr>
                             <tr>
                                <td width="30%" class="tdLable">
                                    Photo :<span style="color:red;">*</span>
                                    
                                </td>
                                <td class="auto-style14" style="border-right-style: groove; border-right-width: medium; border-right-color: #FFFFFF; border-bottom-style: groove; border-bottom-width: medium; border-bottom-color: #FFFFFF;">
                                    <asp:FileUpload ID="FileUpload1" runat="server" onchange="ImagePreview(this);"/>
                                &nbsp;&nbsp;
                                    </td>
                                </tr>
                            <tr>
                                <td colspan="2" class="auto-style18">
                                   <asp:Button ID="btnAdd" runat="server"  OnClick="btnAdd_Click" Text="Add" CssClass="btnAdd" BackColor="#FF66FF" />
                                    &nbsp;&nbsp;<asp:Button ID="btnView" runat="server"  Text="View" CssClass="btnView" Width="119px" OnClick="btnView_Click" />
                                    <asp:Button ID="btnEdit" runat="server"  Text="Edit" CssClass="btnEdit" OnClick="btnEdit_Click" BackColor="#996633" BorderColor="#FFFFCC"  />
                                    &nbsp;&nbsp;&nbsp;<asp:Button ID="btnDelete" runat="server"  Text="Delete"  CssClass="btnDelete" BackColor="#3366FF" OnClick="btnDelete_Click" OnClientClick="return confirm('Are you sure to delete?')" />

                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblError1" runat="server"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblError4" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblError2" runat="server"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblError3" runat="server"></asp:Label>
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style15" style="border: thin outset #3498DB" colspan="2">

                                   
                                    <table class="auto-style4">
                                        <tr>
                                            <td class="auto-style15" colspan="2" width="30%">
                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="768px">
                                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                    <Columns>
                                                        <asp:BoundField DataField="Id" HeaderText="Id" />
                                                        <asp:BoundField DataField="Name" HeaderText="Name" />
                                                        <asp:BoundField DataField="Sex" HeaderText="Sex" />
                                            <%--<asp:BoundField DataField="DateOfBirth" HeaderText="Date Of Birth" />--%>
                                                        <asp:TemplateField HeaderText="Date Of Birth">
                                                            <ItemTemplate>
                                                                <asp:Label ID="labl" runat="server" DataFormateString="{0:dd/MM/yyyy}" HtmlEncode="false" Text='<%#Eval("DateOfBirth","{0:dd/MM/yyyy}") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Phone" HeaderText="Phone" />
                                                        <asp:BoundField DataField="Address" HeaderText="Address" />
                                                        <asp:TemplateField HeaderText="Photo">
                                                            <ItemTemplate>
                                                    <img src="EmployeeImg/<%#Eval("Image") %>" style="width:100px;height:100px" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <EditRowStyle BackColor="#999999" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <%--<asp:BoundField DataField="DateOfBirth" HeaderText="Date Of Birth" />--%>
                            </tr>
                            
                        </table>
                    </td>
                </tr>
            </table>
        </form>
    </body>

</html>
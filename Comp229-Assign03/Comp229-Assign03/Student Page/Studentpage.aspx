<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Studentpage.aspx.cs" Inherits="Comp229_Assign03.Studentpage" EnableSessionState="True" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Student Page</title>


</head>
   
<body>
    <form id="form1" runat="server" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-style: italic; font-variant: normal; color: #0000FF; text-decoration: blink">
        <h1 style="margin-left: 160px"><u>THIS IS THE STUDENT PAGE </u></h1>
         
               This section displays information about students studying at Centennial College.
  <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="StudentID" HeaderText="Student ID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                <asp:BoundField DataField="FirstMidName" HeaderText="First Middle Name" SortExpression="FirstMidName" />
                <asp:BoundField DataField="EnrollmentDate" HeaderText="Enrollment Date" SortExpression="EnrollmentDate" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229Assign03ConnectionString %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>
        
        

        <br />
    <div> This section gives details about student Courses.<br />
        <br />
        <br />
            </div>

        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="CourseID" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="CourseID" HeaderText="CourseID" InsertVisible="False" ReadOnly="True" SortExpression="CourseID" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229Assign03ConnectionString %>" SelectCommand="SELECT [CourseID], [Title] FROM [Courses]"></asp:SqlDataSource>
    

    

    <div>&nbsp;<asp:Button ID="Button1" runat="server" Text="Update Details" style="margin-left: 265px; margin-right: 14px; margin-top: 0px;" BackColor="#6699FF" BorderColor="Black" BorderStyle="Ridge" ForeColor="Black" Height="38px" Width="155px" /></div>

    </form>
</body>
</html>

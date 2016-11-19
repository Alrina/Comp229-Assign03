<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Landing Page.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Comp229_Assign03.Pages.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            margin-left: 27px;
        }
        .auto-style9 {
            margin-left: 31px;
        }
        .auto-style10 {
            margin-left: 32px;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            margin-left: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="FirstMidName" HeaderText="FirstMidName" SortExpression="FirstMidName" />
            
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229Assign03ConnectionString %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229Assign03ConnectionString %>" SelectCommand="SELECT [FirstMidName], [LastName] FROM [Students]"></asp:SqlDataSource>
  <div class="auto-style11">  First Middle Name<asp:TextBox ID="txtFirstMidName" runat="server" CssClass="auto-style12"></asp:TextBox>
    <br />
    Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtLastName" runat="server" CssClass="auto-style8" Width="124px"></asp:TextBox>
    <br />
    Student ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtStudentID" runat="server" CssClass="auto-style9" OnTextChanged="txtStudentID_TextChanged"></asp:TextBox>
    <br />
    Enrollment Date<asp:TextBox ID="txtEnrollmentDate" runat="server" CssClass="auto-style10"></asp:TextBox>
     <br />
     <br />
    <br /></div>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD" Width="174px" />
    <br />
</asp:Content>

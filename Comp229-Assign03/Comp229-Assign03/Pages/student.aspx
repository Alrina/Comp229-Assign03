<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Landing Page.Master" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="Comp229_Assign03.Pages.student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="FirstMidName" HeaderText="FirstMidName" SortExpression="FirstMidName" />
            <asp:BoundField DataField="EnrollmentDate" HeaderText="EnrollmentDate" SortExpression="EnrollmentDate" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229Assign03ConnectionString %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>
</asp:Content>

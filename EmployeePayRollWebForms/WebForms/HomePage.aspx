<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayRoll.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="EmployeePayRoll.WebForms.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/Home.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="heading">
        <p>Employee Details</p>
        <asp:Button ID="Button1" class="btn addUser" runat="server" OnClick="Button1_Click" Text="+  Add User" />
    </div>
    <br />
    <div class="grid">         
       <asp:GridView ID="GridView1" runat="server" BackColor="White" CellPadding="4" GridLines="Horizontal" AutoGenerateColumns="False" Width="1090px" ForeColor="Black" >
        <Columns>
             <asp:TemplateField HeaderText="" SortExpression="ImgUrl">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ImgUrl") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImgUrl") %>' />
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:BoundField DataField="Empid" HeaderText="EMPID" InsertVisible="False" ReadOnly="True" SortExpression="Empid" />
             <asp:BoundField DataField="Name" HeaderText="NAME" SortExpression="Name" />
             <asp:BoundField DataField="Gender" HeaderText="GENDER" SortExpression="Gender" />
             <asp:BoundField DataField="Department" HeaderText="DEPARTMENT" SortExpression="Department" />
             <asp:BoundField DataField="Salary" HeaderText="SALARY" SortExpression="Salary" />
             <asp:BoundField DataField="StartDate" HeaderText="STARTDATE" SortExpression="StartDate" />
             <asp:CommandField ButtonType="Image" CancelImageUrl="../Assets/icons/delete-black-18dp.svg" DeleteImageUrl="../Assets/icons/delete-black-18dp.svg" EditImageUrl="../Assets/icons/create-black-18dp.svg" HeaderText="Actions" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="../Assets/icons/create-black-18dp.svg" />
         </Columns>
           <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
           <HeaderStyle BackColor="#42515F" Font-Bold="True" ForeColor="White"  />
           <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
           <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
           <SortedAscendingCellStyle BackColor="#F7F7F7" />
           <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
           <SortedDescendingCellStyle BackColor="#E5E5E5" />
           <SortedDescendingHeaderStyle BackColor="#242121" />
           </asp:GridView>

    </div>  
    
</asp:Content>

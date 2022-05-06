<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebMarket.Pages.Login"
    MasterPageFile="~/Pages/Admin/Admin.Master" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="SingleParagraph" CssClass="error" />

 


    <style>
        .form-group {
    max-width: 50%;
}
        .form-group {
        margin-left:auto;
        margin-right:auto;
        }
        button.btn {
         margin-left:auto;
        margin-right:auto;


        }
        .btn {
        margin-top:30px;
        width:100%;
        margin-bottom:30px;
        }
        .form-control {
            max-widrh:50%;
        }
    </style>
    <div class="form-group">
    <label for="name">name</label>
    <input type="text" class="form-control" name="name" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
      <button type="submit" class="btn btn-primary">Submit</button>

             
  
    
</asp:Content>
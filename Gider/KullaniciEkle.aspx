<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KullaniciEkle.aspx.cs" Inherits="Gider.KullaniciEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <label for="kullaniciAd">Kullanıcı Adı :</label>
    <div></div>
    <div><input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1" runat="server" id="userName"></div>
    <label for="kullaniciAd">Sifre :&nbsp;&nbsp; </label>
<div><input type="text" class="form-control" placeholder="Password" aria-label="Username" aria-describedby="basic-addon1" runat="server" id="pwd"></div>
    <div></div>
    <div style="text-align: right; height: 49px;">

        <asp:Button ID="Button1" runat="server" Text="Ekle" CssClass="btn btn-success" Height="41px" style="margin-right:20px;margin-top:20px;" Width="61px" OnClick="Button1_Click" />
    </div>
    </form>
</asp:Content>

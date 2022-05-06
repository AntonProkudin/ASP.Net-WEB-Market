<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="WebMarket.Pages.Checkout"
    MasterPageFile="~/Pages/Store.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="bodyContent" runat="server">
    <div id="content">

        <div id="checkoutForm" class="checkout" runat="server">
            <div class="formcheck">

          
            <h2>Оформить заказ</h2>
            Пожалуйста, введите свои данные, и мы отправим Ваш товар прямо сейчас!

        <div id="errors" data-valmsg-summary="true">
            <ul>
                <li style="display:none"></li>
            </ul>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>

            <h3>Заказчик</h3>
            <div>
                <label for="name">Имя:</label>
                <SX:VInput Property="Name" runat="server" />
            </div>

            <h3>Адрес доставки</h3>
            <div>
                <label for="line1">Адрес 1:</label>
                <SX:VInput Property="Line1" runat="server" />
            </div>
            <div>
                <label for="line2">Адрес 2:</label>
                <SX:VInput Property="Line2" runat="server" />
            </div>
            <div>
                <label for="line3">Адрес 3:</label>
                <SX:VInput Property="Line3" runat="server" />
            </div>
            <div>
                <label for="city">Город:</label>
                <SX:VInput Property="City" runat="server" />
            </div>

            <h3>Детали заказа</h3>
            <input type="checkbox" id="giftwrap" name="giftwrap" value="true" />
            Использовать упаковку?
        
        <p class="actionButtons">
            <button class="actionButtons" type="submit">Обработать заказ</button>
        </p>
                  </div>
        </div>
        <div id="checkoutMessage" runat="server">
            <h2>Спасибо!</h2>
            <h2>Спасибо что выбрали наш магазин, после
            <a href="https://oplata.qiwi.com/form?invoiceUid=144f0c55-c146-4361-b23e-ebd1ce1bb365"> оплаты </a>
            мы отправим ваш заказ!</h2>
        </div>
    </div>
</asp:Content>
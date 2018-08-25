<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Questao4.aspx.cs" Inherits="FCamara.Paginas.Questao4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-6">
        <div class="form-group">
            <div class="row">
                <div class="col-md-6">
                    <h5>
                        <label id="llbTamanhoArea" runat="server">Tamanho da area (m²) </label>
                    </h5>
                    <input type="number" required="required" runat="server" class="form-control" id="txtTamanhoArea" />
                </div>
                <div class="col-md-6">
                    <h5>
                        <label id="lblValorFinal" runat="server">Valor Final</label></h5>
                    <asp:Button CssClass="btn btn-primary" runat="server" Text="Calcular" ID="btnCalcular" OnClick="btnCalcular_Click" />
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="row">
                <div class="col-md-6">
                    <h5>
                        <label id="lblQuantLatas" runat="server">QTD. Latas</label></h5>
                    <label id="lblqtdLatasResp" runat="server" class="display-salario cor-laranja"></label>
                </div>
                <div class="col-md-6">
                    <h5>
                        <label id="lblValorTotal" runat="server">Valor Total</label></h5>
                    <label id="lblValorTotalResp" runat="server" class="display-salario cor-laranja"></label>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <h2>Descrição Quarta</h2>
        <p class="lead">
            Faça um programa para uma loja de tintas.<br />
            O programa deverá pedir o
tamanho em metros quadrados da área a ser pintada.
            <br />
            Considere que a
cobertura da tinta é de 1 litro para cada 3 metros quadrados e que a tinta é
vendida em latas de 18 litros, que custam R$ 80,00.
            <br />
            Informe ao usuário a
quantidades de latas de tinta a serem compradas e o preço total.
        </p>
    </div>

</asp:Content>

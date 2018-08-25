<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Questao6.aspx.cs" Inherits="FCamara.Paginas.Questao6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-6">
        <div class="form-group">
            <div class="row">
                <div class="col-md-6">
                    <h5>
                        <label id="lblLadoA" runat="server">Lado A</label></h5>
                    <input type="number" runat="server" class="form-control" id="txtLadoA" />
                </div>
                <div class="col-md-6">
                    <h5>
                        <label id="lblLadoB" runat="server">Lado B</label></h5>
                    <input type="number" runat="server" class="form-control" id="txtLadoB" />
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="row">
                <div class="col-md-6">
                    <label id="lblErro" runat="server" class="erro"></label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="row">
                <div class="col-md-6">
                    <asp:Button CssClass="btn btn-primary" runat="server" Text="Calcular" ID="btnCalcular" OnClick="btnCalcular_Click" />
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="row">
                <div class="col-md-6">
                    <h5>
                        <label id="lblArea" runat="server">Area</label></h5>
                    <label id="lblAreaResp" runat="server" class="display-salario cor-laranja"></label>

                </div>
                <div class="col-md-6">
                    <h5>
                        <label id="lblPerimentro" runat="server">Perimentro</label></h5>
                    <label id="lblPerimentroResp" runat="server" class="display-salario cor-laranja"></label>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <h2>Descrição Sexta</h2>
        <p class="lead">
            Crie uma classe que modele um retângulo:<br />
            Atributos: LadoA, LadoB (ou Comprimento e Largura, ou Base e Altura, a
escolher)<br />
            Métodos: Mudar valor dos lados, Retornar valor dos lados, calcular Área e
calcular Perímetro;<br />
            Crie um programa que utilize esta classe. Ele deve pedir ao usuário que
informe as medidas de um local. Depois, deve criar um objeto com as
medidas e calcular a quantidade de pisos e de rodapés necessárias para o
local.
        </p>
    </div>

</asp:Content>

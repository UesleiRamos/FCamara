<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Questao2.aspx.cs" Inherits="FCamara.Paginas.Questao2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-md-6">
        <div class="form-group">
            <div class="row">
                <div class="col-md-6">
                    <h5>
                        <label id="lblValorInicial" runat="server">Valor Inicial</label></h5>
                    <input type="number" runat="server" class="form-control" name="txtValorInicial" id="txtValorInicial" />
                </div>
                <div class="col-md-6">
                    <h5>
                        <label id="lblValorFinal" runat="server">Valor Final</label></h5>
                    <input type="number" runat="server" class="form-control" name="txtValorFinal" id="txtValorFinal" />
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
                    <asp:Button class="btn btn-primary btn-smm" runat="server" Text="Calcular" ID="btnCalcular" OnClick="btnCalcular_Click" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <h5>Entrada:</h5>
                <label id="lblRespEntrada" runat="server" class="cor-laranja display-5"></label>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <h5>Saída:</h5>
                <label id="lblRespSaida" runat="server" class="cor-laranja display-5"></label>
            </div>
        </div>

    </div>
    <div class="col-md-6">
        <h2>Descrição Segunda</h2>
        <p class="lead">
            Elabore um algoritmo para mostrar os números primos existentes em um
intervalo.<br />
            O usuário deverá fornecer os valores inicial (inicial > 0) e final (inicial <
final) e os números primos existentes no intervalo ([inicial, final]) devem
ser separados por um espaço em branco
                <br />
            <br />
            Exemplo:<br />
            Entrada: 2 13<br />
            Saída: 2 3 5 7 11 13
        </p>
    </div>
</asp:Content>

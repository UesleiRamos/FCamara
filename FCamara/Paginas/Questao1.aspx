<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Questao1.aspx.cs" Inherits="FCamara.Paginas.Questao1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-md-6">

        <div class="form-group">
            <h5>
                <label id="lblAnoContratacao" runat="server">Ano de Contratação</label></h5>
            <div class="col-sm-10">
                <h1>
                    <label id="lblAno2005" runat="server" class="display-4">2005</label></h1>
            </div>
        </div>
        <div class="form-group">
            <h5>
                <label id="lblSalarioInial" runat="server" >Salário Inicial:</label></h5>
            <div class="col-sm-10">
                <h1>
                    <label id="lblSalarioBase" runat="server" class="display-4">R$ 1.000,00</label></h1>
            </div>
        </div>
        <div class="form-group">
            <h5><label for="exampleInputName2">Salário em 2018</label></h5>
            <div class="col-sm-10">
                <h1><label id="salario2018" class="cor-laranja display-4" runat="server"></label></h1>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <h2>Descrição Primeira</h2>
        <p class="lead">
            Um funcionário de uma empresa recebe, anualmente, aumento salarial.
Sabe-se que:<br />
            Esse funcionário foi contratado em 2005 com salário inicial de R$ 1.000,00;<br />
            Em 2006 ele recebeu aumento de 1,5% sobre seu salário inicial; e
A partir de 2007, os aumentos salariais sempre corresponderam ao dobro
do percentual do ano anterior.<br />
            <br />
            Faça um algoritmo que determine o salário atual deste funcionário.
        </p>
    </div>
</asp:Content>

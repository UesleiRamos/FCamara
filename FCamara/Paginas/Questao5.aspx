<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Questao5.aspx.cs" Inherits="FCamara.Paginas.Questao5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-6">
        <div class="form-group">
            <div class="row">
                <div class="form-group nCorrentista">
                    <h5>
                        <label id="lblNomeCorrentista" runat="server">Nome do Correntista</label></h5>
                    <div class="col-sm-10">
                        <h1>
                            <label id="lblNomeCorrentistaResp" runat="server" class="display-salario cor-laranja"></label>
                        </h1>
                    </div>
                </div>
                <div class="form-group nConta">
                    <h5>
                        <label id="lblNConta" runat="server">Número da Conta</label></h5>
                    <div class="col-sm-13">
                        <h1>
                            <label id="lblNContaResp" runat="server" class="display-salario cor-laranja"></label>
                        </h1>
                    </div>
                </div>

                <div class="form-group">
                    <h5>
                        <label id="lblSaldo" runat="server">Saldo</label></h5>
                    <div class="col-sm-13">

                        <h1>
                            <label id="lblSaldoResp" runat="server" class="display-salario cor-laranja"></label>
                        </h1>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="form-group">
                    <asp:Button CssClass="btn btn-primary" runat="server" Text="Depositar" ID="btnDepositar" OnClick="btnDepositar_Click" />
                    <div class="col-sm-13">
                        <input type="number" runat="server" class="form-control txtConta" id="txtDeposito" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Button CssClass="btn btn-primary" runat="server" Text="Sacar" ID="btnSaque" OnClick="btnSaque_Click" />
                    <div class="col-sm-13">
                        <input type="number" runat="server" class="form-control txtConta" id="txtSacar" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Button CssClass="btn btn-primary" runat="server" Text="Alterar Nome" ID="btnAlterarNome" OnClick="btnAlterarNome_Click" />
                    <div class="col-sm-13">
                        <input type="text" runat="server" class="form-control txtConta" id="txtAlterarNome" />
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
        </div>

    </div>
    <div class="col-md-6">
        <h2>Descrição Quinta</h2>
        <p class="lead">
            Crie uma classe para implementar uma conta corrente.
            <br />
            A classe deve
possuir os seguintes atributos:<br />
            número da conta, nome do correntista e
saldo.<br />
            Os métodos são os seguintes:<br />
            alterarNome, depósito e saque;
            <br />
            No
construtor, saldo é opcional, com valor default zero e os demais atributos
são obrigatórios.
        </p>
    </div>
</asp:Content>

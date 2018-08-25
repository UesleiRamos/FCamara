<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Questao3.aspx.cs" Inherits="FCamara.Paginas.Questao3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-6">
        <div class="form-group">
            <div class="row">
                <div class="col-md-6">
                    <h5>
                        <label id="lblValorInicial" runat="server">Horas Trabalhadas</label></h5>
                    <input type="number" runat="server" class="form-control" id="txthorasTrabalhadas" />
                </div>
                <div class="col-md-6">
                    <h5>
                        <label id="lblValorFinal" runat="server">Salário Mínimo</label></h5>
                    <input type="number" runat="server" class="form-control" id="txtSalarioMinimo" />
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
                <div class="form-group">
                    <h5>
                        <label id="lblValorHora" runat="server">Valor da Hora</label></h5>
                    <div class="col-sm-10">
                        <h1>
                            <label id="lblValorHoraResp" runat="server" class="display-salario cor-laranja"></label>
                        </h1>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-6">
                        <asp:Button CssClass="btn btn-primary" runat="server" Text="Calcular" ID="btnCalcular" OnClick="btnCalcular_Click" />
                    </div>
                </div>
        </div>
        <div class="row">
            <div class="form-group">
                <h5>
                    <label id="lblSalarioBruto" runat="server">Salário Bruto</label></h5>
                <div class="col-sm-10">
                    <h1>
                        <label id="lblSalarioBrutoResp" runat="server" class="display-salario cor-laranja"></label>
                    </h1>
                </div>
            </div>
            <div class="form-group">
                <h5>
                    <label id="lblImposto" runat="server">Imposto</label></h5>
                <div class="col-sm-13">
                    <h1>-<label id="lblImpostoResp" runat="server" class="display-salario cor-laranja"></label>
                    </h1>
                </div>
            </div>

            <div class="form-group">
                <h5>
                    <label id="lblsalarioLiquido" runat="server">Salário Líquido</label></h5>
                <div class="col-sm-13">

                    <h1>=   
                        <label id="lblsalarioLiquidoResp" runat="server" class="display-salario cor-laranja"></label>
                    </h1>
                </div>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="row">
        </div>
    </div>
    </div>
    <div class="col-md-6">
        <h2>Descrição Terceira</h2>
        <p class="lead">
            Receba o número de horas trabalhadas por uma pessoa e o valor do
salário mínimo e mostre o salário a receber baseado nas seguintes regras:<br />
            A hora trabalhada equivale a 10% do salário mínimo informado;<br />
            O salário bruto é dado pelo número de horas trabalhadas multiplicado pelo
valor de cada hora;<br />
            O imposto pago é de 3%.<br />
            O salário a receber é equivalente ao salário bruto subtraído do imposto.
        </p>
    </div>
</asp:Content>

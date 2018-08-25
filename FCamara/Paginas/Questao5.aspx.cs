using FCamara.Questao5;
using System;

namespace FCamara.Paginas
{
    public partial class Questao5 : System.Web.UI.Page
    {
        static Conta conta;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                conta = new Conta(123, "Ueslei", 100);
            }

            lblNomeCorrentistaResp.InnerText = conta.nomeCorrentista;
            lblNContaResp.InnerText = conta.numeroConta.ToString();
            lblSaldoResp.InnerText = conta.saldo.ToString();
        }

        /// <summary>
        /// Ação do botão Depositar.
        /// </summary>
        /// <param name="sender">object</param>
        /// <param name="e">EventArgs</param>
        protected void btnDepositar_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtDeposito.Value))
            {
                lblSaldoResp.InnerText = conta.deposito(Convert.ToInt32(txtDeposito.Value));
            }
            else
            {
                lblErro.InnerText = "Campo Depósito, não pode ser vazio.";
            }
        }

        /// <summary>
        /// Ação do botão Saque.
        /// </summary>
        /// <param name="sender">object</param>
        /// <param name="e">EventArgs</param>
        protected void btnSaque_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtSacar.Value))
            {
                lblSaldoResp.InnerText = conta.saque(Convert.ToInt32(txtSacar.Value));
            }
            else
            {
                lblErro.InnerText = "Campo Sacar, não pode ser vazio.";
            }
        }

        /// <summary>
        /// Ação do botão Alterar Nome.
        /// </summary>
        /// <param name="sender">object</param>
        /// <param name="e">EventArgs</param>
        protected void btnAlterarNome_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtAlterarNome.Value))
            {
                lblNomeCorrentistaResp.InnerText = conta.alterarNome(txtAlterarNome.Value);
            }
            else
            {
                lblErro.InnerText = "Campo Alterar Nome, não pode ser vazio.";
            }
        }
    }
}
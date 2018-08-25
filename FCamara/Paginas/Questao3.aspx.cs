using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FCamara.Paginas
{
    public partial class Questao3 : System.Web.UI.Page
    {
        const float taxa = 0.1f;
        const float imposto = 0.03f;
        float salarioBruto;
        float valorHora;
        float desconto;
        float salarioLiquido;
        float salarioMinimo;
        float horasTrabalhadas;

        /// <summary>
        /// Ação do botão calcular.
        /// </summary>
        /// <param name="sender">object</param>
        /// <param name="e">EventArgs</param>
        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            if (Validacao())
            {
                valorHora = salarioMinimo * taxa;
                salarioBruto = horasTrabalhadas * valorHora;
                desconto = salarioBruto * imposto;
                salarioLiquido = salarioBruto - desconto;

                lblValorHoraResp.InnerText = string.Format("{0:C}", valorHora);
                lblSalarioBrutoResp.InnerText = string.Format("{0:C}", salarioBruto);
                lblImpostoResp.InnerText = string.Format("{0:C}", desconto);
                lblsalarioLiquidoResp.InnerText = string.Format("{0:C}", salarioLiquido);
            }
        }

        private bool Validacao()
        {
            if (string.IsNullOrEmpty(txthorasTrabalhadas.Value))
            {
                lblErro.InnerText = "Campo Horas Trabalhadas, não pode ser vazio.";
                txthorasTrabalhadas.Focus();
                return false;
            }
            else if (string.IsNullOrEmpty(txtSalarioMinimo.Value))
            {
                lblErro.InnerText = "Campo Salário Minimo, não pode ser vazio.";
                txtSalarioMinimo.Focus();
                return false;
            }

            salarioMinimo = Convert.ToInt16(txtSalarioMinimo.Value);
            horasTrabalhadas = Convert.ToInt32(txthorasTrabalhadas.Value);

            return true;
        }
    }
}
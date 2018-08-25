using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FCamara.Paginas
{
    public partial class Questao2 : System.Web.UI.Page
    {
        string retorno = string.Empty;
        int count = 0;
        static int valorInicial;
        static int valorFinal;

        /// <summary>
        /// Ação do botão calcular.
        /// </summary>
        /// <param name="sender">object</param>
        /// <param name="e">EventArgs</param>
        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            if (Validacao())
            {
                for (int i = valorInicial; i < valorFinal + 1; i++)
                {
                    for (int z = 1; z < i + 1; z++)
                    {
                        if (i % z == 0)
                        {
                            count++;
                        }
                    }

                    if (count == 2)
                    {
                        retorno += i + " ";
                    }
                    count = 0;
                }

                lblRespEntrada.InnerText = valorInicial + " " + valorFinal;
                lblRespSaida.InnerText = retorno;
            }
        }

        /// <summary>
        /// Método reponsavel por validar os campos
        /// </summary>
        /// <returns>Situação do formulário</returns>
        private bool Validacao() {
            if (string.IsNullOrEmpty(txtValorInicial.Value))
            {
                lblErro.InnerText = "Campo Inicial, não pode ser vazio.";
                txtValorInicial.Focus();
                return false;
            }
            else if (Convert.ToInt16(txtValorInicial.Value) == 0) {
                lblErro.InnerText = "Campo Inicial, não pode ser zero.";
                txtValorInicial.Focus();
                return false;
            }else if (string.IsNullOrEmpty(txtValorFinal.Value)) {
                lblErro.InnerText = "Campo Final, não pode vazio.";
                txtValorFinal.Focus();
                return false;
            }else if (Convert.ToInt16(txtValorFinal.Value) < Convert.ToInt16(txtValorInicial.Value))
            {
                lblErro.InnerText = "Campo Final, não pode ser menor que o Inicial.";
                txtValorFinal.Focus();
                return false;
            }

            valorInicial = Convert.ToInt16(txtValorInicial.Value);
            valorFinal = Convert.ToInt16(txtValorFinal.Value);

            lblErro.InnerText = "";
            return true;
        }
    }
}

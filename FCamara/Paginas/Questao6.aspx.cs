using FCamara.Questao6;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FCamara.Paginas
{
    public partial class Questao6 : System.Web.UI.Page
    {
        int ladoA, ladoB;

        /// <summary>
        /// Ação do botão calcular.
        /// </summary>
        /// <param name="sender">object</param>
        /// <param name="e">EventArgs</param>
        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            if (Validacao())
            {
                Retangulo objRetangulo = new Retangulo(ladoA, ladoB);
                lblAreaResp.InnerText = objRetangulo.CalcularArea().ToString();
                lblPerimentroResp.InnerText = objRetangulo.CalcularPerimetro().ToString();
            }
        }

        /// <summary>
        /// Método reponsavel por validar os campos
        /// </summary>
        /// <returns>Situação do formulário</returns>
        private bool Validacao()
        {
            if (string.IsNullOrEmpty(txtLadoA.Value))
            {
                lblErro.InnerText = "Lado A, não pode ser vazio.";
                txtLadoA.Focus();
                return false;
            }
            else if (string.IsNullOrEmpty(txtLadoB.Value))
            {
                lblErro.InnerText = "Lado B, não pode ser vazio.";
                txtLadoB.Focus();
                return false;
            }

            ladoA = Convert.ToInt32(txtLadoA.Value);
            ladoB = Convert.ToInt32(txtLadoB.Value);
            return true;
        }
    }
}
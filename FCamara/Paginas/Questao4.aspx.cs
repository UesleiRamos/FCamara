using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FCamara.Paginas
{
    public partial class Questao4 : System.Web.UI.Page
    {

        int tamanhoArea;
        int qtdLatas;
        float precoTotal;
        const int valorLata = 80;
        const int capacidadeLitro = 54;

        /// <summary>
        /// Ação do botão calcular.
        /// </summary>
        /// <param name="sender">object</param>
        /// <param name="e">EventArgs</param>
        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            tamanhoArea = Convert.ToInt32(txtTamanhoArea.Value);
            qtdLatas = tamanhoArea % capacidadeLitro == 0 ? tamanhoArea / capacidadeLitro : Convert.ToInt32(tamanhoArea / capacidadeLitro) + 1;
            precoTotal = qtdLatas * valorLata;
            lblqtdLatasResp.InnerText = qtdLatas.ToString();
            lblValorTotalResp.InnerText = string.Format("{0:C}", precoTotal);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FCamara.Paginas
{
    public partial class Questao1 : System.Web.UI.Page
    {
        float taxa = 0.015f;
        double salarioBase = 1000;
        double novoSalario;
        static int anoInicioAumento = 2006;
        static int AnoAtual = DateTime.Now.Year;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.CalcularSalarioAtual();
        }

        /// <summary>
        /// Método responsável por realizar o calculo do salário
        /// </summary>
        private void CalcularSalarioAtual()
        {
            novoSalario = salarioBase + (salarioBase * taxa);
            for (int anos = anoInicioAumento; anos <= AnoAtual; anos++)
            {
                taxa = taxa * 2;
                novoSalario = (novoSalario * taxa) + novoSalario;
            }

            salario2018.InnerText = string.Format("{0:C}", novoSalario);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FCamara.Questao6
{
    public class Retangulo
    {
        private int ladoA { get; set; }
        private int ladoB { get; set; }

        public Retangulo(int ladoA, int ladoB)
        {
            this.ladoA = ladoA;
            this.ladoB = ladoB;
        }

        public void MudarValoresLados()
        {
            int aux;
            aux = this.ladoA;
            this.ladoA = this.ladoB;
            this.ladoB = aux;
        }

        public int CalcularArea()
        {
            return this.ladoA * this.ladoB;
        }
        public int CalcularPerimetro()
        {
            return  2 * (this.ladoA * this.ladoB);
        }
    }
}
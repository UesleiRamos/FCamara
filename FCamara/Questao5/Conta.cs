using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FCamara.Questao5
{
    public class Conta
    {
        public int numeroConta { get; set; }
        public string nomeCorrentista { get; set; }
        public float saldo { get; set; }

        public Conta(int numeroConta, string nomeCorrentista, float saldo = 0)
        {
            this.numeroConta = numeroConta;
            this.nomeCorrentista = nomeCorrentista;
            this.saldo = saldo;
        }

        public string alterarNome(string nome)
        {
            return this.nomeCorrentista = nome;
        }

        public string deposito(float valor)
        {
            saldo = saldo + valor;
            return saldo.ToString();
        }

        public string saque(float valor)
        {
            saldo = saldo - valor;
            return saldo.ToString();
        }
    }
}
using OpenQA.Selenium;
using OpenQA.Selenium.Support.UI;
using System;

namespace TESTE_SITE_WEB.Pages
{
    public class FormularioPage
    {
        private readonly IWebDriver driver;

        public FormularioPage(IWebDriver driver)
        {
            this.driver = driver;
        }

        public void PreencherNome(string nome)
        {
            driver.FindElement(By.Id("nome")).Clear();
            driver.FindElement(By.Id("nome")).SendKeys(nome);
        }

        public void PreencherEndereco(string endereco)
        {
            driver.FindElement(By.Id("endereco")).Clear();
            driver.FindElement(By.Id("endereco")).SendKeys(endereco);
        }

        public void PreencherCidade(string cidade)
        {
            driver.FindElement(By.Id("cidade")).Clear();
            driver.FindElement(By.Id("cidade")).SendKeys(cidade);
        }

        public void SelecionarEstado(string estado)
        {
            var dropdown = driver.FindElement(By.Id("estado"));
            var selectElement = new SelectElement(dropdown);
            selectElement.SelectByValue(estado);
        }

        public void PreencherCEP(string cep)
        {
            driver.FindElement(By.Id("cep")).Clear();
            driver.FindElement(By.Id("cep")).SendKeys(cep);
        }

        public void ClicarEnviar()
        {
            driver.FindElement(By.Id("btnEnviar")).Click();
        }

        public string ObterMensagemResultado()
        {
            return driver.FindElement(By.Id("mensagemResultado")).Text;
        }
    }
}
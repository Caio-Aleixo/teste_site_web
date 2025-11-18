using NUnit.Framework;
using OpenQA.Selenium;
using TechTalk.SpecFlow;
using TESTE_SITE_WEB.Drivers;
using TESTE_SITE_WEB.Pages;

namespace TESTE_SITE_WEB.StepDefinitions
{
    [Binding]
    public class FormularioSteps
    {
        private IWebDriver driver;
        private FormularioPage formularioPage;

        [BeforeScenario]
        public void Setup()
        {
            driver = WebDriverFactory.Create();
            formularioPage = new FormularioPage(driver);
        }

        [AfterScenario]
        public void TearDown()
        {
            driver.Quit();
        }

        [Dado(@"que o sistema está funcional e o usuário acessa o formulário de cadastro")]
        public void DadoQueUsuarioAcessaFormulario()
        {
            driver.Navigate().GoToUrl("https://test-automation-practice.com.br/forms");
        }

        [Quando(@"ele digita um (.*) no campo ""Endereço""")]
        public void QuandoEleDigitaEndereco(string endereco)
        {
            formularioPage.PreencherEndereco(endereco);
        }

        [Quando(@"ele digita uma (.*) no campo ""Cidade""")]
        public void QuandoEleDigitaCidade(string cidade)
        {
            formularioPage.PreencherCidade(cidade);
        }

        [Quando(@"ele seleciona a opção (.*) no campo ""Estado""")]
        public void QuandoEleSelecionaEstado(string estado)
        {
            formularioPage.SelecionarEstado(estado);
        }

        [Quando(@"ele digita um (.*) no campo ""CEP""")]
        public void QuandoEleDigitaCEP(string cep)
        {
            formularioPage.PreencherCEP(cep);
        }

        [Entao(@"deve ocorrer (.*)")]
        public void EntaoDeveOcorrer(string resultadoEsperado)
        {
            var resultado = formularioPage.ObterMensagemResultado();
            Assert.AreEqual(resultadoEsperado, resultado);
        }
    }
}
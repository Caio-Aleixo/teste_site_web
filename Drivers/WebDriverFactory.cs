using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;

namespace TESTE_SITE_WEB.Drivers
{
    public static class WebDriverFactory
    {
        public static IWebDriver Create()
        {
            var options = new ChromeOptions();
            options.AddArgument("--start-maximized");
            return new ChromeDriver(options);
        }
    }
}
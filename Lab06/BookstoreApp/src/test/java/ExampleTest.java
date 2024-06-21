import static org.junit.jupiter.api.Assertions.*;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.By;

import java.time.Duration;
import java.util.concurrent.TimeUnit;

class ExampleTest {
  WebDriver driver;
  @BeforeEach
  void setUp() {
    driver = new FirefoxDriver();
    WebDriverManager.firefoxdriver().setup();

    driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
    driver.get("http://localhost:8080/");
    WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(60));
    //wait.until(ExpectedConditions.visibilityOfElementLocatedby(By.id("title")));
  }


  @Test
  void makingSureJUnitConfigured() {
    assertEquals(1, 1);
  }

  @Test
  void selenium_tc_1() {

      WebElement username = driver.findElement(By.name("username"));
      WebElement password = driver.findElement(By.name("password"));
      username.sendKeys("admin");
      password.sendKeys("password");

      WebElement sign_in = driver.findElement(By.id("loginBtn"));
      sign_in.click();

      WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(60));

      String expectedUrl = "http://sampleURL.com/login";
      String actualUrl = driver.getCurrentUrl();

      assertEquals(expectedUrl, actualUrl);

  }
  @Test
  void makingSureJUnitCond() {
    assertEquals(1, 1);
  }
}
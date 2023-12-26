package definitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class AnnaVStepDefs {
    @Given("AV launch {string}")
    public void avLaunch(String sAppVersion) {
        switch (sAppVersion) {
            case "MedicenterV1":
                getDriver().get("https://medicenter-qa1.vercel.app/");
                break;
            case "MedicenterV2":
                getDriver().get("https://medicenter-qa2.vercel.app/");
                break;
            default:
                System.out.println("No URL found");
        }
    }

    @Then("AV page title is {string}")
    public void avPageTitleIs(String sPageName) {
        assertThat(getDriver().getTitle()).contains(sPageName);
    }
}

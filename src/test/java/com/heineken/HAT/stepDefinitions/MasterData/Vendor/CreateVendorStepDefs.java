package com.heineken.HAT.stepDefinitions.MasterData.Vendor;

import com.heineken.HAT.cucumberUtil.TestContext;
import com.heineken.HAT.pageObjects.CreateVendorPage;
import com.heineken.HAT.pageObjects.CreateVendorRequestPage;
import com.heineken.HAT.pageObjects.LoginPage;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;


/**
 * Created by mohana on 5/15/2019.
 */
public class CreateVendorStepDefs {

    public TestContext testContext;
    public LoginPage loginPage;
    public CreateVendorPage createVendorPage;
    public CreateVendorRequestPage createVendorRequestPage;

    public CreateVendorStepDefs(TestContext context){
        testContext=context;
        loginPage = testContext.getPageObjectManager().getLoginPage();
        createVendorPage=testContext.getPageObjectManager().getCreateVendorPage();
        createVendorRequestPage=testContext.getPageObjectManager().getCreateVendorRequestPage();
    }


    @Given("^Login as LDR Vendor$")
    public void login_as_LDR_Vendor(){
        loginPage.login("MDVM_BE01_LDR", "Heineken01");
    }

    @Then("^select option to create vendor$")
    public void select_option_to_create_vendor() {
        createVendorPage.selectVendorOptionToCreate();
    }

    @And("^disable local data$")
    public void disable_local_data() {
        createVendorRequestPage.clickLocalDataTab();
        createVendorRequestPage.clickFlashButton();
    }


}

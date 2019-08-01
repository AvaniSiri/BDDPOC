package com.heineken.HAT.stepDefinitions.MasterData.Material;

import com.heineken.HAT.cucumberUtil.TestContext;
import com.heineken.HAT.pageObjects.LoginPage;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;


/**
 * Created by mohana on 5/15/2019.
 */
public class CreateMaterialStepDefs {

    public TestContext testContext;
    public LoginPage loginPage;

    public CreateMaterialStepDefs(TestContext context){
        testContext=context;
        loginPage = testContext.getPageObjectManager().getLoginPage();
    }


}

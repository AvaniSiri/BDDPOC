@tag
Feature: Create Material With Questionare Global and Local JDE

  @tag1
  Scenario Outline: Create Material With Questionnaire Global and Local JDE
      Given User logged in as Local Data Requester <MDMM_Opcos_LDR>
      When User wants to create material for material type "Production | Raw material, ingredient or processing aid"
      Then Material should be created for material type in JDE
      And user perform process information check
      When User logged in as Local Data Specialist <MDMM_opcos_LDS>
      And LDS review and approve the request
      And user perform process information check
      Then User logged in as Global Data Administrator <MDM_GDA>
      And GDA review and approve the request
      And user perform process information check
      Then LDR logged in and checking for syndication completion
        Examples:
        | MDMM_Opcos_LDR | MDMM_opcos_LDS | MDM_GDA |
        | MDMM_SG04_LDR  | MDMM_SG04_LDS  | MDM_GDA |


  Scenario Outline: Create Material with Questionnaire only Global and local with Rejections and approve JDE

      Given User logged in as Local Data Requester <MDMM_Opcos_LDR>
      When User wants to create material for material type "Production | Raw material, ingredient or processing aid"
      Then Material should be created for material type in JDE
      And user perform process information check
      When User logged in as Local Data Specialist <MDMM_opcos_LDS>
      And LDS review and reject the request
      And user perform process information check
      Then User logged in as Global Data Administrator <MDM_GDA>
      And GDA review and reject the request
      And user perform process information check
      Then LDR logged in and resubmit the request
      And user perform process information check
      When User logged in as Local Data Specialist <MDMM_opcos_LDS>
      And LDS review and approve the request
      And user perform process information check
      Then User logged in as Global Data Administrator <MDM_GDA>
      And GDA review and approve the request
      And user perform process information check
      Then LDR logged in and checking for syndication completion
        Examples:
          | MDMM_Opcos_LDR | MDMM_opcos_LDS | MDM_GDA |
          | MDMM_SG04_LDR  | MDMM_SG04_LDS  | MDM_GDA |
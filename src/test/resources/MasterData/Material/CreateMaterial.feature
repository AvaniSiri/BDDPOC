Feature: Create Material Features Test
  Background: Verifying Create Material scenarios

  Scenario Outline: Create Vendor and submit Global Request
    Given User opened the browser and url "<browser>"
    When Login as LDR Vendor direct environment
    Then select option to create vendor
    And disable local data
    And disable bank data
    Then fill Vendor Global data and validate
    And verify Duplicate check and submit Global request
    Then perform Process Information check
    And close session current user
    Then User opened the browser and url "<browser>"
    When Login as GDA direct environment
    Then search for RequestID
    And GDA open RequestID and perform validate and Duplicate check and Approve Global Request
    Then perform Process Information check
    And verify GlobalID
  Examples:
    |browser |
    |IE|
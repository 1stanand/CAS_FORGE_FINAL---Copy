@Epic-CPR
@PQMStory
@AuthoredBy-aryan.jain
@ImplementedBy-aryan.jain
@Islamic
@Release

Feature: Cooling Off Period Master

  Background:
    Given user is on CAS Login Page
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


    # PQM-1_CAS-197552
  #FeatureID-ACAUTOCAS-15335
Scenario: ACAUTOCAS-15681: Cooling off period check box should be not checked in scheme master
    And user navigate to scheme master
    When user creates new scheme
    Then cooling off period check box should be not checked

    # PQM-2_CAS-197552
  #FeatureID-ACAUTOCAS-15335
Scenario: ACAUTOCAS-15682: Scheme is created successfully without selecting cooling off period
    And user navigate to scheme master
    And user creates new scheme
    And user reads data from the excel file "disbursal.xlsx" under sheet "cooling_off_period" and row 0
    When user fills the data in scheme master
    And maker click on save and request approval
    Then Success notification should come for approval without any validation


    # PQM-3_CAS-197552
  #FeatureID-ACAUTOCAS-15335
Scenario: ACAUTOCAS-15683:Create a scheme in which cooling off check box is checked
    And user navigate to scheme master
    And user creates new scheme
    And user reads data from the excel file "disbursal.xlsx" under sheet "cooling_off_period" and row 0
    When user fills the data in scheme master
    And user click on cooling off period in scheme
    And maker click on save and request approval
    Then Success notification should come for approval without any validation


    # PQM-6_CAS-197552
    # PMG-4_CAS-197552
  #FeatureID-ACAUTOCAS-15335
Scenario Outline: ACAUTOCAS-15684: Cooling of period generic parameter should be visible
    And user navigate to seed data master
    When user search the "<Value>" in seed data master
    Then "<Value>" should be present on seed data master
    Examples:
      | Value            |
      | CoolingOffPeriod |

    # PMG-1_CAS-197552
  #FeatureID-ACAUTOCAS-15335
Scenario: ACAUTOCAS-15685: Cooling off field is visible in scheme master
    And user navigate to scheme master
    When user creates new scheme
    Then cooling off period check box is visible in the scheme master

    # PMG-2_CAS-197552
  #FeatureID-ACAUTOCAS-15335
Scenario: ACAUTOCAS-15686: Verify cooling off field is not mandatory in creating a scheme
    And user navigate to scheme master
    When user creates new scheme
    Then cooling off period check box is non mandatory in the scheme master

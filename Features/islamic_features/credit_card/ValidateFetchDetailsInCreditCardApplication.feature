@Epic-Credit_Card
@PQMStory
@AuthoredBy-manish.yadav2
@ReviewedBy-shivam.agarwal
@ImplementedBy-manish.yadav2
@Islamic
@Release

#Story-CAS-203051
Feature: validate Fetch Details (getExternalCreditCardBasicDetails) in Credit Card Application

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  # PQM-14_CAS-203051
  #FeatureID-ACAUTOCAS-17199
Scenario Outline: ACAUTOCAS-17909: validate error for Fetch Details without filling required fields for <ProductType>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    When user create new application for "<ProductType>"
    And user navigates to sourcing details tab of "<ProductType>"
    And user fills request type of credit card application as "<RequestType>"
    And user checks External Search checkbox in credit card application
    And user clicks on Fetch Details button
    Then user should get notification error message

    Examples:
      | ProductType             | RequestType                 | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Credit Card Application | New Credit Card Application | sourcing_details.xlsx | home                 | 296                         |
      | Credit Card Application | Card Limit Update           | sourcing_details.xlsx | home                 | 296                         |

  # PQM-16_CAS-203051
  #FeatureID-ACAUTOCAS-17199
Scenario Outline: ACAUTOCAS-17910: validate credit card Details should be fetched successfully from getExternalCreditCardBasicDetails for <ProductType>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    When user create new application for "<ProductType>"
    And user navigates to sourcing details tab of "<ProductType>"
    And user fills request type of credit card application as "<RequestType>"
    And user checks External Search checkbox in credit card application
    And user fills customer name with date of birth in sourcing details of credit card application
    And user clicks on Fetch Details button
    Then Data fetched successfully notification should be displayed

    Examples:
      | ProductType             | RequestType                 | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Credit Card Application | New Credit Card Application | sourcing_details.xlsx | home                 | 295                         |
      | Credit Card Application | Card Limit Update           | sourcing_details.xlsx | home                 | 295                         |

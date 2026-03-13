@Epic-Charges
@AuthoredBy-piyush.agnihotri
@ImplementedBy-piyush.agnihotri
@APICenter
@PQMStory
@Order
@Release

#Story-CAS-118696
Feature: Validate Tags for Charges in API Documentation


  #PQM-07_CAS-118696
  Scenario Outline: validate <Parameter> should not be present in request json of <API_Name> in API center at <ProductType> LogicalID <LogicalID>
    Given user is on CAS Login Page
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user starts creating application of logical id "<LogicalID>"
    And user clicks on Documentation tab
    When user opens "<API_Name>" from documentation of API center
    Then "<Parameter>" should not be present in "request" json in API center
    Examples:
      | LogicalID                  | API_Name    | Parameter |
      | API_CAS_118696_CAS_Appl_01 | CAS_Appl_01 | Periodic  |
      | API_CAS_118696_CAS_Appl_02 | CAS_Appl_02 | Periodic  |


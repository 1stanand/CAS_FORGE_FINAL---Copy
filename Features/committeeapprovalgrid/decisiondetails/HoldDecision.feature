@Epic-Committee_Approval
@AuthoredBy-prachi
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-


Feature: Hold decision

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user is on the Committee Approval screen

  Scenario: user validate Decision Details Accordion
    When user expands Decision Details Section
    Then Decision Details section should be expanded

  Scenario: Decision Details all fields is in view mode.
    When user view the Decision Details feilds
    Then all the fields should be in view mode in Decision Details

  Scenario:user validate Decision Details Accordion when no decision is taken at underwriter .
    When user view the Decision Details feilds
    Then Decision under Decision details accordion should be Empty.


  Scenario: user validate Decision Details Accordion when decision taken as Hold underwriter.
    When user view the Decision Details feilds
    Then Decision under Decision details accordion should be Hold.


  Scenario: User open the application and view Decision Details fields when Decision taken is Hold at credit approval stage
    When user view the Decision Details accordian at committee approval when Decision taken is Hold at credit approval stage
    Then user should be able to view the fields:
      | FieldName                         | Mandatory |
      | Decision                          | Yes       |
      | Reason                            | Yes       |
      | Description                       | Yes       |
      | Sanction Date                     | Yes       |
      | Sanction Expiry Date              | No        |
      | Loan Expiry Date                  | No        |
      | Decision Comments                 | No        |
      | Product                           | No        |
      | Scheme                            | No        |
      | Requested Amount                  | No        |
      | Requested Tenure                  | No        |
      | Sanctioned interest               | No        |
      | Sanctioned Amount                 | No        |
      | Sanction Tenure(Months)           | No        |
      | Policy Rate                       | No        |
      | Product Discount                  | No        |
      | Maximum Sanctioned Amount         | Yes       |
      | Maximum Sanctioned Tenure(Months) | Yes       |
      | Total Discount                    | No        |
      | Package Discount                  | No        |
      | Raised Deviations                 | No        |
      | Special Condition                 | No        |



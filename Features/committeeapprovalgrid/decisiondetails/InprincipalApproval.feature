@Epic-Committee_Approval
@AuthoredBy-prachi
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-


Feature: Inprincipal Approval

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user is on the Committee Approval screen
 #FeatureID-ACAUTOCAS-11058
  Scenario: user validate Decision Details Accordion
    When user expands Decision Details Section
    Then Decision Details section should be expanded
 #FeatureID-ACAUTOCAS-11058
  Scenario: Decision Details all fields is in view mode.
    When user view the Decision Details feilds
    Then all the fields should be in view mode in Decision Details
 #FeatureID-ACAUTOCAS-11058
  Scenario:user validate Decision Details Accordion when no decision is taken at underwriter .
    When user view the Decision Details feilds
    Then Decision under Decision details accordion should be Empty.

 #FeatureID-ACAUTOCAS-11058
  Scenario: user validate Decision Details Accordion when decision taken as Inprincipal Approval underwriter.
    When user view the Decision Details feilds
    Then Decision under Decision details accordion should be Inprincipal Approval.

 #FeatureID-ACAUTOCAS-11058
  Scenario Outline: User open the application and validate <FieldName> when decision taken as approve at credit approval stage
    When user view the Decision Details accordian at committee approval when Decision taken as approve at credit approval stage
    Then user should be able to see field "<FieldName>" marked mandatory as "<Mandatory>":
    Examples:
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

 #FeatureID-ACAUTOCAS-11058
  Scenario Outline: Decision taken as Inprincipal at credit approval
    And user view the Decision at Decision Details in committee approval screen
    When user views data from workbook "<SourceFile>" under sheet name in "<SheetName>" and row number as "<rownum>" accordingly
    Then user should be able to view the fields with provided values

    Examples:
      | SourceFile          | SheetName | rownum |
      | DecisionDetails.xls | Approve   | 0      |
      | DecisionDetails.xls | Approve   | 1      |
      | DecisionDetails.xls | Approve   | 2      |
      | DecisionDetails.xls | Approve   | 3      |
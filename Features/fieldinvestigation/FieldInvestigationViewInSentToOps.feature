@Epic-Field_Investigation
@AuthoredBy-vipin.kishor
@ReviewedBy-
@ImplementedBy-pallavi.singh
@TechReviewedBy-
@Release3
@Reconciled
@ReviewedByDEV
Feature:Field investigation view in sent to ops

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #FeatureID-ACAUTOCAS-499
  Scenario Outline: ACAUTOCAS-6075: View Waive Off Field Investigation details in sent to ops
    And user opens an application at sent to ops grid
#    And user open an application
    When user open FIC details tab
    Then "<Field>" of the open application should be display
    Examples:
      | Field                             |
      | Waive Off Field Investigation for |
      | Waive-off comments of             |

  #FeatureID-ACAUTOCAS-499
  Scenario Outline: ACAUTOCAS-6076: View Field investigation details in sent to ops
    And user opens an application at sent to ops grid
#    And user open an application
    When user open FIC details tab
    Then "<Field>" of the open application should be display
    Examples:
      | Field                |
      | Applicant Name       |
      | Applicant Type       |
      | Verification Done On |
      | Verification Type    |
      | Verification Agency  |
      | Verification Agent   |
      | WaiveOff Reason      |
      | WaiveOff Desc        |
      | Result               |
       #Decision
      | Decision             |
      | Reason               |
      | Reason Description   |
      | Description Comment  |

  #FeatureID-ACAUTOCAS-499
  Scenario Outline: ACAUTOCAS-6077: View FI history in sent to ops
    And user opens an application at sent to ops grid
#    And user open an application
    When user open FIC details tab
    And user view FI history
    Then "<HistoryFields>" of the open application should be display in view history
    Examples:
      | HistoryFields        |
      | Applicant Name       |
      | Applicant Type       |
      | Verification Done On |
      | Verification Type    |
      | Verification Agency  |
      | Verification Agent   |
      | WaiveOff Reason      |
      | WaiveOff Desc        |
      | Result               |

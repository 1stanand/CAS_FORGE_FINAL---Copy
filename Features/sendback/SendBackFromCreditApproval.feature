@Epic-Send_Back
@ReviewedBy-None
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ImplementedBy-yash.sharma
@Release3
@ReviewedByDEV
Feature:Send Back From Credit Approval

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

    #FeatureID-ACAUTOCAS-5335
  #it is configured in the workflow master that user can send back the application from "<Current_Stage>" to all previous stages
  Scenario Outline: ACAUTOCAS-5369: Send back the <Loan_Type> application from credit approval to <var>
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_sendBack>" and row <Row_Num>
    When user opens an application at "<creditApproval_var>" stage from application grid
    And user send back above application to "<var>" stage
    Then above application is on "<var>" stage
    Examples:
      | var              | Loan_Type     | creditApproval_var        | MoreActionsWB     | MoreActions_sendBack | Row_Num | Current_Stage   |
      | LEAD DETAILS     | Home Loan     | credit approval_indiv_hl  | more_actions.xlsx | send_back            | 0       | credit approval |
      | Login Acceptance | Home Loan     | credit approval_hl        | more_actions.xlsx | send_back            | 6       | credit approval |
      | Kyc              | Home Loan     | credit approval_hl        | more_actions.xlsx | send_back            | 5       | credit approval |
      | DDE              | Home Loan     | credit approval_hl        | more_actions.xlsx | send_back            | 7       | credit approval |
      | Recommendation   | Home Loan     | credit approval_hl        | more_actions.xlsx | send_back            | 8       | credit approval |
      | LEAD DETAILS     | Auto Loan     | credit approval_indiv_mal | more_actions.xlsx | send_back            | 0       | credit approval |
      | Login Acceptance | Auto Loan     | credit approval_auto      | more_actions.xlsx | send_back            | 6       | credit approval |
      | Kyc              | Auto Loan     | credit approval_auto      | more_actions.xlsx | send_back            | 5       | credit approval |
      | DDE              | Auto Loan     | credit approval_auto      | more_actions.xlsx | send_back            | 7       | credit approval |
      | Recommendation   | Auto Loan     | credit approval_auto      | more_actions.xlsx | send_back            | 8       | credit approval |
      | LEAD DETAILS     | Personal Loan | credit approval_indiv_pl  | more_actions.xlsx | send_back            | 0       | credit approval |
      | Login Acceptance | Personal Loan | credit approval           | more_actions.xlsx | send_back            | 6       | credit approval |
      | Kyc              | Personal Loan | credit approval           | more_actions.xlsx | send_back            | 5       | credit approval |
      | DDE              | Personal Loan | credit approval           | more_actions.xlsx | send_back            | 7       | credit approval |
      | Recommendation   | Personal Loan | credit approval           | more_actions.xlsx | send_back            | 8       | credit approval |

    #FeatureID-ACAUTOCAS-5335
    #it is configured in the workflow master that user can only be sent back the "<Loan_Type>" application from "<Current_Stage>" to immediately preceding stages
  Scenario Outline: ACAUTOCAS-5370: <Loan_Type> application can only be sent back from credit approval to the immediately preceding stage
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_sendBack>" and row <Row_Num>
    When user opens an application at "<creditApproval_var>" stage from application grid
    And user send back above application to immediate preceding stage
    Then above application is on immediate preceding stage which is "<Prev_Stage>"
    Examples:
      | Loan_Type     | creditApproval_var        | Prev_Stage   | MoreActionsWB     | MoreActions_sendBack | Row_Num | Current_Stage   |
      | Home Loan     | credit approval_indiv_pl  | LEAD DETAILS | more_actions.xlsx | send_back            | 0       | credit approval |
      | Auto Loan     | credit approval_indiv_mal | LEAD DETAILS | more_actions.xlsx | send_back            | 0       | credit approval |
      | Personal Loan | credit approval_indiv_hl  | LEAD DETAILS | more_actions.xlsx | send_back            | 0       | credit approval |


    #FeatureID-ACAUTOCAS-,ACAUTOCAS-313
  Scenario Outline: ACAUTOCAS-5371: <Loan_Type> application can not be sent back from credit approval to any stage except immediately preceding stage
    And it is configured in the workflow master that user can only be sent back the "<Loan_Type>" application from credit approval to immediately preceding stages
    When user selects the application of credit approval stage
    And user navigates send back screen
    Then no stage is available to send back application except immediately preceding stage
    Examples:
      | Loan_Type     |
      | Home Loan     |
      | Auto Loan     |
      | Personal Loan |

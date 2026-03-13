@Epic-Send_Back
@ReviewedBy-None
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ImplementedBy-manish.yadav2
@ReviewedByDEV
@Reconciled

Feature:Send Back From Post Approval

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  @Release3
  #FeatureID-ACAUTOCAS-5398
  Scenario Outline: ACAUTOCAS-5516: Send back the <Loan_Type> application from post approval to <var>
    When user opens an application at "<postApproval_var>" stage from application grid
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_sendBack>" and row <Row_Num>
    And user send back above application to "<var>" stage
    Then above application is on "<var>" stage
    Examples:
      | var              | Loan_Type     | postApproval_var | Row_Num | MoreActionsWB     | MoreActions_sendBack | Current_Stage |
      | Lead Details     | Home Loan     | post approval    | 0       | more_actions.xlsx | send_back            | post approval |
      | Login Acceptance | Home Loan     | post approval    | 6       | more_actions.xlsx | send_back            | post approval |
      | Kyc              | Home Loan     | post approval    | 5       | more_actions.xlsx | send_back            | post approval |
      | DDE              | Home Loan     | post approval    | 7       | more_actions.xlsx | send_back            | post approval |
      | Recommendation   | Home Loan     | post approval    | 8       | more_actions.xlsx | send_back            | post approval |
      | Credit Approval  | Home Loan     | post approval    | 9       | more_actions.xlsx | send_back            | post approval |
      | Lead Details     | Auto Loan     | post approval    | 0       | more_actions.xlsx | send_back            | post approval |
      | Login Acceptance | Auto Loan     | post approval    | 6       | more_actions.xlsx | send_back            | post approval |
      | Kyc              | Auto Loan     | post approval    | 5       | more_actions.xlsx | send_back            | post approval |
      | DDE              | Auto Loan     | post approval    | 7       | more_actions.xlsx | send_back            | post approval |
      | Recommendation   | Auto Loan     | post approval    | 8       | more_actions.xlsx | send_back            | post approval |
      | Credit Approval  | Auto Loan     | post approval    | 9       | more_actions.xlsx | send_back            | post approval |
      | Lead Details     | Personal Loan | post approval    | 0       | more_actions.xlsx | send_back            | post approval |
      | Login Acceptance | Personal Loan | post approval    | 6       | more_actions.xlsx | send_back            | post approval |
      | Kyc              | Personal Loan | post approval    | 5       | more_actions.xlsx | send_back            | post approval |
      | DDE              | Personal Loan | post approval    | 7       | more_actions.xlsx | send_back            | post approval |
      | Recommendation   | Personal Loan | post approval    | 8       | more_actions.xlsx | send_back            | post approval |
      | Credit Approval  | Personal Loan | post approval    | 9       | more_actions.xlsx | send_back            | post approval |

  @Release3
  #FeatureID-ACAUTOCAS-5398
  Scenario Outline: ACAUTOCAS-5400: <Loan_Type> application can only be sent back from post approval to the immediately preceding stage
    When user opens an application at "<Post_Approval_Var>" stage from application grid
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_sendBack>" and row <Row_Num>
    And user send back above application to immediate preceding stage
    Then above application is on immediate preceding stage which is "<Prev_Stage>"
    Examples:
      | Loan_Type     | MoreActionsWB     | MoreActions_sendBack | Row_Num | Prev_Stage      | Current_Stage | Post_Approval_Var |
      | Home Loan     | more_actions.xlsx | send_back            | 9       | CREDIT APPROVAL | post approval | post approval     |
      | Auto Loan     | more_actions.xlsx | send_back            | 9       | CREDIT APPROVAL | post approval | post approval     |
      | Personal Loan | more_actions.xlsx | send_back            | 9       | CREDIT APPROVAL | post approval | post approval     |

  @NotImplemented
            #FeatureID-ACAUTOCAS-316,ACAUTOCAS-313
  Scenario Outline: ACAUTOCAS-5401: <Loan_Type> application can not be sent back from post approval to any stage except immediately preceding stage
    And it is configured in the workflow master that user can only be sent back the "<Loan_Type>" application from credit approval to immediately preceding stages
    When user selects the application of post approval stage
    And user navigates send back screen
    Then no stage is available to send back application except immediately preceding stage
    Examples:
      | Loan_Type     |
      | Home Loan     |
      | Auto Loan     |
      | Personal Loan |
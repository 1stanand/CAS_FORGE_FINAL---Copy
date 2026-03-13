@Epic-Send_Back
@ReviewedBy-None
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ImplementedBy-manish.yadav2
@ReviewedByDEV
@Reconciled

Feature:Send Back From DDE

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  @Release3
   #FeatureID-ACAUTOCAS-5334
  Scenario Outline: ACAUTOCAS-5366: Send back the <Loan_Type> application from dde to <var>
    When user opens an application at "<dde_var>" stage from application grid
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_sendBack>" and row <Row_Num>
    And user send back above application to "<var>" stage
    Then above application is on "<var>" stage
    Examples:
      | var              | Loan_Type     | dde_var  | Row_Num | MoreActionsWB     | MoreActions_sendBack | Current_Stage |
      | Kyc              | Home Loan     | dde_hl   | 5       | more_actions.xlsx | send_back            | dde           |
      | Login Acceptance | Home Loan     | dde_hl   | 6       | more_actions.xlsx | send_back            | dde           |
      | Lead Details     | Home Loan     | dde_hl   | 0       | more_actions.xlsx | send_back            | dde           |
      | Kyc              | Auto Loan     | dde_auto | 5       | more_actions.xlsx | send_back            | dde           |
      | Login Acceptance | Auto Loan     | dde_auto | 6       | more_actions.xlsx | send_back            | dde           |
      | Lead Details     | Auto Loan     | dde_auto | 0       | more_actions.xlsx | send_back            | dde           |
      | Kyc              | Personal Loan | dde      | 5       | more_actions.xlsx | send_back            | dde           |
      | Login Acceptance | Personal Loan | dde      | 6       | more_actions.xlsx | send_back            | dde           |
      | Lead Details     | Personal Loan | dde      | 0       | more_actions.xlsx | send_back            | dde           |

  @Release3
    #FeatureID-ACAUTOCAS-5334
  Scenario Outline: ACAUTOCAS-5367: <Loan_Type> application can only be sent back from dde to the immediately preceding stage
    When user opens an application at "<dde_var>" stage from application grid
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_sendBack>" and row <Row_Num>
    And user send back above application to immediate preceding stage
    Then above application is on immediate preceding stage which is "<Prev_Stage>"
    Examples:
      | Loan_Type     | dde_var  | Prev_Stage | MoreActionsWB     | MoreActions_sendBack | Row_Num | Current_Stage |
      | Home Loan     | dde_hl   | FII        | more_actions.xlsx | send_back            | 5       | dde           |
      | Auto Loan     | dde_auto | FII        | more_actions.xlsx | send_back            | 5       | dde           |
      | Personal Loan | dde      | FII        | more_actions.xlsx | send_back            | 5       | dde           |

    @NotImplemented
        #FeatureID-ACAUTOCAS-314,ACAUTOCAS-313
  Scenario Outline: ACAUTOCAS-5368: <Loan_Type> application can not be sent back from dde to any stage except immediately preceding stage
    And it is configured in the workflow master that user can only be sent back the "<Loan_Type>" application from credit approval to immediately preceding stages
    When user selects the application of dde stage
    And user navigates send back screen
    Then no stage is available to send back application except immediately preceding stage
    Examples:
      | Loan_Type     |
      | Home Loan     |
      | Auto Loan     |
      | Personal Loan |
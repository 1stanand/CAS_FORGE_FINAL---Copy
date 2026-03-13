@Epic-Recommendation
@ReviewedBy-tushar.chauhan
@Release3
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ImplementedBy-aniket.tripathi
@ReviewedByDEV
Feature:Generate CAM Report

  #FeatureID-ACAUTOCAS-5494
  Scenario Outline: ACAUTOCAS-5504: Generate CAM report from <Loan_Type> application at <Stage> stage
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    When user click on CAM report at "<Stage>"
    And user reads data from the excel file "cam.xlsx" under sheet "cam_report" and row 0
    Then CAM report is visible
    Examples:
      | Loan_Type     | Stage                | Var_Stage                      |
      | Home Loan     | Credit Approval      | credit approval_hl             |
      | Home Loan     | Reconsideration      | reconsideration_individual_hl  |
      | Home Loan     | Post Approval        | post approval_hl               |
      | Home Loan     | Disbursal Initiation | disbursal_hl                   |
      | Home Loan     | Disbursal Author     | disbursal_indiv_initiated_hl   |
      | Personal Loan | Credit Approval      | credit approval                |
      | Personal Loan | Reconsideration      | reconsideration_individual_pl  |
      | Personal Loan | Post Approval        | post approval                  |
      | Personal Loan | Disbursal Initiation | disbursal                      |
      | Personal Loan | Disbursal Author     | disbursal_indiv_initiated_pl   |
      | Auto Loan     | Credit Approval      | credit approval_mal            |
      | Auto Loan     | Reconsideration      | reconsideration_individual_mal |
      | Auto Loan     | Post Approval        | post approval_mal              |
      | Auto Loan     | Disbursal Initiation | disbursal_mal                  |
      | Auto Loan     | Disbursal Author     | disbursal_indiv_initiated_mal  |


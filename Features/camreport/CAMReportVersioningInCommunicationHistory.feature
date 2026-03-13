@Epic-Recommendation
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@ImplementedBy-aryan.jain
@Release3
@ReviewedByDEV

Feature:CAM Report Versioning In Communication History

  #FeatureID-ACAUTOCAS-810
  Scenario Outline: ACAUTOCAS-6237: Validate versioning of CAM report generated at <stage> of <Loan_Type> application in communication history
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user logout from CAS
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application of "<Var_Stage>" stage variant from "<GridName>" grid
    And user click on CAM report at "<Stage>"
    And user reads data from the excel file "cam.xlsx" under sheet "cam_report" and row 0
    Then generated CAM report information is displayed in communication history
    Examples:
      | Loan_Type     | Stage            | Var_Stage                     | GridName         |
      | Home Loan     | Credit Approval  | credit approval_hl            | CREDIT_APPROVAL  |
      | Home Loan     | Reconsideration  | reconsideration_individual_hl | APPLICATION      |
      | Home Loan     | Post Approval    | post approval_hl              | APPLICATION      |
      | Home Loan     | Disbursal        | disbursal_hl                  | APPLICATION      |
      | Home Loan     | Disbursal Author | disbursal author_indiv_hl     | DISBURSAL_AUTHOR |
      | Personal Loan | Credit Approval  | credit approval               | CREDIT_APPROVAL  |
      | Personal Loan | Reconsideration  | reconsideration_individual_pl | APPLICATION      |
      | Personal Loan | Post Approval    | post approval                 | APPLICATION      |
      | Personal Loan | Disbursal        | disbursal                     | APPLICATION      |
      | Personal Loan | Disbursal Author | disbursal author_indiv_pl     | DISBURSAL_AUTHOR |
      | AutoLoan      | Credit Approval  | credit approval_mal          | CREDIT_APPROVAL  |
      | AutoLoan      | Reconsideration  | reconsideration_individual_mal | APPLICATION      |
      | AutoLoan      | Post Approval    | post approval_mal            | APPLICATION      |
      | AutoLoan      | Disbursal        | disbursal_mal                | APPLICATION      |
      | AutoLoan      | Disbursal Author | disbursal author_indiv_mal     | DISBURSAL_AUTHOR |

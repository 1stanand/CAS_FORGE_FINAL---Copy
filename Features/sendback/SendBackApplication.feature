@Epic-Send_Back
@ReviewedBy-None
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ImplementedBy-rishabh.sachan
@Release3
@Reconciled
@ReviewedByDEV

Feature:Send Back Application

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  #FeatureID-ACAUTOCAS-5397
  Scenario Outline: ACAUTOCAS-5399: <Loan_Type> application can not be sent back from <var> to <var>
    And it is configured in the workflow master that user can not sent back the application to the same stage
    When user opens an application of "<var>" stage variant from "<GridName>" grid
    And user navigates to send back application screen
    Then "<var>" stage is not available to send back application
    Examples:
      | Loan_Type     | var                        | GridName        |
      | Home Loan     | lead details_indiv_hl      | APPLICATION     |
      | Home Loan     | login acceptance_indiv_hl  | APPLICATION     |
      | Home Loan     | kyc_indiv_hl               | APPLICATION     |
      | Home Loan     | dde_indiv_hl               | APPLICATION     |
      | Home Loan     | recommendation_indiv_hl    | APPLICATION     |
      | Home Loan     | credit approval_indiv_hl   | CREDIT_APPROVAL |
      | Home Loan     | reconsideration_indiv_hl   | APPLICATION     |
      | Home Loan     | post approval_indiv_hl     | APPLICATION     |
      | Home Loan     | disbursal_indiv_hl         | APPLICATION     |
      | Personal Loan | lead details_indiv_pl      | APPLICATION     |
      | Personal Loan | login acceptance_indiv_pl  | APPLICATION     |
      | Personal Loan | kyc_indiv_pl               | APPLICATION     |
      | Personal Loan | dde_indiv_pl               | APPLICATION     |
      | Personal Loan | recommendation_indiv_pl    | APPLICATION     |
      | Personal Loan | credit approval_indiv_pl   | CREDIT_APPROVAL |
      | Personal Loan | reconsideration_indiv_pl   | APPLICATION     |
      | Personal Loan | post approval_indiv_pl     | APPLICATION     |
      | Personal Loan | disbursal_indiv_pl         | APPLICATION     |
      | Auto Loan     | lead details_indiv_mal     | APPLICATION     |
      | Auto Loan     | login acceptance_indiv_mal | APPLICATION     |
      | Auto Loan     | kyc_mal                    | APPLICATION     |
      | Auto Loan     | dde_indiv_mal              | APPLICATION     |
      | Auto Loan     | recommendation_indiv_mal   | APPLICATION     |
      | Auto Loan     | credit approval_indiv_mal  | CREDIT_APPROVAL |
      | Auto Loan     | reconsideration_indiv_mal  | APPLICATION     |
      | Auto Loan     | post approval_indiv_mal    | APPLICATION     |
      | Auto Loan     | disbursal_indiv_mal        | APPLICATION     |

  #pre-requirements -: it is configured in the workflow master that user can not sent back the application from stages in below exapmles.
   #FeatureID-ACAUTOCAS-5397
  Scenario Outline: ACAUTOCAS-5517: <Loan_Type> application can not be sent back from <Stage> stage
    When user opens an application of "<Stage>" stage variant from "<GridName>" grid
    And user navigates to more actions application screen
    Then send back option is not available
    Examples:
      | Loan_Type     | Stage                      | GridName         |
      | Home Loan     | lead details_indiv_hl      | APPLICATION      |
      | Home Loan     | disbursal author_indiv_hl  | DISBURSAL_AUTHOR |
      | Home Loan     | sent to ops_indiv_hl       | SENT_TO_OPS      |
      | Auto Loan     | lead details_indiv_mal     | APPLICATION      |
      | Auto Loan     | disbursal author_indiv_mal | DISBURSAL_AUTHOR |
      | Auto Loan     | sent to ops_indiv_mal      | SENT_TO_OPS      |
      | Personal Loan | lead details_indiv_pl      | APPLICATION      |
      | Personal Loan | disbursal author_indiv_pl  | DISBURSAL_AUTHOR |
      | Personal Loan | sent to ops_indiv_pl       | SENT_TO_OPS      |


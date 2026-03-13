@Epic-Send_Back
@ReviewedBy-ayush.garg
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@Release3
@Reconciled
@ReviewedByDEV

Feature:Send Back The Application Without Filling Mandatory Details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  #FeatureID-ACAUTOCAS-5336
  @ImplementedBy-manish.yadav2
  Scenario Outline: ACAUTOCAS-5362: Unable send back the home loan application from <stage> stage without filling <var>
    When user opens an application at "<Var_Stage>" stage from application grid
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_sendBack>" and row <Row_Num>
    And user send back above application without filling "<var>"
    Then application throws a proper error message
    Examples:
      | Var_Stage                     | var                | MoreActionsWB     | MoreActions_sendBack | Row_Num |
      | login acceptance_hl           | send back stage    | more_actions.xlsx | send_back            | 0       |
      | login acceptance_hl           | Reason Code        | more_actions.xlsx | send_back            | 0       |
      | login acceptance_hl           | Reason Description | more_actions.xlsx | send_back            | 0       |
      | kyc_hl                        | send back stage    | more_actions.xlsx | send_back            | 0       |
      | kyc_hl                        | Reason Code        | more_actions.xlsx | send_back            | 0       |
      | kyc_hl                        | Reason Description | more_actions.xlsx | send_back            | 0       |
      | dde_hl                        | send back stage    | more_actions.xlsx | send_back            | 0       |
      | dde_hl                        | Reason Code        | more_actions.xlsx | send_back            | 0       |
      | dde_hl                        | Reason Description | more_actions.xlsx | send_back            | 0       |
      | recommendation_hl             | send back stage    | more_actions.xlsx | send_back            | 0       |
      | recommendation_hl             | Reason Code        | more_actions.xlsx | send_back            | 0       |
      | recommendation_hl             | Reason Description | more_actions.xlsx | send_back            | 0       |
      | reconsideration_individual_hl | send back stage    | more_actions.xlsx | send_back            | 0       |
      | reconsideration_individual_hl | Reason Code        | more_actions.xlsx | send_back            | 0       |
      | reconsideration_individual_hl | Reason Description | more_actions.xlsx | send_back            | 0       |
      | credit approval_hl            | send back stage    | more_actions.xlsx | send_back            | 0       |
      | credit approval_hl            | Reason Code        | more_actions.xlsx | send_back            | 0       |
      | credit approval_hl            | Reason Description | more_actions.xlsx | send_back            | 0       |
      | post approval                 | send back stage    | more_actions.xlsx | send_back            | 0       |
      | post approval                 | Reason Code        | more_actions.xlsx | send_back            | 0       |
      | post approval                 | Reason Description | more_actions.xlsx | send_back            | 0       |
      | disbursal_hl                  | send back stage    | more_actions.xlsx | send_back            | 0       |
      | disbursal_hl                  | Reason Code        | more_actions.xlsx | send_back            | 0       |
      | disbursal_hl                  | Reason Description | more_actions.xlsx | send_back            | 0       |

    #FeatureID-ACAUTOCAS-5336
  @ImplementedBy-manish.yadav2
  Scenario Outline: ACAUTOCAS-5363: Unable send back the auto loan application from <stage> stage without filling <var>
    When user opens an application at "<Var_Stage>" stage from application grid
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_sendBack>" and row <Row_Num>
    And user send back above application without filling "<var>"
    Then application throws a proper error message
    Examples:
      | Var_Stage                     | var                | MoreActionsWB     | MoreActions_sendBack | Row_Num |
      | login acceptance_auto         | send back stage    | more_actions.xlsx | send_back            | 0       |
      | login acceptance_auto         | Reason Code        | more_actions.xlsx | send_back            | 0       |
      | login acceptance_auto         | Reason Description | more_actions.xlsx | send_back            | 0       |
      | kyc_mal                        | send back stage    | more_actions.xlsx | send_back            | 0       |
      | kyc_mal                        | Reason Code        | more_actions.xlsx | send_back            | 0       |
      | kyc_mal                        | Reason Description | more_actions.xlsx | send_back            | 0       |
      | dde_auto                      | send back stage    | more_actions.xlsx | send_back            | 0       |
      | dde_auto                      | Reason Code        | more_actions.xlsx | send_back            | 0       |
      | dde_auto                      | Reason Description | more_actions.xlsx | send_back            | 0       |
      | recommendation_mal             | send back stage    | more_actions.xlsx | send_back            | 0       |
      | recommendation_mal             | Reason Code        | more_actions.xlsx | send_back            | 0       |
      | recommendation_mal             | Reason Description | more_actions.xlsx | send_back            | 0       |
      | reconsideration_individual_mal | send back stage    | more_actions.xlsx | send_back            | 0       |
      | reconsideration_individual_mal | Reason Code        | more_actions.xlsx | send_back            | 0       |
      | reconsideration_individual_mal | Reason Description | more_actions.xlsx | send_back            | 0       |
      | credit approval_auto          | send back stage    | more_actions.xlsx | send_back            | 0       |
      | credit approval_auto          | Reason Code        | more_actions.xlsx | send_back            | 0       |
      | credit approval_auto          | Reason Description | more_actions.xlsx | send_back            | 0       |
      | post approval                 | send back stage    | more_actions.xlsx | send_back            | 0       |
      | post approval                 | Reason Code        | more_actions.xlsx | send_back            | 0       |
      | post approval                 | Reason Description | more_actions.xlsx | send_back            | 0       |
      | disbursal_auto                | send back stage    | more_actions.xlsx | send_back            | 0       |
      | disbursal_auto                | Reason Code        | more_actions.xlsx | send_back            | 0       |
      | disbursal_auto                | Reason Description | more_actions.xlsx | send_back            | 0       |

    #FeatureID-ACAUTOCAS-5336
  @ImplementedBy-yash.sharma
  Scenario Outline: ACAUTOCAS-5364: Unable send back the personal loan application from <stage> stage without filling <var>
    When user opens an application at "<Var_Stage>" stage from application grid
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_sendBack>" and row <Row_Num>
    And user send back above application without filling "<var>"
    Then application throws a proper error message
    Examples:
      | Var_Stage                     | var                | MoreActionsWB     | MoreActions_sendBack | Row_Num |
      | login acceptance              | send back stage    | more_actions.xlsx | send_back            | 0       |
      | login acceptance              | Reason Code        | more_actions.xlsx | send_back            | 0       |
      | login acceptance              | Reason Description | more_actions.xlsx | send_back            | 0       |
      | kyc                           | send back stage    | more_actions.xlsx | send_back            | 0       |
      | kyc                           | Reason Code        | more_actions.xlsx | send_back            | 0       |
      | kyc                           | Reason Description | more_actions.xlsx | send_back            | 0       |
      | dde                           | send back stage    | more_actions.xlsx | send_back            | 0       |
      | dde                           | Reason Code        | more_actions.xlsx | send_back            | 0       |
      | dde                           | Reason Description | more_actions.xlsx | send_back            | 0       |
      | recommendation                | send back stage    | more_actions.xlsx | send_back            | 0       |
      | recommendation                | Reason Code        | more_actions.xlsx | send_back            | 0       |
      | recommendation                | Reason Description | more_actions.xlsx | send_back            | 0       |
      | reconsideration_individual_mal | send back stage    | more_actions.xlsx | send_back            | 0       |
      | reconsideration_individual_mal | Reason Code        | more_actions.xlsx | send_back            | 0       |
      | reconsideration_individual_mal | Reason Description | more_actions.xlsx | send_back            | 0       |
      | credit approval               | send back stage    | more_actions.xlsx | send_back            | 0       |
      | credit approval               | Reason Code        | more_actions.xlsx | send_back            | 0       |
      | credit approval               | Reason Description | more_actions.xlsx | send_back            | 0       |
      | post approval                 | send back stage    | more_actions.xlsx | send_back            | 0       |
      | post approval                 | Reason Code        | more_actions.xlsx | send_back            | 0       |
      | post approval                 | Reason Description | more_actions.xlsx | send_back            | 0       |
      | disbursal                     | send back stage    | more_actions.xlsx | send_back            | 0       |
      | disbursal                     | Reason Code        | more_actions.xlsx | send_back            | 0       |
      | disbursal                     | Reason Description | more_actions.xlsx | send_back            | 0       |

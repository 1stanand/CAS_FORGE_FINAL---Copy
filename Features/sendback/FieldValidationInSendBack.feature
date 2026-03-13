@Epic-Send_Back
@ReviewedBy-ayush.garg
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@Release3
@Reconciled
@ReviewedByDEV

Feature:Send Back From Credit Approval

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

     #FeatureID-ACAUTOCAS-5336
  @ImplementedBy-manish.yadav2
  Scenario Outline: ACAUTOCAS-5365: Entering <Validity> <Field_Name> <Validity_Reason> in send back screen of personal loan at <Stage>
    When user opens an application at "<Var_Stage>" stage from application grid
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_sendBack>" and row <Row_Num>
    And user navigates to send back application screen
    And user enters" <Validity>" "<Field_Name>" "<Validity_Reason>"
    Then application "<Throws_notThrows>" after entering reason
    Examples:
      | Validity | Field_Name         | Validity_Reason                      | Throws_notThrows                  | Var_Stage        | Row_Num | MoreActionsWB     | MoreActions_sendBack |
      | valid    | Reason Description | characters                           | doest not throw any error message | login acceptance | 0       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with alphanumeric characters         | doest not throw any error message | login acceptance | 1       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with spaces                          | doest not throw any error message | login acceptance | 2       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with hyphen                          | doest not throw any error message | login acceptance | 3       | more_actions.xlsx | send_back            |
      | invalid  | Reason Description | with special characters except hypen | throws a proper error message     | login acceptance | 4       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | characters                           | doest not throw any error message | kyc              | 0       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with alphanumeric characters         | doest not throw any error message | kyc              | 1       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with spaces                          | doest not throw any error message | kyc              | 2       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with hyphen                          | doest not throw any error message | kyc              | 3       | more_actions.xlsx | send_back            |
      | invalid  | Reason Description | with special characters except hypen | throws a proper error message     | kyc              | 4       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | characters                           | doest not throw any error message | dde              | 0       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with alphanumeric characters         | doest not throw any error message | dde              | 1       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with spaces                          | doest not throw any error message | dde              | 2       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with hyphen                          | doest not throw any error message | dde              | 3       | more_actions.xlsx | send_back            |
      | invalid  | Reason Description | with special characters except hypen | throws a proper error message     | dde              | 4       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | characters                           | doest not throw any error message | recommendation   | 0       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with alphanumeric characters         | doest not throw any error message | recommendation   | 1       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with spaces                          | doest not throw any error message | recommendation   | 2       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with hyphen                          | doest not throw any error message | recommendation   | 3       | more_actions.xlsx | send_back            |
      | invalid  | Reason Description | with special characters except hypen | throws a proper error message     | recommendation   | 4       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | characters                           | doest not throw any error message | reconsideration  | 5       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with alphanumeric characters         | doest not throw any error message | reconsideration  | 6       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with spaces                          | doest not throw any error message | reconsideration  | 7       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with hyphen                          | doest not throw any error message | reconsideration  | 8       | more_actions.xlsx | send_back            |
      | invalid  | Reason Description | with special characters except hypen | throws a proper error message     | reconsideration  | 4       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | characters                           | doest not throw any error message | credit approval  | 0       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with alphanumeric characters         | doest not throw any error message | credit approval  | 1       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with spaces                          | doest not throw any error message | credit approval  | 2       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with hyphen                          | doest not throw any error message | credit approval  | 3       | more_actions.xlsx | send_back            |
      | invalid  | Reason Description | with special characters except hypen | throws a proper error message     | credit approval  | 4       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | characters                           | doest not throw any error message | post approval    | 0       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with alphanumeric characters         | doest not throw any error message | post approval    | 1       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with spaces                          | doest not throw any error message | post approval    | 2       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with hyphen                          | doest not throw any error message | post approval    | 3       | more_actions.xlsx | send_back            |
      | invalid  | Reason Description | with special characters except hypen | throws a proper error message     | post approval    | 4       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | characters                           | doest not throw any error message | disbursal        | 5       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with alphanumeric characters         | doest not throw any error message | disbursal        | 6       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with spaces                          | doest not throw any error message | disbursal        | 7       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with hyphen                          | doest not throw any error message | disbursal        | 8       | more_actions.xlsx | send_back            |
      | invalid  | Reason Description | with special characters except hypen | throws a proper error message     | disbursal        | 4       | more_actions.xlsx | send_back            |


  #FeatureID-ACAUTOCAS-5336
  @ImplementedBy-yash.sharma
  Scenario Outline: ACAUTOCAS-5373:  Entering <Validity> <Field_Name> <Validity_Reason> in send back screen of auto loan at <Stage>
    When user opens an application at "<Var_Stage>" stage from application grid
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_sendBack>" and row <Row_Num>
    And user navigates to send back application screen
    And user enters" <Validity>" "<Field_Name>" "<Validity_Reason>"
    Then application "<Throws_notThrows>" after entering reason
    Examples:
      | Validity | Field_Name         | Validity_Reason                      | Throws_notThrows                  | Var_Stage                 | Row_Num | MoreActionsWB     | MoreActions_sendBack |
      | valid    | Reason Description | characters                           | doest not throw any error message | login acceptance_indiv_mal | 0       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with alphanumeric characters         | doest not throw any error message | login acceptance_indiv_mal | 1       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with spaces                          | doest not throw any error message | login acceptance_indiv_mal | 2       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with hyphen                          | doest not throw any error message | login acceptance_indiv_mal | 3       | more_actions.xlsx | send_back            |
      | invalid  | Reason Description | with special characters except hypen | throws a proper error message     | login acceptance_indiv_mal | 4       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | characters                           | doest not throw any error message | kyc_indiv_mal              | 0       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with alphanumeric characters         | doest not throw any error message | kyc_indiv_mal              | 1       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with spaces                          | doest not throw any error message | kyc_indiv_mal              | 2       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with hyphen                          | doest not throw any error message | kyc_indiv_mal              | 3       | more_actions.xlsx | send_back            |
      | invalid  | Reason Description | with special characters except hypen | throws a proper error message     | kyc_indiv_mal              | 4       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | characters                           | doest not throw any error message | dde_indiv_mal              | 0       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with alphanumeric characters         | doest not throw any error message | dde_indiv_mal              | 1       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with spaces                          | doest not throw any error message | dde_indiv_mal              | 2       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with hyphen                          | doest not throw any error message | dde_indiv_mal              | 3       | more_actions.xlsx | send_back            |
      | invalid  | Reason Description | with special characters except hypen | throws a proper error message     | dde_indiv_mal              | 4       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | characters                           | doest not throw any error message | recommendation_indiv_mal   | 0       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with alphanumeric characters         | doest not throw any error message | recommendation_indiv_mal   | 1       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with spaces                          | doest not throw any error message | recommendation_indiv_mal   | 2       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with hyphen                          | doest not throw any error message | recommendation_indiv_mal   | 3       | more_actions.xlsx | send_back            |
      | invalid  | Reason Description | with special characters except hypen | throws a proper error message     | recommendation_indiv_mal   | 4       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | characters                           | doest not throw any error message | reconsideration_indiv_mal  | 5       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with alphanumeric characters         | doest not throw any error message | reconsideration_indiv_mal  | 6       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with spaces                          | doest not throw any error message | reconsideration_indiv_mal  | 7       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with hyphen                          | doest not throw any error message | reconsideration_indiv_mal  | 8       | more_actions.xlsx | send_back            |
      | invalid  | Reason Description | with special characters except hypen | throws a proper error message     | reconsideration_indiv_mal  | 4       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | characters                           | doest not throw any error message | credit approval_indiv_mal  | 0       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with alphanumeric characters         | doest not throw any error message | credit approval_indiv_mal  | 1       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with spaces                          | doest not throw any error message | credit approval_indiv_mal  | 2       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with hyphen                          | doest not throw any error message | credit approval_indiv_mal  | 3       | more_actions.xlsx | send_back            |
      | invalid  | Reason Description | with special characters except hypen | throws a proper error message     | credit approval_indiv_mal  | 4       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | characters                           | doest not throw any error message | post approval_indiv_mal    | 0       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with alphanumeric characters         | doest not throw any error message | post approval_indiv_mal    | 1       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with spaces                          | doest not throw any error message | post approval_indiv_mal    | 2       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with hyphen                          | doest not throw any error message | post approval_indiv_mal    | 3       | more_actions.xlsx | send_back            |
      | invalid  | Reason Description | with special characters except hypen | throws a proper error message     | post approval_indiv_mal    | 4       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | characters                           | doest not throw any error message | disbursal_indiv_mal        | 5       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with alphanumeric characters         | doest not throw any error message | disbursal_indiv_mal        | 6       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with spaces                          | doest not throw any error message | disbursal_indiv_mal        | 7       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with hyphen                          | doest not throw any error message | disbursal_indiv_mal        | 8       | more_actions.xlsx | send_back            |
      | invalid  | Reason Description | with special characters except hypen | throws a proper error message     | disbursal_indiv_mal        | 4       | more_actions.xlsx | send_back            |

 #FeatureID-ACAUTOCAS-5336
  @ImplementedBy-yash.sharma
  Scenario Outline: ACAUTOCAS-5374:  Entering <Validity> <Field_Name> <Validity_Reason> in send back screen of home loan at <Stage>
    When user opens an application at "<Var_Stage>" stage from application grid
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_sendBack>" and row <Row_Num>
    And user navigates to send back application screen
    And user enters" <Validity>" "<Field_Name>" "<Validity_Reason>"
    Then application "<Throws_notThrows>" after entering reason
    Examples:
      | Validity | Field_Name         | Validity_Reason                      | Throws_notThrows                  | Var_Stage                 | Row_Num | MoreActionsWB     | MoreActions_sendBack |
      | valid    | Reason Description | characters                           | doest not throw any error message | login acceptance_indiv_hl | 0       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with alphanumeric characters         | doest not throw any error message | login acceptance_indiv_hl | 1       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with spaces                          | doest not throw any error message | login acceptance_indiv_hl | 2       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with hyphen                          | doest not throw any error message | login acceptance_indiv_hl | 3       | more_actions.xlsx | send_back            |
      | invalid  | Reason Description | with special characters except hypen | throws a proper error message     | login acceptance_indiv_hl | 4       | more_actions.xlsx | send_back            |
      | valid    | Reason Description |                                      | doest not throw any error message | kyc_indiv_hl              | 0       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with alphanumeric characters         | doest not throw any error message | kyc_indiv_hl              | 1       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with spaces                          | doest not throw any error message | kyc_indiv_hl              | 2       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with hyphen                          | doest not throw any error message | kyc_indiv_hl              | 3       | more_actions.xlsx | send_back            |
      | invalid  | Reason Description | with special characters except hypen | throws a proper error message     | kyc_indiv_hl              | 4       | more_actions.xlsx | send_back            |
      | valid    | Reason Description |                                      | doest not throw any error message | dde_indiv_hl              | 0       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with alphanumeric characters         | doest not throw any error message | dde_indiv_hl              | 1       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with spaces                          | doest not throw any error message | dde_indiv_hl              | 2       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with hyphen                          | doest not throw any error message | dde_indiv_hl              | 3       | more_actions.xlsx | send_back            |
      | invalid  | Reason Description | with special characters except hypen | throws a proper error message     | dde_indiv_hl              | 4       | more_actions.xlsx | send_back            |
      | valid    | Reason Description |                                      | doest not throw any error message | recommendation_indiv_hl   | 0       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with alphanumeric characters         | doest not throw any error message | recommendation_indiv_hl   | 1       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with spaces                          | doest not throw any error message | recommendation_indiv_hl   | 2       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with hyphen                          | doest not throw any error message | recommendation_indiv_hl   | 3       | more_actions.xlsx | send_back            |
      | invalid  | Reason Description | with special characters except hypen | throws a proper error message     | recommendation_indiv_hl   | 4       | more_actions.xlsx | send_back            |
      | valid    | Reason Description |                                      | doest not throw any error message | reconsideration_indiv_hl  | 5       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with alphanumeric characters         | doest not throw any error message | reconsideration_indiv_hl  | 6       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with spaces                          | doest not throw any error message | reconsideration_indiv_hl  | 7       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with hyphen                          | doest not throw any error message | reconsideration_indiv_hl  | 8       | more_actions.xlsx | send_back            |
      | invalid  | Reason Description | with special characters except hypen | throws a proper error message     | reconsideration_indiv_hl  | 4       | more_actions.xlsx | send_back            |
      | valid    | Reason Description |                                      | doest not throw any error message | credit approval_indiv_hl  | 0       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with alphanumeric characters         | doest not throw any error message | credit approval_indiv_hl  | 1       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with spaces                          | doest not throw any error message | credit approval_indiv_hl  | 2       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with hyphen                          | doest not throw any error message | credit approval_indiv_hl  | 3       | more_actions.xlsx | send_back            |
      | invalid  | Reason Description | with special characters except hypen | throws a proper error message     | credit approval_indiv_hl  | 4       | more_actions.xlsx | send_back            |
      | valid    | Reason Description |                                      | doest not throw any error message | post approval_indiv_hl    | 0       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with alphanumeric characters         | doest not throw any error message | post approval_indiv_hl    | 1       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with spaces                          | doest not throw any error message | post approval_indiv_hl    | 2       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with hyphen                          | doest not throw any error message | post approval_indiv_hl    | 3       | more_actions.xlsx | send_back            |
      | invalid  | Reason Description | with special characters except hypen | throws a proper error message     | post approval_indiv_hl    | 4       | more_actions.xlsx | send_back            |
      | valid    | Reason Description |                                      | doest not throw any error message | disbursal_indiv_hl        | 5       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with alphanumeric characters         | doest not throw any error message | disbursal_indiv_hl        | 6       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with spaces                          | doest not throw any error message | disbursal_indiv_hl        | 7       | more_actions.xlsx | send_back            |
      | valid    | Reason Description | with hyphen                          | doest not throw any error message | disbursal_indiv_hl        | 8       | more_actions.xlsx | send_back            |
      | invalid  | Reason Description | with special characters except hypen | throws a proper error message     | disbursal_indiv_hl        | 4       | more_actions.xlsx | send_back            |

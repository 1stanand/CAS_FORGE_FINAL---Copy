@Epic-RCU
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-aman.nagarkoti
@Reconciled
@ReviewedByDEV
#FeatureID-ACAUTOCAS-514
Feature:Advance Search In RCU Initiation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  @ImplementedBy-rishabh.sachan
  @Release3
  Scenario Outline: ACAUTOCAS-3489: Search application of rcu initiation stage using application id along with <Var> in rcu initiation advance search
    And user reads data from the excel file "<rcuInitiationWB>" under sheet "<rcuInitiation_home>" and row <rcuInitiation_home_rowNum>
    And user moves the application at "<Var_Stage>" stage to rcu "<Status>" status
    When user navigates to rcu initiation screen
    And user selects status of application as "<Status>" in rcu initiation page
    And user selects advance search option in rcu initiation page
    And user searches the application using application id along with "<Var>"
    Then respective applications are visible in rcu initiation page according to their id
    Examples:
      | Var      | rcuInitiationWB     | rcuInitiation_home | rcuInitiation_home_rowNum | Status        | Var_Stage    |
      | Branch   | rcu_initiation.xlsx | home               | 1                         | Not-Initiated | kyc_indiv_pl |
      | Product  | rcu_initiation.xlsx | home               | 1                         | Not-Initiated | kyc_indiv_pl |
      | Scheme   | rcu_initiation.xlsx | home               | 1                         | Not-Initiated | kyc_indiv_pl |
      | Date     | rcu_initiation.xlsx | home               | 1                         | Not-Initiated | kyc_indiv_pl |
      | End Date | rcu_initiation.xlsx | home               | 1                         | Not-Initiated | kyc_indiv_pl |

  @ImplementedBy-rishabh.sachan
  @Release3
  Scenario Outline: ACAUTOCAS-3490: Search application of rcu initiation stage using status as <Status> along with <Var> in rcu initiation
    And user reads data from the excel file "<rcuInitiationWB>" under sheet "<rcuInitiation_home>" and row <rcuInitiation_home_rowNum>
    And user moves the application at "<Var_Stage>" stage to rcu "<Status>" status
    When user navigates to rcu initiation screen
    And user selects status of application as "<Status>" in rcu initiation page
    And user selects advance search option in rcu initiation page
    And user searches the application using application id along with "<Var>"
    Then respective applications are visible in rcu initiation page according to their id
    Examples:
      | Status        | Var      | rcuInitiationWB     | rcuInitiation_home | rcuInitiation_home_rowNum | Var_Stage                             |
      | Initiated     | Branch   | rcu_initiation.xlsx | home               | 0                         | recommendation_indiv_rcuinitiated_pl  |
      | Not-Initiated | Branch   | rcu_initiation.xlsx | home               | 1                         | recommendation_indiv_pl               |
      | Completed     | Branch   | rcu_initiation.xlsx | home               | 2                         | recommendation_indiv_rcucompleted_pl  |
      | Waived        | Branch   | rcu_initiation.xlsx | home               | 3                         | recommendation_indiv_rcuwaived_pl     |
      | In-Progress   | Branch   | rcu_initiation.xlsx | home               | 4                         | recommendation_indiv_rcuinprogress_pl |
      | Initiated     | Product  | rcu_initiation.xlsx | home               | 0                         | recommendation_indiv_rcuinitiated_pl  |
      | Not-Initiated | Product  | rcu_initiation.xlsx | home               | 1                         | recommendation_indiv_pl               |
      | Completed     | Product  | rcu_initiation.xlsx | home               | 2                         | recommendation_indiv_rcucompleted_pl  |
      | Waived        | Product  | rcu_initiation.xlsx | home               | 3                         | recommendation_indiv_rcuwaived_pl     |
      | In-Progress   | Product  | rcu_initiation.xlsx | home               | 4                         | recommendation_indiv_rcuinprogress_pl |
      | Initiated     | Scheme   | rcu_initiation.xlsx | home               | 0                         | recommendation_indiv_rcuinitiated_pl  |
      | Not-Initiated | Scheme   | rcu_initiation.xlsx | home               | 1                         | recommendation_indiv_pl               |
      | Completed     | Scheme   | rcu_initiation.xlsx | home               | 2                         | recommendation_indiv_rcucompleted_pl  |
      | Waived        | Scheme   | rcu_initiation.xlsx | home               | 3                         | recommendation_indiv_rcuwaived_pl     |
      | In-Progress   | Scheme   | rcu_initiation.xlsx | home               | 4                         | recommendation_indiv_rcuinprogress_pl |
      | Initiated     | Date     | rcu_initiation.xlsx | home               | 0                         | recommendation_indiv_rcuinitiated_pl  |
      | Not-Initiated | Date     | rcu_initiation.xlsx | home               | 1                         | recommendation_indiv_pl               |
      | Completed     | Date     | rcu_initiation.xlsx | home               | 2                         | recommendation_indiv_rcucompleted_pl  |
      | Waived        | Date     | rcu_initiation.xlsx | home               | 3                         | recommendation_indiv_rcuwaived_pl     |
      | In-Progress   | Date     | rcu_initiation.xlsx | home               | 4                         | recommendation_indiv_rcuinprogress_pl |
      | Initiated     | End Date | rcu_initiation.xlsx | home               | 0                         | recommendation_indiv_rcuinitiated_pl  |
      | Not-Initiated | End Date | rcu_initiation.xlsx | home               | 1                         | recommendation_indiv_pl               |
      | Completed     | End Date | rcu_initiation.xlsx | home               | 2                         | recommendation_indiv_rcucompleted_pl  |
      | Waived        | End Date | rcu_initiation.xlsx | home               | 3                         | recommendation_indiv_rcuwaived_pl     |
      | In-Progress   | End Date | rcu_initiation.xlsx | home               | 4                         | recommendation_indiv_rcuinprogress_pl |


  @ImplementedBy-rishabh.sachan
  @Release3
  Scenario Outline: ACAUTOCAS-3491: Unable to search the application of rcu initiation stage using only <Var> in rcu initiation
    When user navigates to rcu initiation screen
    And user clears status selection in rcu initiation page
    And user selects advance search option in rcu initiation page
    And user reads data from the excel file "<rcuInitiationWB>" under sheet "<rcuInitiation_home>" and row <rcuInitiation_home_rowNum>
    And user searches the application using "<Var>"
    Then Proper error message should be shown in rcu initiation page
    Examples:
      | Var      | rcuInitiationWB     | rcuInitiation_home | rcuInitiation_home_rowNum |
      | Product  | rcu_initiation.xlsx | home               | 0                         |
      | Scheme   | rcu_initiation.xlsx | home               | 0                         |
      | Date     | rcu_initiation.xlsx | home               | 0                         |
      | End Date | rcu_initiation.xlsx | home               | 0                         |
      | Branch   | rcu_initiation.xlsx | home               | 1                         |


             #reviewcommentscenarios
    #FeatureID-ACAUTOCAS-514
  @NotImplemented
  Scenario Outline:Advance search validation in rcu initiation with the combination of valid application id and incorrect <var>
    When user navigates to rcu initiation screen
    And user search the application with incorrect "<field_name>"
    Then application is not displayed
    Examples:
      | field_name |
      | Branch     |
      | Product    |
      | Scheme     |

      #reviewcommentscenarios
    #FeatureID-ACAUTOCAS-514
  @NotImplemented
  Scenario Outline:Advance search validation in rcu initiation with the combination of valid status and incorrect <var>
    When user navigates to rcu initiation screen
    And user search the application with status as initiated
    And user search with incorrect "<field_name>"
    Then application is not displayed
    Examples:
      | field_name |
      | Branch     |
      | Product    |
      | Scheme     |

         #reviewcommentscenarios
    #FeatureID-ACAUTOCAS-514
  @NotImplemented
  Scenario Outline:Advance search validation in rcu initiation with the combination of valid application id and incorrect <var>
    When user navigates to rcu initiation screen
    And user search the application with incorrect "<field_name>"
    Then application is not displayed
    Examples:
      | field_name |
      | Branch     |
      | Product    |
      | Scheme     |

      #reviewcommentscenarios
    #FeatureID-ACAUTOCAS-514
  @NotImplemented
  Scenario Outline:Advance search validation in rcu initiation with the combination of valid status and incorrect <var>
    When user navigates to rcu initiation screen
    And user search the application with status as initiated
    And user search with incorrect "<field_name>"
    Then application is not displayed
    Examples:
      | field_name |
      | Branch     |
      | Product    |
      | Scheme     |

@Epic-RCU
@ReviewedBy-None
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedByDEV


#FeatureID-ACAUTOCAS-513
Feature:Search Application In RCU Initiation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  @ImplementedBy-aman.nagarkoti
  @Release2
  Scenario: ACAUTOCAS-2582: Search application of rcu initiation stage using only application id in rcu initiation
    When user navigates to rcu initiation screen
    And user reads data from the excel file "rcu_initiation.xlsx" under sheet "home" and row 38
    And user searches the application using application id
    Then application should be visible according to the application id

  @ImplementedBy-aman.nagarkoti
  @Release2
  Scenario Outline: ACAUTOCAS-3526: Search application of rcu initiation stage using status as <var> in rcu initiation
    When user navigates to rcu initiation screen
    And user searches the application using status as "<var>" in rcu initiation
    Then application with status as "<var>" are visible
    Examples:
      | var           |
      | initiated     |
      | not-initiated |
      | completed     |
      | waived        |
      | in-progress   |

  @ImplementedBy-aman.nagarkoti
  @Release2
  Scenario Outline: ACAUTOCAS-3527: Search application of rcu initiation stage using application id along with <var> in rcu initiation
    When user navigates to rcu initiation screen
    And user clears status selection in rcu initiation page
    And user reads data from the excel file "rcu_initiation.xlsx" under sheet "home" and row <rcu_initiation_rowNumber>
    And user searches the application of "<Stage>" stage using application id along with "<var>" from context
    Then application should be visible according to the application id
    Examples:
      | var                                | rcu_initiation_rowNumber | Stage                     |
      | Activity                           | 6                        | rcu_indiv_verification_pl |
      | Customer Name                      | 6                        | rcu_indiv_verification_pl |
      | Product Type                       | 6                        | rcu_indiv_verification_pl |
      | Screening Status Waived            | 12                       | rcu_indiv_verification_pl |
      | Screening Status RCU Pending       | 13                       | rcu_indiv_verification_pl |
      | Screening Status Sampling Required | 14                       | rcu_indiv_verification_pl |
      | Screening Status Screening Not Ok  | 15                       | rcu_indiv_verification_pl |
      | Screening Status Screening Ok      | 16                       | rcu_indiv_verification_pl |

  @ImplementedBy-yash.sharma
  @Release3
  Scenario Outline: ACAUTOCAS-3528: Search application of rcu initiation stage using status as <status> along with <var> in rcu initiation
    When user navigates to rcu initiation screen
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user searches the application using status as "<status>" along with "<var>"
    Then application with status as "<status>" are visible
    Examples:
      | status        | var                                | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum |
      | Initiated     | Activity                           | rcu_initiation.xlsx | home               | 6                         |
      | Not-Initiated | Activity                           | rcu_initiation.xlsx | home               | 6                         |
      | Completed     | Activity                           | rcu_initiation.xlsx | home               | 28                        |
      | Waived        | Activity                           | rcu_initiation.xlsx | home               | 6                         |
      | In-Progress   | Activity                           | rcu_initiation.xlsx | home               | 6                         |
      | Initiated     | Customer Name                      | rcu_initiation.xlsx | home               | 6                         |
      | Not-Initiated | Customer Name                      | rcu_initiation.xlsx | home               | 17                        |
      | Completed     | Customer Name                      | rcu_initiation.xlsx | home               | 39                        |
      | Waived        | Customer Name                      | rcu_initiation.xlsx | home               | 3                         |
      | In-Progress   | Customer Name                      | rcu_initiation.xlsx | home               | 4                         |
      | Initiated     | Product Type                       | rcu_initiation.xlsx | home               | 0                         |
      | Not-Initiated | Product Type                       | rcu_initiation.xlsx | home               | 0                         |
      | Completed     | Product Type                       | rcu_initiation.xlsx | home               | 39                        |
      | Waived        | Product Type                       | rcu_initiation.xlsx | home               | 0                         |
      | Initiated     | Screening Status Waived            | rcu_initiation.xlsx | home               | 0                         |
      | Not-Initiated | Screening Status Waived            | rcu_initiation.xlsx | home               | 0                         |
      | Completed     | Screening Status Waived            | rcu_initiation.xlsx | home               | 39                        |
      | Waived        | Screening Status Waived            | rcu_initiation.xlsx | home               | 0                         |
      | In-Progress   | Screening Status Waived            | rcu_initiation.xlsx | home               | 0                         |
      | Initiated     | Screening Status RCU Pending       | rcu_initiation.xlsx | home               | 0                         |
      | Not-Initiated | Screening Status RCU Pending       | rcu_initiation.xlsx | home               | 0                         |
      | Completed     | Screening Status RCU Pending       | rcu_initiation.xlsx | home               | 39                        |
      | Waived        | Screening Status RCU Pending       | rcu_initiation.xlsx | home               | 0                         |
      | In-Progress   | Screening Status RCU Pending       | rcu_initiation.xlsx | home               | 0                         |
      | Initiated     | Screening Status Sampling Required | rcu_initiation.xlsx | home               | 0                         |
      | Not-Initiated | Screening Status Sampling Required | rcu_initiation.xlsx | home               | 0                         |
      | Completed     | Screening Status Sampling Required | rcu_initiation.xlsx | home               | 39                        |
      | Waived        | Screening Status Sampling Required | rcu_initiation.xlsx | home               | 0                         |
      | In-Progress   | Screening Status Sampling Required | rcu_initiation.xlsx | home               | 0                         |
      | Initiated     | Screening Status Screening Not Ok  | rcu_initiation.xlsx | home               | 0                         |
      | Not-Initiated | Screening Status Screening Not Ok  | rcu_initiation.xlsx | home               | 0                         |
      | Completed     | Screening Status Screening Not Ok  | rcu_initiation.xlsx | home               | 39                        |
      | Waived        | Screening Status Screening Not Ok  | rcu_initiation.xlsx | home               | 0                         |
      | In-Progress   | Screening Status Screening Not Ok  | rcu_initiation.xlsx | home               | 0                         |
      | Initiated     | Screening Status Screening Ok      | rcu_initiation.xlsx | home               | 0                         |
      | Not-Initiated | Screening Status Screening Ok      | rcu_initiation.xlsx | home               | 0                         |
      | Completed     | Screening Status Screening Ok      | rcu_initiation.xlsx | home               | 39                        |
      | Waived        | Screening Status Screening Ok      | rcu_initiation.xlsx | home               | 0                         |
      | In-Progress   | Screening Status Screening Ok      | rcu_initiation.xlsx | home               | 0                         |

  @ImplementedBy-aman.nagarkoti
  @Release2
  Scenario Outline: ACAUTOCAS-3529: Unable to search the application of rcu initiation stage using only <var> in rcu initiation
    When user navigates to rcu initiation screen
    And user clears status selection in rcu initiation page
    And user reads data from the excel file "rcu_initiation.xlsx" under sheet "home" and row <rcu_initiation_rowNumber>
    And user searches the application using "<var>"
    Then No application is shown with proper error message
    Examples:
      | var              | rcu_initiation_rowNumber |
      | Activity         | 6                        |
      | Customer Name    | 6                        |
      | Product Type     | 6                        |
      | Screening Status | 6                        |


       #reviewcommentscenarios
    #FeatureID-ACAUTOCAS-513
  Scenario Outline:Search validation in rcu initiation with the combination of valid application id and incorrect <field_name>
    When user navigates to rcu initiation screen
    And user search the application with incorrect "<field_name>"
    Then application is not displayed
    Examples:
      | field_name       |
      | Activity         |
      | Product Type     |
      | Customer Name    |
      | Status           |
      | Screening Status |
      | Branch           |
      | Product          |
      | Scheme           |
  #reviewcommentscenarios
    #FeatureID-ACAUTOCAS-513
  Scenario Outline:Search validation in rcu initiation with the combination of valid status and incorrect <field_name>
    When user navigates to rcu initiation screen
    And user search the application with status as initiated
    And user search with incorrect "<field_name>"
    Then application is not displayed
    Examples:
      | field_name       |
      | Activity         |
      | Product Type     |
      | Customer Name    |
      | Status           |
      | Screening Status |
      | Branch           |
      | Product          |
      | Scheme           |

  #reviewcommentscenarios
    #FeatureID-ACAUTOCAS-513,ACAUTOCAS-6392
  Scenario:On changing default branch application is not displayed in rcu initiation screen
    When user navigates to rcu initiation screen
    And user reads data from the excel file "RCUWB.xlsx" under sheet "rcu_initiation" and row 6
    And user changed the branch
    And user search the application of default branch
    Then application is not displayed

      #reviewcommentscenarios
    #FeatureID-ACAUTOCAS-513,ACAUTOCAS-6392
  Scenario:On changing default branch application is displayed in rcu initiation screen
    When user navigates to rcu initiation screen
    And user reads data from the excel file "RCUWB.xlsx" under sheet "rcu_initiation" and row 6
    And user changed the branch
    And user search the application of current branch
    Then application is displayed

    #reviewcommentscenarios
    #FeatureID-ACAUTOCAS-513
  Scenario:Search application without any data in rcu initiation screen
    When user navigates to rcu initiation screen
    And user cleared the status
    And user search the application
    And user reads data from the excel file "RCUWB.xlsx" under sheet "rcu_initiation" and row 3
    Then error message is displayed

    #reviewcommentscenarios
    #FeatureID-ACAUTOCAS-513
  Scenario Outline:Search validation in rcu initiation with the combination of valid application id and incorrect <field_name>
    When user navigates to rcu initiation screen
    And user search the application with incorrect "<field_name>"
    Then application is not displayed
    Examples:
      | field_name       |
      | Activity         |
      | Product Type     |
      | Customer Name    |
      | Status           |
      | Screening Status |
      | Branch           |
      | Product          |
      | Scheme           |
  #reviewcommentscenarios
    #FeatureID-ACAUTOCAS-513
  Scenario Outline:Search validation in rcu initiation with the combination of valid status and incorrect <field_name>
    When user navigates to rcu initiation screen
    And user search the application with status as initiated
    And user search with incorrect "<field_name>"
    Then application is not displayed
    Examples:
      | field_name       |
      | Activity         |
      | Product Type     |
      | Customer Name    |
      | Status           |
      | Screening Status |
      | Branch           |
      | Product          |
      | Scheme           |

  #reviewcommentscenarios
    #FeatureID-ACAUTOCAS-513,ACAUTOCAS-6392
  Scenario:On changing default branch application is not displayed in rcu initiation screen
    When user navigates to rcu initiation screen
    And user reads data from the excel file "RCUWB.xlsx" under sheet "rcu_initiation" and row 6
    And user changed the branch
    And user search the application of default branch
    Then application is not displayed

      #reviewcommentscenarios
    #FeatureID-ACAUTOCAS-513,ACAUTOCAS-6392
  Scenario:On changing default branch application is displayed in rcu initiation screen
    When user navigates to rcu initiation screen
    And user reads data from the excel file "RCUWB.xlsx" under sheet "rcu_initiation" and row 6
    And user changed the branch
    And user search the application of current branch
    Then application is displayed

    #reviewcommentscenarios
    #FeatureID-ACAUTOCAS-513
  Scenario:Search application without any data in rcu initiation screen
    When user navigates to rcu initiation screen
    And user cleared the status
    And user search the application
    And user reads data from the excel file "RCUWB.xlsx" under sheet "rcu_initiation" and row 3
    Then error message is displayed


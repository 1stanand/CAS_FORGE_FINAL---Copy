@Epic-Assignment_Matrix
@AuthoredBy-rajni.gola
@ReviewedBy-None
@ReviewedByDEV
@Reconciled

Feature: Task Assignment Allocation Logic

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on menu
    And user click on event defination master
    And user reads data from the excel file "assignment_matrix.xlsx" under sheet "create_event_defination_master" and row 0

  #FeatureID-ACAUTOCAS-5332
  @Release3
  @ImplementedBy-priyanshu.kashyap
  Scenario: ACAUTOCAS-6078:  Creating event to map created task assignment matrix
    When user selects option to create new event definition
    And user selects event from list of events displayed in event code field
    And user selects add new task option
    Then user should be able to select allocation task option

  @Release3
  @ImplementedBy-priyanshu.kashyap
  Scenario Outline: ACAUTOCAS-6078:  Creating event to map created task assignment matrix and view section with "<Data_Fields>" fields
    When user selects option to create new event definition
    And user selects event from list of events displayed in event code field
    And user selects add new task option
    And user select allocation task option
    Then user should be able to view section with "<Data_Fields>" fields
    Examples:
      | Data_Fields          |
      | Task Code            |
      | Task Description     |
      | Select An Allocation |
      | Is Rule Based        |

  @Release3
  @ImplementedBy-priyanshu.kashyap
  #FeatureID-ACAUTOCAS-5333
  Scenario: ACAUTOCAS-6079:  Creating event to map created assignment matrix
    And user selects option to create new event definition
    When user enters all mandatory field
    And user selects add new task option
    Then user should be able to select assignment task option from the list

  @Release3
  @ImplementedBy-priyanshu.kashyap
  Scenario Outline: ACAUTOCAS-6079:  Creating event to map created assignment matrix
    And user selects option to create new event definition
    When user enters all mandatory field
    And user selects add new task option
    And user select allocation task option
    Then user should be able to view section with "<Data_Fields>" fields
    Examples:
      | Data_Fields          |
      | Task Code            |
      | Task Description     |
      | Select An Allocation |
      | Is Rule Based        |

  #FeatureID-ACAUTOCAS-5333
  @Release3
  @ImplementedBy-priyanshu.kashyap
  Scenario: ACAUTOCAS-6100:  Selection of assignment matrix in event definition master
    And user selects option to create new event definition
    And user enters all mandatory field
    And user selects add new task option
    When user selects assignment task option
    And user enters all mandatory fields by selecting assignment matrix to be mapped to event
    Then user should be able to save the event definition successfully

  #FeatureID-ACAUTOCAS-5333
  Scenario Outline: ACAUTOCAS-6080:  Execution of Assignment matrix on event trigger
    And user selects Loan application of "<Loan_Type>"
    And user has configured assignment matrix in Assignment Matrix master
    And user has mapped the assignment matrix with event in event definition master
    When user triggers the event
    Then user should be able to view the expected result in  action fields as per configuration maintained in assignment matrix master
    Examples:
      | Loan_Type     |
      | Auto Loan     |
      | Home Loan     |
      | Personal Loan |

  #FeatureID-ACAUTOCAS-5332
  Scenario: ACAUTOCAS-6101:  Selecting task assignment matrix in event definition master
    And user is on Event Definition master
    And user has selected event to map assignment matrix
    When user selects allocation task option
    And user enters all mandatory fields
    And user selects particular task assignment matrix in select an allocation field
    Then user should be able to save the event definition successfully

  #FeatureID-ACAUTOCAS-5332
  Scenario Outline: ACAUTOCAS-6081:  Allocation of application when least loaded user is configured in assignment set of "<Assignment_Set_Type>"type in task assignment master
    And user selects Loan application of "<Loan_Type>"
    And user has created task assignment with least loaded user option in task assignment master
    And user has mapped task assignment to an event in event definition master
    And user has configured least loaded user in assignment set of "<Assignment_Set_Type>" in the task assignment
    When user performs that event during application processing
    Then application should be allocated to user with lowest calculated ratio
    And user with lowest calculated ratio should be able to view the application in assigned grid
    #Calcualtion for ratio=
    # (Sum of Number of tasks assigned to user matching the rule and total unassigned tasks)
    # divided by number of users matching the rule
    # Application will be assigned to User with lowest calculated ratio
    Examples:
      | Loan_Type     | Assignment_Set_Type |
      | Auto Loan     | Grid                |
      | Auto Loan     | Expression          |
      | Auto Loan     | Criteria Rule       |
      | Home Loan     | Grid                |
      | Home Loan     | Expression          |
      | Home Loan     | Criteria Rule       |
      | Personal Loan | Grid                |
      | Personal Loan | Expression          |
      | Personal Loan | Criteria Rule       |

  #FeatureID-ACAUTOCAS-5332
  Scenario Outline: ACAUTOCAS-6082:  Allocation of application when least loaded team is configured in assignment set of "<Assignment_Set_Type>"type in task assignment master
    And user selects Loan application of "<Loan_Type>"
    And user has created task assignment with least loaded team option in task assignment master
    And user has mapped task assignment to an event in event definition master
    And user has configured least loaded team in assignment set of "<Assignment_Set_Type>" in the task assignment
    When user performs the event during application processing
    Then application should be allocated to team with lowest calculated ratio
    And user of that team should be able to view the application in pool grid
    #Calcualtion for ratio=
    # (Sum of Number of tasks assigned to team matching the rule and total unassigned tasks to the team)
    # divided by number of users matching the rule in that team
    # Application will be assigned to User with lowest calculated ratio
    Examples:
      | Loan_Type     | Assignment_Set_Type |
      | Auto Loan     | Grid                |
      | Auto Loan     | Expression          |
      | Auto Loan     | Criteria Rule       |
      | Home Loan     | Grid                |
      | Home Loan     | Expression          |
      | Home Loan     | Criteria Rule       |
      | Personal Loan | Grid                |
      | Personal Loan | Expression          |
      | Personal Loan | Criteria Rule       |

  #FeatureID-ACAUTOCAS-5332
  Scenario Outline: ACAUTOCAS-6083:  Allocation of application to hold grid without rule mapping with grid option
    And user has created one task assignment set with grid option
    And user has selected "<least_loaded_option>" option in that set
    And user has selected hold flag as "<hold_flag_value>"
    And user has mapped task assignment to an event in event definition master
    When user selects Loan application of "<Loan_Type>"
    And user performs that event during application processing
    Then "<user_team>" with lowest calculated ratio will be able to view application under "<Application_Tray>" grid
    Examples:
      | Loan_Type     | least_loaded_option | hold_flag_value | Application_Tray | user_team |
      | Auto Loan     | least loaded user   | true            | Hold Grid        | user      |
      | Auto Loan     | least loaded user   | false           | Assigned Grid    | user      |
      | Auto Loan     | least loaded team   | true            | Hold Grid        | team      |
      | Auto Loan     | least loaded team   | false           | Pool Grid        | team      |
      | Home Loan     | least loaded user   | true            | Hold Grid        | user      |
      | Home Loan     | least loaded user   | false           | Assigned Grid    | user      |
      | Home Loan     | least loaded team   | true            | Hold Grid        | team      |
      | Home Loan     | least loaded team   | false           | Pool Grid        | team      |
      | Personal Loan | least loaded user   | true            | Hold Grid        | user      |
      | Personal Loan | least loaded user   | false           | Assigned Grid    | user      |
      | Personal Loan | least loaded team   | true            | Hold Grid        | team      |
      | Personal Loan | least loaded team   | false           | Pool Grid        | team      |

  #FeatureID-ACAUTOCAS-5332
  Scenario Outline: ACAUTOCAS-6084:  Allocation of application to hold tray with rule flag
    And user has created one task assignment set with "<least_loaded_option>" option in task assignment master
    And user has selected hold flag as "<hold_flag_value>"
    And user has mapped rule to task assignment set
    And user has mapped task assignment to an event in event definition master
    When user selects Loan application of "<Loan_Type>"
    And user performs that event during application processing
    And result of rule mapped to task assignment set is "<rule_result>"
    Then "<user_team>" with lowest calculated ratio will be able to view application under "<Application_Tray>" grid
    Examples:
      | Loan_Type     | least_loaded_option | hold_flag_value | rule_result | Application_Tray | user_team |
      | Auto Loan     | least loaded user   | true            | true        | Hold Grid        | user      |
      | Auto Loan     | least loaded user   | true            | false       | Pool Grid        | user      |
      | Auto Loan     | least loaded user   | false           | true        | Assigned Grid    | user      |
      | Auto Loan     | least loaded user   | false           | false       | Pool Grid        | user      |
      | Auto Loan     | least loaded team   | true            | true        | Hold Grid        | team      |
      | Auto Loan     | least loaded team   | true            | false       | Pool Grid        | team      |
      | Auto Loan     | least loaded team   | false           | true        | Pool Grid        | team      |
      | Auto Loan     | least loaded team   | false           | false       | Pool Grid        | team      |
      | Home Loan     | least loaded user   | true            | true        | Assigned Grid    | user      |
      | Home Loan     | least loaded user   | true            | false       | Pool Grid        | user      |
      | Home Loan     | least loaded user   | false           | true        | Assigned Grid    | user      |
      | Home Loan     | least loaded user   | false           | false       | Pool Grid        | user      |
      | Home Loan     | least loaded team   | true            | true        | Assigned Grid    | team      |
      | Home Loan     | least loaded team   | true            | false       | Pool Grid        | team      |
      | Home Loan     | least loaded team   | false           | true        | Pool Grid        | team      |
      | Home Loan     | least loaded team   | false           | false       | Pool Grid        | team      |
      | Personal Loan | least loaded user   | true            | true        | Assigned Grid    | user      |
      | Personal Loan | least loaded user   | true            | false       | Pool Grid        | user      |
      | Personal Loan | least loaded user   | false           | true        | Assigned Grid    | user      |
      | Personal Loan | least loaded user   | false           | false       | Pool Grid        | user      |
      | Personal Loan | least loaded team   | true            | true        | Assigned Grid    | team      |
      | Personal Loan | least loaded team   | true            | false       | Pool Grid        | team      |
      | Personal Loan | least loaded team   | false           | true        | Pool Grid        | team      |
      | Personal Loan | least loaded team   | false           | false       | Pool Grid        | team      |

  #FeatureID-ACAUTOCAS-5332
  Scenario Outline: ACAUTOCAS-6085:  Allocation of application to particular user
    And user selects Loan application of "<Loan_Type>"
    And user has created task assignment in task assignment master
    And user has selected a particular user in assignment set of "<Assignment_Set_Type>" in the task assignment
    And user has mapped task assignment to an event in event definition master
    When user performs the event during application processing
    Then application should get allocated to the configured user
    And user who was configured in the task assignment should be able to view the application in assigned grid
    Examples:
      | Loan_Type     | Assignment_Set_Type |
      | Auto Loan     | Grid                |
      | Auto Loan     | Expression          |
      | Auto Loan     | Criteria Rule       |
      | Home Loan     | Grid                |
      | Home Loan     | Expression          |
      | Home Loan     | Criteria Rule       |
      | Personal Loan | Grid                |
      | Personal Loan | Expression          |
      | Personal Loan | Criteria Rule       |

  #FeatureID-ACAUTOCAS-5332
  Scenario Outline: ACAUTOCAS-6086:  Allocation of application to particular team
    And user selects Loan application of "<Loan_Type>"
    And user has created task assignment in task assignment master
    And user has selected particular team in assignment set of "<Assignment_Set_Type>" in the task assignment
    And user has mapped task assignment to an event in event definition master
    When user performs the event during application processing
    Then application should get allocated to the configured team
    And any user who belongs to the configured team should be able to view the application in pool grid
    Examples:
      | Loan_Type     | Assignment_Set_Type |
      | Auto Loan     | Grid                |
      | Auto Loan     | Expression          |
      | Auto Loan     | Criteria Rule       |
      | Home Loan     | Grid                |
      | Home Loan     | Expression          |
      | Home Loan     | Criteria Rule       |
      | Personal Loan | Grid                |
      | Personal Loan | Expression          |
      | Personal Loan | Criteria Rule       |

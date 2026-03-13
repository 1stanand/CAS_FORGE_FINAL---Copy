@Epic-RCU
@ReviewedBy-aman.nagarkoti
@ImplementedBy-deep.maurya
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@Release3
@ReviewedByDEV


#FeatureID-ACAUTOCAS-4159
Feature:Field Validation In RCU Initiation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7


  Scenario Outline: ACAUTOCAS-3503:  Entering <Validity> <Field_Name> <Validity_Reason> in rcu initiation screen
    When user navigates to rcu initiation screen
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user enters "<Validity>" "<Field_Name>" "<Validity_Reason>" in rcu initiation page
    Then application "<Throws_notThrows>" in rcu initiation page
    Examples:
      | Validity | Field_Name    | Validity_Reason                        | Throws_notThrows                 | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum |
      | valid    | customer name |                                        | does not throw any error message | rcu_initiation.xlsx | home               | 7                         |
      | valid    | customer name | with spaces                            | does not throw any error message | rcu_initiation.xlsx | home               | 8                         |
      | valid    | customer name | with ',/-&()$                          | does not throw any error message | rcu_initiation.xlsx | home               | 9                         |
      | valid    | customer name | with alphanumeric characters           | does not throw any error message | rcu_initiation.xlsx | home               | 10                        |
      | invalid  | customer name | with special character except ',/-&()$ | throws proper error message      | rcu_initiation.xlsx | home               | 11                        |


  Scenario Outline: ACAUTOCAS-3504: <Field_Name> field should be visible in rcu initiation screen
    When user navigates to rcu initiation screen
    Then "<Field_Name>" should be visible in rcu initiation
    Examples:
      | Field_Name       |
      | activity         |
      | application id   |
      | customer Name    |
      | product type     |
      | status           |
      | screening status |


  Scenario Outline: ACAUTOCAS-3505: On clicking advance search checkbox <Field_Name> fields are visible in rcu initiation
    When user navigates to rcu initiation screen
    And user opens advance search accordion in rcu initiation
    Then "<Field_Name>" should be visible in rcu initiation
    Examples:
      | Field_Name |
      | branch     |
      | product    |
      | scheme     |
      | date       |
      | end date   |


  @Perishable
  Scenario Outline: ACAUTOCAS-3506: On selecting rcu result as sampling required agency name field is enable in rcu initiation
    When user navigates to rcu initiation screen
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user searches the application using application id along with status as "<Status>" in rcu initiation "<Stage>"
    And user set the result as sampling required in rcu initiation
    Then agency name field is enable in rcu initiation
    Examples:
      | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum | Stage                     | Status    |
      | rcu_initiation.xlsx | home               | 168                       | dde_indiv_rcuinitiated_pl | Initiated |

  @Perishable
  Scenario Outline: ACAUTOCAS-3507: On selecting document sampling checkbox <var> field is disable in rcu initiation
    When user navigates to rcu initiation screen
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user searches the application using application id along with status as "<Status>" in rcu initiation "<Stage>"
    And user selects document sampling status in rcu initiation
    Then "<var>" field is disable in rcu initiation
    Examples:
      | var         | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum | Stage                     | Status    |
      | result      | rcu_initiation.xlsx | home               | 168                       | dde_indiv_rcuinitiated_pl | Initiated |
      | agency name | rcu_initiation.xlsx | home               | 168                       | dde_indiv_rcuinitiated_pl | Initiated |


  @Perishable
  Scenario Outline: ACAUTOCAS-3508: After initiating the application <var> button is disable in rcu initiation
    When user navigates to rcu initiation screen
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user searches the application using application id along with status as "<Status>" in rcu initiation "<Stage>"
    And user select result as "<Result>"
    And user selects the application in rcu initiation
    And user initiates the application in rcu initiation
    Then "<var>" button is disable in rcu initiation
    Examples:
      | var       | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum | Stage                     | Status        | Result            |
      | waive off | rcu_initiation.xlsx | home               | 169                       | dde_indiv_rcuinitiated_pl | Not-Initiated | Sampling Required |
      | initiate  | rcu_initiation.xlsx | home               | 169                       | dde_indiv_rcuinitiated_pl | Not-Initiated | Sampling Required |


         #reviewcommentscenarios
    #FeatureID-ACAUTOCAS-4159
  Scenario Outline:Mandatory field <field_name> validation in rcu initiation
    When user navigates to rcu initiation screen
    And user reads data from the excel file "RCUWB.xlsx" under sheet "rcu_initiation" and row <row_num>
    And user searches the application using application id along with status as initiated
    And user fills the details
    And user save details
    Then error message is displayed
    Examples:
      | field_name  | row_num |
      | Result      | 9       |
      | Agency Name | 10      |

      #reviewcommentscenarios
  #FeatureID-ACAUTOCAS-4159,ACAUTOCAS-6381
  Scenario Outline:Validate <button> button is visible in rcu initiation screen
    When user navigates to rcu initiation screen
    Then "<button>" is visible
    Examples:
      | button    |
      | Waive Off |
      | Initiate  |
      | Search    |
      | Reset     |
      | Cancel    |
      | Save      |

  #reviewcommentscenarios
  #FeatureID-ACAUTOCAS-4159,ACAUTOCAS-6382
  Scenario:Validating cancel button behaviour in rcu initiation screen
    When user navigates to rcu initiation screen
    And user reads data from the excel file "RCUWB.xlsx" under sheet "rcu_initiation" and row 0
    And user search rcu initiated application
    And user enters the details
    And user cancel the changes
    Then details are not are saved

#reviewcommentscenarios
  #FeatureID-ACAUTOCAS-4159,ACAUTOCAS-6383
  Scenario:Validation of default record present in in rcu initiation screen
    When user navigates to rcu initiation screen
    And user reads data from the excel file "RCUWB.xlsx" under sheet "rcu_initiation" and row 1
    Then default records are present in rcu initiation

#reviewcommentscenarios
  #FeatureID-ACAUTOCAS-4159,ACAUTOCAS-6384
  Scenario:Validation of help icon in in rcu initiation screen
    When user navigates to rcu initiation screen
    And user selects the help icon
    Then help window is displayed

#reviewcommentscenarios
  #FeatureID-ACAUTOCAS-4159
  Scenario Outline:Validation of tooltip is present for <field_name> in rcu initiation screen
    When user navigates to rcu initiation screen
    And user selects the "<field_name>"
    Then tooltip is displayed
    Examples:
      | field_name     |
      | Activity       |
      | Application Id |
      | Customer Name  |
      | Product Type   |
      | Status         |

    #reviewcommentscenarios
      #FeatureID-ACAUTOCAS-4159
  Scenario Outline:<var> select as <var1> validation in rcu initiation screen
    When user navigates to rcu initiation screen
    And user reads data from the excel file "RCUWB.xlsx" under sheet "rcu_initiation" and row <row_num>
    And user selects the "<var>"
    Then "<var>" is selected successfully
    Examples:
      | row_num | var              | var1              |
      | 2       | status           | completed         |
      | 3       | status           | In-Progress       |
      | 1       | status           | Initiated         |
      | 4       | status           | Not-Initiated     |
      | 5       | status           | Waived            |
      | 2       | Screening Status | RCU Pending       |
      | 3       | Screening Status | Sampling Not ok   |
      | 4       | Screening Status | Sampling ok       |
      | 5       | Screening Status | Sampling Required |
      | 6       | Screening Status | Screening Not Ok  |
      | 7       | Screening Status | Screening Ok      |
      | 8       | Screening Status | Waived            |

    #reviewcommentscenarios
    #FeatureID-ACAUTOCAS-4159
  Scenario Outline: Deselect selected <var> as <var1> validation in rcu initiation screen
    When user navigates to rcu initiation screen
    And user reads data from the excel file "RCUWB.xlsx" under sheet "rcu_initiation" and row <row_num>
    And user selects the "<var>"
    And user clear the "<var>"
    Then "<var>" is cleared successfully
    Examples:
      | row_num | var              | var1              |
      | 2       | status           | completed         |
      | 3       | status           | In-Progress       |
      | 1       | status           | Initiated         |
      | 4       | status           | Not-Initiated     |
      | 5       | status           | Waived            |
      | 2       | Screening Status | RCU Pending       |
      | 3       | Screening Status | Sampling Not ok   |
      | 4       | Screening Status | Sampling ok       |
      | 5       | Screening Status | Sampling Required |
      | 6       | Screening Status | Screening Not Ok  |
      | 7       | Screening Status | Screening Ok      |
      | 8       | Screening Status | Waived            |

   #reviewcommentscenarios
    #FeatureID-ACAUTOCAS-4159
  Scenario Outline:Unable to add more than three <var> together in rcu initiation screen
    When user navigates to rcu initiation screen
    And user reads data from the excel file "RCUWB.xlsx" under sheet "rcu_initiation" and row <row_num>
    And user adds "<var>"
    Then error message is displayed
    Examples:
      | row_num | var          |
      | 2       | Activity     |
      | 3       | Product Type |
      | 1       | Branch       |
      | 4       | Product      |
      | 5       | Scheme       |

 #reviewcommentscenarios
    #FeatureID-ACAUTOCAS-4159,ACAUTOCAS-6387
  Scenario Outline:Advance search checkbox <var> validation in rcu initiation stage
    When user navigates to rcu initiation screen
    And user <check_uncheck> advance search checkbox
    Then checkbox is <selected_deselected> successfully
    Examples:
      | check_uncheck | selected_deselected |
      | checked       | selected            |
      | uncheck       | deselected          |

 #reviewcommentscenarios
    #FeatureID-ACAUTOCAS-4159,ACAUTOCAS-6391
  Scenario:Validate reset button in rcu initiation screen
    When user navigates to rcu initiation screen
    And user reads data from the excel file "RCUWB.xlsx" under sheet "rcu_initiation" and row 6
    And user fills the data
    And user reset the details
    Then data is cleared from the fields

    #reviewcommentscenarios
    #FeatureID-ACAUTOCAS-4159,ACAUTOCAS-6391
  Scenario:Validate select all checbox in rcu initiation screen
    When user navigates to rcu initiation screen
    And user selects the select all checkbox
    Then all the application present in the grid is selected successfully

        #reviewcommentscenarios
    #FeatureID-ACAUTOCAS-4159,ACAUTOCAS-6391
  Scenario:Validate behaviour on deslecting select all checbox in rcu initiation screen
    When user navigates to rcu initiation screen
    And user selects the select all checkbox
    And user deselects the select all checkbox
    Then all the application present in the grid is deslected successfull


        #reviewcommentscenarios
    #FeatureID-ACAUTOCAS-4159,ACAUTOCAS-6391
  Scenario:Validate behaviour on deslecting select all checbox in rcu initiation screen
    When user navigates to rcu initiation screen
    And user selects the select all checkbox
    And user deselects the select all checkbox
    Then all the application present in the grid is deslected successfully


        #reviewcommentscenarios
    #FeatureID-ACAUTOCAS-4159,ACAUTOCAS-6391
  Scenario:Validate record pagination on selecting <var> in rcu initiation screen
    When user navigates to rcu initiation screen
    And user selects the "<var>" entries
    Then displayed "<var>" entries otherwise display all available entries
      | var |
      | 10  |
      | 25  |
      | 50  |
      | 100 |
      | 150 |
      | 200 |


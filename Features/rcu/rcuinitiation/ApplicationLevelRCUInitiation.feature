@Epic-RCU
@ReviewedBy-ayush.garg
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@Reconciled
@ReviewedByDEV
#FeatureID-ACAUTOCAS-505
Feature:Application Level RCU Initiation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  @ImplementedBy-rishabh.sachan
    @Release3
  Scenario Outline: ACAUTOCAS-3492: Initiate application in rcu initiation
    And user reads data from the excel file "<rcuInitiationWB>" under sheet "<rcuInitiation_home>" and row <rcuInitiation_home_rowNum>
    And user moves the application at "<Var_Stage>" stage to rcu "<Status>" status
    And user navigates to rcu initiation screen
    And user searches the application using application id along with "<InitialStatus>"
    And user selects the application
    When user initiates the application
    And user searches the application using application id along with "<ChangedStatus>"
    Then status of the application changed to "<RcuStatus>"
    Examples:
      | InitialStatus | RcuStatus | rcuInitiationWB     | rcuInitiation_home | rcuInitiation_home_rowNum | Var_Stage                 | Status        | ChangedStatus  |
      | Status        | Initiated | rcu_initiation.xlsx | home               | 32                        | dde_indiv_rcuinitiated_pl | Not-Initiated | Changed Status |

  @ImplementedBy-rishabh.sachan
    @Release3
  Scenario Outline: ACAUTOCAS-3493: Waive off application in rcu initiation
    And user reads data from the excel file "<rcuInitiationWB>" under sheet "<rcuInitiation_home>" and row <rcuInitiation_home_rowNum>
    And user moves the application at "<Var_Stage>" stage to rcu "<Status>" status
    When user navigates to rcu initiation screen
    And user searches the application using application id along with "<InitialStatus>"
    And user selects the application
    And user waive off the application
    And user searches the application using application id along with "<ChangedStatus>"
    Then status of the application changed to "<RcuStatus>"
    Examples:
      | InitialStatus | RcuStatus | rcuInitiationWB     | rcuInitiation_home | rcuInitiation_home_rowNum | ChangedStatus  | Var_Stage                 | Status        |
      | Status        | Waived    | rcu_initiation.xlsx | home               | 27                        | Changed Status | dde_indiv_rcuinitiated_pl | Not-Initiated |

  @ImplementedBy-rishabh.sachan
    @Release3
  Scenario Outline: ACAUTOCAS-3495: Application is on rcu initiation stage on setting the rcu result as rcu pending
    And user reads data from the excel file "<rcuInitiationWB>" under sheet "<rcuInitiation_home>" and row <rcuInitiation_home_rowNum>
    And user moves the application at "<Var_Stage>" stage to rcu "<Status>" status
    When user navigates to rcu initiation screen
    And user searches the application using application id along with "<SearchType>"
    And user selects the application
    And user select the rcu result as "<RcuResult>"
    And user saves the result after adding the reason
    Then application is on the "<RcuStatus>" stage
    Examples:
      | RcuResult   | RcuStatus | SearchType | rcuInitiationWB     | rcuInitiation_home | rcuInitiation_home_rowNum | Var_Stage                 | Status    |
      | RCU Pending | Initiated | Status     | rcu_initiation.xlsx | home               | 5                         | dde_indiv_rcuinitiated_pl | Initiated |

  @ImplementedBy-rishabh.sachan
    @Release3
  Scenario Outline: ACAUTOCAS-3497: Unable to set the rcu result as <RcuResult> of initiated application without adding the reason
    And user reads data from the excel file "<rcuInitiationWB>" under sheet "<rcuInitiation_home>" and row <rcuInitiation_home_rowNum>
    And user moves the application at "<Var_Stage>" stage to rcu "<Status>" status
    When user navigates to rcu initiation screen
    And user searches the application using application id along with "<SearchType>"
    And user selects the application
    And user set the result as "<RcuResult>"
    And user saves the result without adding the reason
    Then result is not save with proper error message
    Examples:
      | RcuResult         | rcuInitiationWB     | rcuInitiation_home | rcuInitiation_home_rowNum | SearchType | Var_Stage                 | Status    |
      | Sampling Required | rcu_initiation.xlsx | home               | 31                        | Status     | dde_indiv_rcuinitiated_pl | Initiated |
      | Waived            | rcu_initiation.xlsx | home               | 31                        | Status     | dde_indiv_rcuinitiated_pl | Initiated |
      | Screening Not Ok  | rcu_initiation.xlsx | home               | 31                        | Status     | dde_indiv_rcuinitiated_pl | Initiated |


  @ImplementedBy-yash.sharma
  @LoggedBug
  @Release3
  Scenario Outline: ACAUTOCAS-3500: Initiate rcu of an application at recommendation stage
    And user opens an application at "<Stage>" stage from application grid
    When user initiate rcu in intent indicator tab in recommendation stage
    Then rcu status is changed to "<RcuStatus>" in recommendation page
    Examples:
      | Stage                   | RcuStatus |
      | recommendation_indiv_hl | Initiated |

  @ImplementedBy-yash.sharma
  @Release3
  Scenario Outline: ACAUTOCAS-3501:  Initiate rcu of an application at credit approval stage
    And user moves the application at "<Stage>" stage to rcu "<RcuStatus>" status
    When user opens an application of "<Stage>" stage variant from credit approval grid
    Then rcu status is changed to "<RcuStatus>" in credit approval page
    Examples:
      | Stage                    | RcuStatus |
      | credit approval_indiv_pl | Initiated |

  @ImplementedBy-rishabh.sachan
    @Release3
  Scenario Outline: ACAUTOCAS-3502: Unable to initiate rcu of an application at reconsideration stage
    And user opens an application at "<Stage>" stage from application grid
    And user verifies update details checkbox is unchecked
    When user initiate rcu in intent indicator tab in reconsideration page
    Then rcu initiate button is not clickable
    Examples:
      | Stage                    |
      | reconsideration_indiv_pl |

  @ImplementedBy-manish.yadav2
    @Release3
  Scenario Outline: ACAUTOCAS-3499: Rcu status is displayed at credit approval stage
    When user opens an application of "<Stage>" stage variant from credit approval grid
    Then rcu status is displayed in applicant's information tab
    Examples:
      | Stage                    |
      | credit approval_indiv_pl |

  @ImplementedBy-aman.nagarkoti
  @Perishable
    @Release3
  Scenario Outline: ACAUTOCAS-3496: Application is on rcu verification stage on setting the rcu result as sampling required
    When user navigates to rcu initiation screen
    And user moves the application at "<Stage>" stage to rcu "<Status>" status
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user searches the application using application id along with status as "<RcuStatus>"
    And user set the result as "<RcuResult>" in rcu initiation
    And user selects the agency
    And user saves the result after adding the reason
    Then same application is on rcu verification stage
    Examples:
      | RcuResult         | RcuStatus | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum | Stage                     | Status    |
      | sampling required | initiated | rcu_initiation.xlsx | home               | 34                        | dde_indiv_rcuinitiated_pl | Initiated |

  @ImplementedBy-aman.nagarkoti
  @Perishable
    @Release3
  Scenario Outline: ACAUTOCAS-3494: Application is on rcu referral stage on setting the rcu result as <Var>
    And user moves the application at "<Stage>" stage to rcu "<Status>" status
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user searches the application using application id along with status as "<RcuStatus>"
    And user set the result as "<Var>" in rcu initiation
    When user saves the result after adding the reason for "<Var>"
    Then same application is on rcu referral stage
    Examples:
      | Var              | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum | RcuStatus | Stage                     | Status    |
      | Waived           | rcu_initiation.xlsx | home               | 35                        | initiated | dde_indiv_rcuinitiated_pl | Initiated |
      | Screening Not Ok | rcu_initiation.xlsx | home               | 36                        | initiated | dde_indiv_rcuinitiated_pl | Initiated |
      | Screening Ok     | rcu_initiation.xlsx | home               | 37                        | initiated | dde_indiv_rcuinitiated_pl | Initiated |

  @ImplementedBy-rishabh.sachan
    @Release3
  Scenario Outline: ACAUTOCAS-3498: Rcu status is displayed at <Stage> stage
    When user opens an application at "<Stage>" stage from application grid
    And user selects intent indicator tab
    Then rcu status is displayed
    Examples:
      | Stage                    |
      | reconsideration_indiv_hl |
      | recommendation_indiv_hl  |


          #FeatureID-ACAUTOCAS-505
  @NotImplemented
  Scenario Outline:Initiate rcu of an application at reconsideration stage
    When user opens an application at "<Stage>" stage from application grid
    And user verifies update details checkbox is checked
    And user initiate rcu in intent indicator tab
    Then rcu is initiated successfully
    Examples:
      | Stage           |
      | reconsideration |

      #Review Comments
    #FeatureID-ACAUTOCAS-505
  @NotImplemented
  Scenario Outline:Validate application is not in rcu referral on setting rcu initiation status as <status>
    When user navigates to rcu initiation screen
    And user searches the application using application id along with status as initiated
    And user reads data from the excel file "RCUWB.xls" under sheet "rcu_initiation" and row <row_num>
    And user initiate the rcu of the application with data
    And user search the application at rcu referral screen
    Then no application is displayed
    Examples:
      | status            | row_num |
      | sampling required | 0       |
      | rcu pending       | 11      |

          #Review Comments
    #FeatureID-ACAUTOCAS-505
  @NotImplemented
  Scenario:Validate successful rcu initiation with maximum characters in comment box of rcu reason
    When user navigates to rcu initiation screen
    And user searches the application using application id along with status as initiated
    And user reads data from the excel file "RCUWB.xls" under sheet "rcu_initiation" and row 12
    And user fills the rcu details
    And user adds the reason with maximum characters in comment box
    And user saves the details
    Then application is initiated successfully with success message   #Review Comments

    #FeatureID-ACAUTOCAS-505
  @NotImplemented
  Scenario Outline:Validate rcu status is in progress after initiating application with result as <Result>
    When user navigates to rcu initiation screen
    And user searches the application using application id along with status as initiated
    And user reads data from the excel file "RCUWB.xls" under sheet "rcu_initiation" and row <row_num>
    And user fills the rcu details
    And user saves the details
    Then application status is in progress
    Examples:
      | Result            | row_num |
      | Screening ok      | 13      |
      | Screening not ok  | 14      |
      | Sampling Required | 15      |
      | waived            | 16      |

    #FeatureID-ACAUTOCAS-505
  @NotImplemented
  Scenario Outline:Initiate RCU of that application whose rcu status is pending with result as <Result>
    When user navigates to rcu initiation screen
    And user searches the application using application id along with status as pending
    And user reads data from the excel file "RCUWB.xls" under sheet "rcu_initiation" and row <row_num>
    And user fills the rcu details
    And user saves the details
    Then application initiated successfully
    Examples:
      | Result            | row_num |
      | Screening ok      | 13      |
      | Screening not ok  | 14      |
      | Sampling Required | 15      |
      | waived            | 16      |

 #FeatureID-ACAUTOCAS-505
 # ${ ProductType:["IHF","IPF","PF","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
# ${ ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Post Approval","Disbursal"]}
  @NotImplemented
  Scenario Outline:Validate the stage of the <ProductType> application in rcu initiation screen
    When user navigates to rcu initiation screen
    And user searches the "<ProductType>" application of "<ApplicationStage>"
    And user selects the application id link
    Then application stage "<ApplicationStage>" is displayed
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

 #FeatureID-ACAUTOCAS-505
 # ${ ProductType:["IHF","IPF","PF","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  @NotImplemented
  Scenario Outline:Validate <var> is correct on rcu initiation screen of <ProductType> application
    When user navigates to rcu initiation screen
    And user searches the "<ProductType>" application
    Then "<var>" is correctly displayed
    Examples:
      | ProductType   | var           |
      | <ProductType> | Customer Name |
      | <ProductType> | Product Type  |
      | <ProductType> | Product Name  |

 #FeatureID-ACAUTOCAS-505
  @NotImplemented
  Scenario Outline: Validation of <close_minimize> rcu history pop up in rcu initiation
    When user navigates to rcu initiation screen
    And user searches the application
    And user "<close_minimize>" the rcu history pop up
    Then rcu history pop up is "<close_minimize>" successfully
    Examples:
      | close_minimize |
      | close          |
      | minimize       |

 #FeatureID-ACAUTOCAS-505
  @NotImplemented
  Scenario:Validation of maximize rcu history pop up in rcu initiation
    When user navigates to rcu initiation screen
    And user searches the application
    And user minimize the rcu history pop up
    And user maximize the rcu history pop up
    Then rcu history pop up is maximized successfully

#FeatureID-ACAUTOCAS-505
  @NotImplemented
  Scenario:Validate raised query from rcu initiation is present in response query
    And user navigated to rcu initiation screen
    And user searched the application
    And user raised a query to a user
    And user logged in CAS with above username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7
    When user navigates to response query
    And user searches above application
    Then query of the application is displayed

#FeatureID-ACAUTOCAS-505
  @NotImplemented
  Scenario:Raise query with multiple documents from rcu initiation
    And user navigated to rcu initiation screen
    And user searched the application
    And user raised a query with multiple documents
    When user navigates to response query
    And user searches above application
    Then query of the application is displayed

    #FeatureID-ACAUTOCAS-505
  @NotImplemented
  Scenario:Raise query with multiple documents from rcu initiation
    And user navigated to rcu initiation screen
    And user searched the application
    When user raised a query with maximum data in query text box
    Then query is raised successfully


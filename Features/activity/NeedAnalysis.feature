#commented by Anshu on 06-AUg-25 as these files already created#
#@Epic-Activity
#@ReviewedBy-None
#@AuthoredBy-kamal.shaiva
#@ImplementedBy-richa.singh
#@Reconciled
#@ReviewedByDEV
#Feature: Need_Analysis
#
#  @Release3
#  Scenario Outline: ACAUTOCAS-2601: Validate if need analysis tab is there on application
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user clicks on menu
#    And user clicks on Application Master
#    And user clicks on Application Grid Master
#    And user clicks on Applications
#    And user clicks on Create Application
#    And user selects the product type "<product_type>"
#    When user click on need analysis tab for "<product_type>"
#    Then user should be able to open the need analysis tab
#    Examples:
#      | product_type               |
#      | Home Loan                  |
#      | Loan Against Property      |
#      | Personal Loan              |
#      | Auto Loan                  |
#      | Agriculture Loan           |
#      | Commercial Vehicle         |
#      | Commercial Equipment       |
#      | Education Loan             |
#      | Finance Against Securities |
#      | Gold Loan                  |
#      | Multi Facility             |
#      | Omni Loan                  |
#
#  @Release3
#  @LoggedBug
#  Scenario Outline: ACAUTOCAS-2603:  Validate if after saving need analysis tab application number is generated in <module>
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user clicks on menu
#    And user clicks on Application Master
#    And user clicks on Application Grid Master
#    And user clicks on Applications
#    And user clicks on Create Application
#    And user selects the product type "Home Loan"
#    When user click on need analysis tab for "Home Loan"
#    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_questionMasterDetails>" and row <Activity_questionMasterDetails_rowNum>
#    And  user reply the questions on need analysis tab
#    When  user tries to save need analysis tab
#    Then user should be able to save the tab
#    And application number should be generated
#
#    Examples:
#      | module | ActivityWB    | Activity_questionMasterDetails | Activity_questionMasterDetails_rowNum |
#      | cas    | activity.xlsx | need_analysis                  | 0                                     |
#
#  @Release3
#  @LoggedBug
#  Scenario Outline: ACAUTOCAS-4199:  Validate if after entering need analysis details, it can be cancelled in <module>
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user clicks on menu
#    And user clicks on Application Master
#    And user clicks on Application Grid Master
#    And user clicks on Applications
#    And user clicks on Create Application
#    And user selects the product type "Personal Loan"
#    When user click on need analysis tab for "Personal Loan"
#    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_questionMasterDetails>" and row <Activity_questionMasterDetails_rowNum>
#    And  user reply the questions on need analysis tab
#    When  user tries to cancel need analysis tab
#    Then user should be able to cancel it
#
#    Examples:
#      | module | ActivityWB    | Activity_questionMasterDetails | Activity_questionMasterDetails_rowNum |
#      | cas    | activity.xlsx | need_analysis                  | 0                                     |
#
#
#  @Release3
#  @LoggedBug
#  Scenario Outline: ACAUTOCAS-4200:  Validate if after entering need analysis details, it can be reexecuted in <module>
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user clicks on menu
#    And user clicks on Application Master
#    And user clicks on Application Grid Master
#    And user clicks on Applications
#    And user clicks on Create Application
#    And user selects the product type "Home Loan"
#    When user click on need analysis tab for "Home Loan"
#    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_questionMasterDetails>" and row <Activity_questionMasterDetails_rowNum>
#    And  user reply the questions on need analysis tab
#    When  user tries to reexecute the need analysis
#    Then user should be able to reexecute it
#
#    Examples:
#      | module | ActivityWB    | Activity_questionMasterDetails | Activity_questionMasterDetails_rowNum |
#      | cas    | activity.xlsx | need_analysis                  | 0                                     |
#
#
#  @Release3
#  @LoggedBug
#  Scenario Outline: ACAUTOCAS-4201:  Validate if after entering need analysis details, it can be print in <module>
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user clicks on menu
#    And user clicks on Application Master
#    And user clicks on Application Grid Master
#    And user clicks on Applications
#    And user clicks on Create Application
#    And user selects the product type "Personal Loan"
#    When user click on need analysis tab for "Personal Loan"
#    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_questionMasterDetails>" and row <Activity_questionMasterDetails_rowNum>
#    And user reply the questions on need analysis tab
#    When user tries to print the need analysis
#    Then user should be able to print it
#
#    Examples:
#      | module | ActivityWB    | Activity_questionMasterDetails | Activity_questionMasterDetails_rowNum |
#      | cas    | activity.xlsx | need_analysis                  | 0                                     |
#
#
#  @Release3
#  @LoggedBug
#  Scenario Outline: ACAUTOCAS-4203:  Validate if after entering need analysis details, it can be email in <module>
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user clicks on menu
#    And user clicks on Application Master
#    And user clicks on Application Grid Master
#    And user clicks on Applications
#    And user clicks on Create Application
#    And user selects the product type "Personal Loan"
#    When user click on need analysis tab for "Personal Loan"
#    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_questionMasterDetails>" and row <Activity_questionMasterDetails_rowNum>
#    And  user reply the questions on need analysis tab
#    When user performs the email action
#    And user enter the email id
#    Then user should be able to email it
#
#    Examples:
#      | module | ActivityWB    | Activity_questionMasterDetails | Activity_questionMasterDetails_rowNum |
#      | cas    | activity.xlsx | need_analysis                  | 0                                     |
#
#
#  @Release3
#  @LoggedBug
#  Scenario Outline: ACAUTOCAS-4204:  Validate if after entering need analysis details, it can be save as draft in <module>
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user clicks on menu
#    And user clicks on Application Master
#    And user clicks on Application Grid Master
#    And user clicks on Applications
#    And user clicks on Create Application
#    And user selects the product type "Home Loan"
#    When user click on need analysis tab for "Home Loan"
#    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_questionMasterDetails>" and row <Activity_questionMasterDetails_rowNum>
#    And  user reply the questions on need analysis tab
#    When  user tries to save as draft the need analysis
#    Then user should be able to save it as draft
#
#    Examples:
#      | module | ActivityWB    | Activity_questionMasterDetails | Activity_questionMasterDetails_rowNum |
#      | cas    | activity.xlsx | need_analysis                  | 0                                     |
#
#  @Release3
#  @LoggedBug
#  Scenario Outline: ACAUTOCAS-4202:  Validate if after entering need analysis details, it can be save as pdf in <module>
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user clicks on menu
#    And user clicks on Application Master
#    And user clicks on Application Grid Master
#    And user clicks on Applications
#    And user clicks on Create Application
#    And user selects the product type "Personal Loan"
#    When user click on need analysis tab for "Personal Loan"
#    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_questionMasterDetails>" and row <Activity_questionMasterDetails_rowNum>
#    And user reply the questions on need analysis tab
#    When user tries to save as pdf the need analysis
#    Then user should be able to save it as pdf
#
#    Examples:
#      | module | ActivityWB    | Activity_questionMasterDetails | Activity_questionMasterDetails_rowNum |
#      | cas    | activity.xlsx | need_analysis                  | 0                                     |
#
#  @Release3
#  Scenario Outline: ACAUTOCAS-2596:  Validate if user is able to create question master
#    Given user is on CAS Login Page
#    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user is on question master
#    And user clicks on create question master in "<module>"
#    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_questionMasterDetails>" and row <Activity_questionMasterDetails_rowNum>
#    And user fills question master details
#    When user click on save and request approval
#    Then user should be able to send for approval the new record
#    And user logout from CAS
#    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
#    And user is on question master
#    And other authorised user should be able to approve the record
#
##    And other authorised user should be able to approve the record
#
#    Examples:
#      | module        | ActivityWB    | Activity_questionMasterDetails | Activity_questionMasterDetails_rowNum |
#      | common master | activity.xlsx | question_master                | 0                                     |
#
#  @Release3
#  Scenario Outline: ACAUTOCAS-2597:  Validate if user is able to create question template master
#    Given user is on CAS Login Page
#    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user is on question template master
#    And  user clicks on create question template master in "<module>"
#    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_questionMasterDetails>" and row <Activity_questionMasterDetails_rowNum>
#    And user fills question template master details
##    And user click on + button
#    And user adds "<n>" question created through question master
##    And user select mandatory questions
#    When  user click on save and request approval
#    Then user should be able to send for approval the new record
#    And user logout from CAS
#    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
#    And user is on question template master
#    And other authorised user should be able to approve the record
#    Examples:
#      | n  | module        | ActivityWB    | Activity_questionMasterDetails | Activity_questionMasterDetails_rowNum |
#      | 3  | common master | activity.xlsx | question_template              | 0                                     |
#      | 5  | common master | activity.xlsx | question_template              | 0                                     |
#      | 10 | common master | activity.xlsx | question_template              | 0                                     |
#
#  @Release3
#  Scenario Outline: ACAUTOCAS-2598:  Validate if user is able to create question policy master
#    Given user is on CAS Login Page
#    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 1
#    And user is on question policy master
#    And  user clicks on create question policy master in "<module>"
#    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_questionMasterDetails>" and row <Activity_questionMasterDetails_rowNum>
#    When  user tries to fill up the details
#    When  user click on save and request approval
#    Then user should be able to send for approval the new record
#    And user logout from CAS
#    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
#    And user is on question policy master
#    And other authorised user should be able to approve the record
#
#
##    Then user should be able to send for approval the new record with all mandatory fields
##    And other authorised user should be able to approve the record
#
#    Examples:
#      | module        | ActivityWB    | Activity_questionMasterDetails | Activity_questionMasterDetails_rowNum |
#      | common master | activity.xlsx | question_policy                | 0                                     |
#
#  @Release3
#
#  Scenario Outline: ACAUTOCAS-2599:  Validate if user is able to add need analysis tab on lead details
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user clicks on edit workflow configuration in "<module>" for "<product_type>"
##    And user search stage lead details
#    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_workflowConfigurationDetails>" and row <Activity_workflowConfigurationDetails_rowNum>
#    And user enters the stage name
##    And user select the stage
#    And user select the form configuration
#    And user selects the need analysis checkbox
##    And user click enable yes radio button
#    When  user click on save and request approval
#    Then user should be able to send for approval the new record
#    And user logout from CAS
#    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
#    And user is on workflow configuration
#    And other authorised user should be able to approve the record
#
#    Examples:
#      | product_type               | module | ActivityWB    | Activity_workflowConfigurationDetails | Activity_workflowConfigurationDetails_rowNum |
#      | Home Loan                  | cas    | activity.xlsx | workflow_configuration                | 0                                            |
#      | Loan Against Property      | cas    | activity.xlsx | workflow_configuration                | 0                                            |
#      | Personal Loan              | cas    | activity.xlsx | workflow_configuration                | 0                                            |
#      | Auto Loan                  | cas    | activity.xlsx | workflow_configuration                | 0                                            |
#      | Agriculture Loan           | cas    | activity.xlsx | workflow_configuration                | 0                                            |
#      | Commercial Vehicle         | cas    | activity.xlsx | workflow_configuration                | 0                                            |
#      | Commercial Equipment       | cas    | activity.xlsx | workflow_configuration                | 0                                            |
#      | Education Loan             | cas    | activity.xlsx | workflow_configuration                | 0                                            |
#      | Finance Against Securities | cas    | activity.xlsx | workflow_configuration                | 0                                            |
#      | Gold Loan                  | cas    | activity.xlsx | workflow_configuration                | 0                                            |
#      | Multi Facility             | cas    | activity.xlsx | workflow_configuration                | 0                                            |
#      | Omni Loan                  | cas    | activity.xlsx | workflow_configuration                | 0                                            |
#
#
#  Scenario Outline: ACAUTOCAS-2600:  Validate if user is able to create product defaulting master
#    And  user clicks on create product defaulting master in "<module>"
#    And user enters the code
#    And user enters the name
#    And user enters the description
#    And user select the purpose as need analysis
#    And user selects the product type as "<product_type>"
#    And user click on + button
#    And user select rule rule set
#    And user adds rule rule set
#    And result as pass fail *
#    And user select default
#    And user enters priority
#    And user add edit product and scheme details
#    When  user click on save and request approval
#    Then user should be able to send for approval the new record
#    And other authorised user should be able to approve the record
#
#    Examples:
#      | product_type               | module        |
#      | Home Loan                  | common master |
#      | Loan Against Property      | common master |
#      | Personal Loan              | common master |
#      | Auto Loan                  | common master |
#      | Agriculture Loan           | common master |
#      | Commercial Vehicle         | common master |
#      | Commercial Equipment       | common master |
#      | Education Loan             | common master |
#      | Finance Against Securities | common master |
#      | Gold Loan                  | common master |
#      | Multi Facility             | common master |
#      | Omni Loan                  | common master |
#
#  @NotImplemented
#  Scenario Outline: ACAUTOCAS-2600:  Validate if user is able to create product defaulting master
#    And  user clicks on create product defaulting master in "<module>"
#    When  user tries to fill up the details
#    Then user should be able to send for approval the new record with all mandatory fields
#    And other authorised user should be able to approve the record
#
#    Examples:
#      | module        |
#      | common master |
#
#  @NotImplemented
#  Scenario Outline: ACAUTOCAS-2602:  Validate if user is able to do need analysis on application in <module>
#    And  user is on need analysis tab
#    When  user tries to reply the group level questions
#    And user tries to reply to applicant level questions
#    Then user should be able to save it
#    And user should be able to see the eligible products
#    And user should be able to select the default product and submit
#
#    Examples:
#      | module |
#      | cas    |
#
#  @NotImplemented
#  Scenario Outline: ACAUTOCAS-2604:  Validate if product scheme mapping is coming on need analysis in <module>
#    And  user save the need analysis tab
#    When  a pop up window will open with product scheme interest rate tenure charges and action details
#    Then product and scheme should appear as per maintenance done in product defaulting master
#
#    Examples:
#      | module |
#      | cas    |
#
#  @NotImplemented
#  Scenario Outline: ACAUTOCAS-2605:  Validate if default option selected on need analysis tab are there on loan details page in <module>
#    And  user save the need analysis tab
#    And user select the default option and submit
#    When  user navigates to loan details page
#    Then product and scheme selected should come as default on loan details sourcing screen
#
#    Examples:
#      | module |
#      | cas    |
#
#  @NotImplemented
#  Scenario Outline: ACAUTOCAS-2605:  Validate if default option selected on need analysis tab are there on loan details page in <module>
#    And user save the need analysis tab
#    And user select the default option and submit
#    When user navigates to loan details page
#    Then Default ROI
#    And Default Tenure
#    And Maximum Loan Amount associated with the chosed product and scheme will be defaulted on the screen.
#
#    Examples:
#      | module |
#      | cas    |
#
#  @NotImplemented
#  Scenario Outline: ACAUTOCAS-2605:  Validate if default option selected on need analysis tab are there on loan details page in <module>
#    And  user save the need analysis tab
#    And user select the default option and submit
#    When  user navigates to loan details page
#    Then product and scheme selected should come as default	on loan details sourcing screen
#    And other options should come as dropdown
#
#    Examples:
#      | module |
#      | cas    |
#
#  @NotImplemented
#  Scenario Outline: ACAUTOCAS-2598:  Validate if user is able to create question policy master
#    And  user clicks on create question policy master in "<module>"
#    And user enters the code
#    And user enters the name
#    And user enters the description
#    And user select the purpose as need analysis
#    And user selects the question template level as applicant level or group level
#    And user click on + button
#    And user adds "<n>" question template created through question template master
#    And user select default
#    And user changes priority as per his need
#    When  user click on save and request approval
#    Then user should be able to send for approval the new record
#    And other authorised user should be able to approve the record
#
#    Examples:
#      | n  | module        |
#      | 3  | common master |
#      | 5  | common master |
#      | 10 | common master |
#
#  @NotImplemented
#  Scenario Outline: ACAUTOCAS-2597:  Validate if user is able to create question template master
#    And  user clicks on create question template master in "<module>"
#    When  user tries to fill up the details
#    Then user should be able to send for approval the new record with all mandatory fields
#    And other authorised user should be able to approve the record
#
#    Examples:
#      | module        |
#      | common master |
#
#  @NotImplemented
#  Scenario Outline: ACAUTOCAS-2596:  Validate if user is able to create question master
#    And  user clicks on create question master in "<module>"
#    When user tries to fill up the details
#    Then user should be able to send for approval the new record with all mandatory fields
#    And other authorised user should be able to approve the record
#
#    Examples:
#      | module        |
#      | common master |
#@Epic-Masters
#@AuthoredBy-anshima.tiwari
#@ReviewedBy-
#@ImplementedBy-
#@TechReviewedBy-
#
#@ExpenseCategoryMaster
#Feature: Income Expense Categories screen verification
#
#  #  Pre-Requisites---
##  In this feature we will validate all these screen level verification with User who is having ALL_Roles Authority
#
#  Background:
#    Given user is on CM Login Page
#    And user logged in CM with valid username and password present in "LoginDetailsCM.xlsx" under "LoginData" and 0
#    And user open income expense category master
#
#  @Test
#   #FeatureID-ACAUTOCAS-10800
#  Scenario Outline: user verifies income expense category master grid data fields
#    When user views the income expense category master screen
#    Then user should be able to view the fields "<FieldName>"
#    Examples:
#      | FieldName                    |
#      | Category Code                |
#      | Percentage Considered        |
#      | Category Description         |
#      | Source Type                  |
#      | Reviewed on                  |
#      | Created By                   |
#      | Reviewed By                  |
#      | Status                       |
#      | Active\Inactive              |
#      | Created on                   |
#      | Actions                      |
#      | New Customer Groups Button   |
#      | Upload Customer Group Button |
#      | XLS Download DropDown        |
#      | Show/Hide Column             |
#      | Search Grid                  |
#
# #FeatureID-ACAUTOCAS-10800
#  Scenario Outline: user verifies sorting on income expense category master grid
#    And user views the income expense category master screen
#    When user do sorting
#    Then user should be able to perform sorting "<Sorting>" on the below fields "<FieldName>"where sorting is marked Yes:
#    Examples:
#      | FieldName             | Sorting |
#      | Category Code         | Yes     |
#      | Category Description  | Yes     |
#      | Percentage Considered | Yes     |
#      | Source Type           | Yes     |
#      | Reviewed On           | Yes     |
#      | Created By            | Yes     |
#      | Reviewed By           | Yes     |
#      | Status                | Yes     |
#      | Active\Inactive       | Yes     |
#      | Created on            | Yes     |
#      | Updated on            | Yes     |
#
#
#    #  In this feature we will validate all these screen level validation with User who is having Only View Authority
#
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: user validates mandatory fields income expense category master
#    When user views the income expense category screen
#    And Verify mandatory fields
#    Then user should be able to view the fields "<FieldName>" with mandatory fields "<Mandatory>":
#    Examples:
#      | FieldName                      | Mandatory |
#      | Category Code                  | Yes       |
#      | Category Description           | Yes       |
#      | Percentage Considered          | Yes       |
#      | Source Type                    | Yes       |
#      | Customer group                 | No        |
#      | Occupation Type                | No        |
#      | Mandatory                      | No        |
#      | Default                        | No        |
#      | Percentage Considered Editable | No        |
#      | Create another after this one  | No        |
#
#
#    #validate help icon
#  #FeatureID-ACAUTOCAS-10800
#  Scenario: user validate help file in expense category master grid
#    When user clicks on help icon
#    Then help file should be open successfully
#
##validate template download
# #FeatureID-ACAUTOCAS-10800
#  Scenario: user validate template file in expense category master grid
#    And user clicks on Template Download checkbox
#    When user clicks on xls download
#    Then file should be downloaded successfully
#
##validate existing record download
#  #FeatureID-ACAUTOCAS-10800
#  Scenario: user validate existing record download in expense category master grid
#    And user selects any existing record
#    When user clicks on xls download
#    Then file should be downloaded successfully
#
#
# #validate all existing record download
#  #FeatureID-ACAUTOCAS-10800
#  Scenario: user validate all existing record download in expense category master grid
#    And user selects all existing record
#    When user clicks on xls download
#    Then file should be downloaded successfully
#
#    #validate all existing record download without selecting any record
#  #FeatureID-ACAUTOCAS-10800
#  Scenario: user validate all existing record download without selecting any record
#    When user clicks on xls download
#    Then file should be downloaded successfully
#
#    #validate show/hide columns option
#  #FeatureID-ACAUTOCAS-10800
#  Scenario: user validate show/hide columns option
#    And user clicks on  show/hide columns option
#    When user hide some colums
#    Then only selected columns should be visible
#
#    #validate search option
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: user validate search option
#    When user searches any record
#    Then record should be visible for search using these FieldName "<FieldName>"
#    Examples:
#      | FieldName             |
#      | Category Code         |
#      | Percentage Considered |
#      | Category Description  |
#      | Source Type           |
#      | Created By            |
#      | Reviewed By           |
#      | Status                |
#
#    #validate show entries option
#  #FeatureID-ACAUTOCAS-10800
#  Scenario: user validate show entries option
#    When user selects more than hundred
#    Then all hundred records should be visible
#
##validate cvs,xls,pdf option
#  #FeatureID-ACAUTOCAS-10800
#  Scenario: user validate cvs,xls,pdf option
#    When user clicks any option like cvs,xls,pdf
#    Then record file should be downloaded in that format
#
#
#    #Create a new record in income expense category master
##FeatureID-ACAUTOCAS-10800
#  Scenario: user selects customer group in income expense category master
#    When user select the customer group from given option
#    Then customer group should be select
#
#    #FeatureID-ACAUTOCAS-10800
#  Scenario: user selects occupation type in income expense category master
#    When user select the occupation type from given option
#    Then occupation type should be select
#
#    #FeatureID-ACAUTOCAS-10800
#  Scenario Outline: Create a new record in income expense category master with mandatory field
#    And user creates a new record
#    When user enters data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And source type is income
#    And select income source from given option
#    And user save & request approval the data
#    Then record should be save successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 0      |
#
#    #FeatureID-ACAUTOCAS-10800
#  Scenario Outline: Create a new record in income expense category master with mandatory field for expense
#    And user creates a new record
#    When user enters data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And source type is expense
#    And user save & request approval the data
#    Then record should be save successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 1      |
#
#    #FeatureID-ACAUTOCAS-10800
#  Scenario Outline: Create a new record in income expense category master with mandatory field for other income
#    And user creates a new record
#    When user enters data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And source type is other income
#    And select income source from given option
#    And user save & request approval the data
#    Then record should be save successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 2      |
#
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: Create a new record in income expense category master with mandatory field for source type other income
#    And user creates a new record
#    When user enters data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user save & request approval the data
#    Then record should be save successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 3      |
#
#    #FeatureID-ACAUTOCAS-10800
#  Scenario Outline: Create a new record in income expense category master
#    And user creates a new record
#    When user enters data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And source type is income
#    And select income source from given option
#    And user click on Tax Applicable
#    And user click on Negative Gearing Applicable
#    And user save & request approval the data
#    Then record should be save successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 4      |
#      | Income_Expense_Category.xlsx | Create    | 5      |
#
#    #FeatureID-ACAUTOCAS-10800
#  Scenario Outline: Create a new record in income expense category master for income
#    And user creates a new record
#    When user enters data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And source type is income
#    And select income source from given option
#    And user click on Tax Applicable
#    And user save & request approval the data
#    Then record should be save successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 6      |
#      | Income_Expense_Category.xlsx | Create    | 7      |
#
#    #FeatureID-ACAUTOCAS-10800
#  Scenario Outline: Create a new record in income expense category master for income with negative gearing
#    And user creates a new record
#    When user enters data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And source type is income
#    And select income source from given option
#    And user click on Negative Gearing Applicable
#    And user saves the data
#    Then record should be save successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 8      |
#
#    #FeatureID-ACAUTOCAS-10800
#  Scenario Outline: Create a new record in income expense category master for other income with tax
#    And user creates a new record
#    When user enters data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And source type is other income
#    And select income source from given option
#    And user click on Tax Applicable
#    And user click on Negative Gearing Applicable
#    And user saves the data
#    Then record should be save successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 9      |
#      | Income_Expense_Category.xlsx | Create    | 10     |
#
#    #FeatureID-ACAUTOCAS-10800
#  Scenario Outline: Create a new record in income expense category master for other income tax only
#    And user creates a new record
#    When user enters data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And source type is other income
#    And select income source from given option
#    And user click on Tax Applicable
#    And user saves the data
#    Then record should be save successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 11     |
#
#    #FeatureID-ACAUTOCAS-10800
#  Scenario Outline: Create a new record in income expense category master for other income negative gearing only
#    And user creates a new record
#    When user enters data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And source type is other income
#    And select income source from given option
#    And user click on Negative Gearing Applicable
#    And user saves the data
#    Then record should be save successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 12     |
#
#    #FeatureID-ACAUTOCAS-10800
#  Scenario Outline: Create a new record in income expense category master for expense with tax and commitment
#    And user creates a new record
#    When user enters data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And source type is expense
#    And select income source from given option
#    And user click on Tax Expense
#    And user click on Commitment
#    And user saves the data
#    Then record should be save successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 13     |
#
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: Create a new record in income expense category master for expense with commitment
#    And user creates a new record
#    When user enters data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And source type is expense
#    And select income source from given option
#    And user click on Commitment
#    And user saves the data
#    Then record should be save successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 14     |
#
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: Create a new record in income expense category master for expense with tax
#    And user creates a new record
#    When user enters data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And source type is expense
#    And select income source from given option
#    And user click on Tax Expense
#    And user saves the data
#    Then record should be save successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 15     |
#
#    #FeatureID-ACAUTOCAS-10800
#  Scenario Outline: Create a new record in income expense category master for expense with is living expense
#    And user creates a new record
#    When user enters data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And source type is expense
#    And select income source from given option
#    And user click on Is Living Expense
#    And user saves the data
#    Then record should be save successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 16     |
#
#    #FeatureID-ACAUTOCAS-10800
#  Scenario Outline: Create a new record in income expense category master for deduction
#    And user creates a new record
#    When user enters data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And source type is deduction
#    And select income source from given option
#    And user saves the data
#    Then record should be save successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 17     |
#      | Income_Expense_Category.xlsx | Create    | 18     |
#      | Income_Expense_Category.xlsx | Create    | 19     |
#      | Income_Expense_Category.xlsx | Create    | 20     |
#
#    #Approve the created record
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: User send the created income expense category master record for approval
#    And user reads the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user fills the data in income expense category master
#    And User sends the record for approval
#    And User logout from common master
#    And Another user login in common master as checker
#    And user logged in common master with valid username and password present in "LoginDetailsCM.xlsx" under "LoginData" and 0
#    And User open the income expense category master
#    And user read the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    When user approve the searched record
#    Then record should be approve successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 0      |
#      | Income_Expense_Category.xlsx | Create    | 1      |
#      | Income_Expense_Category.xlsx | Create    | 2      |
#      | Income_Expense_Category.xlsx | Create    | 3      |
#      | Income_Expense_Category.xlsx | Create    | 4      |
#      | Income_Expense_Category.xlsx | Create    | 5      |
#      | Income_Expense_Category.xlsx | Create    | 6      |
#      | Income_Expense_Category.xlsx | Create    | 7      |
#      | Income_Expense_Category.xlsx | Create    | 8      |
#      | Income_Expense_Category.xlsx | Create    | 9      |
#      | Income_Expense_Category.xlsx | Create    | 10     |
#      | Income_Expense_Category.xlsx | Create    | 11     |
#
#
#
#       #Approve the multiple created record
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: User send the created income expense category master records for approval
#    And user reads the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user fills the data in income expense category master
#    And User sends the record for approval
#    And User logout from common master
#    And Another user login in common master as checker
#    And user logged in common master with valid username and password present in "LoginDetailsCM.xlsx" under "LoginData" and 0
#    And User open the income expense category master
#    And user read the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    When user approve the seleted records by approve button
#    Then records should be approve successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 12     |
#      | Income_Expense_Category.xlsx | Create    | 13     |
#
#
##Approve created record by open it
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: User send the created income expense category master records for approval
#    And user reads the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user fills the data in income expense category master
#    And User sends the record for approval
#    And User logout from common master
#    And Another user login in common master as checker
#    And user logged in common master with valid username and password present in "LoginDetailsCM.xlsx" under "LoginData" and 0
#    And User open the income expense category master
#    And user read the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    When user approve the record by open it click on approve button
#    Then records should be approve successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 14     |
#
#    #Reject the created record
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: User send the created income expense category master record for approval to checker
#    And user reads the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user fills the data in income expense category master
#    And User sends the record for approval
#    And User logout from common master
#    And Another user login in common master as checker
#    And user logged in common master with valid username and password present in "LoginDetailsCM.xlsx" under "LoginData" and 0
#    And User open the income expense category master
#    And user read the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    When user reject the searched record
#    Then record should be reject successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 21     |
#
#      #Reject the multiple created record
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: User send the created income expense category master records for approval to checker
#    And user reads the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user fills the data in income expense category master
#    And User sends the record for approval
#    And User logout from common master
#    And Another user login in common master as checker
#    And user logged in common master with valid username and password present in "LoginDetailsCM.xlsx" under "LoginData" and 0
#    And User open the income expense category master
#    And user read the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    When user reject the records by click on reject button
#    Then records should be reject successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 15     |
#      | Income_Expense_Category.xlsx | Create    | 16     |
#
#
##Reject the record by open it
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: User send the created income expense category master records for approval to checker
#    And user reads the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user fills the data in income expense category master
#    And User sends the record for approval
#    And User logout from common master
#    And Another user login in common master as checker
#    And user logged in common master with valid username and password present in "LoginDetailsCM.xlsx" under "LoginData" and 0
#    And User open the income expense category master
#    And user read the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    When user reject the records by open the record click on reject button
#    Then records should be reject successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 17     |
#
#
# #user sendback the reocrd
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: User send the created income expense category master record for approval to checker user
#    And user reads the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user fills the data in income expense category master
#    And User sends the record for approval
#    And User logout from common master
#    And Another user login in common master as checker
#    And user logged in common master with valid username and password present in "LoginDetailsCM.xlsx" under "LoginData" and 0
#    And User open the income expense category master
#    And user read the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    When user sendback the searched record
#    Then record should be sendback successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 22     |
#
#     #user sendback multiple records
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: User send the created income expense category master records for approval to checker user
#    And user reads the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user fills the data in income expense category master
#    And User sends the records for approval
#    And User logout from common master
#    And Another user login in common master as checker
#    And user logged in common master with valid username and password present in "LoginDetailsCM.xlsx" under "LoginData" and 0
#    And User open the income expense category master
#    And user read the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    When user sendback the seleted records by sendback button
#    Then record should be sendback successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 18     |
#      | Income_Expense_Category.xlsx | Create    | 19     |
#
#
# #user sendback open record
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: User send the created income expense category master records for approval to checker user
#    And user reads the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user fills the data in income expense category master
#    And User sends the records for approval
#    And User logout from common master
#    And Another user login in common master as checker
#    And user logged in common master with valid username and password present in "LoginDetailsCM.xlsx" under "LoginData" and 0
#    And User open the income expense category master
#    And user read the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    When user open record click on sendback button
#    Then record should be sendback successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 20     |
#
#
#
#
#  #View the created record
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: View the created record in income expense category master
#    And user view a created new record
#    When user view the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user cannot edit the data
#    Then record should be open successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 0      |
#      | Income_Expense_Category.xlsx | Create    | 1      |
#
#    #Edit the created record
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: Edit the created record in income expense category master
#    And user edit the created record
#    When user edit all data present in workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user saves the data
#    Then record should be save successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Edit      | 0      |
#      | Income_Expense_Category.xlsx | Edit      | 1      |
#      | Income_Expense_Category.xlsx | Edit      | 2      |
#      | Income_Expense_Category.xlsx | Edit      | 3      |
#
#      #Approve the edited record
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: User send the income expense category master record for approval
#    And user view a edited new record
#    And user reads the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user fills the data in income expense category master
#    And User sends the record for approval
#    And User logout from common master
#    And Another user login in common master as checker
#    And user logged in common master with valid username and password present in "LoginDetailsCM.xlsx" under "LoginData" and 0
#    And User open the income expense category master
#    And user read the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    When user approve the searched record
#    Then record should be approve
#
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Edit      | 0      |
#      | Income_Expense_Category.xlsx | Edit      | 1      |
#      | Income_Expense_Category.xlsx | Edit      | 2      |
#      | Income_Expense_Category.xlsx | Edit      | 3      |
#
#    #View the edited record
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: View the edited record in income expense category master
#    And user view a edited new record
#    When user view the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user cannot edit the data
#    Then record should be open successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Edit      | 0      |
#      | Income_Expense_Category.xlsx | Edit      | 1      |
#      | Income_Expense_Category.xlsx | Edit      | 2      |
#      | Income_Expense_Category.xlsx | Edit      | 3      |
#
#    #Validate the customer groups master with incorrect scenario
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: User validates the record in income expense category master with fields <RowNum> and <FieldName>
#    And user creates a new record
#    When user enter data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user saves the data
#    Then verify in line "<ErrorMessage>" for field "<FieldName>"
#    Examples:
#      | SourceDataFile               | SheetName | RowNum | FieldName                           | ErrorMessage                                                                 |
#      | Income_Expense_Category.xlsx | Incorrect | 0      | This Field is Category Code         | Only alphanumeric and underscore upto length 40 is allowed.                  |
#      | Income_Expense_Category.xlsx | Incorrect | 1      | This Field is Percentage Considered | Only Positive values and Upto 2 digits are allowed before and after decimal. |
#      | Income_Expense_Category.xlsx | Incorrect | 2      | This Field is Percentage Considered | Only Positive values and Upto 2 digits are allowed before and after decimal. |
#
#    #Validate the customer groups master with negative scenario
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: User validates the record in income expense category master with mandatory fields <RowNum> and <FieldName>
#    And user creates a new record
#    When user enter data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user saves the data
#    Then verify in line "<ErrorMessage>" for field "<FieldName>" and "<Mandatory>" as Yes
#    Examples:
#      | SourceDataFile               | SheetName | RowNum | FieldName                           | Mandatory | ErrorMessage                                                 |
#      | Income_Expense_Category.xlsx | Negative  | 0      | This Field is Source Type           | Yes       | Source Type is mandatory.                                    |
#      | Income_Expense_Category.xlsx | Negative  | 1      | This Field is Category Code         | Yes       | There are some errors, please correct them and try again..!! |
#      | Income_Expense_Category.xlsx | Negative  | 2      | This Field is Category Description  | Yes       | There are some errors, please correct them and try again..!! |
#      | Income_Expense_Category.xlsx | Negative  | 3      | This Field is Income Source         | Yes       | Please add atleast one Income Source Mapping.                |
#      | Income_Expense_Category.xlsx | Negative  | 4      | This Field is Percentage Considered | Yes       | There are some errors, please correct them and try again..!! |
#
##Clone the created record
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: Clone the created record in income expense category master
#    And user clone a created record
#    When user clone the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user perform clone operation
#    Then record should be clone successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 0      |
#
#    #Search cloned record
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: Search the cloned record in income expense category master
#    And user search the cloned record
#    When user search the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user perform search operation
#    Then record should be search successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | Income_Expense_Category.xlsx | Create    | 0      |
#
#    #Create multiple cloned record
#  #FeatureID-ACAUTOCAS-10800
#  Scenario: user create multiple cloned records
#    And user selects muliple records
#    When user clicks on clone button
#    Then multiple records should be cloned
#
#    #user deletes multiple records
#  #FeatureID-ACAUTOCAS-10800
#  Scenario: user delete multiple created records
#    And user selects muliple records
#    When user clicks on delete button
#    Then multiple records should be deleted
#
#    #validate inactive record
#  #FeatureID-ACAUTOCAS-10800
#  Scenario: user verify inactive record
#    And user open any created record
#    And mark this record inactive
#    And User logout from common master
#    And Another user login in common master as checker
#    And user logged in common master with valid username and password present in "LoginDetailsCM.xlsx" under "LoginData" and 0
#    And user open expense category master
#    And user approve the record
#    When user check this record in transaction in financial details for selected source type
#    Then record should not come in drop down
#
#     #Download CSV and XLSX format file at customer groups
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: Download the CSV and XLSX file format in customer groups master
#    And user click on XLS download option
#    When user download the CSV and XLSX file in format FileFormat "<FileFormat>"
#    And user perform download operation
#    Then record should be download successfully
#    Examples:
#      | FileFormat                          |
#      | INCOME_EXPENSE_CATEGORY_UPLOAD.csv  |
#      | INCOME_EXPENSE_CATEGORY_UPLOAD.xlsx |
#
#    #upload downloaded record at income expense category
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: Upload the CSV and XLSX file format in income expense category master
#    And user fills all fields in CSV and XLSX files
#    And user click on upload income expense category option
#    When user upload the CSV and XLSX file in format FileFormat "<FileFormat>"
#    And user perform upload operation
#    Then record should be upload successfully
#    Examples:
#      | FileFormat                              |
#      | INCOME_EXPENSE_CATEGORY_UPLOAD_NEW.csv  |
#      | INCOME_EXPENSE_CATEGORY_UPLOAD_NEW.xlsx |
#
#    #Search uploaded record
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: Search the uploaded record in income expense category master
#    And user search the uploaded record
#    When user search the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user perform search operation
#    Then record should be search successfully
#    Examples:
#      | SourceDataFile               | SheetName | RowNum |
#      | INCOME_EXPENSE_CATEGORY.xlsx | Upload    | 0      |
#      | INCOME_EXPENSE_CATEGORY.xlsx | Upload    | 1      |
#
#
#  #delete the created record
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: Delete the created record in income expense category master
#    And user delete a created record
#    When user delete the data from workbook "<SourceDataFile>"
#    And user perform delete operation
#    Then record should be delete successfully
#    Examples:
#      | SourceDataFile               |
#      | INCOME_EXPENSE_CATEGORY.xlsx |
#    #Search deleted record
##FeatureID-ACAUTOCAS-10800
#  Scenario Outline: Search the deleted record in income expense category master
#    And user search the deleted record
#    When user search the data from workbook "<SourceDataFile>"
#    And user perform search operation
#    Then record should be search successfully
#    Examples:
#      | SourceDataFile               |
#      | INCOME_EXPENSE_CATEGORY.xlsx |
#
#    #validate online and online and offline option
#  #FeatureID-ACAUTOCAS-10800
#  Scenario: user validate online online and offline option
#    And user open any record
#    And click on online and offline option
#    And send for approval
#    And record is approved successfully
#    When user open record in online offline mode
#    Then record should be open successfully
#
#    #validate cancel button
#  #FeatureID-ACAUTOCAS-10800
#  Scenario: user validate cancel button
#    And user click on create expense category
#    And fill data in fields
#    When user clicks on cancel button
#    Then record should not created
#
#      #validate cancel button in edit record
#  #FeatureID-ACAUTOCAS-10800
#  Scenario: user validate cancel button for edit record
#    And user open any created record
#    And change some data in record
#    When user clicks on cancel button
#    Then record should not retain
#
#
#
#

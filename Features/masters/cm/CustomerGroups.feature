#@Epic-Masters
#@AuthoredBy-anshima.tiwari
#@ReviewedBy-
#@ImplementedBy-
#@TechReviewedBy-
#
#@NotImplemented
#
#Feature: CustomerGroups
#
#  Background:
#    Given user is on CM Login Page
#    And user logged in CM with valid username and password present in "LoginDetailsCM.xlsx" under "LoginData" and 0
#
#
#    #in this feature,scenarios covered for customer groups which is used to help in tracking exposure for each group and its applicant.
##validate customer groups screen
#  #FeatureID-ACAUTOCAS-8502
#  Scenario Outline: user validate customer groups grid
#    When user clicks on customer groups master
#    Then following options should be present with name "<Name>"
#    Examples:
#      | Name                   |
#      | Customer Code          |
#      | Customer Name          |
#      | Created By             |
#      | Reviewed By            |
#      | Created On             |
#      | Updated On             |
#      | Reviewed On            |
#      | Status                 |
#      | Active/Inactive        |
#      | Actions                |
#      | Template download      |
#      | Upload Customer Groups |
#      | XLS Download           |
#      | Create Customer Groups |
#      | Show/Hide Columns      |
#      | Show Entries           |
#      | Search                 |
#      | Copy                   |
#      | cvs                    |
#      | xls                    |
#      | pdf                    |
#      | first                  |
#      | previous               |
#      | Next                   |
#      | Last                   |
#
#
##validate sorting in customer groups
#  #FeatureID-ACAUTOCAS-8502
#  Scenario Outline: user validate sorting in customer groups grid
#    When user clicks on columns in customer groups master
#    Then sorting should be work for following field name "<FieldName>"
#    Examples:
#      | FieldName       |
#      | Customer Code   |
#      | Customer Name   |
#      | Created By      |
#      | Reviewed By     |
#      | Created On      |
#      | Updated On      |
#      | Reviewed On     |
#      | Status          |
#      | Active/Inactive |
#
#
##validate help icon
#  #FeatureID-ACAUTOCAS-8502
#  Scenario: user validate help file in customer groups grid
#    When user clicks on help icon
#    Then help file should be open successfully
#
##validate template download
#  #FeatureID-ACAUTOCAS-8502
#  Scenario: user validate template file in customer groups grid
#    And user clicks on Template Download checkbox
#    When user clicks on xls download
#    Then file should be downloaded successfully
#
##validate existing record download
#  #FeatureID-ACAUTOCAS-8502
#  Scenario: user validate existing record download in customer groups grid
#    And user selects one existing record
#    When user clicks on xls download
#    Then file should be downloaded successfully
#
##validate all existing record download
#  #FeatureID-ACAUTOCAS-8502
#  Scenario: user validate all existing record download in customer groups grid
#    And user selects all existing record
#    When user clicks on xls download
#    Then file should be downloaded successfully
#
##validate all existing record download without selecting any record
#  #FeatureID-ACAUTOCAS-8502
#  Scenario: user validate all existing record download without selecting any record
#    When user clicks on xls download
#    Then file should be downloaded successfully
#
##validate show/hide columns option
#  #FeatureID-ACAUTOCAS-8502
#  Scenario: user validate show/hide columns option
#    And user clicks on  show/hide columns option
#    When user hide some colums
#    Then only selected columns should be visible
#
#
#  #validate search option
# #FeatureID-ACAUTOCAS-8502
#  Scenario Outline: user validate search option
#    When user searches any record
#    Then record should be visible for search using these FieldName "<FieldName>"
#    Examples:
#      | FieldName   |
#      | Group Code  |
#      | Group Name  |
#      | Created By  |
#      | Reviewed By |
#      | Status      |
#
##validate show entries option
#  #FeatureID-ACAUTOCAS-8502
#  Scenario: user validate show entries option
#    When user selects more than hundred
#    Then all hundred records should be visible
#
##validate copy option
#  #FeatureID-ACAUTOCAS-8502
#  Scenario: user validate copy option
#    When user clicks on copy option
#    Then copy to clipboard message with record count should be visible
#
##validate cvs,xls,pdf option
#  #FeatureID-ACAUTOCAS-8502
#  Scenario: user validate cvs,xls,pdf option
#    When user clicks any option like cvs,xls,pdf
#    Then record file should be downloaded in that format
#
##validate create a record
#  #FeatureID-ACAUTOCAS-8502
#  Scenario Outline: user validate create a customer groups screen
#    When user clicks create customer groups button
#    Then following mandatory non mandatory "<Mandatory/NonMandatory>"fields "<Fields>" should be present
#    Examples:
#      | Fields                   | Mandatory/NonMandatory |
#      | Group Code               | Mandatory              |
#      | Group Name               | Mandatory              |
#      | Applicant Exposure Limit | Non Mandatory          |
#      | Multiplier               | Non Mandatory          |
#      | Loan Type                | Non Mandatory          |
#      | Group Limit              | Mandatory              |
#      | Group Exposure           | Non Mandatory          |
#      | Sanction Limit           | Non Mandatory          |
#      | Available Limit          | Non Mandatory          |
#      | Segregate Customer       | Non Mandatory          |
#
##Create a new record in customer groups master
#  #FeatureID-ACAUTOCAS-8502
#  Scenario Outline: create a record in customer groups master with mandatory data
#    And user creates a new record
#    And user enter data for mandatory fields
#    When user enters data from workbook <SourceDataFile> under sheet <SheetName> and row number <RowNum>
#    And user click on save button
#    Then record should be save with status New,Saved As Draft
#    Examples:
#      | SourceDataFile       | SheetName | RowNum |
#      | Customer_Groups.xlsx | Create    | 0      |
#      | Customer_Groups.xlsx | Create    | 1      |
#
#  #Approve the created record
#  #FeatureID-ACAUTOCAS-8502
#  Scenario Outline: User send the created customer groups master record for approval
#    And user reads the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user fills the data in customer groups master
#    And User sends the record for approval
#    And User logout from common master
#    And Another user login in common master as checker
#    And user logged in CM with valid username and password present in "LoginDetailsCM.xlsx" under "LoginData" and 0
#    And User open the customer groups master
#    And user read the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    When user approve the searched record
#    Then record should be approve successfully
#    Examples:
#      | SourceDataFile       | SheetName | RowNum |
#      | Customer_Groups.xlsx | Create    | 0      |
#      | Customer_Groups.xlsx | Create    | 1      |
#
#
#
#
#   #Reject the created record
#  #FeatureID-ACAUTOCAS-8502
#  Scenario Outline: User send the created customer groups master record for approval to checker user
#    And user logged in common master with valid username and password present in "LoginDetailsCM.xlsx" under "LoginData" and 0
#    And user view a created new record
#    And user reads the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user fills the data in customer groups master
#    And User sends the record for approval
#    And User logout from common master
#    And Another user login in common master as checker
#    And user logged in CM with valid username and password present in "LoginDetailsCM.xlsx" under "LoginData" and 0
#    And User open the customer groups master
#    And user read the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    When user reject the searched record
#    Then record should be reject successfully
#    Examples:
#      | SourceDataFile       | SheetName | RowNum |
#      | Customer_Groups.xlsx | Create    | 2      |
#
#     #Approve the multiple created record
##FeatureID-ACAUTOCAS-8502
#  Scenario Outline: User send the created customer groups master records for approval
#    And user reads the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user fills the data in customer groups master
#    And User sends the record for approval
#    And User logout from common master
#    And Another user login in common master as checker
#    And user logged in common master with valid username and password present in "LoginDetailsCM.xlsx" under "LoginData" and 0
#    And User open the customer groups master
#    And user read the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    When user approve the seleted records by approve button
#    Then records should be approve successfully
#    Examples:
#      | SourceDataFile       | SheetName | RowNum |
#      | Customer_Groups.xlsx | Create    | 3      |
#      | Customer_Groups.xlsx | Create    | 4      |
#
#
#    #Approve created record by open it
##FeatureID-ACAUTOCAS-8502
#  Scenario Outline: User send the created customer groups master records for approval
#    And user reads the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user fills the data in customer groups master
#    And User sends the record for approval
#    And User logout from common master
#    And Another user login in common master as checker
#    And user logged in common master with valid username and password present in "LoginDetailsCM.xlsx" under "LoginData" and 0
#    And User open the customer groups master
#    And user read the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    When user approve the record by open it click on approve button
#    Then records should be approve successfully
#    Examples:
#      | SourceDataFile       | SheetName | RowNum |
#      | Customer_Groups.xlsx | Create    | 5      |
#
#     #Reject the multiple created record
#
#  Scenario Outline: User send the created customer groups master records for approval to checker
#    And user reads the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user fills the data in customer groups master
#    And User sends the record for approval
#    And User logout from common master
#    And Another user login in common master as checker
#    And user logged in common master with valid username and password present in "LoginDetailsCM.xlsx" under "LoginData" and 0
#    And User open the customer groups master
#    And user read the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    When user reject the records by click on reject button
#    Then records should be reject successfully
#    Examples:
#      | SourceDataFile       | SheetName | RowNum |
#      | Customer_Groups.xlsx | Create    | 6      |
#      | Customer_Groups.xlsx | Create    | 7      |
#
#
#   #Reject the record by open it
##FeatureID-ACAUTOCAS-8502
#  Scenario Outline: User send the created customer groups master records for approval to checker
#    And user reads the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user fills the data in customer groups master
#    And User sends the record for approval
#    And User logout from common master
#    And Another user login in common master as checker
#    And user logged in common master with valid username and password present in "LoginDetailsCM.xlsx" under "LoginData" and 0
#    And User open the customer groups master
#    And user read the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    When user reject the records by open the record click on reject button
#    Then records should be reject successfully
#    Examples:
#      | SourceDataFile       | SheetName | RowNum |
#      | Customer_Groups.xlsx | Create    | 8      |
#
#  #Sendback the created record
#  #FeatureID-ACAUTOCAS-8502
#  Scenario Outline: User send the created customer groups master record for approval to checker
#    And user view a created new record
#    And user reads the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user fills the data in customer groups master
#    And User sends the record for approval
#    And User logout from common master
#    And Another user login in common master as checker
#    And user logged in CM with valid username and password present in "LoginDetailsCM.xlsx" under "LoginData" and 0
#    And User open the customer groups master
#    And user read the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    When user sendback the searched record
#    Then record should be sendback successfully
#    Examples:
#      | SourceDataFile       | SheetName | RowNum |
#      | Customer_Groups.xlsx | Create    | 9      |
#
#     #user sendback multiple records
##FeatureID-ACAUTOCAS-8502
#  Scenario Outline: User send the created customer groups master records for approval to checker user
#    And user reads the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user fills the data in customer groups master
#    And User sends the records for approval
#    And User logout from common master
#    And Another user login in common master as checker
#    And user logged in common master with valid username and password present in "LoginDetailsCM.xlsx" under "LoginData" and 0
#    And User open the customer groups master
#    And user read the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    When user sendback the seleted records by sendback button
#    Then record should be sendback successfully
#    Examples:
#      | SourceDataFile       | SheetName | RowNum |
#      | Customer_Groups.xlsx | Create    | 10     |
#      | Customer_Groups.xlsx | Create    | 11     |
#
#
# #user sendback open record
##FeatureID-ACAUTOCAS-8502
#  Scenario Outline: User send the created customer groups master records for approval to checker user
#    And user reads the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user fills the data in customer groups master
#    And User sends the records for approval
#    And User logout from common master
#    And Another user login in common master as checker
#    And user logged in common master with valid username and password present in "LoginDetailsCM.xlsx" under "LoginData" and 0
#    And User open the customer groups master
#    And user read the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    When user open record click on sendback button
#    Then record should be sendback successfully
#    Examples:
#      | SourceDataFile       | SheetName | RowNum |
#      | Customer_Groups.xlsx | Create    | 12     |
#
#
#      #View the created record
#  #FeatureID-ACAUTOCAS-8502
#  Scenario Outline: View the created record in customer groups master
#    And user view a created new record
#    When user view the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user cannot edit the data
#    Then record should be open successfully
#    Examples:
#      | SourceDataFile       | SheetName | RowNum |
#      | Customer_Groups.xlsx | Create    | 0      |
#      | Customer_Groups.xlsx | Create    | 1      |
#
#    #Edit the created record
#  #FeatureID-ACAUTOCAS-8502
#  Scenario Outline: Edit the created record in customer groups master
#    And user edit the created record
#    When user edit all data present in workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user saves the data
#    Then record should be save successfully
#    Examples:
#      | SourceDataFile       | SheetName | RowNum |
#      | Customer_Groups.xlsx | Edit      | 0      |
#      | Customer_Groups.xlsx | Edit      | 1      |
#      | Customer_Groups.xlsx | Edit      | 2      |
#
#    #Approve the edited record
##FeatureID-ACAUTOCAS-8502
#  Scenario Outline: User send the customer groups master record for approval
#    And user view a edited new record
#    And user reads the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user fills the data in customer groups master
#    And User sends the record for approval
#    And User logout from common master
#    And Another user login in common master as checker
#    And user logged in common master with valid username and password present in "LoginDetailsCM.xlsx" under "LoginData" and 0
#    And User open the customer groups master
#    And user read the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    When user approve the searched record
#    Then record should be approve
#
#    Examples:
#      | SourceDataFile       | SheetName | RowNum |
#      | Customer_Groups.xlsx | Edit      | 0      |
#      | Customer_Groups.xlsx | Edit      | 1      |
#      | Customer_Groups.xlsx | Edit      | 2      |
#
#    #View the edited record
##FeatureID-ACAUTOCAS-8502
#  Scenario Outline: View the edited record in customer groups master
#    And user view a edited new record
#    When user view the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user cannot edit the data
#    Then record should be open successfully
#    Examples:
#      | SourceDataFile       | SheetName | RowNum |
#      | Customer_Groups.xlsx | Edit      | 0      |
#      | Customer_Groups.xlsx | Edit      | 1      |
#      | Customer_Groups.xlsx | Edit      | 2      |
#
#
#
#    #Validate the customer groups master with negative scenario
##FeatureID-ACAUTOCAS-8502
#  Scenario Outline: User validates the record in customer groups master with mandatory fields <RowNum> and <FieldName>
#    And user creates a new record
#    When user enter data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user saves the data
#    Then verify in line "<ErrorMessage>" for field "<FieldName>" and "<Mandatory>" as Yes
#    Examples:
#      | SourceDataFile       | SheetName | RowNum | FieldName                              | Mandatory | ErrorMessage                                                        |
#      | Customer_Groups.xlsx | Negative  | 0      | This Field is Group Code               | Yes       | There are some errors, please correct them and try again..!!        |
#      | Customer_Groups.xlsx | Negative  | 1      | This Field is Group Name               | Yes       | There are some errors, please correct them and try again..!!        |
#      | Customer_Groups.xlsx | Negative  | 2      | This Field is Group Limit              | Yes       | There are some errors, please correct them and try again..!!        |
#      | Customer_Groups.xlsx | Negative  | 3      | This Field is Applicant Exposure Limit | No        | Applicant Exposure Limit can't be greater than Group Exposure Limit |
#
#
##Validate the customer groups Master with incorrect data
##FeatureID-ACAUTOCAS-8502
#  Scenario Outline: User validates the record in customer groups master error message with incorrect data for field <FieldName>
#    And user creates a new record
#    When user enter data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user saves the data
#    Then verify in line "<ErrorMessage>" for field "<FieldName>"
#    Examples:
#      | SourceDataFile       | SheetName | RowNum | FieldName                              | ErrorMessage                                                        |
#      | Customer_Groups.xlsx | Incorrect | 0      | This Field is Group Code               | Only alphanumeric and underscore up to length fifteen is allowed    |
#      | Customer_Groups.xlsx | Incorrect | 1      | This Field is Applicant Exposure Limit | Only positive values and Upto 18 digits are allowed before decimal. |
#      | Customer_Groups.xlsx | Incorrect | 2      | This Field is Applicant Exposure Limit | Only positive values and Upto 18 digits are allowed before decimal. |
#      | Customer_Groups.xlsx | Incorrect | 3      | This Field is Applicant Exposure Limit | Invalid Amount                                                      |
#      | Customer_Groups.xlsx | Incorrect | 4      | This Field is Group Limit              | Only positive values and Upto 18 digits are allowed before decimal. |
#      | Customer_Groups.xlsx | Incorrect | 5      | This Field is Group Limit              | Only positive values and Upto 18 digits are allowed before decimal. |
#      | Customer_Groups.xlsx | Incorrect | 6      | This Field is Group Limit              | Invalid Amount                                                      |
#      | Customer_Groups.xlsx | Incorrect | 7      | This Field is Multiplier               | Please enter only digits                                            |
#      | Customer_Groups.xlsx | Incorrect | 8      | This Field is Multiplier               | Please enter only digits                                            |
#      | Customer_Groups.xlsx | Incorrect | 9      | This Field is Multiplier               | Please enter only digits                                            |
#
#
#
##Clone the created record
##FeatureID-ACAUTOCAS-8502
#  Scenario Outline: Clone the created record in customer groups master
#    And user clone a created record
#    When user clone the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user perform clone operation
#    Then record should be clone successfully
#    Examples:
#      | SourceDataFile       | SheetName | RowNum |
#      | Customer_Groups.xlsx | Create    | 0      |
#
##Search cloned record
##FeatureID-ACAUTOCAS-8502
#  Scenario Outline: Search the cloned record in customer groups master
#    And user search the cloned record
#    When user search the data from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNum>
#    And user perform search operation
#    Then record should be search successfully
#    Examples:
#      | SourceDataFile       | SheetName | RowNum |
#      | Customer_Groups.xlsx | Create    | 0      |
#
#
# #Create multiple cloned record
#  #FeatureID-ACAUTOCAS-8502
#  Scenario: user create multiple cloned records
#    And user selects muliple records
#    When user clicks on clone button
#    Then multiple records should be cloned
#
#    #user deletes multiple records
#   #FeatureID-ACAUTOCAS-8502
#  Scenario: user delete multiple created records
#    And user selects muliple records
#    When user clicks on delete button
#    Then multiple records should be deleted
#
#    #validate inactive record
#   #FeatureID-ACAUTOCAS-8502
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
##Download CSV and XLSX format file at customer groups
##FeatureID-ACAUTOCAS-8502
#  Scenario Outline: Download the CSV and XLSX file format in customer groups master
#    And user click on XLS download option
#    When user download the CSV and XLSX file in format FileFormat "<FileFormat>"
#    And user perform download operation
#    Then record should be download successfully
#    Examples:
#      | FileFormat                 |
#      | CUSTOMER_GROUP_UPLOAD.csv  |
#      | CUSTOMER_GROUP_UPLOAD.xlsx |
#
##upload downloaded record at customer groups
##FeatureID-ACAUTOCAS-8502
#  Scenario Outline: Upload the CSV and XLSX file format in customer groups master
#    And user fills all fields in CSV and XLSX files
#    And user click on upload customer group option
#    When user upload the CSV and XLSX file in format FileFormat "<FileFormat>"
#    And user perform upload operation
#    Then record should be upload successfully
#    Examples:
#      | FileFormat                     |
#      | CUSTOMER_GROUP_UPLOAD_NEW.csv  |
#      | CUSTOMER_GROUP_UPLOAD_NEW.xlsx |
#
##Search uploaded record
##FeatureID-ACAUTOCAS-8502
#  Scenario Outline: Search the uploaded record in customer groups master
#    And user search the uploaded record
#    When user search the data from workbook "<SourceDataFile>" under sheet "<SheetName>" row number <RowNum>
#    And user perform search operation
#    Then record should be search successfully
#    Examples:
#      | SourceDataFile       | SheetName | RowNum |
#      | Customer_Groups.xlsx | Upload    | 0      |
#      | Customer_Groups.xlsx | Upload    | 1      |
#
#
#     #delete the created record
##FeatureID-ACAUTOCAS-8502
#  Scenario Outline: Delete the created record in customer groups master
#    And user delete a created record
#    When user delete the data from workbook "<SourceDataFile>" under sheet "<SheetName>" row number "<RowNum>"
#    And user perform delete operation
#    Then record should be delete successfully
#    Examples:
#      | SourceDataFile       | SheetName | RowNum |
#      | Customer_Groups.xlsx | Upload    | 0      |
#    #Search deleted record
##FeatureID-ACAUTOCAS-8502
#  Scenario Outline: Search the deleted record in customer groups master
#    And user search the deleted record
#    When user search the data from workbook "<SourceDataFile>" under sheet "<SheetName>" row number "<RowNum>"
#    And user perform search operation
#    Then record should be search successfully
#    Examples:
#      | SourceDataFile       | SheetName | RowNum |
#      | Customer_Groups.xlsx | Upload    | 0      |
#
#     #validate cancel button
#  #FeatureID-ACAUTOCAS-8502
#  Scenario: user validate cancel button
#    And user click on create customer groups
#    And fill data in fields
#    When user clicks on cancel button
#    Then record should not created
#
#      #validate cancel button in edit record
#  #FeatureID-ACAUTOCAS-8502
#  Scenario: user validate cancel button for edit record
#    And user open any created record
#    And change some data in record
#    When user clicks on cancel button
#    Then record should not retain
#
#

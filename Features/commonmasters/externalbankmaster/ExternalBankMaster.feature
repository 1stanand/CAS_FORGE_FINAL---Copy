@Epic-ExternalBankBranch
@DevTrack
@ReviewedBy-
@AuthoredBy-Gaurav.Khanna
@ImplementedBy-arshpreet.singh
@GA-9.0
@CAS-256733
#FeatureID-CAS-256733

Feature: Add "Printing Branch" Checkbox in External Bank Branch Master

  Background:
    Given user is on CAS Login Page
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: Create a new branch and mark it as printing branch

    And user navigates to external bank master
    And user clicks on create External Bank
    And user reads data from the excel file "<ExternalBankMasterWB>" under sheet "<ExternalBankMasterWB_SheetName>" and row <ExternalBankMasterWB_SheetName_rowNum>
    And user fills data in external bank master
    And user clicks new external bank branch record
    And user fills data from in external bank branch modal
    And user checks the Printing Branch checkbox
    And user clicks on save button in external bank branch modal
    And user clicks on Save and Request Approval button in External Bank Master
    And user logout from CAS
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigates to external bank master
    And user search external bank record in grid
    And user approves External Bank Master record
    And user search external bank record in grid
    And user opens the branch record for editing
    And user edits external bank branch modal
    Then the system should successfully save the branch as printing branch
    Examples:
      | ExternalBankMasterWB | ExternalBankMasterWB_SheetName | ExternalBankMasterWB_SheetName_rowNum |
      | external_bank.xlsx   | add_new                        | 0                                     |


  Scenario Outline: Edit existing branch to mark as printing branch

    And user navigates to external bank master
    And user reads data from the excel file "<ExternalBankMasterWB>" under sheet "<ExternalBankMasterWB_SheetName>" and row <ExternalBankMasterWB_SheetName_rowNum>
    And user search external bank record in grid
    And user opens the branch record for editing
    And user edits external bank branch modal
    And user checks the Printing Branch checkbox
    When user clicks on save button in external bank branch modal
    And user clicks on Save and Request Approval button in External Bank Master
    And user logout from CAS
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigates to external bank master
    And user search external bank record in grid
    And user approves External Bank Master record
    And user search external bank record in grid
    And user opens the branch record for editing
    And user edits external bank branch modal
    Then the system should successfully save the branch as printing branch
    Examples:
      | ExternalBankMasterWB | ExternalBankMasterWB_SheetName | ExternalBankMasterWB_SheetName_rowNum |
      | external_bank.xlsx   | edit                           | 0                                     |


  Scenario: Upload branch data with printing branch flag set
    And user logout from CAS
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigates to external bank master
    And the user uploads the file in External Bank Branch Master
    Then the system should validate and import the record successfully


  Scenario Outline: Download external bank branch master data with printing flag
    And user logout from CAS
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigates to external bank master
    And user reads data from the excel file "<ExternalBankMasterWB>" under sheet "<ExternalBankMasterWB_SheetName>" and row <ExternalBankMasterWB_SheetName_rowNum>
    And the user clicks Download with multiple branches for ICICI Bank with one marked as printing
    Then the downloaded file should contain a column IS_PRINTING_BRANCH
    Examples:
      | ExternalBankMasterWB | ExternalBankMasterWB_SheetName | ExternalBankMasterWB_SheetName_rowNum |
      | external_bank.xlsx   | download                       | 0                                     |


  Scenario Outline: Validate master update service accepts printing branch flag
    Given System reads data for creating an application with a given document status from "<SourceWorkbook>" excel and "<SourceSheet>" sheet and row "<DataSetId>" for master service
    And a request is sent to update branch
    Then the system should update the record in the master table
    Examples:
      | SourceWorkbook     | SourceSheet | DataSetId                  |
      | external_bank.xlsx | request     | EXTBANK_MASTERCREATE_00001 |

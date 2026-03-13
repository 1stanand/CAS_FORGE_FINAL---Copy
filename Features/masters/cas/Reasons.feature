@Epic-Masters
@ImplementedBy-mohd.aman


Feature:Reason Master

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ParentTag
  Scenario Outline: Create Records in Reasons Master
    And maker is on reason master
    And maker reads data from the excel file "<MasterWB>" under sheet "<Master_SheetDetails>" and row <Master_SheetDetails_rowNum>
    When  maker fill details in reason page with "<records>" from the excel file "<MasterWB>" under sheet "<Master_SheetDetails>" and row <Master_SheetDetails_rowNum>
    And maker click on save and request approval
    And maker logout from CAS
    And checker logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And checker is on reason master
    And maker reads data from the excel file "<MasterWB>" under sheet "<Master_SheetDetails>" and row <Master_SheetDetails_rowNum>
    And checker approved the record
    Then checker with authorised user should be able to approve the record in reason master
    And checker logout from CAS
    Examples:
      | MasterWB     | Master_SheetDetails | Master_SheetDetails_rowNum | records |
      | Reasons.xlsx | reason_master       | 0                          | 1       |

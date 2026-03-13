@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData


Feature: Committee Mappping

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ParentTag
  Scenario Outline: Create Records in Committee Mapping Master
    And maker is on Committee Mapping master
    And maker reads data from the excel file "<MasterWB>" under sheet "<Master_SheetDetails>" and row <Master_SheetDetails_rowNum>
    When  maker fill details in Committee Mapping page
    And maker click on save and request approval
    And maker logout from CAS
    And checker logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And checker is on Committee Mapping master
    And checker approved the record
    And checker reads data from the excel file "<MasterWB>" under sheet "<Master_SheetDetails>" and row <Master_SheetDetails_rowNum>
    Then checker with authorised user should be able to approve the record in commiting mapping
    And checker logout from CAS
    Examples:
      | MasterWB              | Master_SheetDetails      | Master_SheetDetails_rowNum |
      | CommitteeMapping.xlsx | committee_mapping_master | 0                          |

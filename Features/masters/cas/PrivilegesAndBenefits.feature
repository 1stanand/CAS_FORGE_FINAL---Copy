@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData


Feature: Privileges And Benefits

  @ParentTag
  Scenario Outline: Creating and approving a new privilege and benefits using maker and checker
    Given maker logged in "CAS" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And maker navigates to privileges and benefits
    When maker read data from excel file "<Privileges_And_Benefit_Workbook>" under "<Privileges_And_Benefit_SheetName>" and <Privileges_And_Benefit_rowNumber>
    And maker fill all details in privilege and benefit
    And maker click on save and request approval
    And maker logout from CAS
    And checker logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 1
    And checker is on  privileges and benefits master
    And checker approved the record
    And checker reads data from the excel file "<Privileges_And_Benefit_Workbook>" under sheet "<Privileges_And_Benefit_SheetName>" and row <Privileges_And_Benefit_rowNumber>
    Then Record save successfully in Privileges and Benefits
    And checker logout from CAS
    Examples:
      | SourceDataFile       | SheetName | RowNumber | Privileges_And_Benefit_Workbook | Privileges_And_Benefit_SheetName | Privileges_And_Benefit_rowNumber |
      | LoginDetailsCAS.xlsx | LoginData | 0         | PrivilegesAndBenefits.xlsx      | privilege_and_benefits_details   | 0                                |

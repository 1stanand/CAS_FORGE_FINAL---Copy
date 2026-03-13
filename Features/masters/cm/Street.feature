@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData

Feature: Street Policy

  @ParentTag
  Scenario Outline: Creating Street  using maker and aprroving using checker
    Given maker logged in "Common Masters" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And maker navigates to Street creation page
    And maker reads data from the excel file "<Street_Workbook>" under sheet "<Street_SheetName>" and row <Street_rowNumber>
    When maker fill details in Street Master
    And maker logout from common masters
    And checker logged in "Common Masters" with username and password present in "<SourceDataFile>" under "ChildBrowserSheet" and 0
    And checker is on  Street Master
    And checker approved the record
    And checker reads data from the excel file "<Street_Workbook>" under sheet "<Street_SheetName>" and row <Street_rowNumber>
    Then Record save successfully in Street Master
    And checker logout from common masters
    Examples:
      | SourceDataFile       | SheetName | RowNumber | Street_Workbook | Street_SheetName | Street_rowNumber |
      | LoginDetailsCAS.xlsx | LoginData | 0         | Street.xlsx     | Sheet1           | 0                |

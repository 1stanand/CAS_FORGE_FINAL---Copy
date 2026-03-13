@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData

Feature: Covenant Policy

  @ParentTag
  Scenario Outline: Creating covenant policy using maker and aprroving using checker
    Given maker logged in "Common Masters" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And maker navigates to covenant Policy creation page
    And maker reads data from the excel file "<MultiAssetPolicy_Workbook>" under sheet "<PolicySetup_SheetName>" and row <PolicySetup_rowNumber>
    And maker fill details in covenant Policy
    And maker click on save and request approval
    And maker logout from common masters
    And checker logged in "Common Masters" with username and password present in "<SourceDataFile>" under "ChildBrowserSheet" and 0
    And checker navigates to covenant Policy
    And checker approved the record
    And checker reads data from the excel file "<MultiAssetPolicy_Workbook>" under sheet "<PolicySetup_SheetName>" and row <PolicySetup_rowNumber>
    Then Record save successfully in Covenant Policy
    And checker logout from common masters
    Examples:
      | SourceDataFile       | SheetName | RowNumber | MultiAssetPolicy_Workbook | PolicySetup_SheetName | PolicySetup_rowNumber |
      | LoginDetailsCAS.xlsx | LoginData | 0         | CovenatPolicy.xlsx        | Sheet1                | 0                     |

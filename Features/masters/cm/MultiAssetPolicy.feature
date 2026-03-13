@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData

Feature: Multi Asset Policy

  @ChildTag
  Scenario Outline: Creating  MultiAssetPolicy using maker and aprroving using checker
    Given maker logged in "Common Masters" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And maker navigates to multi asset policy creation page
    And maker reads data from the excel file "<MultiAssetPolicy_Workbook>" under sheet "<PolicySetup_SheetName>" and row <PolicySetup_rowNumber>
    When maker fills Multi Asset Details
    And maker click on save and request approval
    And maker logout from common masters
    And checker logged in "Common Masters" with username and password present in "<SourceDataFile>" under "ChildBrowserSheet" and 0
    And checker is on  multi asset policy page
    And checker approved the record
    And checker reads data from the excel file "<MultiAssetPolicy_Workbook>" under sheet "<PolicySetup_SheetName>" and row <PolicySetup_rowNumber>
    Then Record save successfully in Multi Asset Policy
    And checker logout from common masters
    Examples:
      | SourceDataFile       | SheetName | RowNumber | MultiAssetPolicy_Workbook | PolicySetup_SheetName | PolicySetup_rowNumber |
      | LoginDetailsCAS.xlsx | LoginData | 0         | MultiAssetPolicy.xlsx     | PolicySetup           | 0                     |

@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData

Feature:  Collateral Document Mapping

  @ChildTag
  Scenario Outline: Create collateral document mapping
    Given maker logged in "Common Masters" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And maker navigates to collateral document mapping
    When maker fills data from "<Doc_Workbook>" under "<Doc_SheetName>" and row <Doc_rowNumber>
    And maker click on save and request approval
    And maker logout from common masters
    And checker logged in "Common Masters" with username and password present in "<SourceDataFile>" under "ChildBrowserSheet" and <RowNumber>
    And checker navigates to collateral document mapping
    And checker approved the record
    And checker reads data from the excel file "<Doc_Workbook>" under sheet "<Doc_SheetName>" and row <Doc_rowNumber>
    Then record save successfully in collateral document mapping
    And checker logout from common masters
    Examples:
      | SourceDataFile       | SheetName | RowNumber | Doc_Workbook                   | Doc_SheetName | Doc_rowNumber |
      | LoginDetailsCAS.xlsx | LoginData | 0         | CollateralDocumentMapping.xlsx | Sheet1        | 0             |

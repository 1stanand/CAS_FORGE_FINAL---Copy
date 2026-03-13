@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData

Feature:  Showroom Asset Mapping

  @ChildTag
  Scenario Outline: Create showroom asset mapping
    Given maker logged in "Common Masters" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And maker navigates to showroom asset mapping
    When maker fills data present in "<ShowroomAssetMapping_Workbook>" under "<ShowroomAssetMapping_SheetName>" and row <ShowroomAssetMapping_rowNumber>
    And maker click on save and request approval
    And maker logout from common masters
    And checker logged in "Common Masters" with username and password present in "<SourceDataFile>" under "ChildBrowserSheet" and <RowNumber>
    And checker navigates to showroom asset mapping
    And checker approved the record
    And checker reads data from the excel file "<ShowroomAssetMapping_Workbook>" under sheet "<ShowroomAssetMapping_SheetName>" and row <ShowroomAssetMapping_rowNumber>
    Then Record saved successfully in showroom asset mapping
    And checker logout from common masters
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ShowroomAssetMapping_Workbook | ShowroomAssetMapping_SheetName | ShowroomAssetMapping_rowNumber |
      | LoginDetailsCAS.xlsx | LoginData | 0         | ShowroomAssetMapping.xlsx     | Sheet1                         | 0                              |

@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData


Feature: Pricing Control Matrix

  @ParentTag
  Scenario Outline: Create pricing control matrix
    Given maker logged in "CAS" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And maker navigates to pricing control matrix
    And maker fill data present in "<PricingControlMatrix_Workbook>" under "<PricingControlMatrix_SheetName>" and row <PricingControlMatrix_rowNumber>
    And maker click on save and request approval header
    And maker logout from CAS
    And checker logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 1
    And navigates to pricing control matrix
    And checker approved the record
    And checker reads data from the excel file "<PricingControlMatrix_Workbook>" under sheet "<PricingControlMatrix_SheetName>" and row <PricingControlMatrix_rowNumber>
    Then Record save successfully in Pricing Control Matrix
    And checker logout from CAS
    Examples:
      | SourceDataFile       | SheetName | RowNumber | PricingControlMatrix_Workbook | PricingControlMatrix_SheetName | PricingControlMatrix_rowNumber |
      | LoginDetailsCAS.xlsx | LoginData | 0         | PricingControlMatrix.xlsx     | pricing control matrix         | 0                              |

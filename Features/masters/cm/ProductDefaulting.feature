@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData

Feature: Product Defaulting

  @ParentTag
  Scenario Outline: Product Defaulting
    Given  maker logged in "Common Masters" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And maker Navigates to Product Defaulting
    And maker reads data from the excel file "<SourceDataFile2>" under sheet "<ProductDefaultingMaster_sheetName>" and row <ProductDefaultingMaster_rowNumber>
    And maker fills Product Defaulting data
    And maker click on save and request approval
    And maker logout from common masters
    And checker logged in "Common Masters" with username and password present in "<SourceDataFile>" under "<ChildBrowser_SheetName>" and <ChildBrowser_rowNumber>
    And checker Navigates to Product Defaulting
    And checker approved the record
    And checker reads data from the excel file "<SourceDataFile2>" under sheet "<ProductDefaultingMaster_sheetName>" and row <ProductDefaultingMaster_rowNumber>
    Then Record save successfully in Product Defaulting
    And checker logout from common masters
    Examples:
      | SourceDataFile       | SheetName | RowNumber | SourceDataFile2              | ProductDefaultingMaster_sheetName | ProductDefaultingMaster_rowNumber | ChildBrowser_SheetName | ChildBrowser_rowNumber |
      | LoginDetailsCAS.xlsx | LoginData | 0         | ProductDefaultingMaster.xlsx | product_default_master            | 0                                 | ChildBrowserSheet      | 0                      |

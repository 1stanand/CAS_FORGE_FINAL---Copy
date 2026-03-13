@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData

Feature: NVIC Code


  @ChildTag
  Scenario Outline: Create an NVIC Code
    Given maker logged in "Common Masters" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And maker navigates to NVIC Code
    And maker reads data from the excel file "<InfoDataFile>" under sheet "<InfoSheetName>" and row <InfoRowNumber>
    When maker fills data into NVIC Code form
    And maker click on save and request approval
    And maker logout from common masters
    And checker logged in "Common Masters" with username and password present in "<SourceDataFile>" under "<ChildBrowserSheet>" and <RowNumber1>
    And checker navigates to NVIC Code
    And checker approved the record
    And checker reads data from the excel file "<InfoDataFile>" under sheet "<InfoSheetName>" and row <InfoRowNumber>
    Then record save successfully in NVIC Code
    And checker logout from common masters
    Examples:
      | SourceDataFile       | SheetName | RowNumber | InfoDataFile      | InfoSheetName | InfoRowNumber | ChildBrowserSheet | RowNumber1 |
      | LoginDetailsCAS.xlsx | LoginData | 0         | NVICCodeInfo.xlsx | Sheet1        | 0             | ChildBrowserSheet | 0          |

@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData
Feature: Assets Model


  @ParentTag
  Scenario Outline: Create an Asset Model
    Given maker logged in "Common Masters" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user navigates to asset model
    And maker read data from excel file "<InfoDataFile>" under "<InfoSheetName>" and <InfoRowNumber>
    And maker fills data into asset form
    And maker click on save and request approval
    And maker logout from common masters
    And checker logged in "Common Masters" with username and password present in "<SourceDataFile>" under "<ChildBrowserSheet>" and <RowNumber1>
    And checker navigates to asset model
    And checker approved the record
    And checker reads data from the excel file "<InfoDataFile>" under sheet "<InfoSheetName>" and row <InfoRowNumber>
    Then record save successfully in Asset Model
    And checker logout from common masters
    Examples:
      | SourceDataFile       | SheetName | RowNumber | InfoDataFile        | InfoSheetName | InfoRowNumber |ChildBrowserSheet | RowNumber1 |
      | LoginDetailsCAS.xlsx | LoginData | 0         | AssetModelInfo.xlsx | Sheet1        | 0             |ChildBrowserSheet | 0          |

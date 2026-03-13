@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData

Feature: Agency City Mapping


  @ChildTag
  Scenario Outline: Create an Agency City Mapping
    Given maker logged in "Common Masters" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And maker navigates to Agency Mapping
    And maker read data from excel file "<InfoDataFile>" under "<InfoSheetName>" and <InfoRowNumber>
    And user fills data into agency city form
    And maker click on save and request approval
    And maker logout from common masters
    And checker logged in "Common Masters" with username and password present in "<SourceDataFile>" under "<ChildBrowserSheet>" and <RowNumber>
    And checker navigates to Agency Mapping
    And checker approved the record
    And checker reads data from the excel file "<InfoDataFile>" under sheet "<InfoSheetName>" and row <InfoRowNumber>
    Then record save successfully in Agency City Mapping
    And checker logout from common masters
    Examples:
      | SourceDataFile       | SheetName | RowNumber | InfoDataFile               | InfoSheetName | InfoRowNumber | ChildBrowserSheet | RowNumber |
      | LoginDetailsCAS.xlsx | LoginData | 0         | AgencyCityMappingInfo.xlsx | Sheet1        | 0             | ChildBrowserSheet | 0          |

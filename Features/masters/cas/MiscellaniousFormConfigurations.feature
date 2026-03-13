@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData

Feature: Miscellaneous form configuration


  @ParentTag
  Scenario Outline: Create a miscellaneous form configuration
    Given maker logged in "CAS" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And maker navigates to miscellanious form configuration
    And maker reads data from the excel file "<InfoDataFile>" under sheet "<InfoSheetName>" and row <InfoRowNumber>
    And maker fills data into form
    And maker click on save and request approval
    And maker logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 1
    And checker navigates to miscellanious form configuration
    And checker approved the record
    And checker reads data from the excel file "<InfoDataFile>" under sheet "<InfoSheetName>" and row <InfoRowNumber>
    Then checker  approve the record in miscellanious form configuration
    And checker logout from CAS
    Examples:
      | SourceDataFile       | SheetName | RowNumber | InfoDataFile                 | InfoSheetName           | InfoRowNumber |
      | LoginDetailsCAS.xlsx | LoginData | 0         | MiscellaniousFormConfig.xlsx | MiscellaneousFormConfig | 0             |

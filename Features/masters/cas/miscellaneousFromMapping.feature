@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData

Feature: Miscellaneous Form Mapping

  @ChildTag
  Scenario Outline: Miscellaneous Form Mapping
    Given maker logged in "CAS" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And maker navigates to Miscellaneous Form Mapping
    And maker reads data from the excel file "<SourceDataFile2>" under sheet "<MiscellaneousFormMapping_SheetName>" and row <MiscellaneousFormMapping_rowNumber>
    When maker fills Miscellaneous Form Mapping and submit
    And maker click on save and request approval
    And maker logout from CAS
    And checker logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 1
    And checker is on Miscellaneous Form Mapping
    And checker approved the record
    And checker reads data from the excel file "<SourceDataFile2>" under sheet "<MiscellaneousFormMapping_SheetName>" and row <MiscellaneousFormMapping_rowNumber>
    Then Record save successfully in Miscellanious Form Mapping
    And checker logout from CAS
    Examples:
      | SourceDataFile       | SheetName | RowNumber | SourceDataFile2               | MiscellaneousFormMapping_SheetName | MiscellaneousFormMapping_rowNumber |
      | LoginDetailsCAS.xlsx | LoginData | 0         | MiscellaniousFormMapping.xlsx | MiscellaneousFormMapping           | 0                                  |

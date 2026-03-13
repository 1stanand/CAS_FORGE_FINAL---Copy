@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData

Feature: Additional Scheme Parameter

  @ChildTag
  Scenario Outline: Create Additional Scheme Parameter
    And maker logged in "Common Masters" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And maker navigates to additional scheme parameter
    And maker read data from excel file "<SourceDataFile2>" under "<AdditionalSchemeParameter_SheetName>" and <AdditionalSchemeParameter_Rownumber>
    And user fills additional scheme parameters details
    And maker click on save and request approval
    And maker logout from common masters
    And checker logged in "Common Masters" with username and password present in "<SourceDataFile>" under "<ChildBrowser_SheetName>" and <ChildBrowser_rowNumber>
    And checker navigates to additional scheme parameter
    And checker approved the record
    And checker reads data from the excel file "<SourceDataFile2>" under sheet "<AdditionalSchemeParameter_SheetName>" and row <AdditionalSchemeParameter_Rownumber>
    Then Record save successfully in additional scheme details
    And checker logout from common masters
    Examples:
      | SourceDataFile       | SheetName | RowNumber | SourceDataFile2              | AdditionalSchemeParameter_SheetName | AdditionalSchemeParameter_Rownumber | ChildBrowser_SheetName | ChildBrowser_rowNumber |
      | LoginDetailsCAS.xlsx | LoginData | 0         | AdditionalSchemeDetails.xlsx | Additional_Scheme_Parameter         | 0                                   | ChildBrowserSheet      | 0                      |


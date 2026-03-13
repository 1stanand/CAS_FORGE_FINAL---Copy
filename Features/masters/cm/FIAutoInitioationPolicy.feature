@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData

Feature: FI AutoInitiation Policy

  @ParentTag
  Scenario Outline: Create FI AutoInitiation Policy
    Given maker logged in "Common Masters" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And maker navigate to FIAutoInitiation Policy
    And maker read data from excel file "<SourceDataFile2>" under "<FIAutoInitiationPolicy_SheetName>" and <FI_AutoInitiationPolicy_Rownumber>
    When user fills FIAutoInitiation Policy details
    And maker click on save and request approval
    And maker logout from common masters
    And checker logged in "Common Masters" with username and password present in "<SourceDataFile>" under "<ChildBrowser_SheetName>" and <ChildBrowser_rowNumber>
    And checker is on FIAutoInitiation Policy
    And checker approved the record
    And checker reads data from the excel file "<SourceDataFile2>" under sheet "<FIAutoInitiationPolicy_SheetName>" and row <FI_AutoInitiationPolicy_Rownumber>
    Then Record save successfully in FIAutoInitiation Policy
    And checker logout from common masters
    Examples:
      | SourceDataFile       | SheetName | RowNumber | SourceDataFile2              | FIAutoInitiationPolicy_SheetName | FI_AutoInitiationPolicy_Rownumber | ChildBrowser_SheetName | ChildBrowser_rowNumber |
      | LoginDetailsCAS.xlsx | LoginData | 0         | FIAutoInitiationPolicy.xlsx | fi_auto_initiation_policy        | 1                                 | ChildBrowserSheet      | 0                      |


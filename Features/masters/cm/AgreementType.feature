@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData

Feature: Agreement Type

  @ParentTag
  Scenario Outline: User login and upload Agreement Type
    Given maker logged in "Common Masters" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And maker Navigates to Agreement Type
    And maker read data from excel file "<SourceDataFile2>" under "<AgreementType_sheetName>" and <AgreementType_rowNumber>
    And maker fills agreement type data
    And maker click on save and request approval
    And maker logout from common masters
    And checker logged in "Common Masters" with username and password present in "<SourceDataFile>" under "<ChildBrowser_SheetName>" and <ChildBrowser_rowNumber>
    And checker is on Agreement Type
    And checker approved the record
    And checker reads data from the excel file "<SourceDataFile2>" under sheet "<AgreementType_sheetName>" and row <AgreementType_rowNumber>
    Then record save successfully by Agreement Type
    And checker logout from common masters
    Examples:
      | SourceDataFile       | SheetName | RowNumber | SourceDataFile2    | AgreementType_sheetName | AgreementType_rowNumber | ChildBrowser_SheetName | ChildBrowser_rowNumber |
      | LoginDetailsCAS.xlsx | LoginData | 0         | AgreementType.xlsx | agreement_type          | 0                       | ChildBrowserSheet      | 0                      |

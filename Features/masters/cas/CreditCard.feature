@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData

Feature: Credit Card Type

  @ChildTag
  Scenario Outline: Credit Card Type
    Given maker logged in "CAS" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And maker navigate through Credit Card Type Page
    And maker reads data from the excel file "<SourceDataFile2>" under sheet "<CreditCardType_SheetName>" and row <CreditCardType_Rownumber>
    When maker fills credit card type details
    And maker click on save and request approval
    And maker logout from CAS
    And checker logged in "CAS" with username and password present in "<SourceDataFile>" under "<ChildBrowser_SheetName>" and <ChildBrowser_rowNumber>
    And checker is on Credit Card Detail
    And checker approved the record
    And checker reads data from the excel file "<SourceDataFile2>" under sheet "<CreditCardType_SheetName>" and row <CreditCardType_Rownumber>
    Then Record save successfully in Credit Card
    And checker logout from CAS
    Examples:
      | SourceDataFile       | SheetName | RowNumber | SourceDataFile2     | CreditCardType_SheetName | CreditCardType_Rownumber | ChildBrowser_SheetName | ChildBrowser_rowNumber |
      | LoginDetailsCAS.xlsx | LoginData | 0         | CreditCardType.xlsx | Credit_Card_Info         | 0                        | ChildBrowserSheet      | 0                      |


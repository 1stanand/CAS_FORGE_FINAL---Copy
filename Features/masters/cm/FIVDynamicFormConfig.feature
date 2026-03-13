@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData

Feature:  Fiv Dynamic Form Config

  @ChildTag
  Scenario Outline: Create fiv dynamic form config
    Given maker logged in "Common Masters" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And  maker navigates to fiv dynamic form config
    When maker fill data from "<Form_Workbook>" under "<Form_SheetName>" and row <Form_rowNumber>
    And maker click on save and request approval
    And maker logout from common masters
    And checker logged in "Common Masters" with username and password present in "<SourceDataFile>" under "ChildBrowserSheet" and <RowNumber>
    And checker navigates to fiv dynamic form config
    And checker approved the record
    And checker reads data from the excel file "<Form_Workbook>" under sheet "<Form_SheetName>" and row <Form_rowNumber>
    Then record save successfully in dynamic form config
    And checker logout from common masters
    Examples:
      | SourceDataFile       | SheetName | RowNumber | Form_Workbook                    | Form_SheetName | Form_rowNumber |
      | LoginDetailsCAS.xlsx | LoginData | 0         | FIVDynamicFormConfiguration.xlsx | Sheet1         | 2              |

@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData

Feature:  Score Card Policy master

  @ChildTag
  Scenario Outline:Score card policy
    Given maker logged in "CAS" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And maker navigates to Score Card Policy
    And maker reads data from the excel file "<CreateScoreCard_Workbook>" under sheet "<CreateScoreCard_SheetName>" and row <CreateScoreCard_rowNumber>
    When maker Fills the data
    And maker click on save and request approval
    And maker logout from CAS
    And checker logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 1
    And checker is on Score Card Policy
    And checker approved the record
    And checker reads data from the excel file "<CreateScoreCard_Workbook>" under sheet "<CreateScoreCard_SheetName>" and row <CreateScoreCard_rowNumber>
    Then record save successfully in score card policy
    And checker logout from CAS
    Examples:
      | SourceDataFile       | SheetName | RowNumber | CreateScoreCard_Workbook | CreateScoreCard_SheetName       | CreateScoreCard_rowNumber |
      | LoginDetailsCAS.xlsx | LoginData | 0         | ScoreCardPolicy.xlsx     | score_capol_creation_data_sheet | 0                         |

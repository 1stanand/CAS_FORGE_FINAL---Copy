@Epic-Masters
@ImplementedBy-mohd.aman


Feature: Score Card Master


  @ParentTag
  Scenario Outline: Create a score card
    Given maker logged in "CAS" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And maker navigates to score card
    When maker fills details in score card page with the excel file "<ScoreCardWB>" under sheet "<ScoreCard_SheetDetails>" and row <ScoreCard_SheetDetails_rowNum>
    And maker click on save and request approval
    And maker logout from CAS
    And checker logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And checker is on score card
    And checker approved the record
    And checker reads data from the excel file "<ScoreCardWB>" under sheet "<ScoreCard_SheetDetails>" and row <ScoreCard_SheetDetails_rowNum>
    Then Record save successfully in Score Card
    And checker logout from CAS

    Examples:
      | SourceDataFile       | SheetName | RowNumber | ScoreCardWB    | ScoreCard_SheetDetails | ScoreCard_SheetDetails_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 0         | ScoreCard.xlsx | score_card_sheet       | 0                             |

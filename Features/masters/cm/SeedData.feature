@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData

Feature: Seed Data


  @ParentTag
  Scenario Outline: Create a seed Data
    Given maker logged in "Common Masters" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And navigates to seed Data
    When maker fills details in generic parameter page with the excel file "<SeedDataWB>" under sheet "<SeedDataSheet>" and row <Seed_Data_rowNum>
    And maker click on save and request approval
    And maker logout from common masters
    And checker logged in "Common Masters" with username and password present in "<SourceDataFile>" under "ChildBrowserSheet" and <RowNumber>
    And checker is on seed Data
    And checker approved the record
    And checker reads data from the excel file "<SeedDataWB>" under sheet "<SeedDataSheet>" and row <Seed_Data_rowNum>
    Then record save successfully in Seed Data
    And checker logout from common masters

    Examples:
      | SourceDataFile       | SheetName | RowNumber | SeedDataWB    | SeedDataSheet   | Seed_Data_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 0         | SeedData.xlsx | seed_data_sheet | 0                |

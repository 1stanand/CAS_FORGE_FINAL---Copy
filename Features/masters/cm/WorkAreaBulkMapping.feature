@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData

Feature: Work Area Bulk Mapping


  @ParentTag
  Scenario Outline: Create a Work Area Bulk Mapping
    Given maker logged in "Common Masters" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And navigates to work area bulk mapping
    When maker fills details in work area bulk mapping with the excel file "<WorkAreaBulkMappingWB>" under sheet "<WorkAreaBulkMapping_SheetDetails>" and row <WorkAreaBulkMapping_SheetDetails_rowNum>
    And maker click on save and request approval
    And maker logout from common masters
    And checker logged in "Common Masters" with username and password present in "<SourceDataFile>" under "ChildBrowserSheet" and <RowNumber>
    And checker is on customer work area bulk mapping
    And checker approved the record
    And checker reads data from the excel file "<WorkAreaBulkMappingWB>" under sheet "<WorkAreaBulkMapping_SheetDetails>" and row <WorkAreaBulkMapping_SheetDetails_rowNum>
    Then Record save successfully in Work Area Bulk Mapping
    And checker logout from common masters

    Examples:
      | SourceDataFile       | SheetName | RowNumber | WorkAreaBulkMappingWB    | WorkAreaBulkMapping_SheetDetails | WorkAreaBulkMapping_SheetDetails_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 0         | WorkAreaBulkMapping.xlsx | work_area_bulk_mapping           | 0                                       |

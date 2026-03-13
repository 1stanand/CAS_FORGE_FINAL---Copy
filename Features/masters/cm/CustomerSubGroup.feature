@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData

Feature: Customer Sub Group


  @ChildTag
  Scenario Outline: Create a Customer Sub Group
    Given maker logged in "Common Masters" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And navigates to customer sub group
    When maker fills details in customer sub group with the excel file "<CustomerSubGroupWB>" under sheet "<CustomerSubGroup_SheetDetails>" and row <CustomerSubGroup_SheetDetails_rowNum>
    And maker click on save and request approval
    And maker logout from common masters
    And checker logged in "Common Masters" with username and password present in "<SourceDataFile>" under "ChildBrowserSheet" and <RowNumber>
    And checker is on customer sub group
    And checker approved the record
    And checker reads data from the excel file "<CustomerSubGroupWB>" under sheet "<CustomerSubGroup_SheetDetails>" and row <CustomerSubGroup_SheetDetails_rowNum>
    Then record save successfully in customer sub group
    And checker logout from common masters

    Examples:
      | SourceDataFile       | SheetName | RowNumber | CustomerSubGroupWB    | CustomerSubGroup_SheetDetails | CustomerSubGroup_SheetDetails_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 0         | CustomerSubGroup.xlsx | customer_sub_group            | 0                                    |

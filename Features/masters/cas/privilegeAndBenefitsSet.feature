@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData


Feature: Privilege And Benefits Set

  @ChildTag
  Scenario Outline: create privilege and benefits set
    Given maker logged in "CAS" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And maker navigates to privilege and benefits sets
    And maker reads data from the excel file "<PrivilegeBenefitSetWB>" under sheet "<PrivilegeBenefitSetWB_Sheet>" and row <PrivilegeBenefitSetWB_rowNum>
    When maker fill all required details
    And maker click on save and request approval
    And maker logout from CAS
    And checker logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 1
    And checker navigates to privilege and benefits sets
    And checker approved the record
    And checker reads data from the excel file "<PrivilegeBenefitSetWB>" under sheet "<PrivilegeBenefitSetWB_Sheet>" and row <PrivilegeBenefitSetWB_rowNum>
    Then Record save successfully in Privileges and Benefits Set
    And checker logout from CAS

    Examples:
      | SourceDataFile       | SheetName | RowNumber | PrivilegeBenefitSetWB        | PrivilegeBenefitSetWB_Sheet | PrivilegeBenefitSetWB_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 0         | PrivilegeAndBanefitsSet.xlsx | Sheet1                      | 0                            |


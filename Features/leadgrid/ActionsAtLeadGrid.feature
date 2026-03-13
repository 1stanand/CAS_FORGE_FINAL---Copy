@Epic-Quick_Lead
@ReviewedBy-None
@AuthoredBy-vipin.kishor
@ReviewedByDEV
@ReleaseLoanAppM5
Feature:Perform all actions at lead grid

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-deep.maurya
  @Release3
  #FeatureID-ACAUTOCAS-77,ACAUTOCAS-83,ACAUTOCAS-84,ACAUTOCAS-86,ACAUTOCAS-88
  Scenario Outline:ACAUTOCAS-4628:Perform "<Actions>" action for "<Var>" lead grid
    And user open lead grid
    And user reads data from the excel file "<LeadGrid_WB>" under sheet "<LeadGrid_home>" and row <LeadGrid_home_row_no>
    When user perform "<Actions>" action for "<Var>" applications
    Then "<Actions>" action perform at "<Var>" successfully at Lead Page
    Examples:
      | Actions      | Var      | LeadGrid_WB    | LeadGrid_home | LeadGrid_home_row_no |
      | Copy         | Assigned | lead_grid.xlsx | leadGrid      | 0                    |
#      | Export       | Assigned | lead_grid.xlsx | leadGrid      | 0                    |
      | Save search  | Assigned | lead_grid.xlsx | leadGrid      | 0                    |
      | Load search  | Assigned | lead_grid.xlsx | leadGrid      | 0                    |
      | Clear filter | Assigned | lead_grid.xlsx | leadGrid      | 0                    |
      | Copy         | Pool     | lead_grid.xlsx | leadGrid      | 0                    |
#      | Export       | Pool     | lead_grid.xlsx | leadGrid      | 0                    |
      | Save search  | Pool     | lead_grid.xlsx | leadGrid      | 0                    |
      | Load search  | Pool     | lead_grid.xlsx | leadGrid      | 0                    |
      | Clear filter | Pool     | lead_grid.xlsx | leadGrid      | 0                    |
      | Copy         | Hold     | lead_grid.xlsx | leadGrid      | 0                    |
#      | Export       | Hold     | lead_grid.xlsx | leadGrid      | 0                    |
      | Save search  | Hold     | lead_grid.xlsx | leadGrid      | 0                    |
#      | Load search  | Hold     | lead_grid.xlsx | leadGrid      | 0                    |
      | Clear filter | Hold     | lead_grid.xlsx | leadGrid      | 0                    |
      | Copy         | Archive  | lead_grid.xlsx | leadGrid      | 0                    |
#      | Export       | Archive  | lead_grid.xlsx | leadGrid      | 0                    |
      | Save search  | Archive  | lead_grid.xlsx | leadGrid      | 0                    |
#      | Load search  | Archive  | lead_grid.xlsx | leadGrid      | 0                    |
      | Clear filter | Archive  | lead_grid.xlsx | leadGrid      | 0                    |
      | Copy         | Reject   | lead_grid.xlsx | leadGrid      | 0                    |
#      | Export       | Reject   | lead_grid.xlsx | leadGrid      | 0                    |
      | Save search  | Reject   | lead_grid.xlsx | leadGrid      | 0                    |
#      | Load search  | Reject   | lead_grid.xlsx | leadGrid      | 0                    |
      | Clear filter | Reject   | lead_grid.xlsx | leadGrid      | 0                    |

 #FeatureID-ACAUTOCAS-84
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-4629:Export lead grid as <ExportAs> for <Var> lead
    And user open lead grid
    When Export lead grid as "<ExportAs>" for "<Var>" lead
    Then lead grid successfully Exported as "<ExportAs>"
    Examples:
      | ExportAs | Var      |
      | Excel    | Assigned |
      | CSV      | Assigned |
      | Excel    | Pool     |
      | CSV      | Pool     |
      | Excel    | Hold     |
      | CSV      | Hold     |
      | Excel    | Archive  |
      | CSV      | Archive  |
      | Excel    | Reject   |
      | CSV      | Reject   |


# need to be correct
  #FeatureID-ACAUTOCAS-77
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-4630: <Lead_Actions> the <Var> lead in lead grid
    And user reads data from the excel file "<LeadGridWB>" under sheet "<LeadGrid_sheetName>" and row <LeadGrid_sheetName_rowNum>
    And user open lead grid
    And user search lead through "<Lead Number>" in "<Grid Name>"
    When user "<Lead_Actions>" the "<Var>" lead to the logged in user
    Then lead successfully "<Lead_Actions>"
    Examples:
      | Lead_Actions   | Var               | LeadGridWB     | LeadGrid_sheetName | LeadGrid_sheetName_rowNum | Lead Number | Grid Name |
      | Assign to pool | Assigned          | lead_grid.xlsx | leadGrid           | 24                        | Lead Number | Pool      |
      | Temp Assign    | Pool(Temp Assign) | lead_grid.xlsx | leadGrid           | 25                        | Lead Number | Pool      |
      | Assign ToMe    | Pool(Assign ToMe) | lead_grid.xlsx | leadGrid           | 26                        | Lead Number | Pool      |
      | Send Back      | Reject            | lead_grid.xlsx | leadGrid           | 27                        | Lead Number | Pool      |

    #FeatureID-ACAUTOCAS-77
  @ImplementedBy-deep.maurya
  @Perishable
  Scenario Outline: ACAUTOCAS-4631: "<Lead_Actions>" the "<Var>" leads in bulk in lead grid
    And user reads data from the excel file "<LeadGridWB>" under sheet "<LeadGrid_sheetName>" and row <LeadGrid_sheetName_rowNum>
    And user open lead grid
    And user search lead through "<Lead Number>" in "<Grid Name>"
    When user "<Lead_Actions>" the "<Var>" lead to the logged in user in bulk
    Then lead successfully "<Lead_Actions>" in bulk
    Examples:
      | Var      | Lead_Actions   | LeadGridWB     | LeadGrid_sheetName | LeadGrid_sheetName_rowNum | Lead Number | Grid Name |
      | Assigned | Reassign       | lead_grid.xlsx | leadGrid           | 24                        | Lead Number | Pool      |
      | Assigned | Assign to pool | lead_grid.xlsx | leadGrid           | 25                        | Lead Number | Pool      |
      | Pool     | Assign ToMe    | lead_grid.xlsx | leadGrid           | 26                        | Lead Number | Pool      |
      | Pool     | Temp Assign    | lead_grid.xlsx | leadGrid           | 27                        | Lead Number | Pool      |

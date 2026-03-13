@Epic-Loan_Application_Details
@ReviewedBy-ayush.garg
@AuthoredBy-vipin.kishor
@ReviewedByDEV
@ReleaseLoanAppM5
Feature:Lead grid validations

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-rishabh.sachan
  @Release3
  #FeatureID-ACAUTOCAS-81,ACAUTOCAS-82,ACAUTOCAS-80,ACAUTOCAS-78,ACAUTOCAS-79
  Scenario Outline: ACAUTOCAS-4632: Check "<Var>" leads in lead grid
    And user open lead grid
    And user "<Var>" lead from pool
    When user open "<Var>" leads
    Then lead which are in "<Var>" should be display at first page of lead grid
    Examples:
      | Var      |
      | Assigned |
      | Pool     |
      | Reject   |
      | Hold     |
      | Archive  |

  @ImplementedBy-manish.yadav2
  @Release3
  #FeatureID-ACAUTOCAS-78
  Scenario Outline: ACAUTOCAS-4633: Validate assigned leads column in lead grid
    And user open lead grid
    When user open "<LeadType>" leads
    Then all "<DataSet>" below "<LeadType>" leads should be present in lead grid
    Examples:
      | DataSet              | LeadType |
      | Lead Number          | Assigned |
      | Lead Channel         | Assigned |
      | Product Type         | Assigned |
      | Customer Name        | Assigned |
      | Created By           | Assigned |
      | Created On           | Assigned |
      | Task Due Date        | Assigned |
      | Branch               | Assigned |
      | Conversion Potential | Assigned |
      | Assignee             | Assigned |
      | Lead status          | Assigned |
      | Product Processor    | Assigned |
      | Action               | Assigned |

  @ImplementedBy-yash.sharma
  @Release3
  #FeatureID-ACAUTOCAS-82
  Scenario Outline: ACAUTOCAS-4634: Validate hold lead column in lead grid
    And user open lead grid
    When user open "<LeadType>" leads
    Then all "<DataSet>" below "<LeadType>" leads should be present in lead grid
    Examples:
      | DataSet              | LeadType |
      | Lead Number          | Hold     |
      | Lead Channel         | Hold     |
      | Product Type         | Hold     |
      | Customer Name        | Hold     |
      | Created By           | Hold     |
      | Created On           | Hold     |
      | Conversion Potential | Hold     |
      | Assignee             | Hold     |
      | Lead status          | Hold     |
      | Product Processor    | Hold     |

  @ImplementedBy-yash.sharma
  @Release3
  #FeatureID-ACAUTOCAS-79
  Scenario Outline: ACAUTOCAS-4635: Validate pool lead column in lead grid
    And user open lead grid
    When user open "<LeadType>" leads
    Then all "<DataSet>" below "<LeadType>" leads should be present in lead grid
    Examples:
      | DataSet              | LeadType |
      | Lead Number          | Pool     |
      | Lead Channel         | Pool     |
      | Product Type         | Pool     |
      | Customer Name        | Pool     |
      | Created By           | Pool     |
      | Created On           | Pool     |
      | Conversion Potential | Pool     |
      | Due By               | Pool     |
      | Lead status          | Pool     |
      | Product Processor    | Pool     |
      | Action               | Pool     |

  @ImplementedBy-rishabh.sachan
  @Release3
  #FeatureID-ACAUTOCAS-87
  Scenario Outline: ACAUTOCAS-4638: "<SearchFilter>" pool leads on the basis of "<LeadGrid>"
    And user reads data from the excel file "<LeadGridWB>" under sheet "<LeadGrid_sheetName>" and row <LeadGrid_sheetName_rowNum>
    And user open lead grid
    And  user open "<LeadType>" leads
    When user "<SearchFilter>" all leads on the basis of "<LeadGrid>" in "<LeadType>"
    Then user should be able to "<SearchFilter>" all leads on the basis of "<LeadGrid>" in "<LeadType>"
    Examples:
      | SearchFilter | LeadGrid             | LeadType | LeadGridWB     | LeadGrid_sheetName | LeadGrid_sheetName_rowNum |
      | search       | Lead Number          | Pool     | lead_grid.xlsx | leadGrid           | 11                        |
      | search       | Lead Channel         | Pool     | lead_grid.xlsx | leadGrid           | 11                        |
      | search       | Customer Name        | Pool     | lead_grid.xlsx | leadGrid           | 11                        |
      | search       | Created By           | Pool     | lead_grid.xlsx | leadGrid           | 11                        |
      | search       | Conversion Potential | Pool     | lead_grid.xlsx | leadGrid           | 11                        |
      | search       | Lead Status          | Pool     | lead_grid.xlsx | leadGrid           | 11                        |
      | search       | Product Type         | Pool     | lead_grid.xlsx | leadGrid           | 11                        |
      | search       | Product processor    | Pool     | lead_grid.xlsx | leadGrid           | 11                        |
      | filter       | Created On           | Pool     | lead_grid.xlsx | leadGrid           | 11                        |
      | sort         | Lead Number          | Pool     | lead_grid.xlsx | leadGrid           | 11                        |
      | sort         | Lead Channel         | Pool     | lead_grid.xlsx | leadGrid           | 11                        |
      | sort         | Product Type         | Pool     | lead_grid.xlsx | leadGrid           | 11                        |
      | sort         | Customer Name        | Pool     | lead_grid.xlsx | leadGrid           | 11                        |
      | sort         | Created By           | Pool     | lead_grid.xlsx | leadGrid           | 11                        |
      | sort         | Conversion Potential | Pool     | lead_grid.xlsx | leadGrid           | 11                        |
      | sort         | Lead Status          | Pool     | lead_grid.xlsx | leadGrid           | 11                        |
      | sort         | Product processor    | Pool     | lead_grid.xlsx | leadGrid           | 11                        |
      | sort         | Created Date         | Pool     | lead_grid.xlsx | leadGrid           | 11                        |
      | sort         | Due Day              | Pool     | lead_grid.xlsx | leadGrid           | 11                        |


  @ImplementedBy-manish.yadav2
  @Release3
  #FeatureID-ACAUTOCAS-87,ACAUTOCAS-78
  Scenario Outline: ACAUTOCAS-4639: "<SearchFilter>" Assigned leads on the basis of "<LeadGrid>"
    And user reads data from the excel file "<LeadGridWB>" under sheet "<LeadGrid_sheetName>" and row <LeadGrid_sheetName_rowNum>
    And user open lead grid
    And user assign lead from "<LeadGridType>"
    And user open lead grid
    And  user open "<LeadType>" leads
    When user "<SearchFilter>" all leads on the basis of "<LeadGrid>" in "<LeadType>"
    Then user should be able to "<SearchFilter>" all leads on the basis of "<LeadGrid>" in "<LeadType>"
    Examples:
      | SearchFilter | LeadGrid             | LeadGridWB     | LeadGrid_sheetName | LeadGrid_sheetName_rowNum | LeadGridType | LeadType |
      | search       | Conversion Potential | lead_grid.xlsx | leadGrid           | 14                        | pool         | Assigned |
      | search       | Lead Number          | lead_grid.xlsx | leadGrid           | 15                        | pool         | Assigned |
      | search       | Lead Channel         | lead_grid.xlsx | leadGrid           | 16                        | pool         | Assigned |
      | search       | Customer Name        | lead_grid.xlsx | leadGrid           | 17                        | pool         | Assigned |
      | search       | Created By           | lead_grid.xlsx | leadGrid           | 18                        | pool         | Assigned |
      | search       | Product Type         | lead_grid.xlsx | leadGrid           | 19                        | pool         | Assigned |
      | search       | Product processor    | lead_grid.xlsx | leadGrid           | 20                        | pool         | Assigned |
      | search       | Lead Status          | lead_grid.xlsx | leadGrid           | 20                        | pool         | Assigned |
      | search       | Branch               | lead_grid.xlsx | leadGrid           | 21                        | pool         | Assigned |
      | filter       | Created On           | lead_grid.xlsx | leadGrid           | 21                        | pool         | Assigned |
      | sort         | Lead Number          | lead_grid.xlsx | leadGrid           | 21                        | pool         | Assigned |
      | sort         | Lead Channel         | lead_grid.xlsx | leadGrid           | 21                        | pool         | Assigned |
      | sort         | Product Type         | lead_grid.xlsx | leadGrid           | 21                        | pool         | Assigned |
      | sort         | Customer Name        | lead_grid.xlsx | leadGrid           | 21                        | pool         | Assigned |
      | sort         | Created By           | lead_grid.xlsx | leadGrid           | 21                        | pool         | Assigned |
      | sort         | Branch               | lead_grid.xlsx | leadGrid           | 21                        | pool         | Assigned |
      | sort         | Conversion Potential | lead_grid.xlsx | leadGrid           | 21                        | pool         | Assigned |
      | sort         | Lead Status          | lead_grid.xlsx | leadGrid           | 21                        | pool         | Assigned |
      | sort         | Product processor    | lead_grid.xlsx | leadGrid           | 21                        | pool         | Assigned |
      | sort         | Created On           | lead_grid.xlsx | leadGrid           | 21                        | pool         | Assigned |
      | sort         | Task Due Date        | lead_grid.xlsx | leadGrid           | 21                        | pool         | Assigned |
      | sort         | Assignee             | lead_grid.xlsx | leadGrid           | 21                        | pool         | Assigned |

  @ImplementedBy-yash.sharma
  @Release3
  #FeatureID-ACAUTOCAS-87,ACAUTOCAS-81
  Scenario Outline: ACAUTOCAS-4642: "<SearchFilter>" Reject leads on the basis of "<LeadGrid>"
    And user reads data from the excel file "<LeadGridWB>" under sheet "<LeadGrid_sheetName>" and row <LeadGrid_sheetName_rowNum>
    And user open lead grid
    And user assign lead from "<LeadGridType>"
    And user open lead grid
    And user reject lead from "<LeadGridType>"
    And user open lead grid
    And  user open "<LeadType>" leads
    When user "<SearchFilter>" all leads on the basis of "<LeadGrid>" in "<LeadType>"
    Then user should be able to "<SearchFilter>" all leads on the basis of "<LeadGrid>" in "<LeadType>"
    Examples:
      | SearchFilter | LeadGrid          | LeadGridWB     | LeadGrid_sheetName | LeadGrid_sheetName_rowNum | LeadGridType | LeadType |
      | search       | Lead Number       | lead_grid.xlsx | leadGrid           | 0                         | pool         | Reject   |
      | search       | Lead Channel      | lead_grid.xlsx | leadGrid           | 1                         | pool         | Reject   |
      | search       | Status            | lead_grid.xlsx | leadGrid           | 2                         | pool         | Reject   |
      | search       | Product Type      | lead_grid.xlsx | leadGrid           | 3                         | pool         | Reject   |
      | search       | Customer Name     | lead_grid.xlsx | leadGrid           | 4                         | pool         | Reject   |
      | search       | Product processor | lead_grid.xlsx | leadGrid           | 4                         | pool         | Reject   |
      | sort         | Lead Number       | lead_grid.xlsx | leadGrid           | 5                         | pool         | Reject   |
      | sort         | Lead Channel      | lead_grid.xlsx | leadGrid           | 6                         | pool         | Reject   |
      | sort         | Status            | lead_grid.xlsx | leadGrid           | 7                         | pool         | Reject   |
      | sort         | Product Type      | lead_grid.xlsx | leadGrid           | 8                         | pool         | Reject   |
      | sort         | Customer Name     | lead_grid.xlsx | leadGrid           | 9                         | pool         | Reject   |
      | sort         | Product processor | lead_grid.xlsx | leadGrid           | 10                        | pool         | Reject   |

    #FeatureID-ACAUTOCAS-80
  @ImplementedBy-yash.sharma
  @Release3
  Scenario Outline: ACAUTOCAS-4636:  Validate Archive lead column in lead grid
    And user open lead grid
    When user open "<LeadType>" leads
    Then all "<DataSet>" below "<LeadType>" leads should be present in lead grid
    Examples:
      | DataSet                    | LeadType |
      | Lead Number                | Archive  |
      | Application id             | Archive  |
      | Status                     | Archive  |
      | Current Application Status | Archive  |
      | Lead Channel               | Archive  |
      | Product Type               | Archive  |
      | Customer Name              | Archive  |
      | Product Processor          | Archive  |

    #FeatureID-ACAUTOCAS-81
  @ImplementedBy-yash.sharma
  @Release3
  Scenario Outline: ACAUTOCAS-4637:  Validate Reject lead column in lead grid
    And user open lead grid
    When  user open "<LeadType>" leads
    Then all "<DataSet>" below "<LeadType>" leads should be present in lead grid
    Examples:
      | DataSet           | LeadType |
      | Lead Number       | Reject   |
      | Status            | Reject   |
      | Lead Channel      | Reject   |
      | Product Type      | Reject   |
      | Customer Name     | Reject   |
      | Product Processor | Reject   |
      | Action            | Reject   |

      #FeatureID-ACAUTOCAS-87,ACAUTOCAS-82
  @ImplementedBy-yash.sharma
  Scenario Outline: ACAUTOCAS-4640: "<Search_Filter>" Hold leads on the basis of "<Lead_Grid>"
    And  user open lead grid
    When user "<Search_Filter>" all leads on the basis of "<Lead_Grid>"
    Then user should be able to "<Search_Filter>" all leads on the basis of "<Lead_Grid>"
    Examples:
      | Search_Filter | Lead_Grid            |
      | search        | Lead Number          |
      | search        | Lead Channel         |
      | search        | Product Type         |
      | search        | Customer Name        |
      | search        | Created By           |
      | search        | Branch               |
      | search        | Product processor    |
      | filter        | Created On           |
      | sort          | Lead Number          |
      | sort          | Lead Channel         |
      | sort          | Product Type         |
      | sort          | Customer Name        |
      | sort          | Created By           |
      | sort          | Conversion Potential |
      | sort          | Status               |
      | sort          | Product processor    |
      | sort          | Created On           |
      | sort          | Assignee             |

      #FeatureID-ACAUTOCAS-87,ACAUTOCAS-80
  @ImplementedBy-yash.sharma
  Scenario Outline: ACAUTOCAS-4641: "<Search_Filter>" Archive leads on the basis of "<Lead_Grid>"
    And  user open lead grid
    When user "<Search_Filter>" all leads on the basis of "<Lead_Grid>"
    Then user should be able to "<Search_Filter>" all leads on the basis of "<Lead_Grid>"
    Examples:
      | Search_Filter | Lead_Grid                  |
      | search        | Lead Number                |
      | search        | Lead Channel               |
      | search        | Application ID             |
      | search        | Product Type               |
      | search        | Customer Name              |
      | search        | Product processor          |
      | sort          | Lead Number                |
      | sort          | Lead Channel               |
      | sort          | Product Type               |
      | sort          | Application ID             |
      | sort          | Status                     |
      | sort          | Product processor          |
      | sort          | Current Application Status |

    #FeatureID-ACAUTOCAS-77
  @ImplementedBy-yash.sharma
  Scenario Outline: ACAUTOCAS-4643: Show tasks Assigned to <Var> in lead grid
    And user open lead grid
    And user open "<LeadType>" leads
    When user check "<Var>" tasks
    Then "<Var>" tasks should be display
    Examples:
      | Var  | LeadType |
      | All  | Assigned |
      | Team | Assigned |
      | Me   | Assigned |

    # new added scenario
  #FeatureID-ACAUTOCAS-88
  @ImplementedBy-yash.sharma
  @Release3
  Scenario Outline: ACAUTOCAS-4644: Perform clear filter action <Apply_Filter> on column in Lead grid
    And  user open lead grid
    When user "<Apply_Filter>" filter on any column of grid
    And user clear filter
    Then filter from column should be "<Behaviour>"
    Examples:
      | Apply_Filter            | Behaviour                        |
      | by applying filter      | removed                          |
      | without applying filter | throw an error No filter applied |

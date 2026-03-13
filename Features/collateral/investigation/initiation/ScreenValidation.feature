@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-utkarsh.tiwari
@Release2
@ReviewedByDEV

Feature: Collateral investigation initiation screen validation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#  Scenario Outline: ACAUTOCAS-3145:  user opens the collateral investigation initiation CII screen
#    When user opens collateral investigation initiation screen
### OpenQueries - Stages to be confirmed by PMG
#    Then user should be able to see all applications with attached collaterals at "<CII_Stage>"
#    Examples:
#      | CII_Stage              |
#      | Credit Bureau Referral |
#      | FII                    |
#      | Recommendation         |
#      | FIV                    |
#      | Credit Approval        |
#      | Reconsideration        |
#      | Post Approval          |
#      | Disbursal Initiation   |
#      | Disbursal Approval     |
##    | Application Renewal    |
#      | Tranch Initiation      |
#      | Tranch Approval        |

  @ImplementedBy-utkarsh.tiwari
  Scenario Outline: ACAUTOCAS-3727:  user searches the application for CII on various search parameters
    When user opens collateral investigation initiation screen
    Then user should be able to "search" applications based on "<Parameter>" as a parameter
    Examples:
      | Parameter         |
      | Application ID    |
      | Neo Cust ID       |
      | Identification No |
      | Customer Name     |
      | Product Type      |
      | Product Name      |
      | Scheme            |
      | Request Type      |
      | Phone No          |
      | Initiated On      |
      | Last Updated On   |
      | Sourcing Channel  |
      | Priority          |

  @ImplementedBy-utkarsh.tiwari
  Scenario Outline: ACAUTOCAS-3728:  user sorts the application for CII on various parameters
    When user opens collateral investigation initiation screen
    Then user should be able to "sort" applications based on "<Parameter>" as a parameter
    Examples:
      | Parameter         |
      | Application ID    |
      | Neo Cust ID       |
      | Identification No |
      | Customer Name     |
      | Product Type      |
      | Product Name      |
      | Scheme            |
      | Request Type      |
      | Phone No          |
      | Initiated On      |
      | Last Updated On   |
      | Sourcing Channel  |
      | Priority          |

  @ImplementedBy-utkarsh.tiwari
  Scenario Outline: ACAUTOCAS-3146:  collateral search shows application attached with "<CollateralTypes>" collateral type for CII
    When user opens collateral investigation initiation screen
    And user searches for applications
    Then user should be able to search applications attached to "<CollateralTypes>" collateral type
## OpenQueries - What about agriculture land?
    Examples:
      | CollateralTypes |
      | Asset           |
      | Property        |

  @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-4753:  User options to handle data on CII screen
    When user opens collateral investigation initiation screen
    Then user should be able to see the "<var>" option in CII
    Examples:
      | var          |
      | Copy data    |
      | Export data  |
      | Load Search  |
      | Save Search  |
      | Clear Filter |

  @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-4754:  Data export formats collateral investigation initiation (CII) screen
    When user opens collateral investigation initiation screen
    And user open exports data
    Then user should be able to see the "<var>" option in CII
    Examples:
      | var          |
      | Excel Format |
      | CSV Format   |

  @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-4427:  Clearing filter on collateral investigation initiation (CII) screen
    And user opens collateral investigation initiation screen
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_ciiGrid>" and row <Cii_ciiGrid_rowNum>
    And user enters parameter values present in "<CiiWB>" under "<Cii_ciiGrid>" and <Cii_ciiGrid_rowNum>
    When user clears the filter
    Then user should be able to see all the eligible applications for CII
    Examples:
      | CiiWB                                    | Cii_ciiGrid | Cii_ciiGrid_rowNum |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1037               |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1038               |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1039               |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1040               |


@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@NotImplemented
Feature: External Collateral Search

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#External Search CAS-127468
  Scenario Outline: ACAUTOCAS-1299: Provision to search collateral from third party
    Given user opens an application at "DDE" stage from application grid
    And user opens Collateral Page
    And user searches for an existing collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_search>" and row <Collateral_search_rowNum>
    When user enter parameter in external search
    And clicks on Search External
    Then user should be able to see the list of collaterals available in ExternalSystem as per the parameters entered
    Examples:
      | CollateralWB    | Collateral_search | Collateral_search_rowNum |
      | collateral.xlsx | collateral_search | 0                        |
      | collateral.xlsx | collateral_search | 1                        |
      | collateral.xlsx | collateral_search | 2                        |
      | collateral.xlsx | collateral_search | 3                        |
      | collateral.xlsx | collateral_search | 4                        |
      | collateral.xlsx | collateral_search | 5                        |
      | collateral.xlsx | collateral_search | 6                        |
      | collateral.xlsx | collateral_search | 7                        |
      | collateral.xlsx | collateral_search | 8                        |
      | collateral.xlsx | collateral_search | 9                        |
      | collateral.xlsx | collateral_search | 10                       |
      | collateral.xlsx | collateral_search | 11                       |
      | collateral.xlsx | collateral_search | 12                       |
      | collateral.xlsx | collateral_search | 13                       |
      | collateral.xlsx | collateral_search | 14                       |
      | collateral.xlsx | collateral_search | 15                       |
      | collateral.xlsx | collateral_search | 16                       |
      | collateral.xlsx | collateral_search | 17                       |
      | collateral.xlsx | collateral_search | 18                       |
      | collateral.xlsx | collateral_search | 19                       |
      | collateral.xlsx | collateral_search | 20                       |
      | collateral.xlsx | collateral_search | 21                       |
      | collateral.xlsx | collateral_search | 22                       |
      | collateral.xlsx | collateral_search | 23                       |
      | collateral.xlsx | collateral_search | 24                       |
      | collateral.xlsx | collateral_search | 25                       |
      | collateral.xlsx | collateral_search | 26                       |
      | collateral.xlsx | collateral_search | 27                       |
      | collateral.xlsx | collateral_search | 28                       |
      | collateral.xlsx | collateral_search | 29                       |
      | collateral.xlsx | collateral_search | 30                       |
      | collateral.xlsx | collateral_search | 31                       |
      | collateral.xlsx | collateral_search | 32                       |
      | collateral.xlsx | collateral_search | 33                       |
      | collateral.xlsx | collateral_search | 34                       |
      | collateral.xlsx | collateral_search | 35                       |
      | collateral.xlsx | collateral_search | 36                       |
      | collateral.xlsx | collateral_search | 37                       |
      | collateral.xlsx | collateral_search | 38                       |
      | collateral.xlsx | collateral_search | 39                       |
      | collateral.xlsx | collateral_search | 40                       |
      | collateral.xlsx | collateral_search | 41                       |
      | collateral.xlsx | collateral_search | 42                       |
      | collateral.xlsx | collateral_search | 43                       |
      | collateral.xlsx | collateral_search | 44                       |
      | collateral.xlsx | collateral_search | 45                       |
      | collateral.xlsx | collateral_search | 46                       |
      | collateral.xlsx | collateral_search | 47                       |
      | collateral.xlsx | collateral_search | 48                       |
      | collateral.xlsx | collateral_search | 49                       |
      | collateral.xlsx | collateral_search | 50                       |
      | collateral.xlsx | collateral_search | 51                       |
      | collateral.xlsx | collateral_search | 52                       |
      | collateral.xlsx | collateral_search | 53                       |
      | collateral.xlsx | collateral_search | 54                       |
      | collateral.xlsx | collateral_search | 55                       |
      | collateral.xlsx | collateral_search | 56                       |
      | collateral.xlsx | collateral_search | 57                       |
      | collateral.xlsx | collateral_search | 58                       |
      | collateral.xlsx | collateral_search | 59                       |
      | collateral.xlsx | collateral_search | 60                       |
      | collateral.xlsx | collateral_search | 61                       |
      | collateral.xlsx | collateral_search | 62                       |
      | collateral.xlsx | collateral_search | 63                       |
      | collateral.xlsx | collateral_search | 64                       |
      | collateral.xlsx | collateral_search | 65                       |
      | collateral.xlsx | collateral_search | 66                       |
      | collateral.xlsx | collateral_search | 67                       |
      | collateral.xlsx | collateral_search | 68                       |
      | collateral.xlsx | collateral_search | 69                       |
      | collateral.xlsx | collateral_search | 70                       |
      | collateral.xlsx | collateral_search | 71                       |
      | collateral.xlsx | collateral_search | 72                       |
      | collateral.xlsx | collateral_search | 73                       |
      | collateral.xlsx | collateral_search | 74                       |
      | collateral.xlsx | collateral_search | 75                       |
      | collateral.xlsx | collateral_search | 76                       |
      | collateral.xlsx | collateral_search | 77                       |
      | collateral.xlsx | collateral_search | 78                       |
      | collateral.xlsx | collateral_search | 79                       |
      | collateral.xlsx | collateral_search | 80                       |
      | collateral.xlsx | collateral_search | 81                       |
      | collateral.xlsx | collateral_search | 82                       |
      | collateral.xlsx | collateral_search | 83                       |
      | collateral.xlsx | collateral_search | 84                       |
      | collateral.xlsx | collateral_search | 85                       |
      | collateral.xlsx | collateral_search | 86                       |
      | collateral.xlsx | collateral_search | 87                       |
      | collateral.xlsx | collateral_search | 88                       |
      | collateral.xlsx | collateral_search | 89                       |
      | collateral.xlsx | collateral_search | 91                       |
      | collateral.xlsx | collateral_search | 92                       |

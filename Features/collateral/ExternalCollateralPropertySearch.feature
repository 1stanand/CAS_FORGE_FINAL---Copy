@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@NotImplemented
Feature: External Collateral Property Search

#  Pre-Requisites---
#  In this feature we will validate the screen layout of Collateral Browser Page
#External Search CAS-127468
  Scenario Outline:ACAUTOCAS-3078: Provision to search Property as collateral from third party
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "DDE" stage from application grid
    And user opens Collateral Page
    And user searches for an existing collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_collateralSearch>" and row <Collateral_collateralSearch_rowNum>
    When user enters parameters to search collateral
    And clicks on Search External
    Then user should be able to see the list of collaterals available in ExternalSystem as per the parameters entered
    Examples:
      | SourceDataFile       | SheetName | RowNumber | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 908                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 909                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 910                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 911                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 912                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 913                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 914                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 915                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 916                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 917                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 918                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 919                                |
    @NotImplemented
    Examples:
      | SourceDataFile | SheetName | RowNumber                           | CollateralWB      | Collateral_collateralSearch | Collateral_collateralSearch_rowNum |
      | COLL00028707   | Property  | Ready Property                      | COLL-AWGHTR123456 | Active                      | PRAKASH                            |
      |                | Property  | Ready Property                      |                   |                             |                                    |
      |                | Property  | Ready Property                      |                   | Active                      |                                    |
      |                | Property  | Ready Property                      |                   |                             | PRAKASH                            |
      |                | Property  | Ready Property                      | COLL-AWGHTR123456 |                             |                                    |
      | COLL00028707   | Property  | Ready Property                      | COLL-AWGHTR123456 |                             |                                    |
      |                | Property  | Ready Property                      | COLL-AWGHTR123456 | Active                      |                                    |
      | COLL00028707   | Property  | Ready Property                      |                   | Active                      |                                    |
      |                | Property  | Ready Property                      | COLL-AWGHTR123456 |                             | PRAKASH                            |
      | COLL00028707   | Property  | Ready Property                      |                   |                             | PRAKASH                            |
      | COLL00028707   | Property  | Ready Property                      | COLL-AWGHTR123456 | Active                      |                                    |
      | COLL00028707   | Property  | Ready Property                      | COLL-AWGHTR123456 |                             | PRAKASH                            |
      | COLL00028707   | Property  | Ready Property                      |                   | Active                      | PRAKASH                            |
      |                | Property  | Ready Property                      | COLL-AWGHTR123456 | Active                      | PRAKASH                            |
      |                | Property  | Builder Property Under Construction |                   |                             |                                    |
      |                | Property  | Builder Property Under Construction |                   | Active                      |                                    |
      |                | Property  | Builder Property Under Construction |                   |                             | PRAKASH                            |
      |                | Property  | Builder Property Under Construction | COLL-AWGHTR123456 |                             |                                    |
      | COLL00028707   | Property  | Builder Property Under Construction | COLL-AWGHTR123456 |                             |                                    |
      |                | Property  | Builder Property Under Construction | COLL-AWGHTR123456 | Active                      |                                    |
      | COLL00028707   | Property  | Builder Property Under Construction |                   | Active                      |                                    |
      |                | Property  | Builder Property Under Construction | COLL-AWGHTR123456 |                             | PRAKASH                            |
      | COLL00028707   | Property  | Builder Property Under Construction |                   |                             | PRAKASH                            |
      | COLL00028707   | Property  | Builder Property Under Construction | COLL-AWGHTR123456 | Active                      |                                    |
      | COLL00028707   | Property  | Builder Property Under Construction | COLL-AWGHTR123456 |                             | PRAKASH                            |
      | COLL00028707   | Property  | Builder Property Under Construction |                   | Active                      | PRAKASH                            |
      |                | Property  | Builder Property Under Construction | COLL-AWGHTR123456 | Active                      | PRAKASH                            |
      |                | Property  | Construction On Land                |                   |                             |                                    |
      |                | Property  | Construction On Land                |                   | Active                      |                                    |
      |                | Property  | Construction On Land                |                   |                             | PRAKASH                            |
      |                | Property  | Construction On Land                | COLL-AWGHTR123456 |                             |                                    |
      | COLL00028707   | Property  | Construction On Land                | COLL-AWGHTR123456 |                             |                                    |
      |                | Property  | Construction On Land                | COLL-AWGHTR123456 | Active                      |                                    |
      | COLL00028707   | Property  | Construction On Land                |                   | Active                      |                                    |
      |                | Property  | Construction On Land                | COLL-AWGHTR123456 |                             | PRAKASH                            |
      | COLL00028707   | Property  | Construction On Land                |                   |                             | PRAKASH                            |
      | COLL00028707   | Property  | Construction On Land                | COLL-AWGHTR123456 | Active                      |                                    |
      | COLL00028707   | Property  | Construction On Land                | COLL-AWGHTR123456 |                             | PRAKASH                            |
      | COLL00028707   | Property  | Construction On Land                |                   | Active                      | PRAKASH                            |
      |                | Property  | Construction On Land                | COLL-AWGHTR123456 | Active                      | PRAKASH                            |
      |                | Property  | Plot Plus Self Construction         |                   |                             |                                    |
      |                | Property  | Plot Plus Self Construction         |                   | Active                      |                                    |
      |                | Property  | Plot Plus Self Construction         |                   |                             | PRAKASH                            |
      |                | Property  | Plot Plus Self Construction         | COLL-AWGHTR123456 |                             |                                    |
      | COLL00028707   | Property  | Plot Plus Self Construction         | COLL-AWGHTR123456 |                             |                                    |
      |                | Property  | Plot Plus Self Construction         | COLL-AWGHTR123456 | Active                      |                                    |
      | COLL00028707   | Property  | Plot Plus Self Construction         |                   | Active                      |                                    |
      |                | Property  | Plot Plus Self Construction         | COLL-AWGHTR123456 |                             | PRAKASH                            |
      | COLL00028707   | Property  | Plot Plus Self Construction         |                   |                             | PRAKASH                            |
      | COLL00028707   | Property  | Plot Plus Self Construction         | COLL-AWGHTR123456 | Active                      |                                    |
      | COLL00028707   | Property  | Plot Plus Self Construction         | COLL-AWGHTR123456 |                             | PRAKASH                            |
      | COLL00028707   | Property  | Plot Plus Self Construction         |                   | Active                      | PRAKASH                            |
      |                | Property  | Plot Plus Self Construction         | COLL-AWGHTR123456 | Active                      | PRAKASH                            |

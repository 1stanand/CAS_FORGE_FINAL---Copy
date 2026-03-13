@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedSecCollateral
@NotImplemented
Feature: External Collateral Advance Search and Link

#  Pre-Requisites---
#  In this feature we will validate the screen layout of Collateral Browser Page

#  Background:
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#External Search CAS-127468
  Scenario Outline: ACAUTOCAS-1297: Provision to advance search collateral from third party
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "dde_indiv_pl" stage from application grid
    And user opens Collateral Page
    And user searches for an existing collateral
    And user selects advance search option
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_collateralSearch>" and row <Collateral_collateralSearch_rowNum>
#    And user gets advance search option to filter the collateral
    When user enters advance parameters
    And clicks on Search External
    Then user should be able to see the list of collaterals available in ExternalSystem as per the parameters entered
    Examples:
      | SourceDataFile       | SheetName | RowNumber | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2611                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2612                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2613                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2614                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2615                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2616                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2617                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2618                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2619                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2620                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2621                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2622                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2623                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2624                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2625                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2626                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2627                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2628                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2629                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2630                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2631                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2632                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2633                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2634                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2635                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2636                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2637                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2638                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2639                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2640                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2641                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2642                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2643                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2644                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2645                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2646                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2647                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2648                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2649                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2650                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2651                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2652                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2653                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2654                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2655                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2656                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2657                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2658                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2659                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2660                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2661                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2662                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2663                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2664                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2665                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2666                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2667                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2668                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2669                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2670                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2671                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2672                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2673                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2674                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2675                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2676                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2677                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2678                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2679                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2680                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2681                               |

    #External Search CAS-127468 and link
  Scenario Outline: ACAUTOCAS-1298:  Provision to search collateral from third party and link
    Given user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user searches for an existing collateral
    And user selects advance search option
    And user gets advance search option to filter the collateral
    And user enters parameters "<Source System>", "<Application ID>", "<Host System>", "<Account Number>", "<Deal ID>", "<Customer ID>", "<Customer Name>", "<Mobile Number>", "<Branch>"
    And clicks on Search External
    And user sees the list of collaterals available in "<ExternalSystem>" as per the parameters entered
    Then user should be able to link it to the application
    Examples:
      | Source System | Application ID | Host System  | Account Number | Deal ID | Customer ID        | Customer Name | Mobile Number | Branch |
      | CAS           | APPL00081420   | Other System | LBDEL00012345  | 25      | GLBCUST00000011612 | Robert Downey | 9876543210    | BANDRA |
      | CAS           | APPL00081420   | Other System | LBDEL00012345  | 25      | GLBCUST00000011612 | Robert Downey | 9876543210    |        |
      | CAS           | APPL00081420   | Other System | LBDEL00012345  | 25      | GLBCUST00000011612 | Robert Downey |               |        |
      | CAS           | APPL00081420   | Other System | LBDEL00012345  | 25      | GLBCUST00000011612 |               |               |        |
      | CAS           | APPL00081420   | Other System | LBDEL00012345  | 25      |                    |               |               |        |
      | CAS           | APPL00081420   | Other System | LBDEL00012345  |         |                    |               |               |        |
      | CAS           | APPL00081420   | Other System |                |         |                    |               |               |        |
      | CAS           | APPL00081420   |              |                |         |                    |               |               |        |
      | CAS           |                |              |                |         |                    |               |               |        |
      | CAS           | APPL00081420   | Other System | LBDEL00012345  | 25      | GLBCUST00000011612 | Robert Downey |               | BANDRA |
      | CAS           | APPL00081420   | Other System | LBDEL00012345  | 25      | GLBCUST00000011612 |               |               | BANDRA |
      | CAS           | APPL00081420   | Other System | LBDEL00012345  | 25      |                    |               |               | BANDRA |
      | CAS           | APPL00081420   | Other System | LBDEL00012345  |         |                    |               |               | BANDRA |
      | CAS           | APPL00081420   | Other System |                |         |                    |               |               | BANDRA |
      | CAS           | APPL00081420   |              |                |         |                    |               |               | BANDRA |
      | CAS           |                |              |                |         |                    |               |               | BANDRA |
      |               |                |              |                |         |                    |               |               | BANDRA |
      | CAS           | APPL00081420   | Other System | LBDEL00012345  | 25      | GLBCUST00000011612 |               | 9876543210    | BANDRA |
      | CAS           | APPL00081420   | Other System | LBDEL00012345  | 25      |                    |               | 9876543210    | BANDRA |
      | CAS           | APPL00081420   | Other System | LBDEL00012345  |         |                    |               | 9876543210    | BANDRA |
      | CAS           | APPL00081420   | Other System |                |         |                    |               | 9876543210    | BANDRA |
      | CAS           | APPL00081420   |              |                |         |                    |               | 9876543210    | BANDRA |
      | CAS           |                |              |                |         |                    |               | 9876543210    | BANDRA |
      |               |                |              |                |         |                    |               | 9876543210    | BANDRA |
      |               |                |              |                |         |                    |               | 9876543210    |        |
      | CAS           | APPL00081420   | Other System | LBDEL00012345  | 25      |                    | Robert Downey | 9876543210    | BANDRA |
      | CAS           | APPL00081420   | Other System | LBDEL00012345  |         |                    | Robert Downey | 9876543210    | BANDRA |
      | CAS           | APPL00081420   | Other System |                |         |                    | Robert Downey | 9876543210    | BANDRA |
      | CAS           | APPL00081420   |              |                |         |                    | Robert Downey | 9876543210    | BANDRA |
      | CAS           |                |              |                |         |                    | Robert Downey | 9876543210    | BANDRA |
      |               |                |              |                |         |                    | Robert Downey | 9876543210    | BANDRA |
      |               |                |              |                |         |                    | Robert Downey | 9876543210    |        |
      |               |                |              |                |         |                    | Robert Downey |               |        |
      | CAS           | APPL00081420   | Other System | LBDEL00012345  |         | GLBCUST00000011612 | Robert Downey | 9876543210    | BANDRA |
      | CAS           | APPL00081420   | Other System |                |         | GLBCUST00000011612 | Robert Downey | 9876543210    | BANDRA |
      | CAS           | APPL00081420   |              |                |         | GLBCUST00000011612 | Robert Downey | 9876543210    | BANDRA |
      | CAS           |                |              |                |         | GLBCUST00000011612 | Robert Downey | 9876543210    | BANDRA |
      |               |                |              |                |         | GLBCUST00000011612 | Robert Downey | 9876543210    | BANDRA |
      |               |                |              |                |         | GLBCUST00000011612 | Robert Downey | 9876543210    |        |
      |               |                |              |                |         | GLBCUST00000011612 | Robert Downey |               |        |
      |               |                |              |                |         | GLBCUST00000011612 |               |               |        |
      | CAS           | APPL00081420   | Other System |                | 25      | GLBCUST00000011612 | Robert Downey | 9876543210    | BANDRA |
      | CAS           | APPL00081420   |              |                | 25      | GLBCUST00000011612 | Robert Downey | 9876543210    | BANDRA |
      | CAS           |                |              |                | 25      | GLBCUST00000011612 | Robert Downey | 9876543210    | BANDRA |
      |               |                |              |                | 25      | GLBCUST00000011612 | Robert Downey | 9876543210    | BANDRA |
      |               |                |              |                | 25      | GLBCUST00000011612 | Robert Downey | 9876543210    |        |
      |               |                |              |                | 25      | GLBCUST00000011612 | Robert Downey |               |        |
      |               |                |              |                | 25      | GLBCUST00000011612 |               |               |        |
      |               |                |              |                | 25      |                    |               |               |        |
      | CAS           | APPL00081420   |              | LBDEL00012345  | 25      | GLBCUST00000011612 | Robert Downey | 9876543210    | BANDRA |
      | CAS           |                |              | LBDEL00012345  | 25      | GLBCUST00000011612 | Robert Downey | 9876543210    | BANDRA |
      |               |                |              | LBDEL00012345  | 25      | GLBCUST00000011612 | Robert Downey | 9876543210    | BANDRA |
      |               |                |              | LBDEL00012345  | 25      | GLBCUST00000011612 | Robert Downey | 9876543210    |        |
      |               |                |              | LBDEL00012345  | 25      | GLBCUST00000011612 | Robert Downey |               |        |
      |               |                |              | LBDEL00012345  | 25      | GLBCUST00000011612 |               |               |        |
      |               |                |              | LBDEL00012345  | 25      |                    |               |               |        |
      |               |                |              | LBDEL00012345  |         |                    |               |               |        |
      | CAS           |                | Other System | LBDEL00012345  | 25      | GLBCUST00000011612 | Robert Downey | 9876543210    | BANDRA |
      |               |                | Other System | LBDEL00012345  | 25      | GLBCUST00000011612 | Robert Downey | 9876543210    | BANDRA |
      |               |                | Other System | LBDEL00012345  | 25      | GLBCUST00000011612 | Robert Downey | 9876543210    |        |
      |               |                | Other System | LBDEL00012345  | 25      | GLBCUST00000011612 | Robert Downey |               |        |
      |               |                | Other System | LBDEL00012345  | 25      | GLBCUST00000011612 |               |               |        |
      |               |                | Other System | LBDEL00012345  | 25      |                    |               |               |        |
      |               |                | Other System | LBDEL00012345  |         |                    |               |               |        |
      |               |                | Other System |                |         |                    |               |               |        |
      |               | APPL00081420   | Other System | LBDEL00012345  | 25      | GLBCUST00000011612 | Robert Downey | 9876543210    | BANDRA |
      |               | APPL00081420   | Other System | LBDEL00012345  | 25      | GLBCUST00000011612 | Robert Downey | 9876543210    |        |
      |               | APPL00081420   | Other System | LBDEL00012345  | 25      | GLBCUST00000011612 | Robert Downey |               |        |
      |               | APPL00081420   | Other System | LBDEL00012345  | 25      | GLBCUST00000011612 |               |               |        |
      |               | APPL00081420   | Other System | LBDEL00012345  | 25      |                    |               |               |        |
      |               | APPL00081420   | Other System | LBDEL00012345  |         |                    |               |               |        |
      |               | APPL00081420   | Other System |                |         |                    |               |               |        |
      |               | APPL00081420   |              |                |         |                    |               |               |        |

@Epic-Secondary_Collateral
#Author: rsurya.kumar
#CreateDate: 10th Oct 2023
#ScriptedBy:
#ReviewedBy:
#Scenarios: =
@AuthoredBy-rsurya.kumar
@NotImplemented
Feature: External Collateral Insurance Search and Link
#  Pre-Requisites---
#  In this feature we will validate the screen layout of Collateral Browser Page
#External Collateral Search and link

  Scenario Outline: ACAUTOCAS-3075:  Provision to search Insurance as external collateral and link
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "DDE" stage from application grid
    And user opens Collateral Page
    And user searches for an existing collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_collateralSearch>" and row <Collateral_collateralSearch_rowNum>
    And user enters parameters to search collateral
    And clicks on Search External
    When user sees the list of collaterals available in ExternalSystem as per the parameters entered
    Then user should be able to link it to the application
    Examples:
      | SourceDataFile       | SheetName | RowNumber | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2763                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2764                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2765                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2766                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2767                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2768                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2769                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2770                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2771                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2772                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2773                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2774                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2775                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2776                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2777                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2778                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2779                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2780                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2781                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2782                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2783                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2784                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2785                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2786                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2787                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2788                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2789                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2790                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2791                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2792                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2793                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2794                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2795                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2796                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2797                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2798                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2799                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2800                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2801                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2802                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2803                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2804                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2805                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2806                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2807                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2808                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2809                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2810                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2811                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2812                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2813                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2814                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2815                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2816                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2817                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2818                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2819                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2820                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2821                               |

#External Search CAS-127468 and link
  #FeatureID-ACAUTOCAS-4103,CAS-127468
  Scenario Outline: ACAUTOCAS-11591:  Search and link Insurance as collateral from third party to reconcile the copied data
    And user opens an application at "DDE" stage from application grid
    And user identifies an external "<CollateralSubType>" collateral
    When user links the "<CollateralSubType>" to the application using external collateral search as a security collateral
    And the collateral gets linked to the application
    Then the copied data should should match with the original data available at "<CollateralSubType>"
    Examples:
      | CollateralSubType |
      | Insurance         |




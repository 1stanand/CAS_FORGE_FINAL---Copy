@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ImplementedBy-atul.mishra
@Release

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE", "Credit", "Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
Feature: Internal Collateral Advance Search

#  Pre-Requisites---
#  In this feature we will validate the screen layout of Collateral Browser Page
#Internal Collateral Search

  Scenario Outline: ACAUTOCAS-1332: Provision to advance search internal collateral on <Collateral_search_rowNum>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page
    And user searches for an existing collateral
    And user selects advance search option
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_search>" and row <Collateral_search_rowNum>
    When user enters advance parameters
    And clicks on search
    Then user should be able to see the list of collaterals available in CMS as per the parameters entered
    Examples:
      | CollateralWB    | Collateral_search | Collateral_search_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | collateral_search | 2853                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2854                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2855                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2856                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2857                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2858                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2859                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2860                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2861                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2862                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2863                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2864                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2865                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2866                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2867                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2868                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2869                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2870                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2871                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2872                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2873                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2874                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2875                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2876                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2877                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2878                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2879                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2880                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2881                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2882                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2883                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2884                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2885                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2886                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2887                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2888                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2889                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2890                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2891                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2892                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2893                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2894                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2895                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2896                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2897                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2898                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2899                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2900                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2901                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2902                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2903                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2904                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2905                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2906                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2907                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2908                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2909                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2910                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2911                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2912                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2913                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2914                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2915                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2916                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2917                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2918                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2919                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2920                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2921                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2922                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2923                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2924                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2925                     | <ProductType> | <ApplicationStage> |     |          | indiv         |

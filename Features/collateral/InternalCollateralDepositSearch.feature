@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedByDEV
@ReviewedSecCollateral
@Release
      #${ApplicantType:["indiv","nonindiv"]}
Feature: Internal Collateral Deposit Search

#  Pre-Requisites---
#  In this feature we will validate the screen layout of Collateral Browser Page
  Scenario Outline: ACAUTOCAS-3126: Provision to search internal collateral of deposit search of <applicantType> on <ProductType> on <ApplicationStage> at <Collateral_collateralSearch_rowNum>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page
    And user searches for an existing collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_collateralSearch>" and row <Collateral_collateralSearch_rowNum>
    When user enters parameters to search collateral
    And clicks on search
    Then user should be able to see the list of collaterals available in CMS as per the parameters entered
          #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-tushar.chauhan
    Examples:
      | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum | ProductType   | ApplicationStage   | key | category | applicantType  |
      | collateral.xlsx | collateral_search           | 2926                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2927                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2928                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2929                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2930                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2931                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2932                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2933                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2934                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2935                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2936                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2937                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2938                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2939                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2940                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2941                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2942                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2943                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2944                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2945                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType  |
      | collateral.xlsx | collateral_search           | 2926                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType> |
      | collateral.xlsx | collateral_search           | 2927                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType> |
      | collateral.xlsx | collateral_search           | 2928                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType> |
      | collateral.xlsx | collateral_search           | 2929                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType> |
      | collateral.xlsx | collateral_search           | 2930                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType> |
      | collateral.xlsx | collateral_search           | 2931                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType> |
      | collateral.xlsx | collateral_search           | 2932                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType> |
      | collateral.xlsx | collateral_search           | 2933                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType> |
      | collateral.xlsx | collateral_search           | 2934                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType> |
      | collateral.xlsx | collateral_search           | 2935                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType> |
      | collateral.xlsx | collateral_search           | 2936                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType> |
      | collateral.xlsx | collateral_search           | 2937                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType> |
      | collateral.xlsx | collateral_search           | 2938                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType> |
      | collateral.xlsx | collateral_search           | 2939                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType> |
      | collateral.xlsx | collateral_search           | 2940                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType> |
      | collateral.xlsx | collateral_search           | 2941                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType> |
      | collateral.xlsx | collateral_search           | 2942                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType> |
      | collateral.xlsx | collateral_search           | 2943                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType> |
      | collateral.xlsx | collateral_search           | 2944                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType> |
      | collateral.xlsx | collateral_search           | 2945                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum | ProductType   | ApplicationStage   | key | category | applicantType  |
      | collateral.xlsx | collateral_search           | 2926                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2927                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2928                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2929                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2930                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2931                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2932                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2933                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2934                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2935                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2936                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2937                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2938                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2939                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2940                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2941                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2942                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2943                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2944                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |
      | collateral.xlsx | collateral_search           | 2945                               | <ProductType> | <ApplicationStage> |     |          | <applicanType> |


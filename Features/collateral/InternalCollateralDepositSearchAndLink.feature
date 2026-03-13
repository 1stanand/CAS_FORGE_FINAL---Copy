@Epic-Secondary_Collateral
#Author: rsurya.kumar
#CreateDate: 04th Sep 2023
#ScriptedBy:
#ReviewedBy:
#Scenarios: = 758
@AuthoredBy-rsurya.kumar
      #${ApplicantType:["indiv","nonindiv"]}
Feature: Internal Collateral Deposit Search and Link

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#  Pre-Requisites---
#  In this feature we will validate the screen layout of Collateral Browser Page
 #Internal Collateral Search and link
  Scenario Outline: ACAUTOCAS-3127:  Provision to search Deposit as internal collateral and link of <applicantType> on <ProductType> on <ApplicationStage> at <Collateral_collateralSearch_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page
    And user searches for an existing collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_collateralSearch>" and row <Collateral_collateralSearch_rowNum>
    When user enters parameters to search collateral
    And clicks on search
    And user sees the list of collaterals available in CMS as per the parameters entered
    Then user should be able to link it to the application
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | collateral_search           | 2926                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2927                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2928                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2929                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2930                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2931                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2932                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2933                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2934                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2935                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2936                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2937                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2938                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2939                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2940                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2941                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2942                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2943                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2944                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2945                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType |
      | collateral.xlsx | collateral_search           | 2926                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2927                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2928                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2929                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2930                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2931                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2932                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2933                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2934                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2935                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2936                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2937                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2938                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2939                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2940                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2941                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2942                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2943                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2944                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2945                               | <ProductType> | <ApplicationStage> |     | <category> | <applicanType>         |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | collateral_search           | 2926                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2927                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2928                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2929                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2930                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2931                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2932                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2933                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2934                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2935                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2936                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2937                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2938                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2939                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2940                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2941                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2942                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2943                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2944                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |
      | collateral.xlsx | collateral_search           | 2945                               | <ProductType> | <ApplicationStage> |     |          | <applicanType>         |


  #FeatureID-ACAUTOCAS-249
  Scenario Outline: ACAUTOCAS-11614:  Internal search and link Deposit as collateral to reconcile the copied data <ApplicantType> applicant at <ApplicationStage> for <Category> with <Key>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Sheet>" and row <Collateral_Sheet_RowNo>
    And user add "<CollateralSubType>" collateral with mandatory fields
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data in context
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Sheet>" and row <Collateral_Sheet_RowNo>
    When user searches for an existing internal collateral using Global Collateral Number
    And user links the collateral with the application
    Then user should be able to reconcile the data for "<CollateralSubType>" collateral successfully
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralSubType           | CollateralWB    | Collateral_Sheet             | Collateral_Sheet_RowNo | ProductType   | SecondaryApplicationStage | ApplicationStage   | Key | Category | ApplicantType | CollateralSubType   |
      | Fixed Deposit               | collateral.xlsx | fixed_deposit                | 0                      | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <applicanType>         | <CollateralSubType> |
      | Kisan Vikas Patra           | collateral.xlsx | Collateral_kisan_vikas_patra | 0                      | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <applicanType>         | <CollateralSubType> |
      | National Saving Certificate | collateral.xlsx | national_saving_certificate  | 0                      | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <applicanType>         | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralSubType           | CollateralWB    | Collateral_Sheet             | Collateral_Sheet_RowNo | ProductType   | SecondaryApplicationStage | ApplicationStage   | Key | Category   | ApplicantType | CollateralSubType   |
      | Fixed Deposit               | collateral.xlsx | fixed_deposit                | 0                      | <ProductType> | Post Approval             | <ApplicationStage> |     | <category> | <applicanType>         | <CollateralSubType> |
      | Kisan Vikas Patra           | collateral.xlsx | Collateral_kisan_vikas_patra | 0                      | <ProductType> | Post Approval             | <ApplicationStage> |     | <category> | <applicanType>         | <CollateralSubType> |
      | National Saving Certificate | collateral.xlsx | national_saving_certificate  | 0                      | <ProductType> | Post Approval             | <ApplicationStage> |     | <category> | <applicanType>         | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralSubType           | CollateralWB    | Collateral_Sheet             | Collateral_Sheet_RowNo | ProductType   | SecondaryApplicationStage | ApplicationStage   | Key | Category | ApplicantType | CollateralSubType   |
      | Fixed Deposit               | collateral.xlsx | fixed_deposit                | 0                      | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <applicanType>         | <CollateralSubType> |
      | Kisan Vikas Patra           | collateral.xlsx | Collateral_kisan_vikas_patra | 0                      | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <applicanType>         | <CollateralSubType> |
      | National Saving Certificate | collateral.xlsx | national_saving_certificate  | 0                      | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <applicanType>         | <CollateralSubType> |

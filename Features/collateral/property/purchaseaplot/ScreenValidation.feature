@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
#CreateDate: 14th Sep 2023
#ScriptedBy:
#ReviewedBy:
#Scenarios: = 1
@ReleaseSecCollateralM5
@ReviewedByGWT
@Regression @CAS @SecuredLoan @PersonalFinance @StageDDE @Collateral @TypeProperty @SubTypePurchaseAPlot
# ${CollateralType:["Property"]}
#${CollateralSubType:["Purchase A Plot"]}
#${ApplicantType:["indiv", "nonindiv"]}
Feature: Purchase A Plot Screen Validation

#  Pre-Requisites---
#  In this feature we will validate the screen layout when an Property Purchase A Plot is attached to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

##This is hardcoded in the Collateral Screen
  Scenario Outline: ACAUTOCAS-2540:  user chooses sub collateral as Purchase A Plot of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    When user adds collateral type
    Then user should not be able to select sub collateral as "<CollateralSubType>"
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE", "Credit", "Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              |

 # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 11                              |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              |


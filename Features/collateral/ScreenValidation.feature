@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedByDEV
@ReviewedSecCollateral

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE", "Credit", "Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
Feature: Collateral Page Screen Validation

#  Pre-Requisites---
#  In this feature we will validate the screen layout of Collateral Browser Page

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-atul.mishra
    @Release2
  Scenario Outline: ACAUTOCAS-1439: Collateral Page Screen Validation - <SectionName> of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When user opens Collateral Page
    Then User should be able to see "<SectionName>"
    Examples:
      | SectionName               | ProductType   | ApplicationStage   | key | category | applicantType |
      | Collateral Details        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Search Collateral         | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Search Advance Parameters | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-priyanshu.kashyap
    @Release3
    @ReleaseSecCollateralM5
  Scenario Outline: ACAUTOCAS-2376: Collateral Page Screen Validation - Collateral Page Sorting of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When user opens Collateral Page
    Then user should be able to see sorting options in Collateral Details grid
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType |
      | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-atul.mishra
    @Release2
  Scenario Outline:  ACAUTOCAS-1440: Collateral Page Screen Search Collateral Validation of <FieldName> of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page
    When user is on search collateral section
    Then user should be able to see field "<FieldName>"
    Examples:
      | FieldName               | ProductType   | ApplicationStage   | key | category | applicantType |
      | Collateral ID           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Collateral Type         | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Collateral SubType      | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Collateral Reference No | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Collateral Status       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Owner                   | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-atul.mishra
    @Release2
  Scenario Outline: ACAUTOCAS-1441: Collateral Page Screen Search Advance Parameters Validation of <FieldName> of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page
    When user is on Search Advance Parameters section
    Then user should be able to see field "<FieldName>"
    Examples:
      | FieldName      | ProductType   | ApplicationStage   | key | category | applicantType |
      | Source System  | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Application ID | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Host System    | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Account Number | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Deal ID        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Customer ID    | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Customer Name  | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Mobile Number  | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Branch         | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-aryan.jain
    @Release2
  #Enable Additional fields for collateral search basis Coll Type and Sub Type
  Scenario Outline: ACAUTOCAS-3266:  Collateral page screen dynamic search parameter "<AdditionalSearchField>" enabled of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page
    And user is on Search Advance Parameters section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user select collateral type and sub type for search collateral
    Then user should be able to see field "<AdditionalSearchField>"
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | AdditionalSearchField | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 2                         | RC Number             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 1                         | Asset No              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 3                         | RC Number             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 0                         | RC Number             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 4                         | RC Number             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 253                       | Deposit Number        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 16                        | Fixed Deposit Number  | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 254                       | Deposit Number        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 286                       | Deed Number           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 9                         | Policy Number         | <ProductType> | <ApplicationStage> |     |          | indiv         |
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | AdditionalSearchField | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 3                         | Engine Number         | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 3                         | Chassis Number        | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-priyanshu.kashyap
    @Release3
    @ReleaseSecCollateralM5
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:137632,137643
###Story:
###Bug:
#FeatureID-ACAUTOCAS-2
Scenario Outline: ACAUTOCAS-17032: CollateralPage cancel operation to reset screen for a "<ProductType>" application at "<ApplicationStage>"
    And user opens an "<ProductType>" application for "indiv" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills all data of "<CollateralSubType>"
    And user cancels the operation in collateral details
    And user gets alert message
    And user selects Ok to cancel the operation
    Then the screen gets reset to return to the collateral page
    Examples:
      | ProductType   | ApplicationStage   | CollateralWB    | Collateral_default | Collateral_default_rowNum | CollateralSubType                   | key | category |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | asset_details      | 6                         | Commercial Equipment                |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | asset_details      | 71                        | Commercial Vehicle                  |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | asset_details      | 77                        | Consumer Durable                    |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | asset_details      | 73                        | Consumer Vehicle                    |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 576                       | Implements and Attachments          |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 4                         | Tractor                             |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 425                       | Stock And Book Debts                |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 16                        | Fixed Deposit                       |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 344                       | Kisan Vikas Patra                   |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 347                       | National Saving Certificate         |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 348                       | Corporate Guarantee                 |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 587                       | Mortgage Guarantee                  |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 301                       | Insurance                           |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 6                         | Agriculture Land                    |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 14                        | Builder Property Under Construction |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 97                        | Construction On Land                |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 163                       | Plot Plus Self Construction         |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 95                        | Ready Property                      |     |          |

  @ImplementedBy-priyanshu.kashyap
    @Release3
  @ReleaseSecCollateralM5
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:137632,137643
###Story:
###Bug:
#FeatureID-ACAUTOCAS-2
Scenario Outline: ACAUTOCAS-17033: CollateralPage cancel operation to continue data entry for a "<ProductType>" application at "<ApplicationStage>"
    And user opens an "<ProductType>" application for "indiv" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills all data of "<CollateralSubType>"
    And user cancels the operation in collateral details
    And user gets alert message
    And user selects Close to cancel the operation
    Then the alert message disappears without changing the filled data
    Examples:
      | ProductType   | ApplicationStage   | CollateralWB    | Collateral_default | Collateral_default_rowNum | CollateralSubType                   | key | category |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | asset_details      | 6                         | Commercial Equipment                |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | asset_details      | 71                        | Commercial Vehicle                  |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | asset_details      | 77                        | Consumer Durable                    |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | asset_details      | 73                        | Consumer Vehicle                    |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 576                       | Implements and Attachments          |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 4                         | Tractor                             |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 425                       | Stock And Book Debts                |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 16                        | Fixed Deposit                       |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 344                       | Kisan Vikas Patra                   |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 347                       | National Saving Certificate         |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 348                       | Corporate Guarantee                 |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 587                       | Mortgage Guarantee                  |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 301                       | Insurance                           |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 6                         | Agriculture Land                    |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 14                        | Builder Property Under Construction |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 97                        | Construction On Land                |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 163                       | Plot Plus Self Construction         |     |          |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default            | 95                        | Ready Property                      |     |          |

@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedSecCollateral
@Sanity

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE", "Credit", "Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
#${ApplicantType:["indiv","nonindiv"]}

Feature: Corporate Guarantee Modification

#  Pre-Requisites---
#  In this feature we will modify and delete an Guarantee Corporate Guarantee to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-atul.mishra
    @Release2
    #FeatureID-ACAUTOCAS-8447
  Scenario Outline: ACAUTOCAS-3697:  Deleting a Corporate Guarantee attached to the application of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to collateral tab to add collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user deletes the saved collateral
    Then user should be able to successfully delete the collateral based on sub type
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-atul.mishra
    @Release2
    #FeatureID-ACAUTOCAS-8447
  Scenario Outline: ACAUTOCAS-3093:  Corporate Guarantee Data Modification on <FieldName> of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to collateral tab to add collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user modifies the collateral based on sub type
    Then user should be able to modify the data in field "<FieldName>"
    Examples:
      | FieldName             | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Collateral Ref No     | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Description           | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantee Date        | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantee Expiry Date | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantee Deed Number | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantee Amount      | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Name        | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantee Type        | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-atul.mishra
    @Release2
    #FeatureID-ACAUTOCAS-8447
  Scenario Outline: ACAUTOCAS-3094:  Corporate Guarantee - Guarantor Identification Data Modification on <FieldName> of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to collateral tab to add collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user modifies the collateral based on sub type
    And goes to "<SectionName>" section
    Then user should be able to modify the data in field "<FieldName>"
    Examples:
      | SectionName              | FieldName                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Guarantor Identification | Identification Type       | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Identification | Identification No.        | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Identification | Issue Date Identification | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Identification | Expiry Date               | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Identification | Country of Issue          | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-atul.mishra
    @Release2
    #FeatureID-ACAUTOCAS-8447
  Scenario Outline: ACAUTOCAS-3698:  Corporate Guarantee - Guarantor Identification Data Deletion of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to collateral tab to add collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user modifies the collateral based on sub type
    When goes to "<SectionName>" section
    Then user should be able to delete "<SectionName>"
    Examples:
      | SectionName              | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Guarantor Identification | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-atul.mishra
    @Release2
    #FeatureID-ACAUTOCAS-8447
  Scenario Outline: ACAUTOCAS-3095:  Corporate Guarantee restrictions in Data Modification on <FieldName> of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to collateral tab to add collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user modifies the collateral based on sub type
    When goes to "<SectionName>" section
    Then user should be able to modify the data in field "<FieldName>"
    Examples:
      | SectionName       | FieldName                     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Guarantor Address | Address Type                  | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Full Address                  | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Country                       | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Plot Number                   | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Address Line 2                | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Address Line 3                | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | PinCode                       | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Region                        | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | State                         | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | City                          | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | District                      | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Taluka                        | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Village                       | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Current Address               | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Duration at this Address From | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Duration at this Address To   | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Duration at this City From    | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Phone Number                  | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Mobile Phone                  | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Is address verified           | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-atul.mishra
    @Release2
    #FeatureID-ACAUTOCAS-8447
  Scenario Outline: ACAUTOCAS-3698:  Corporate Guarantee - Guarantor Address Data Deletion of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to collateral tab to add collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user modifies the collateral based on sub type
    When goes to "<SectionName>" section
    Then user should be able to delete "<SectionName>"
    Examples:
      | SectionName       | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Guarantor Address | collateral.xlsx | default            | 286                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-richa.singh
  @Conventional
  @Release
  #FeatureID-ACAUTOCAS-8447
  Scenario Outline: ACAUTOCAS-4377:  Corporate Guarantee Data Modification in Collateral Details should save successfully
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 830
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee of type Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 831
    When user attempts to modify collateral based on "Corporate Guarantee"
    And user modifies data of "Guarantee Deed Number"
    And user saves the data
    Then user gets a notification message
    Examples:
      | ProductType   | ApplicationStage   | applicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


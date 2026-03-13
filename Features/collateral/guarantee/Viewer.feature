@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-
@ImplementedBy-priyanshu.kashyap
@TechReviewedBy-
@ReviewedByGWT
@Conventional
@Release
@Perishable
#${ApplicantType:["indiv","nonindiv"]
  # ${CollSubType:["Mortgage Guarantee","Corporate Guarantee"]}
Feature: Secondary collateral on viewer stages

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
# ${ApplicationStage:["Post Approval","Application Renewal Recommendation","Application Renewal Approval"]}
# ${CollType:["Guarantee"]}
#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-11595:  At "<ApplicationStage>" stage user should not be able to modify security collateral attached to <ProductType> application of <CollSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "DDE" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user saves the collateral data
    And user moves application from "DDE" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to collateral tab
    When user modifies the saved collateral
    Then user should not be able to modify the data of saved collateral
    Examples:
      | CollSubType         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage | key | category  | ApplicantType   |
      | Mortgage Guarantee  | collateral.xlsx | default            | 718                       | <ProductType> | Post Approval    |     |           | <ApplicantType> |
      | Corporate Guarantee | collateral.xlsx | default            | 734                       | <ProductType> | Post Approval    |     |           | <ApplicantType> |
      | Mortgage Guarantee  | collateral.xlsx | default            | 718                       | <ProductType> | Disbursal Author |     | appupdate | <ApplicantType> |
      | Corporate Guarantee | collateral.xlsx | default            | 734                       | <ProductType> | Disbursal Author |     | appupdate | <ApplicantType> |
      | Mortgage Guarantee  | collateral.xlsx | default            | 718                       | <ProductType> | Disbursal Author |     | approve   | <ApplicantType> |
      | Corporate Guarantee | collateral.xlsx | default            | 734                       | <ProductType> | Disbursal Author |     | approve   | <ApplicantType> |



# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
# ${ApplicationStage:["Post Approval","Application Renewal Recommendation","Application Renewal Approval"]}
# ${CollType:["Guarantee"]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-8448
  @LoggedBug
  Scenario Outline: ACAUTOCAS-11596:  At "<ApplicationStage>" stage user should not be able to delink security collateral attached to "<ProductType>" application of <CollSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "DDE" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    When user saves the collateral data
    And user opens Collateral Page
    And user moves application from "DDE" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to collateral tab
    Then user should not be able to delete the saved collateral
    Examples:
      | CollSubType         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage | key | category  | ApplicantType   |
      | Mortgage Guarantee  | collateral.xlsx | default            | 718                       | <ProductType> | Post Approval    |     |           | <ApplicantType> |
      | Corporate Guarantee | collateral.xlsx | default            | 734                       | <ProductType> | Post Approval    |     |           | <ApplicantType> |
      | Mortgage Guarantee  | collateral.xlsx | default            | 718                       | <ProductType> | Disbursal Author |     | appupdate | <ApplicantType> |
      | Corporate Guarantee | collateral.xlsx | default            | 734                       | <ProductType> | Disbursal Author |     | appupdate | <ApplicantType> |
      | Mortgage Guarantee  | collateral.xlsx | default            | 718                       | <ProductType> | Disbursal Author |     | approve   | <ApplicantType> |
      | Corporate Guarantee | collateral.xlsx | default            | 734                       | <ProductType> | Disbursal Author |     | approve   | <ApplicantType> |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
# ${ApplicationStage:["Post Approval","Application Renewal Recommendation","Application Renewal Approval"]}
# ${CollType:["Guarantee"]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-11597:  At "<ApplicationStage>" stage user should not be able to add security collateral attached to "<ProductType>" application of <CollSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "DDE" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    When user saves the collateral data
    And user opens Collateral Page
    And user moves application from "DDE" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to collateral tab
    Then user should not be able to add the collateral
    Examples:
      | CollSubType         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage | key | category  | ApplicantType   |
      | Mortgage Guarantee  | collateral.xlsx | default            | 718                       | <ProductType> | Post Approval    |     |           | <ApplicantType> |
      | Corporate Guarantee | collateral.xlsx | default            | 734                       | <ProductType> | Post Approval    |     |           | <ApplicantType> |
      | Mortgage Guarantee  | collateral.xlsx | default            | 718                       | <ProductType> | Disbursal Author |     | appupdate | <ApplicantType> |
      | Corporate Guarantee | collateral.xlsx | default            | 734                       | <ProductType> | Disbursal Author |     | appupdate | <ApplicantType> |
      | Mortgage Guarantee  | collateral.xlsx | default            | 718                       | <ProductType> | Disbursal Author |     | approve   | <ApplicantType> |
      | Corporate Guarantee | collateral.xlsx | default            | 734                       | <ProductType> | Disbursal Author |     | approve   | <ApplicantType> |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
# ${ApplicationStage:["Post Approval","Application Renewal Recommendation","Application Renewal Approval"]}
# ${CollType:["Guarantee"]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-11598:  At "<ApplicationStage>" stage user should be able to view same data of "<CollSubType>" attached to "<ProductType>" application as originally entered
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "DDE" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    When user saves the collateral data
    And user opens Collateral Page
    And user moves application from "DDE" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to collateral tab
    And user views the saved collateral
    Then user should be able to see the same data as entered earlier for deposit "<CollSubType>"
    Examples:
      | CollSubType         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage | key | category  | ApplicantType   |
      | Mortgage Guarantee  | collateral.xlsx | default            | 718                       | <ProductType> | Post Approval    |     |           | <ApplicantType> |
      | Corporate Guarantee | collateral.xlsx | default            | 734                       | <ProductType> | Post Approval    |     |           | <ApplicantType> |
      | Mortgage Guarantee  | collateral.xlsx | default            | 718                       | <ProductType> | Disbursal Author |     | appupdate | <ApplicantType> |
      | Corporate Guarantee | collateral.xlsx | default            | 734                       | <ProductType> | Disbursal Author |     | appupdate | <ApplicantType> |
      | Mortgage Guarantee  | collateral.xlsx | default            | 718                       | <ProductType> | Disbursal Author |     | approve   | <ApplicantType> |
      | Corporate Guarantee | collateral.xlsx | default            | 734                       | <ProductType> | Disbursal Author |     | approve   | <ApplicantType> |

############################################################################################################
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
# ${ApplicationStage:["Disbursal Author"]}
# ${CollType:["Guarantee"]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-11599:  At Disbursal Author stage user should not be able to modify security collateral attached to "<ProductType>" application of <CollSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user saves the collateral data
    When user modifies the saved collateral
    Then user should not be able to modify the data of saved collateral
    Examples:
      | CollSubType         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage | key | category | ApplicantType   |
      | Mortgage Guarantee  | collateral.xlsx | default            | 718                       | <ProductType> | Disbursal Author |     |          | <ApplicantType> |
      | Corporate Guarantee | collateral.xlsx | default            | 734                       | <ProductType> | Disbursal Author |     |          | <ApplicantType> |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
# ${ApplicationStage:["Disbursal Author"]}
# ${CollType:["Guarantee"]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-11600:  At Disbursal Author stage user should not be able to delink security collateral attached to "<ProductType>" application of <CollSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    When user saves the data of collateral subtype
    Then user should not be able to delete the saved collateral
    Examples:
      | CollSubType         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage | key | category | ApplicantType   |
      | Mortgage Guarantee  | collateral.xlsx | default            | 718                       | <ProductType> | Disbursal Author |     |          | <ApplicantType> |
      | Corporate Guarantee | collateral.xlsx | default            | 734                       | <ProductType> | Disbursal Author |     |          | <ApplicantType> |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
# ${ApplicationStage:["Disbursal Author"]}
# ${CollType:["Guarantee"]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-11601:  At Disbursal Author stage user should not be able to add security collateral attached to "<ProductType>" application of <CollSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    When user saves the data of collateral subtype
    Then user should not be able to add the collateral
    Examples:
      | CollSubType         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage | key | category | ApplicantType   |
      | Mortgage Guarantee  | collateral.xlsx | default            | 718                       | <ProductType> | Disbursal Author |     |          | <ApplicantType> |
      | Corporate Guarantee | collateral.xlsx | default            | 734                       | <ProductType> | Disbursal Author |     |          | <ApplicantType> |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
# ${ApplicationStage:["Disbursal Author"]}
# ${CollType:["Guarantee"]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-8448
  @Sanity
  Scenario Outline: ACAUTOCAS-11602:  At Disbursal Author stage user should be able to view same data of "<CollSubType>" attached to "<ProductType>" application as originally entered
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    When user saves the data of collateral subtype
    And user views the saved collateral
    Then user should be able to see the same data as entered earlier for deposit "<CollSubType>"
    Examples:
      | CollSubType         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage | key | category | ApplicantType   |
      | Mortgage Guarantee  | collateral.xlsx | default            | 718                       | <ProductType> | Disbursal Author |     |          | <ApplicantType> |
      | Corporate Guarantee | collateral.xlsx | default            | 734                       | <ProductType> | Disbursal Author |     |          | <ApplicantType> |

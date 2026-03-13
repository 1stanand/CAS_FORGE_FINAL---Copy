@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ImplementedBy-pallavi.singh
@ReviewedByDEV
@Reconciled
@CERSAIDataView @TypeAsset
@Perishable
@Release
#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["Post Approval"]}
Feature: CERSAI data addition for Asset type collateral at Post Approval

#COLLATERAL_SUB_TYPE.HIDE_CERSAI_TAB = 0 for COLLATERAL_TYPE_FK = Asset

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-234,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-231,ACAUTOCAS-230,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8736:  CERSAI page data validation for "<CollateralSubType>" at "<CERSAIRowNumber>" for "<ValidationField>" at Post Approval stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "dde" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "dde"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user moves from "dde" to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to collateral tab
    When user attempts to modify "<CollateralSubType>"
    Then user should not be able to modify the data of saved collateral
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | applicantType | category | key | ApplicationStage   |
      | Commercial Equipment       | collateral.xlsx | default            | 3                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | default            | 2                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | default            | 1                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | default            | 0                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | default            | 4                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | default            | 576                       | <ProductType> | indiv         |          |     | <ApplicationStage> |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-234,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-231,ACAUTOCAS-230,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8737:  CERSAI page modification validation for "<CollateralSubType>" at "<CERSAIRowNumber>" for "<ValidationField>" at Post Approval stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "dde" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "dde"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user modifies "<CollateralSubType>" collateral
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in section CERSAI Data
    And user views the section Security Interest Details
    And user enters Security Interest Details
    And user saves the CERSAI data
    And user moves from "dde" to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to collateral tab
    And user views the collateral "<CollateralSubType>"
    When user navigates to the CERSAI page
    And user attempts to modify CERSAI data
    Then user should not be able to modify CERSAI data
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_cersaiDetails | Collateral_default | Collateral_default_rowNum | Collateral_cersaiDetails_rowNum | ProductType   | applicantType | category | key | ApplicationStage   |
      | Commercial Equipment       | collateral.xlsx | cersai_details           | default            | 3                         | 170                             | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | cersai_details           | default            | 2                         | 170                             | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | cersai_details           | default            | 1                         | 170                             | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | cersai_details           | default            | 0                         | 170                             | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | default            | 4                         | 170                             | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | default            | 576                       | 171                             | <ProductType> | indiv         |          |     | <ApplicationStage> |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-234,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-231,ACAUTOCAS-230,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8738:  CERSAI page data reconciliation for "<CollateralSubType>" at "<CERSAIRowNumber>" for "<ValidationField>" at Post Approval stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "dde" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "dde"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    When user modifies "<CollateralSubType>" collateral
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in section CERSAI Data
    And user saves the CERSAI data
    And user moves from "dde" to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to collateral tab
    And user views the collateral "<CollateralSubType>"
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    Then user should be able to validate the data successfully with the data on screen
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | applicantType | category | key | ApplicationStage   |
      | Commercial Equipment       | collateral.xlsx | cersai_details           | 170                             | default            | 3                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | cersai_details           | 170                             | default            | 2                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | cersai_details           | 170                             | default            | 1                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | cersai_details           | 170                             | default            | 0                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 170                             | default            | 4                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 171                             | default            | 576                       | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Commercial Equipment       | collateral.xlsx | cersai_details           | 170                             | default            | 3                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | cersai_details           | 170                             | default            | 2                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | cersai_details           | 170                             | default            | 1                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | cersai_details           | 170                             | default            | 0                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 170                             | default            | 4                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 171                             | default            | 576                       | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Commercial Equipment       | collateral.xlsx | cersai_details           | 170                             | default            | 3                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | cersai_details           | 170                             | default            | 2                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | cersai_details           | 170                             | default            | 1                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | cersai_details           | 170                             | default            | 0                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 170                             | default            | 4                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 171                             | default            | 576                       | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Commercial Equipment       | collateral.xlsx | cersai_details           | 170                             | default            | 3                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | cersai_details           | 170                             | default            | 2                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | cersai_details           | 170                             | default            | 1                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | cersai_details           | 170                             | default            | 0                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 170                             | default            | 4                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 171                             | default            | 576                       | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Commercial Equipment       | collateral.xlsx | cersai_details           | 170                             | default            | 3                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | cersai_details           | 170                             | default            | 2                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | cersai_details           | 170                             | default            | 1                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | cersai_details           | 170                             | default            | 0                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 170                             | default            | 4                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 171                             | default            | 576                       | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Commercial Equipment       | collateral.xlsx | cersai_details           | 170                             | default            | 3                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | cersai_details           | 170                             | default            | 2                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | cersai_details           | 170                             | default            | 1                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | cersai_details           | 170                             | default            | 0                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 170                             | default            | 4                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 171                             | default            | 576                       | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Commercial Equipment       | collateral.xlsx | cersai_details           | 170                             | default            | 3                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | cersai_details           | 170                             | default            | 2                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | cersai_details           | 170                             | default            | 1                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | cersai_details           | 170                             | default            | 0                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 170                             | default            | 4                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 171                             | default            | 576                       | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Commercial Equipment       | collateral.xlsx | cersai_details           | 170                             | default            | 3                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | cersai_details           | 170                             | default            | 2                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | cersai_details           | 170                             | default            | 1                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | cersai_details           | 170                             | default            | 0                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 170                             | default            | 4                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 171                             | default            | 576                       | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Commercial Equipment       | collateral.xlsx | cersai_details           | 170                             | default            | 3                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | cersai_details           | 170                             | default            | 2                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | cersai_details           | 170                             | default            | 1                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | cersai_details           | 170                             | default            | 0                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 170                             | default            | 4                         | <ProductType> | indiv         |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 171                             | default            | 576                       | <ProductType> | indiv         |          |     | <ApplicationStage> |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-234,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-231,ACAUTOCAS-230,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8739:  CERSAI page security interest details data validation for "<CollateralSubType>" at "<CERSAIRowNumber>" at Post Approval stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "dde" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "dde"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user modifies "<CollateralSubType>" collateral
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "cersai_details" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in section CERSAI Data
    And user views the section Security Interest Details
    And user enters Security Interest Details
    And user saves the CERSAI data
    And user moves from "dde" to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to collateral tab
    And user views the collateral "<CollateralSubType>"
    When user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "cersai_details" and row <Collateral_cersaiDetails_rowNum>
    Then user should be able to validate the Security Interest Details data successfully with the data on screen
    Examples:
      | CollateralSubType          | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralWB    | Collateral_cersaiDetails_rowNum | Collateral_default_rowNum |
      | Commercial Equipment       | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 3                         |
      | Commercial Equipment       | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 3                         |
      | Commercial Equipment       | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 3                         |
      | Commercial Equipment       | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 3                         |
      | Commercial Equipment       | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 3                         |
      | Commercial Equipment       | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 3                         |
      | Commercial Equipment       | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 3                         |
      | Commercial Equipment       | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 3                         |
      | Commercial Equipment       | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 3                         |
      | Commercial Equipment       | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 3                         |
      | Commercial Equipment       | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 3                         |
      | Commercial Equipment       | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 3                         |
      | Commercial Equipment       | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 3                         |
      | Commercial Equipment       | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 3                         |
      | Commercial Vehicle         | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 2                         |
      | Commercial Vehicle         | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 2                         |
      | Commercial Vehicle         | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 2                         |
      | Commercial Vehicle         | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 2                         |
      | Commercial Vehicle         | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 2                         |
      | Commercial Vehicle         | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 2                         |
      | Commercial Vehicle         | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 2                         |
      | Commercial Vehicle         | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 2                         |
      | Commercial Vehicle         | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 2                         |
      | Commercial Vehicle         | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 2                         |
      | Commercial Vehicle         | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 2                         |
      | Commercial Vehicle         | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 2                         |
      | Commercial Vehicle         | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 2                         |
      | Commercial Vehicle         | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 2                         |
      | Consumer Durable           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 1                         |
      | Consumer Durable           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 1                         |
      | Consumer Durable           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 1                         |
      | Consumer Durable           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 1                         |
      | Consumer Durable           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 1                         |
      | Consumer Durable           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 1                         |
      | Consumer Durable           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 1                         |
      | Consumer Durable           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 1                         |
      | Consumer Durable           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 1                         |
      | Consumer Durable           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 1                         |
      | Consumer Durable           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 1                         |
      | Consumer Durable           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 1                         |
      | Consumer Durable           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 1                         |
      | Consumer Durable           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 1                         |
      | Consumer Vehicle           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 0                         |
      | Consumer Vehicle           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 0                         |
      | Consumer Vehicle           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 0                         |
      | Consumer Vehicle           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 0                         |
      | Consumer Vehicle           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 0                         |
      | Consumer Vehicle           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 0                         |
      | Consumer Vehicle           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 0                         |
      | Consumer Vehicle           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 0                         |
      | Consumer Vehicle           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 0                         |
      | Consumer Vehicle           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 0                         |
      | Consumer Vehicle           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 0                         |
      | Consumer Vehicle           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 0                         |
      | Consumer Vehicle           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 0                         |
      | Consumer Vehicle           | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 0                         |
      | Tractor                    | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 9                         |
      | Tractor                    | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 9                         |
      | Tractor                    | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 9                         |
      | Tractor                    | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 9                         |
      | Tractor                    | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 9                         |
      | Tractor                    | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 9                         |
      | Tractor                    | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 9                         |
      | Tractor                    | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 9                         |
      | Tractor                    | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 9                         |
      | Tractor                    | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 9                         |
      | Tractor                    | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 9                         |
      | Tractor                    | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 9                         |
      | Tractor                    | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 9                         |
      | Tractor                    | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 170                             | 9                         |
      | Implements and Attachments | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 171                             | 576                       |
      | Implements and Attachments | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 171                             | 576                       |
      | Implements and Attachments | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 171                             | 576                       |
      | Implements and Attachments | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 171                             | 576                       |
      | Implements and Attachments | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 171                             | 576                       |
      | Implements and Attachments | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 171                             | 576                       |
      | Implements and Attachments | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 171                             | 576                       |
      | Implements and Attachments | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 171                             | 576                       |
      | Implements and Attachments | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 171                             | 576                       |
      | Implements and Attachments | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 171                             | 576                       |
      | Implements and Attachments | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 171                             | 576                       |
      | Implements and Attachments | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 171                             | 576                       |
      | Implements and Attachments | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 171                             | 576                       |
      | Implements and Attachments | <ProductType> | <applicantType> | <ApplicationStage> |          |     | collateral.xlsx | 171                             | 576                       |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-234,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-231,ACAUTOCAS-230,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8740:  CERSAI page security interest details data should not be deleted at Post Approval stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "dde" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "dde"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user modifies "<CollateralSubType>" collateral
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in section CERSAI Data
    And user views the section Security Interest Details
    And user has entered data in section Security Interest Details as
      | collateral.xlsx | cersai_details | 234 |
    And user moves from "dde" to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to collateral tab
    And user views the collateral "<CollateralSubType>"
    When user navigates to the CERSAI page
    And user attempts to delete Security Interest Data
    Then user should not be able to delete Security Interest Data
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | ProductType   | applicantType   | category | key | ApplicationStage   |
      | Commercial Equipment       | collateral.xlsx | default            | 3                         | cersai_details           | 234                             | <ProductType> | <applicantType> |          |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | default            | 2                         | cersai_details           | 234                             | <ProductType> | <applicantType> |          |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | default            | 1                         | cersai_details           | 234                             | <ProductType> | <applicantType> |          |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | default            | 0                         | cersai_details           | 234                             | <ProductType> | <applicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | default            | 4                         | cersai_details           | 171                             | <ProductType> | <applicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | default            | 576                       | cersai_details           | 171                             | <ProductType> | <applicantType> |          |     | <ApplicationStage> |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-234,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-231,ACAUTOCAS-230,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8741:  CERSAI page security interest details data should not be modified at Post Approval stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "dde" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "dde"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user modifies "<CollateralSubType>" collateral
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in section CERSAI Data
    And user views the section Security Interest Details
    And user has entered data in section Security Interest Details as
      | collateral.xlsx | cersai_details | 234 |
    And user moves from "dde" to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to collateral tab
    And user views the collateral "<CollateralSubType>"
    When user navigates to the CERSAI page
    And user attempts to modify Security Interest Data
    Then user should not be able to modify Security Interest Data
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | ProductType   | applicantType   | category | key | ApplicationStage   |
      | Commercial Equipment       | collateral.xlsx | default            | 3                         | cersai_details           | 234                             | <ProductType> | <applicantType> |          |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | default            | 2                         | cersai_details           | 243                             | <ProductType> | <applicantType> |          |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | default            | 1                         | cersai_details           | 243                             | <ProductType> | <applicantType> |          |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | default            | 0                         | cersai_details           | 243                             | <ProductType> | <applicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | default            | 4                         | cersai_details           | 171                             | <ProductType> | <applicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | default            | 576                       | cersai_details           | 171                             | <ProductType> | <applicantType> |          |     | <ApplicationStage> |

@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-
@ImplementedBy-pallavi.singh
@TechReviewedBy-
@ReviewedByDEV
@ReviewedSecCollateral
@CERSAIDataView @TypeAsset
@Part-2
@Perishable
#${ApplicantType:["indiv","nonindiv"]}
#${ApplicationStage:["Disbursal Author"]}
Feature: CERSAI data addition for Asset type collateral at Disbursal Author

#COLLATERAL_SUB_TYPE.HIDE_CERSAI_TAB = 0 for COLLATERAL_TYPE_FK = Asset

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    
  #FeatureID-ACAUTOCAS-5077,ACAUTOCAS-234,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-231,ACAUTOCAS-230,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8729:  CERSAI page modification validation for <CollateralSubType> at <Collateral_default_rowNum> for <Collateral_cersaiDetails_rowNum> at Disbursal Author stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "dde" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "dde"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    And user modifies "<CollateralSubType>" collateral
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in section CERSAI Data
    And user views the section Security Interest Details
    And user enters Security Interest Details
    And user saves the CERSAI data
    And user moves application from "dde" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to collateral tab
    And user views the collateral "<CollateralSubType>"
    When user navigates to the CERSAI page
    And user attempts to modify CERSAI data
    Then user should not be able to modify CERSAI data
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_cersaiDetails | Collateral_default | Collateral_default_rowNum | Collateral_cersaiDetails_rowNum | ProductType   | ApplicantType   | Category | Key | ApplicationStage   |
      | Commercial Equipment       | collateral.xlsx | cersai_details           | default            | 3                         | 170                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | cersai_details           | default            | 2                         | 170                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | cersai_details           | default            | 1                         | 170                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | cersai_details           | default            | 0                         | 170                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | default            | 4                         | 170                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | default            | 576                       | 171                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |

    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_cersaiDetails | Collateral_default | Collateral_default_rowNum | Collateral_cersaiDetails_rowNum | ProductType   | ApplicantType   | Category   | Key | ApplicationStage   |
      | Commercial Equipment       | collateral.xlsx | cersai_details           | default            | 3                         | 170                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | cersai_details           | default            | 2                         | 170                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | cersai_details           | default            | 1                         | 170                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | cersai_details           | default            | 0                         | 170                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | default            | 4                         | 170                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | default            | 576                       | 171                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |

    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_cersaiDetails | Collateral_default | Collateral_default_rowNum | Collateral_cersaiDetails_rowNum | ProductType   | ApplicantType   | Category | Key | ApplicationStage   |
      | Commercial Equipment       | collateral.xlsx | cersai_details           | default            | 3                         | 170                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | cersai_details           | default            | 2                         | 170                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | cersai_details           | default            | 1                         | 170                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | cersai_details           | default            | 0                         | 170                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | default            | 4                         | 170                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | default            | 576                       | 171                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |


  #FeatureID-ACAUTOCAS-5077,ACAUTOCAS-234,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-231,ACAUTOCAS-230
  Scenario Outline: ACAUTOCAS-8730:  CERSAI page data reconciliation for "<CollateralSubType>" at "<Collateral_default_rowNum>" for "<Collateral_cersaiDetails_rowNum>" at Disbursal Author stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "dde" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "dde"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    When user modifies "<CollateralSubType>" collateral
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in section CERSAI Data
    And user saves the CERSAI data
    And user moves application from "dde" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to collateral tab
    And user views the collateral "<CollateralSubType>"
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    Then user should be able to validate the data successfully with the data on screen
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | Category | Key | ApplicationStage   |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 0                               | default            | 3                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 0                               | default            | 2                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 0                               | default            | 1                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 0                               | default            | 0                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 0                               | default            | 4                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 0                               | default            | 576                       | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 1                               | default            | 3                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 1                               | default            | 2                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 1                               | default            | 1                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 1                               | default            | 0                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 1                               | default            | 4                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 1                               | default            | 576                       | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 2                               | default            | 3                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 2                               | default            | 2                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 2                               | default            | 1                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 2                               | default            | 0                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 2                               | default            | 4                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 2                               | default            | 576                       | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 3                               | default            | 3                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 3                               | default            | 2                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 3                               | default            | 1                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 3                               | default            | 0                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 3                               | default            | 4                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 3                               | default            | 576                       | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 4                               | default            | 3                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 4                               | default            | 2                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 4                               | default            | 1                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 4                               | default            | 0                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 4                               | default            | 4                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 4                               | default            | 576                       | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 5                               | default            | 3                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 5                               | default            | 2                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 5                               | default            | 1                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 5                               | default            | 0                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 5                               | default            | 4                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 5                               | default            | 576                       | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 6                               | default            | 3                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 6                               | default            | 2                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 6                               | default            | 1                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 6                               | default            | 0                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 6                               | default            | 4                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 6                               | default            | 576                       | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 7                               | default            | 3                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 7                               | default            | 2                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 7                               | default            | 1                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 7                               | default            | 0                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 7                               | default            | 576                       | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 7                               | default            | 4                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 8                               | default            | 3                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 8                               | default            | 2                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 8                               | default            | 1                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 8                               | default            | 0                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 8                               | default            | 576                       | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 8                               | default            | 4                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | Category   | Key | ApplicationStage   |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 0                               | default            | 3                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 0                               | default            | 2                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 0                               | default            | 1                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 0                               | default            | 0                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 0                               | default            | 4                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 0                               | default            | 576                       | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 1                               | default            | 3                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 1                               | default            | 2                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 1                               | default            | 1                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 1                               | default            | 0                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 1                               | default            | 4                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 1                               | default            | 576                       | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 2                               | default            | 3                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 2                               | default            | 2                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 2                               | default            | 1                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 2                               | default            | 0                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 2                               | default            | 4                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 2                               | default            | 576                       | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 3                               | default            | 3                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 3                               | default            | 2                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 3                               | default            | 1                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 3                               | default            | 0                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 3                               | default            | 4                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 3                               | default            | 576                       | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 4                               | default            | 3                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 4                               | default            | 2                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 4                               | default            | 1                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 4                               | default            | 0                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 4                               | default            | 4                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 4                               | default            | 576                       | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 5                               | default            | 3                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 5                               | default            | 2                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 5                               | default            | 1                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 5                               | default            | 0                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 5                               | default            | 4                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 5                               | default            | 576                       | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 6                               | default            | 3                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 6                               | default            | 2                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 6                               | default            | 1                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 6                               | default            | 0                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 6                               | default            | 4                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 6                               | default            | 576                       | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 7                               | default            | 3                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 7                               | default            | 2                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 7                               | default            | 1                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 7                               | default            | 0                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 7                               | default            | 576                       | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 7                               | default            | 4                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 8                               | default            | 3                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 8                               | default            | 2                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 8                               | default            | 1                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 8                               | default            | 0                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 8                               | default            | 576                       | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 8                               | default            | 4                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | Category | Key | ApplicationStage   |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 0                               | default            | 3                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 0                               | default            | 2                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 0                               | default            | 1                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 0                               | default            | 0                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 0                               | default            | 4                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 0                               | default            | 576                       | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 1                               | default            | 3                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 1                               | default            | 2                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 1                               | default            | 1                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 1                               | default            | 0                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 1                               | default            | 4                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 1                               | default            | 576                       | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 2                               | default            | 3                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 2                               | default            | 2                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 2                               | default            | 1                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 2                               | default            | 0                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 2                               | default            | 4                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 2                               | default            | 576                       | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 3                               | default            | 3                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 3                               | default            | 2                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 3                               | default            | 1                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 3                               | default            | 0                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 3                               | default            | 4                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 3                               | default            | 576                       | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 4                               | default            | 3                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 4                               | default            | 2                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 4                               | default            | 1                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 4                               | default            | 0                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 4                               | default            | 4                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 4                               | default            | 576                       | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 5                               | default            | 3                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 5                               | default            | 2                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 5                               | default            | 1                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 5                               | default            | 0                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 5                               | default            | 4                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 5                               | default            | 576                       | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 6                               | default            | 3                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 6                               | default            | 2                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 6                               | default            | 1                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 6                               | default            | 0                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 6                               | default            | 4                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 6                               | default            | 576                       | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 7                               | default            | 3                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 7                               | default            | 2                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 7                               | default            | 1                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 7                               | default            | 0                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 7                               | default            | 576                       | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 7                               | default            | 4                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialEquipment        | collateral.xlsx | cersai_details           | 8                               | default            | 3                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialVehicle          | collateral.xlsx | cersai_details           | 8                               | default            | 2                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerDurable            | collateral.xlsx | cersai_details           | 8                               | default            | 1                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerVehicle            | collateral.xlsx | cersai_details           | 8                               | default            | 0                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | cersai_details           | 8                               | default            | 576                       | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | cersai_details           | 8                               | default            | 4                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |


  #FeatureID-ACAUTOCAS-5077,ACAUTOCAS-234,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-231,ACAUTOCAS-230
  Scenario Outline: ACAUTOCAS-8731:  CERSAI page security interest details data validation for "<CollateralSubType>" at "<Collateral_cersaiDetails_rowNum>" at Disbursal Author stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "dde" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "dde"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    And user modifies "<CollateralSubType>" collateral
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in section CERSAI Data
    And user views the section Security Interest Details
    And user enters Security Interest Details
    And user saves the CERSAI data
    And user moves application from "dde" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to collateral tab
    And user views the collateral "<CollateralSubType>"
    When user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    Then user should be able to validate the Security Interest Details data successfully with the data on screen
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | CollateralSubType          | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | ProductType   | ApplicantType   | Category | Key | ApplicationStage   |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 234                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 235                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 236                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 237                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 238                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 239                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 240                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 241                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 242                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 243                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 244                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 245                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 246                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 247                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 248                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 249                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 234                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 235                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 236                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 237                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 238                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 239                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 240                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 241                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 242                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 243                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 244                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 245                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 246                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 247                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 248                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 249                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 234                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 235                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 236                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 237                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 238                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 239                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 240                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 241                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 242                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 243                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 244                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 245                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 246                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 247                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 248                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 249                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 234                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 235                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 236                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 237                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 238                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 239                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 240                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 241                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 242                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 243                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 244                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 245                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 246                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 247                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 248                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 249                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 234                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 235                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 236                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 237                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 238                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 239                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 240                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 241                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 242                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 243                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 244                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 245                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 246                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 247                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 248                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 249                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 234                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 235                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 236                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 237                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 238                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 239                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 240                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 241                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 242                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 243                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 244                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 245                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 246                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 247                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 248                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 249                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | CollateralSubType          | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | ProductType   | ApplicantType   | Category   | Key | ApplicationStage   |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 234                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 235                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 236                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 237                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 238                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 239                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 240                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 241                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 242                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 243                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 244                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 245                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 246                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 247                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 248                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 249                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 234                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 235                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 236                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 237                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 238                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 239                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 240                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 241                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 242                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 243                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 244                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 245                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 246                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 247                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 248                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 249                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 234                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 235                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 236                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 237                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 238                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 239                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 240                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 241                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 242                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 243                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 244                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 245                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 246                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 247                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 248                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 249                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 234                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 235                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 236                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 237                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 238                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 239                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 240                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 241                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 242                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 243                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 244                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 245                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 246                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 247                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 248                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 249                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 234                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 235                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 236                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 237                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 238                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 239                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 240                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 241                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 242                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 243                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 244                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 245                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 246                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 247                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 248                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 249                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 234                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 235                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 236                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 237                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 238                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 239                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 240                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 241                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 242                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 243                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 244                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 245                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 246                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 247                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 248                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 249                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | CollateralSubType          | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | ProductType   | ApplicantType   | Category | Key | ApplicationStage   |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 234                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 235                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 236                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 237                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 238                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 239                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 240                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 241                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 242                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 243                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 244                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 245                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 246                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 247                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 248                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 3                         | Commercial Equipment       | cersai_details           | 249                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 234                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 235                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 236                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 237                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 238                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 239                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 240                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 241                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 242                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 243                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 244                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 245                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 246                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 247                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 248                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 2                         | Commercial Vehicle         | cersai_details           | 249                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 234                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 235                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 236                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 237                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 238                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 239                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 240                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 241                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 242                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 243                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 244                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 245                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 246                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 247                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 248                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 1                         | Consumer Durable           | cersai_details           | 249                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 234                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 235                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 236                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 237                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 238                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 239                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 240                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 241                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 242                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 243                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 244                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 245                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 246                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 247                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 248                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 0                         | Consumer Vehicle           | cersai_details           | 249                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 234                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 235                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 236                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 237                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 238                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 239                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 240                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 241                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 242                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 243                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 244                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 245                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 246                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 247                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 248                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 4                         | Tractor                    | cersai_details           | 249                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 234                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 235                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 236                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 237                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 238                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 239                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 240                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 241                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 242                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 243                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 244                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 245                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 246                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 247                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 248                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | collateral.xlsx | default            | 576                       | Implements and Attachments | cersai_details           | 249                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |


  ##FeatureID-ACAUTOCAS-5077,ACAUTOCAS-234,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-231,ACAUTOCAS-230
  Scenario Outline: ACAUTOCAS-8732:  CERSAI page security interest details data should not be deleted at Disbursal Author stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "dde" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "dde"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    And user modifies "<CollateralSubType>" collateral
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in section CERSAI Data
    And user views the section Security Interest Details
    And user has entered data in section Security Interest Details as
      | collateral.xlsx | cersai_details | 234 |
    And user moves application from "dde" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to collateral tab
    And user views the collateral "<CollateralSubType>"
    When user navigates to the CERSAI page
    And user attempts to delete Security Interest Data
    Then user should not be able to delete Security Interest Data
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | ProductType   | ApplicantType   | Category | Key | ApplicationStage   |
      | Commercial Equipment       | collateral.xlsx | default            | 3                         | cersai_details           | 234                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | default            | 2                         | cersai_details           | 234                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | default            | 1                         | cersai_details           | 234                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | default            | 0                         | cersai_details           | 234                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | default            | 4                         | cersai_details           | 171                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | default            | 576                       | cersai_details           | 171                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | ProductType   | ApplicantType   | Category   | Key | ApplicationStage   |
      | Commercial Equipment       | collateral.xlsx | default            | 3                         | cersai_details           | 234                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | default            | 2                         | cersai_details           | 234                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | default            | 1                         | cersai_details           | 234                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | default            | 0                         | cersai_details           | 234                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | default            | 4                         | cersai_details           | 171                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | default            | 576                       | cersai_details           | 171                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | ProductType   | ApplicantType   | Category | Key | ApplicationStage   |
      | Commercial Equipment       | collateral.xlsx | default            | 3                         | cersai_details           | 234                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | default            | 2                         | cersai_details           | 234                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | default            | 1                         | cersai_details           | 234                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | default            | 0                         | cersai_details           | 234                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | default            | 4                         | cersai_details           | 171                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | default            | 576                       | cersai_details           | 171                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |


  #FeatureID-ACAUTOCAS-5077,ACAUTOCAS-234,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-231,ACAUTOCAS-230
  Scenario Outline: ACAUTOCAS-8733:  CERSAI page security interest details data should not be modified at Disbursal Author stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "dde" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "dde"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    And user modifies "<CollateralSubType>" collateral
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in section CERSAI Data
    And user views the section Security Interest Details
    And user has entered data in section Security Interest Details as
      | collateral.xlsx | cersai_details | 234 |
    And user moves application from "dde" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to collateral tab
    And user views the collateral "<CollateralSubType>"
    When user navigates to the CERSAI page
    And user attempts to modify Security Interest Data
    Then user should not be able to modify Security Interest Data
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | ProductType   | ApplicantType   | Category | Key | ApplicationStage   |
      | Commercial Equipment       | collateral.xlsx | default            | 3                         | cersai_details           | 234                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | default            | 2                         | cersai_details           | 243                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | default            | 1                         | cersai_details           | 243                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | default            | 0                         | cersai_details           | 243                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | default            | 4                         | cersai_details           | 171                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | default            | 576                       | cersai_details           | 171                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | ProductType   | ApplicantType   | Category   | Key | ApplicationStage   |
      | Commercial Equipment       | collateral.xlsx | default            | 3                         | cersai_details           | 234                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | default            | 2                         | cersai_details           | 243                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | default            | 1                         | cersai_details           | 243                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | default            | 0                         | cersai_details           | 243                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | default            | 4                         | cersai_details           | 171                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | default            | 576                       | cersai_details           | 171                             | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | ProductType   | ApplicantType   | Category | Key | ApplicationStage   |
      | Commercial Equipment       | collateral.xlsx | default            | 3                         | cersai_details           | 234                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | default            | 2                         | cersai_details           | 243                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | default            | 1                         | cersai_details           | 243                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | default            | 0                         | cersai_details           | 243                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | default            | 4                         | cersai_details           | 171                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | default            | 576                       | cersai_details           | 171                             | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |

  @NotImplemented
    #FeatureID-ACAUTOCAS-5077,ACAUTOCAS-234,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-231,ACAUTOCAS-230,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8734:  CERSAI data validation for "<CollateralSubType>" at LMS Module
    And user identifies an application from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNumber>
    And user has already added "<CollateralSubType>"
    And user has already added CERSAI data for the security collateral
    And user has already added Security Interest Details data
    When user disburse the application
    And user logs into LMS module
    And user views the application
    Then user should be able to view the same CERSAI data for security collateral

    Examples:
      | SourceDataFile | SheetName              | RowNumber | CollateralSubType                   |
      | AssetFile.xlsx | CommercialEquipment    | 9         | Builder Property Under Construction |
      | AssetFile.xlsx | CommercialVehicle      | 9         | Construction On Land                |
      | AssetFile.xlsx | ConsumerDurable        | 9         | Consumer Durable                    |
      | AssetFile.xlsx | ConsumerVehicle        | 9         | Consumer Vehicle                    |
      | AssetFile.xlsx | Tractor                | 9         | Tractor                             |
      | AssetFile.xlsx | ImplementsNAttachments | 9         | Implements and Attachments          |


  #FeatureID-ACAUTOCAS-5077,ACAUTOCAS-234,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-231,ACAUTOCAS-230
  Scenario Outline: ACAUTOCAS-8735:  CERSAI Security Interest Details data validation for "<CollateralSubType>" at at LMS Module
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "dde" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "dde"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    And user moves application from "dde" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to collateral tab
    And user views the collateral "<CollateralSubType>"
    And user attempts to modify CERSAI data
    Then user should not be able to modify CERSAI data
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    Examples:
      | CollateralSubType          | ApplicationStage | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | Category | Key | ApplicationStage   |
      | CommercialEquipment        | disbursal author | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialVehicle          | disbursal author | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerDurable            | disbursal author | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerVehicle            | disbursal author | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | disbursal author | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | disbursal author | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralSubType          | ApplicationStage | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | Category   | Key | ApplicationStage   |
      | CommercialEquipment        | disbursal author | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | CommercialVehicle          | disbursal author | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | ConsumerDurable            | disbursal author | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | ConsumerVehicle            | disbursal author | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Tractor                    | disbursal author | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Implements and Attachments | disbursal author | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    Examples:
      | CollateralSubType          | ApplicationStage | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | Category | Key | ApplicationStage   |
      | CommercialEquipment        | disbursal author | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | CommercialVehicle          | disbursal author | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerDurable            | disbursal author | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | ConsumerVehicle            | disbursal author | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | disbursal author | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | disbursal author | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |


  #FeatureID-ACAUTOCAS-5077,ACAUTOCAS-234,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-231,ACAUTOCAS-230
  Scenario Outline: ACAUTOCAS-16629: CERSAI page data validation for "<CollateralSubType>" at "<Collateral_default_rowNum>" for "<DisbursalInfoWB_home_rowNum>" at Disbursal Author stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "dde" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "dde"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    And user moves application from "dde" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to collateral tab
    Then user should not be able to modify CollateralSubType at disbursal author stage
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | Category | Key | ApplicationStage   |
      | Commercial Equipment       | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | Category   | Key | ApplicationStage   |
      | Commercial Equipment       | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> |
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | Category | Key | ApplicationStage   |
      | Commercial Equipment       | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Commercial Vehicle         | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Consumer Durable           | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Consumer Vehicle           | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Tractor                    | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |
      | Implements and Attachments | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> |

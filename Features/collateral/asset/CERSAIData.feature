@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-
@TechReviewedBy-
@Release
@Part-2  
@CERSAIDataCapture @Asset
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral

#${ApplicantType:["indiv","nonindiv"]}
Feature: CERSAI data capture for Asset type collateral

#COLLATERAL_SUB_TYPE.HIDE_CERSAI_TAB = 0 for COLLATERAL_TYPE_FK = Property

  Scenario Outline: ACAUTOCAS-5310: CERSAI page should be visible to user on collateral screen for Asset of "<ProductType>" application at "<ApplicationStage>" stage
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral at "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetail>" and row <Collateral_assetDetail_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    When user attempts to modify collateral based on "<CollateralSubType>"
    Then user should be able to see the CERSAI page
    @ImplementedBy-priyanshu.kashyap
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_assetDetail | Collateral_assetDetail_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | Commercial Equipment       | collateral.xlsx | asset_details          | 115                           | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Consumer Vehicle           | collateral.xlsx | asset_details          | 188                           | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Consumer Durable           | collateral.xlsx | asset_details          | 130                           | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Commercial Vehicle         | collateral.xlsx | asset_details          | 154                           | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Tractor                    | collateral.xlsx | asset_details          | 82                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Implements and Attachments | collateral.xlsx | asset_details          | 252                           | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_assetDetail | Collateral_assetDetail_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | Commercial Equipment       | collateral.xlsx | asset_details          | 115                           | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | Consumer Vehicle           | collateral.xlsx | asset_details          | 188                           | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | Consumer Durable           | collateral.xlsx | asset_details          | 130                           | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | Commercial Vehicle         | collateral.xlsx | asset_details          | 154                           | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | Tractor                    | collateral.xlsx | asset_details          | 82                            | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | Implements and Attachments | collateral.xlsx | asset_details          | 252                           | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_assetDetail | Collateral_assetDetail_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | Commercial Equipment       | collateral.xlsx | asset_details          | 115                           | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Consumer Vehicle           | collateral.xlsx | asset_details          | 188                           | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Consumer Durable           | collateral.xlsx | asset_details          | 130                           | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Commercial Vehicle         | collateral.xlsx | asset_details          | 154                           | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Tractor                    | collateral.xlsx | asset_details          | 82                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Implements and Attachments | collateral.xlsx | asset_details          | 252                           | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

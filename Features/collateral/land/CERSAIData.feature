@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-
@TechReviewedBy-
@new
@ReviewedByGWT
@CERSAIDataCapture @Land
@Islamic @Coventional
@Sanity
Feature: CERSAI data capture for Land type collateral

#COLLATERAL_SUB_TYPE.HIDE_CERSAI_TAB = 0 for COLLATERAL_TYPE_FK = Land
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval","Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}

  @ImplementedBy-priyanshu.kashyap
    @Release3
    @ReleaseSecCollateralM5
#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  Scenario Outline: ACAUTOCAS-11621:  CERSAI page should be visible to user on collateral screen for Land
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral at "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agriculture_land>" and row <Collateral_agriculture_land_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Colateral_address_details>" and row <Colateral_address_details_row_num>
    And user enters address details of land collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_details>" and row <Collateral_other_details_row_num>
    And user enters other details of land collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    When user views the attached collateral
    Then user should be able to see the CERSAI page
    Examples:
      | CollateralWB    | Collateral_agriculture_land | Collateral_agriculture_land_rowNum | ApplicationStage | applicantType | Category | Key       | ProductType   | Colateral_address_details | Colateral_address_details_row_num | Collateral_other_details | Collateral_other_details_row_num |
      | collateral.xlsx | agriculture_details         | 0                                  | DDE              | indiv         |          |           | <ProductType> | address_details           | 3                                 | other_details            | 0                                |
      | collateral.xlsx | agriculture_details         | 0                                  | Recommendation   | indiv         |          |           | <ProductType> | address_details           | 3                                 | other_details            | 0                                |
      | collateral.xlsx | agriculture_details         | 0                                  | Credit Approval  | indiv         |          |           | <ProductType> | address_details           | 3                                 | other_details            | 0                                |
      | collateral.xlsx | agriculture_details         | 0                                  | Reconsideration  | indiv         |          |           | <ProductType> | address_details           | 3                                 | other_details            | 0                                |
      | collateral.xlsx | agriculture_details         | 0                                  | Post Approval    | indiv         |          |           | <ProductType> | address_details           | 3                                 | other_details            | 0                                |
      | collateral.xlsx | agriculture_details         | 0                                  | Disbursal        | indiv         |          |           | <ProductType> | address_details           | 3                                 | other_details            | 0                                |
      | collateral.xlsx | agriculture_details         | 0                                  | disbursal author | indiv         |          | appupdate | <ProductType> | address_details           | 3                                 | other_details            | 0                                |
      | collateral.xlsx | agriculture_details         | 0                                  | Tranch Approval  | indiv         |          |           | <ProductType> | address_details           | 3                                 | other_details            | 0                                |
      | collateral.xlsx | agriculture_details         | 0                                  | disbursal author | indiv         |          | approve   | <ProductType> | address_details           | 3                                 | other_details            | 0                                |



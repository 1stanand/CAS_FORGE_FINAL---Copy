@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-
@TechReviewedBy-
@Reconciled
@ReviewedByDEV
@ReleaseSecCollateralM5
  
#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Post Approval","Recommendation","Reconsideration","Disbursal"]}
#${ApplicantType:["indiv","nonindiv"]}
Feature: CERSAI data capture for Property type collateral

#COLLATERAL_SUB_TYPE.HIDE_CERSAI_TAB = 0 for COLLATERAL_TYPE_FK = Property

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
  Scenario Outline: ACAUTOCAS-5309: CERSAI page should be visible to user on collateral screen for Property
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "<ApplicationStage>" without adding New Collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user adds the collateral of "<CollateralSubType>" subtype
    When user modifies the collateral of "<CollateralSubType>"
    Then user should be able to see the CERSAI page

    @ImplementedBy-tanya
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | ApplicationStage   | CollateralSubType                   | CollateralWB    | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | ProductType   | applicantType   | category | key |
      | <ApplicationStage> | Builder Property Under Construction | collateral.xlsx | cersai_details           | 0                               | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Construction On Land                | collateral.xlsx | cersai_details           | 1                               | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Plot + Self Construction            | collateral.xlsx | cersai_details           | 2                               | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Ready Property                      | collateral.xlsx | cersai_details           | 3                               | <ProductType> | <ApplicantType> |          |     |

    @ImplementedBy-tanya
    @Perishable
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    Examples:
      | ApplicationStage   | CollateralSubType                   | CollateralWB    | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | ProductType   | applicantType   | category | key       |
      | Tranche initiation | Builder Property Under Construction | collateral.xlsx | cersai_details           | 0                               | <ProductType> | <ApplicantType> |          | approval  |
      | Tranche initiation | Construction On Land                | collateral.xlsx | cersai_details           | 1                               | <ProductType> | <ApplicantType> |          | approval  |
      | Tranche initiation | Plot + Self Construction            | collateral.xlsx | cersai_details           | 2                               | <ProductType> | <ApplicantType> |          | approval  |
      | Tranche initiation | Ready Property                      | collateral.xlsx | cersai_details           | 3                               | <ProductType> | <ApplicantType> |          | approval  |
      | Disbursal author   | Builder Property Under Construction | collateral.xlsx | cersai_details           | 0                               | <ProductType> | <ApplicantType> |          | appupdate |
      | Disbursal author   | Construction On Land                | collateral.xlsx | cersai_details           | 1                               | <ProductType> | <ApplicantType> |          | appupdate |
      | Disbursal author   | Plot + Self Construction            | collateral.xlsx | cersai_details           | 2                               | <ProductType> | <ApplicantType> |          | appupdate |
      | Disbursal author   | Ready Property                      | collateral.xlsx | cersai_details           | 3                               | <ProductType> | <ApplicantType> |          | appupdate |
      | Disbursal author   | Builder Property Under Construction | collateral.xlsx | cersai_details           | 0                               | <ProductType> | <ApplicantType> |          | approve   |
      | Disbursal author   | Construction On Land                | collateral.xlsx | cersai_details           | 1                               | <ProductType> | <ApplicantType> |          | approve   |
      | Disbursal author   | Plot + Self Construction            | collateral.xlsx | cersai_details           | 2                               | <ProductType> | <ApplicantType> |          | approve   |
      | Disbursal author   | Ready Property                      | collateral.xlsx | cersai_details           | 3                               | <ProductType> | <ApplicantType> |          | approve   |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ApplicationStage   | CollateralSubType                   | CollateralWB    | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | ProductType   | applicantType   | category   | key |
      | <ApplicationStage> | Builder Property Under Construction | collateral.xlsx | cersai_details           | 0                               | <ProductType> | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | Construction On Land                | collateral.xlsx | cersai_details           | 1                               | <ProductType> | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | Plot + Self Construction            | collateral.xlsx | cersai_details           | 2                               | <ProductType> | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | Ready Property                      | collateral.xlsx | cersai_details           | 3                               | <ProductType> | <ApplicantType> | <Category> |     |


    @ImplementedBy-richa.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ApplicationStage   | CollateralSubType                   | CollateralWB    | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | ProductType   | applicantType   | category | key |
      | <ApplicationStage> | Builder Property Under Construction | collateral.xlsx | cersai_details           | 0                               | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Construction On Land                | collateral.xlsx | cersai_details           | 1                               | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Plot + Self Construction            | collateral.xlsx | cersai_details           | 2                               | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Ready Property                      | collateral.xlsx | cersai_details           | 3                               | <ProductType> | <ApplicantType> |          |     |



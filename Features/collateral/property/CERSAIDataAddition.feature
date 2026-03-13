@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-
@TechReviewedBy-
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@Release
@Part-1
#${ApplicantType:["indiv","nonindiv"]}
Feature: CERSAI data addition for Property type collateral

#COLLATERAL_SUB_TYPE.HIDE_CERSAI_TAB = 0 for COLLATERAL_TYPE_FK = Property

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  #FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
  Scenario Outline: ACAUTOCAS-5393:  CERSAI page should get default data for collateral Property
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user adds the collateral of "<CollateralSubType>" subtype with Property and Registration Details
    When user modifies the saved collateral
    And user navigates to the CERSAI page
    Then user should be able to see default data in section Cersai Data
    @ImplementedBy-tanya
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | ApplicationStage   | CollateralSubType                   | CollateralWB    | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | Builder Property Under Construction | collateral.xlsx | cersai_details           | 34                              | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Construction On Land                | collateral.xlsx | cersai_details           | 35                              | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Plot + Self Construction            | collateral.xlsx | cersai_details           | 36                              | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Ready Property                      | collateral.xlsx | cersai_details           | 37                              | <ProductType> | <ApplicantType> |          |     |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ApplicationStage   | CollateralSubType                   | CollateralWB    | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | ProductType   | ApplicantType   | Category   | Key |
      | <ApplicationStage> | Builder Property Under Construction | collateral.xlsx | cersai_details           | 302                              | <ProductType> | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | Construction On Land                | collateral.xlsx | cersai_details           | 303                              | <ProductType> | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | Plot + Self Construction            | collateral.xlsx | cersai_details           | 304                              | <ProductType> | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | Ready Property                      | collateral.xlsx | cersai_details           | 305                              | <ProductType> | <ApplicantType> | <Category> |     |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | ApplicationStage   | CollateralSubType                   | CollateralWB    | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | Builder Property Under Construction | collateral.xlsx | cersai_details           | 302                             | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Construction On Land                | collateral.xlsx | cersai_details           | 303                             | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Plot + Self Construction            | collateral.xlsx | cersai_details           | 304                             | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Ready Property                      | collateral.xlsx | cersai_details           | 305                             | <ProductType> | <ApplicantType> |          |     |


  #FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
  Scenario Outline: ACAUTOCAS-8986:  CERSAI page should get default data for collateral Property without property registration details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user adds the collateral of "<CollateralSubType>" subtype without Property and Registration Details
    When user modifies the saved collateral
    And user navigates to the CERSAI page
    Then user should be able to see default data in section Cersai Data
    @ImplementedBy-pallavi.singh
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | ApplicationStage   | CollateralSubType                   | CollateralWB    | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | Builder Property Under Construction | collateral.xlsx | cersai_details           | 50                              | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Construction On Land                | collateral.xlsx | cersai_details           | 51                              | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Plot + Self Construction            | collateral.xlsx | cersai_details           | 52                              | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Ready Property                      | collateral.xlsx | cersai_details           | 53                              | <ProductType> | <ApplicantType> |          |     |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ApplicationStage   | CollateralSubType                   | CollateralWB    | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | ProductType   | ApplicantType   | Category   | Key |
      | <ApplicationStage> | Builder Property Under Construction | collateral.xlsx | cersai_details           | 301                             | <ProductType> | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | Construction On Land                | collateral.xlsx | cersai_details           | 1                               | <ProductType> | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | Plot + Self Construction            | collateral.xlsx | cersai_details           | 2                               | <ProductType> | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | Ready Property                      | collateral.xlsx | cersai_details           | 3                               | <ProductType> | <ApplicantType> | <Category> |     |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | ApplicationStage   | CollateralSubType                   | CollateralWB    | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | Builder Property Under Construction | collateral.xlsx | cersai_details           | 301                             | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Construction On Land                | collateral.xlsx | cersai_details           | 1                               | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Plot + Self Construction            | collateral.xlsx | cersai_details           | 2                               | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Ready Property                      | collateral.xlsx | cersai_details           | 3                               | <ProductType> | <ApplicantType> |          |     |


  @ImplementedBy-pallavi.singh
  #FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
  Scenario Outline: ACAUTOCAS-8987:  CERSAI page should get default data for collateral Property without current property registration details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user adds the collateral of "<CollateralSubType>" subtype with Property and Registration Details
    When user modifies the saved collateral
    And user navigates to the CERSAI page
    Then user should be able to see default data in section Cersai Data
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | ApplicationStage   | CollateralSubType                   | CollateralWB    | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | Builder Property Under Construction | collateral.xlsx | cersai_details           | 34                              | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Construction On Land                | collateral.xlsx | cersai_details           | 35                              | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Plot + Self Construction            | collateral.xlsx | cersai_details           | 36                              | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Ready Property                      | collateral.xlsx | cersai_details           | 37                              | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    # ${ProductType:["IPF"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ApplicationStage   | CollateralSubType                   | CollateralWB    | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | ProductType   | ApplicantType   | Category   | Key |
      | <ApplicationStage> | Builder Property Under Construction | collateral.xlsx | cersai_details           | 302                             | <ProductType> | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | Construction On Land                | collateral.xlsx | cersai_details           | 303                             | <ProductType> | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | Plot + Self Construction            | collateral.xlsx | cersai_details           | 304                             | <ProductType> | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | Ready Property                      | collateral.xlsx | cersai_details           | 305                             | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | ApplicationStage   | CollateralSubType                   | CollateralWB    | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | Builder Property Under Construction | collateral.xlsx | cersai_details           | 302                             | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Construction On Land                | collateral.xlsx | cersai_details           | 303                             | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Plot + Self Construction            | collateral.xlsx | cersai_details           | 304                             | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Ready Property                      | collateral.xlsx | cersai_details           | 305                             | <ProductType> | <ApplicantType> |          |     |

@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@ReleaseSecCollateralM5

#${CollateralSubType:["Builder Property Under Construction"]}
#${ApplicantType:["indiv","nonindiv"]}

Feature: Builder Property Under Construction Viewer


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-3226: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage data reconcile to validate if data was saved properly
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user adds collateral based on "<CollateralSubType>" subtype
    And user views the already added collateral
    Then user should be able to reconcile the "<CollateralSubType>" data successfully
    @ImplementedBy-ankit.yadav
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |

    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @ImplementedBy-pallavi.singh
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |

  Scenario Outline: ACAUTOCAS-3227: CollateralPage should not allow to modify data of <CollateralSubType> to <ProductType> application at <ApplicationStage> stage in viewer mode
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user adds collateral based on "<CollateralSubType>" subtype
    And user views the already added collateral
    Then user should not be able to modify "<CollateralSubType>"
      | collateral_type          |
      | collateral_sub_type      |
      | company_name             |
      | project_name             |
      | building_name            |
      | flat_shop_number         |
      | floor_number             |
      | address_type             |
      | country                  |
      | plot_number              |
      | pincode                  |
      | mobile_phone             |
      | property_type            |
      | property_classification  |
      | property_ownership       |
      | built_up_area            |
      | carpet_area              |
      | property_purpose         |
      | age_of_property          |
      | residual_age_of_property |
      | Plan Number              |
      | Plan Type                |
      | Property Lot Number      |
    @ImplementedBy-ankit.yadav
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |

    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @ImplementedBy-pallavi.singh
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |

  Scenario Outline: ACAUTOCAS-5301: CollateralPage should not show tab for Title Search for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Viewer
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user adds collateral based on "<CollateralSubType>" subtype
    And user views the already added collateral
    Then user should not see the Title Search tab
    @ImplementedBy-ankit.yadav
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |

    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @ImplementedBy-pallavi.singh
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
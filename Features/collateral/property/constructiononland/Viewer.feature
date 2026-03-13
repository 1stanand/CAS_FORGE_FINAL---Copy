@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-harshprit.kumar
@ReviewedByDEV
@ReviewedSecCollateral
@Release3
@ReleaseSecCollateralM5

#${CollateralSubType:["Construction On Land"]}
#${ApplicantType:["indiv","nonindiv"]}

Feature: Construction on Land Viewer

# Pre-Requisites---
# In this feature we will view a Construction On Land attached to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-1368: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage data reconcile to validate if data was saved properly
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user adds collateral based on "<CollateralSubType>" subtype
    And user views the already added collateral
    Then user should be able to reconcile the "<CollateralSubType>" data successfully
    @ImplementedBy-aniket.tripathi
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 12                                |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 12                                |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 12                                |

  Scenario Outline:  ACAUTOCAS-1369: CollateralPage should not allow to modify data in viewer mode under <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user adds collateral based on "<CollateralSubType>" subtype
    And user views the saved collateral
    Then user should not be able to modify "<CollateralSubType>"
      | collateral_type          |
      | collateral_sub_type      |
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
    @ImplementedBy-aniket.tripathi
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 12                                |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 12                                |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 12                                |

#FeatureID-ACAUTOCAS-227,ACAUTOCAS-5078
  Scenario Outline: ACAUTOCAS-5303:  CollateralPage should not show tab for Title Search for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user adds collateral based on "<CollateralSubType>" subtype
    And user attempts to modify collateral based on "<CollateralSubType>"
    Then user should not see the Title Search tab
    @ImplementedBy-aniket.tripathi
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 12                                |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 12                                |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 12                                |

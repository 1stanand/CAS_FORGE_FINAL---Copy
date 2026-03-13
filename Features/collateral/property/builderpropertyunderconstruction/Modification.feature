@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@Part-1
#${CollateralSubType:["Builder Property Under Construction"]}
#${ApplicantType:["indiv","nonindiv"]}

Feature: Builder Property Under Construction Modification

#  Pre-Requisites---
#  In this feature we will modify and delete an Property Builder Property Under Construction to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-3752:  Deleting a <CollateralSubType> to <ProductType> application at <ApplicationStage> stage attached to the application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user adds collateral based on "<CollateralSubType>" subtype
    When user deletes the saved collateral
    Then user should be able to successfully delete the collateral
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |

  Scenario Outline: ACAUTOCAS-3212:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification of <FieldName> in Collateral details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    When user attempts to modify collateral based on "<CollateralSubType>"
    Then user should be able to modify the data in field "<FieldName>"
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | FieldName          | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Collateral Ref No  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Description        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Property Type      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Nature of Property | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName          | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Collateral Ref No  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Description        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Property Type      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Nature of Property | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName          | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Collateral Ref No  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Description        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Property Type      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Nature of Property | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |


  Scenario Outline: ACAUTOCAS-3213:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage data modification of <FieldName> in builder details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user opens Builder Details section
    Then user should be able to modify the data in field "<FieldName>"
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | FieldName     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Company Name  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Project Name  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Building Name | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Wing Name     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Flat/Shop No. | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Floor No.     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName     | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Company Name  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Project Name  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Building Name | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Wing Name     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Flat/Shop No. | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Floor No.     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Company Name  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Project Name  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Building Name | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Wing Name     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Flat/Shop No. | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Floor No.     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |

  Scenario Outline: ACAUTOCAS-3214:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage data modification of <FieldName> in other details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user opens other details section of collateral page
    Then user should be able to modify the data in field "<FieldName>"
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | FieldName                 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Property Classification   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Property Ownership        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Market Value              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Built Up Area             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Built Up Area Unit        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Carpet Area               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Carpet Area Unit          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Property Purpose          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Age Of Property(In Years) | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Residual Age of Property  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Plan Type                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Plan Number               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Property Lot Number       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Considered Value          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Property Classification   | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Property Ownership        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Market Value              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Built Up Area             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Built Up Area Unit        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Carpet Area               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Carpet Area Unit          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Property Purpose          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Age Of Property(In Years) | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Residual Age of Property  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Plan Type                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Plan Number               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Property Lot Number       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Considered Value          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Property Classification   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Property Ownership        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Market Value              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Built Up Area             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Built Up Area Unit        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Carpet Area               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Carpet Area Unit          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Property Purpose          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Age Of Property(In Years) | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Residual Age of Property  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Plan Type                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Plan Number               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Property Lot Number       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Considered Value          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |


  Scenario Outline: ACAUTOCAS-3215:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage data modification of <FieldName> in property address
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user opens property address details section
    Then user should be able to modify the data in field "<FieldName>"
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | FieldName             | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Property Address Type | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Full Address          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Country               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Plot Number           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Address Line 2        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Address Line 3        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | PinCode               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Region                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | States                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | City                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | District              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Taluka                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Village               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Residence Status      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Residence Type        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Landmark              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Primary Phone         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Mobile Phone          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |

    @LoggedBug
    Examples:
      | FieldName           | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Is address verified | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName             | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Property Address Type | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Full Address          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Country               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Plot Number           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Address Line 2        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Address Line 3        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | PinCode               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Region                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | States                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | City                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | District              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Taluka                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Village               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Residence Status      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Residence Type        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Landmark              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Primary Phone         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Mobile Phone          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName             | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Property Address Type | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Full Address          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Country               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Plot Number           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Address Line 2        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Address Line 3        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | PinCode               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Region                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | States                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | City                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | District              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Taluka                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Village               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Residence Status      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Residence Type        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Landmark              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Primary Phone         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Mobile Phone          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |

  Scenario Outline: ACAUTOCAS-3753: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage data property and registration details deletion with dataset
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user opens property and registration details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agreementDetails>" and row <Collateral_agreementDetails_rowNum>
    And user fills the property registration details as
      | collateral.xlsx | agreement_details | 6 |
      | collateral.xlsx | agreement_details | 7 |
    And user selects one or more "Property and Registration Details"
    And user deletes the data Property and Registration Details
    Then user should be able to successfully delete the record of "<CollateralSubType>"
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | collateral.xlsx | agreement_details           | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_details           | 0                                 |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | collateral.xlsx | agreement_details           | 6                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_details           | 196                               |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | collateral.xlsx | agreement_details           | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_details           | 196                               |

  Scenario Outline: ACAUTOCAS-3216:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage restrictions in data modification of <FieldName> in Collateral details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    When user views the added "<CollateralSubType>" collateral
    Then user should not be able to modify the data in "<FieldName>" field
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | FieldName                | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Collateral ID            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Global Collateral Number | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Collateral Type          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Collateral SubType       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Collateral ID            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Global Collateral Number | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Collateral Type          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Collateral SubType       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Collateral ID            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Global Collateral Number | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Collateral Type          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Collateral SubType       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |

  Scenario Outline: ACAUTOCAS-3217:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage data modification of <FieldName> in property and registration details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user opens property and registration details section
    And user clicks on new agreement details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agreementDetails>" and row <Collateral_agreementDetails_rowNum>
    And user fills the agreement details
    And user modify the agreement detail
    Then user should be able to modify the data in field "<FieldName>"
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | FieldName                     | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_agreementDetails   | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Agreement Registration Number | collateral.xlsx | property_details           | 0                                 | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Agreement Type                | collateral.xlsx | property_details           | 0                                 | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | SRO                           | collateral.xlsx | property_details           | 0                                 | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Sale Deed Number              | collateral.xlsx | property_details           | 0                                 | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Date             | collateral.xlsx | property_details           | 0                                 | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Sale Deed Date                | collateral.xlsx | property_details           | 0                                 | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Agreement Value               | collateral.xlsx | property_details           | 0                                 | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Amenities Agreement Value     | collateral.xlsx | property_details           | 0                                 | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Remarks                       | collateral.xlsx | property_details           | 0                                 | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                     | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_agreementDetails   | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Agreement Registration Number | collateral.xlsx | property_details           | 196                               | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Agreement Type                | collateral.xlsx | property_details           | 196                               | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | SRO                           | collateral.xlsx | property_details           | 196                               | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Sale Deed Number              | collateral.xlsx | property_details           | 196                               | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Date             | collateral.xlsx | property_details           | 196                               | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Sale Deed Date                | collateral.xlsx | property_details           | 196                               | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Agreement Value               | collateral.xlsx | property_details           | 196                               | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Amenities Agreement Value     | collateral.xlsx | property_details           | 196                               | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Remarks                       | collateral.xlsx | property_details           | 196                               | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                     | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_agreementDetails   | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Agreement Registration Number | collateral.xlsx | property_details           | 196                               | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Agreement Type                | collateral.xlsx | property_details           | 196                               | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | SRO                           | collateral.xlsx | property_details           | 196                               | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Sale Deed Number              | collateral.xlsx | property_details           | 196                               | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Date             | collateral.xlsx | property_details           | 196                               | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Sale Deed Date                | collateral.xlsx | property_details           | 196                               | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Agreement Value               | collateral.xlsx | property_details           | 196                               | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Amenities Agreement Value     | collateral.xlsx | property_details           | 196                               | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Remarks                       | collateral.xlsx | property_details           | 196                               | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-3754:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage data deletion in property and registration details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user opens property and registration details section
    And user clicks on new agreement details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agreementDetails>" and row <Collateral_agreementDetails_rowNum>
    And user fills the agreement details
    And user delete the agreement details
    Then user should be able to successfully delete the property details
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 0                                 | agreement_details           | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | agreement_details           | 6                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | agreement_details           | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-3218:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage data modification of <FieldName> in ownership details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user opens the ownership details section
    Then user should be able to modify the data in field "<FieldName>"
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | FieldName        | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Owner Type       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Ownership Status | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Owner Name       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Linked Applicant | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Percent Share    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Ownership Dates  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName        | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Owner Type       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Ownership Status | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Owner Name       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Linked Applicant | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Percent Share    | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Ownership Dates  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName        | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Owner Type       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Ownership Status | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Owner Name       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Linked Applicant | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Percent Share    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |
      | Ownership Dates  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 196                               |

    #FeatureID-ACAUTOCAS-226
  Scenario Outline: ACAUTOCAS-4449: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 1
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then user should get a proper message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 0                                 | address_details           | 249                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | address_details           | 249                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | address_details           | 249                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-4450: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 2
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then user should get a proper message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 0                                 | address_details           | 250                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | address_details           | 250                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | address_details           | 250                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-4451: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 3
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then user should get a proper message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 0                                 | address_details           | 251                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | address_details           | 251                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | address_details           | 251                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-4452: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 4
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then user should get a proper message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 0                                 | address_details           | 252                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | address_details           | 252                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | address_details           | 252                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-4453: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 5
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then user should get a proper message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 0                                 | address_details           | 253                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | address_details           | 253                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | address_details           | 253                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-4454: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 6
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then user should get a proper message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 0                                 | address_details           | 254                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | address_details           | 254                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | address_details           | 254                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-4455: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 7
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then user should get a proper message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 0                                 | address_details           | 255                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | address_details           | 255                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | address_details           | 255                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-4456: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 8
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then user should get a proper message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 0                                 | address_details           | 256                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | address_details           | 256                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | address_details           | 256                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-4457: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 9
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then user should get a proper message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 0                                 | address_details           | 257                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | address_details           | 257                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | address_details           | 257                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-4458: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 10
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then user should get a proper message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 0                                 | address_details           | 258                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | address_details           | 258                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | address_details           | 258                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-4459: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 11
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then user should get a proper message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 0                                 | address_details           | 259                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | address_details           | 259                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | address_details           | 259                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

#This scenario needs some changes in CMS
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-4460: Dedupe revalidation to identify duplicate collaterals in <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 739
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "builder_details" and row <Collateral_builderDetail_rowNum>
    And user adds builder property under construction details
    And user reads data from the excel file "<CollateralWB>" under sheet "other_details" and row 228
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "address_details" and row 277
    And user enters mandatory fields of address details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 739
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "address_details" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user checks for duplicate collateral
    Then user should receive a duplicates found popup message
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails_rowNum | Collateral_builderDetail_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | 122                              | 16                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 123                              | 16                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 124                              | 16                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 125                              | 16                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 126                              | 16                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 127                              | 16                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 128                              | 16                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 129                              | 16                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 130                              | 16                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 131                              | 16                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails_rowNum | Collateral_builderDetail_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | 122                              | 38                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 123                              | 38                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 124                              | 38                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 125                              | 38                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 126                              | 38                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 127                              | 38                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 128                              | 38                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 129                              | 38                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 130                              | 38                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 131                              | 38                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails_rowNum | Collateral_builderDetail_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | 122                              | 38                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 123                              | 38                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 124                              | 38                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 125                              | 38                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 126                              | 38                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 127                              | 38                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 128                              | 38                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 129                              | 38                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 130                              | 38                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 131                              | 38                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

#FeatureID-ACAUTOCAS-226
  Scenario Outline: ACAUTOCAS-16952: Dedupe revalidation for property address is mandatory for dedupe check in <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_builderProperty>" and row <Collateral_builderProperty_rowNum>
    And user adds mandatory builder property details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fills other details fields for property type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then user should get a proper message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_builderProperty | Collateral_builderProperty_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 99                        | address_details           | 130                              | builder_details            | 0                                 | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 99                        | address_details           | 131                              | builder_details            | 0                                 | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 99                        | address_details           | 120                              | builder_details            | 0                                 | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 99                        | address_details           | 121                              | builder_details            | 0                                 | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_builderProperty | Collateral_builderProperty_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 739                       | address_details           | 277                              | builder_details            | 38                                | other_details           | 228                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 739                       | address_details           | 278                              | builder_details            | 38                                | other_details           | 228                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 739                       | address_details           | 279                              | builder_details            | 38                                | other_details           | 228                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 739                       | address_details           | 280                              | builder_details            | 38                                | other_details           | 228                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_builderProperty | Collateral_builderProperty_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 739                       | address_details           | 277                              | builder_details            | 38                                | other_details           | 228                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 739                       | address_details           | 278                              | builder_details            | 38                                | other_details           | 228                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 739                       | address_details           | 279                              | builder_details            | 38                                | other_details           | 228                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 739                       | address_details           | 280                              | builder_details            | 38                                | other_details           | 228                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  #This scenario needs some changes in CMS
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-4461: Dedupe revalidation to identify and view duplicate collaterals in <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 739
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "builder_details" and row <Collateral_builderDetail_rowNum>
    And user adds builder property under construction details
    And user reads data from the excel file "<CollateralWB>" under sheet "other_details" and row 228
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "address_details" and row 277
    And user enters mandatory fields of address details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 739
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "address_details" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user checks for duplicate collateral
    Then User should be able to view the duplicates of collateral subtype
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_builderDetail_rowNum | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | 16                              | 120                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 16                              | 121                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 16                              | 122                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 16                              | 123                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 16                              | 124                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 16                              | 125                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 16                              | 126                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 16                              | 127                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 16                              | 128                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 16                              | 129                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_builderDetail_rowNum | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | 38                              | 120                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 121                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 122                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 123                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 124                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 125                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 126                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 127                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 128                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 129                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_builderDetail_rowNum | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | 38                              | 120                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 121                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 122                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 123                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 124                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 125                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 126                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 127                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 128                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 129                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  @LoggedBug
  Scenario Outline: ACAUTOCAS-4462: Dedupe revalidation to identify and attach duplicate collaterals to the same application in <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_builderProperty>" and row <Collateral_builderProperty_rowNum>
    And user adds mandatory builder property details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fills mandatory fields of other details of ready property
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fills address details for property type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user click on add new for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_builderProperty>" and row <Collateral_builderProperty_rowNum>
    And user adds mandatory builder property details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fills mandatory fields of other details of ready property
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fills address details for property type
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "Builder Property Under Construction" collateral from dedupe result which is already attached to the application
    When user saves selected dedupe collateral
    Then user gets a notification message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_builderProperty | Collateral_builderProperty_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | address_details           | 277                              | builder_details            | 16                                | other_details           | 228                            | default            | 739                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_builderProperty | Collateral_builderProperty_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | address_details           | 277                              | builder_details            | 38                                | other_details           | 228                            | default            | 739                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_builderProperty | Collateral_builderProperty_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | address_details           | 277                              | builder_details            | 38                                | other_details           | 228                            | default            | 739                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

     #FeatureID-ACAUTOCAS-226
  @NotImplementable
 #     require different applications of same header
  Scenario Outline: ACAUTOCAS-4463:  Dedupe revalidation to identify and attach duplicate collaterals to different application
    Given user has captured "Builder Property Under Construction" against an application
    And "Builder Property Under Construction" with values of "GlobalCollateralNo", "Country", "PlotNumber", "AddressLine2", "AddressLine3", "PinCode", "Region", "State", "City", "District", "Taluka", "Village" is already attached to application:
      | GlobalCollateralNo | Country | PlotNumber | AddressLine 2  | AddressLine 3 | PinCode | Region     | State   | City      | District  | Taluka     | Village      |
      | CMS00020035        | India   | 112        | Ashoka Enclave | Main          | 121003  | South-East | Haryana | Faridabad | Faridabad | Amar Nagar | Sarai Khwaja |
    And "Builder Property Under Construction" with values of "GlobalCollateralNo", "SurveyNumber", "Village" is already available in "<Module>":
      | GlobalCollateralNo | Country | PlotNumber | AddressLine 2  | AddressLine 3 | PinCode | Region     | State   | City      | District  | Taluka     | Village      | Module |
      | CMS00020036        | India   | 113        | Ashoka Enclave | Main          | 121003  | South-East | Haryana | Faridabad | Faridabad | Amar Nagar | Sarai Khwaja | CMS    |
    When user modifies "Builder Property Under Construction" "<Global Collateral No>" using "<CollateralWB>" under sheet "<BuilderPropertyUnderConstructionDetails>" row <BuilderPropertyUnderConstruction_rowNum>
    And user modifies data of "<Country>", "<Plot Number>", "<Address Line 2>", "<Address Line 3>", "<PinCode>", "<Region>", "<State>", "<City>", "<District>", "<Taluka>", "<Village>"
    And checks for duplicate collateral
    And user gets a message saying "<ErrorMessage>"
    And user views the duplicate "Builder Property Under Construction"
    And user selects collateral not attached to the same application
    And saves the data
    Then user is able to save data successfully with "<Orig Global Collateral No>"
    Examples:
      | CollateralWB                                  | BuilderPropertyUnderConstructionDetails  | BuilderPropertyUnderConstruction_rowNum | Global Collateral No | Country | Plot Number | Address Line 2      | Address Line 3      | PinCode | Region     | State   | City      | District  | Taluka     | Village      | Orig Global Collateral No | ErrorMessage       |
      | PropertyBuilderPropertyUnderConstruction.xlsx | PropertyBuilderPropertyUnderConstruction | 24                                      | CMS00020035          | India   | 113         | Ashoka Enclave      | Main                | 121003  | South-East | Haryana | Faridabad | Faridabad | Amar Nagar | Sarai Khwaja | CMS00020036               | 1 duplicates found |
      | PropertyBuilderPropertyUnderConstruction.xlsx | PropertyBuilderPropertyUnderConstruction | 25                                      | CMS00020035          | India   | 113         | Ashoka Enclave Main |                     | 121003  | South-East | Haryana | Faridabad | Faridabad | Amar Nagar | Sarai Khwaja | CMS00020036               | 1 duplicates found |
      | PropertyBuilderPropertyUnderConstruction.xlsx | PropertyBuilderPropertyUnderConstruction | 26                                      | CMS00020035          | India   | 113         |                     | Ashoka Enclave Main | 121003  | South-East | Haryana | Faridabad | Faridabad | Amar Nagar | Sarai Khwaja | CMS00020036               | 1 duplicates found |
      | PropertyBuilderPropertyUnderConstruction.xlsx | PropertyBuilderPropertyUnderConstruction | 27                                      | CMS00020035          | India   | 113         | Ashoka Enclave      | Main                | 121003  | South-East | Haryana | Faridabad | Faridabad |            | Sarai Khwaja | CMS00020036               | 1 duplicates found |
      | PropertyBuilderPropertyUnderConstruction.xlsx | PropertyBuilderPropertyUnderConstruction | 28                                      | CMS00020035          | India   | 113         | Ashoka Enclave      | Main                | 121003  | South-East | Haryana | Faridabad | Faridabad | Amar Nagar |              | CMS00020036               | 1 duplicates found |
      | PropertyBuilderPropertyUnderConstruction.xlsx | PropertyBuilderPropertyUnderConstruction | 29                                      | CMS00020035          | India   | 113         | Ashoka Enclave      | Main                | 121003  | South-East | Haryana | Faridabad | Faridabad |            |              | CMS00020036               | 1 duplicates found |
      | PropertyBuilderPropertyUnderConstruction.xlsx | PropertyBuilderPropertyUnderConstruction | 30                                      | CMS00020035          | India   | 113         | Ashoka Enclave      | Main                | 121003  |            | Haryana | Faridabad | Faridabad | Amar Nagar | Sarai Khwaja | CMS00020036               | 1 duplicates found |
      | PropertyBuilderPropertyUnderConstruction.xlsx | PropertyBuilderPropertyUnderConstruction | 31                                      | CMS00020035          | India   | 113         | Ashoka Enclave      | Main                | 121003  |            | Haryana | Faridabad | Faridabad |            | Sarai Khwaja | CMS00020036               | 1 duplicates found |
      | PropertyBuilderPropertyUnderConstruction.xlsx | PropertyBuilderPropertyUnderConstruction | 32                                      | CMS00020035          | India   | 113         | Ashoka Enclave      | Main                | 121003  |            | Haryana | Faridabad | Faridabad | Amar Nagar |              | CMS00020036               | 1 duplicates found |
      | PropertyBuilderPropertyUnderConstruction.xlsx | PropertyBuilderPropertyUnderConstruction | 33                                      | CMS00020035          | India   | 113         | Ashoka Enclave      | Main                | 121003  |            | Haryana | Faridabad | Faridabad |            |              | CMS00020036               | 1 duplicates found |

  #This scenario needs some changes in CMS
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-4464: Dedupe revalidation to identify and ignore duplicate collaterals in <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 739
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "builder_details" and row <Collateral_builderDetail_rowNum>
    And user adds builder property under construction details
    And user reads data from the excel file "<CollateralWB>" under sheet "other_details" and row 228
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "address_details" and row 277
    And user enters mandatory fields of address details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 739
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "address_details" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And checks for duplicate collateral
    And user checks ok button in dedupe
    Then user is asked to enter the reason of ignoring duplicates
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_builderDetail_rowNum | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | 16                              | 186                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 16                              | 187                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 16                              | 188                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 16                              | 189                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 16                              | 190                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 16                              | 191                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 16                              | 192                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 16                              | 193                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 16                              | 194                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 16                              | 195                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_builderDetail_rowNum | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | 38                              | 186                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 187                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 188                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 189                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 190                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 191                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 192                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 193                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 194                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 195                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_builderDetail_rowNum | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | 38                              | 186                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 187                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 188                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 189                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 190                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 191                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 192                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 193                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 194                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | 38                              | 195                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-5302:  CollateralPage should not show tab for Title Search for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Viewer
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    When user attempts to modify collateral based on "<CollateralSubType>"
    Then user should not see the Title Search tab
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 0                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 196                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

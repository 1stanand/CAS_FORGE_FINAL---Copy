@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@Release
@Part-2
#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
#${CollateralSubType:["Tractor"]}
#${ApplicantType:["indiv","nonindiv"]}


Feature: Addition of Tractor Negative Cases

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @Perishable
    #PF(Secured),EDU(Scecured)
  Scenario Outline: ACAUTOCAS-3627:  user moves to the next stage without collateral in <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user moves to the next stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    Then user should get error message without adding collateral
    @ImplementedBy-ankit.yadav
    @Conventional
   #${ProductType:["PF","EDU"]}
   #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key     | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 58                             | <ProductType> | <ApplicationStage> | nocolla |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key     | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 58                             | <ProductType> | <ApplicationStage> | nocolla | <Category> | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2954:  User enters mandatory information for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage and saves without checking duplicates
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Tractor Details section
    When users fills mandatory fields of tractor details
    And user saves the data of collateral subtype
    Then user gets a proper notification
    @ImplementedBy-ankit.yadav
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 59                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 59                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 59                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2955:  User attaches a duplicate collateral attached to same application attempts to save for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user fills mandatory fields of Tractor Details section
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user saves the existing global collateral number of collateral subtype
    And user click on add new for adding new collateral
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    When user fills mandatory fields of Tractor Details section
    And user click on checks for duplicates
    And user views the duplicate collateral
    And user select the "tractor" collateral from dedupe result which is already attached to the application
    And user saves selected dedupe collateral
    Then user gets a notification message
    @ImplementedBy-ankit.yadav
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 60                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 60                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 60                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2956:  User modifies Chassis number after running dedupe and attempts to save for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Tractor Details section
    And users fills mandatory fields of tractor details
    And user checks the duplicates on collateral dedupe check
    And user opens Tractor Details section
    When user modifies the Chassis number
    And user saves the data of collateral subtype
    Then User should get a proper message
    @ImplementedBy-ankit.yadav
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 61                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 61                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 61                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2957:  User modifies Registration number after running dedupe and attempts to save for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Tractor Details section
    And users fills mandatory fields of tractor details
    And user checks the duplicates on collateral dedupe check
    And user opens Tractor Details section
    When user modifies the Registration number For Tractor
    And user saves the data of collateral subtype
    Then User should get a proper message
    @ImplementedBy-ankit.yadav
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 62                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 62                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 62                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2958:  User modifies Engine number after running dedupe and attempts to save for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Tractor Details section
    And users fills mandatory fields of tractor details
    And user checks the duplicates on collateral dedupe check
    And user opens Tractor Details section
    When user modifies the Engine number
    And user saves the data of collateral subtype
    Then User should get a proper message
    @ImplementedBy-ankit.yadav
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 63                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 63                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 63                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2959:  User modifies Engine and Registration number after running dedupe and attempts to save for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Tractor Details section
    And users fills mandatory fields of tractor details
    And user checks the duplicates on collateral dedupe check
    And user opens Tractor Details section
    When user modifies the Engine and Registration number
    And user saves the data of collateral subtype
    Then User should get a proper message
    @ImplementedBy-ankit.yadav
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 64                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 64                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 64                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2960:  User modifies Chassis and Registration number after running dedupe and attempts to save for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Tractor Details section
    And users fills mandatory fields of tractor details
    And user checks the duplicates on collateral dedupe check
    And user opens Tractor Details section
    When user modifies the Chassis and Registration number
    And user saves the data of collateral subtype
    Then User should get a proper message
    @ImplementedBy-ankit.yadav
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 65                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 65                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 65                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2961:  User modifies Chassis and Engine number after running dedupe and attempts to save for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Tractor Details section
    And users fills mandatory fields of tractor details
    And user checks the duplicates on collateral dedupe check
    And user opens Tractor Details section
    When user modifies the Chassis and Engine number
    And user saves the data of collateral subtype
    Then User should get a proper message
    @ImplementedBy-ankit.yadav
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 66                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 66                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 66                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  #FeatureID-ACAUTOCAS-233

  Scenario Outline: ACAUTOCAS-4325: User modifies Registration Chassis and Engine number after running dedupe and attempts to save for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Tractor Details section
    And users fills mandatory fields of tractor details
    And user checks the duplicates on collateral dedupe check
    And user opens Tractor Details section
    When user modifies the Registration number Chassis number and Engine number
    And user saves the data of collateral subtype
    Then User should get a proper message
    @ImplementedBy-ankit.yadav
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 67                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 67                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 67                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2963:  User misses entering one or more mandatory information for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage and saves
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    When user fills mandatory fields of asset details of collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details of collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    Then "<MandatoryField>" field throws error message in collateral details
    @ImplementedBy-ankit.yadav
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | MandatoryField | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Asset Category | collateral.xlsx | asset_details           | 45                             | vehicle_details           | 160                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Manufacturer   | collateral.xlsx | asset_details           | 46                             | vehicle_details           | 160                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Model    | collateral.xlsx | asset_details           | 47                             | vehicle_details           | 160                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Engine Number  | collateral.xlsx | asset_details           | 50                             | vehicle_details           | 162                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chassis Number | collateral.xlsx | asset_details           | 51                             | vehicle_details           | 163                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | MandatoryField | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Asset Category | collateral.xlsx | asset_details           | 45                             | vehicle_details           | 160                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Manufacturer   | collateral.xlsx | asset_details           | 46                             | vehicle_details           | 160                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Model    | collateral.xlsx | asset_details           | 47                             | vehicle_details           | 160                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Engine Number  | collateral.xlsx | asset_details           | 50                             | vehicle_details           | 162                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chassis Number | collateral.xlsx | asset_details           | 51                             | vehicle_details           | 163                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | MandatoryField | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Asset Category | collateral.xlsx | asset_details           | 45                             | vehicle_details           | 160                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Manufacturer   | collateral.xlsx | asset_details           | 46                             | vehicle_details           | 160                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Model    | collateral.xlsx | asset_details           | 47                             | vehicle_details           | 160                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Engine Number  | collateral.xlsx | asset_details           | 50                             | vehicle_details           | 162                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Chassis Number | collateral.xlsx | asset_details           | 51                             | vehicle_details           | 163                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |


#    Test the screen with various test data to identify issues. The dataset carries data to Pass and Fail.
  Scenario Outline:  User misses entering one or more mandatory information for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage and saves in invoice details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    When user fills mandatory fields of asset details of collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details of collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fills mandatory fields of invoice details of collateral sub type
    And user click on check for duplicates in invoice details
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    Then "<MandatoryField>" field throws error message in collateral details
    @ImplementedBy-richa.singh
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | MandatoryField | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Invoice Date   | collateral.xlsx | asset_details           | 52                             | vehicle_details           | 155                              | invoice_details           | 71                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Invoice Value  | collateral.xlsx | asset_details           | 53                             | vehicle_details           | 155                              | invoice_details           | 72                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Invoice Type   | collateral.xlsx | asset_details           | 54                             | vehicle_details           | 155                              | invoice_details           | 73                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Invoice For    | collateral.xlsx | asset_details           | 55                             | vehicle_details           | 155                              | invoice_details           | 74                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Invoice Number | collateral.xlsx | asset_details           | 56                             | vehicle_details           | 155                              | invoice_details           | 70                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | MandatoryField | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Invoice Date   | collateral.xlsx | asset_details           | 52                             | vehicle_details           | 155                              | invoice_details           | 71                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Invoice Value  | collateral.xlsx | asset_details           | 53                             | vehicle_details           | 155                              | invoice_details           | 72                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Invoice Type   | collateral.xlsx | asset_details           | 54                             | vehicle_details           | 155                              | invoice_details           | 73                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Invoice For    | collateral.xlsx | asset_details           | 55                             | vehicle_details           | 155                              | invoice_details           | 74                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Invoice Number | collateral.xlsx | asset_details           | 56                             | vehicle_details           | 155                              | invoice_details           | 70                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | MandatoryField | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Invoice Date   | collateral.xlsx | asset_details           | 52                             | vehicle_details           | 155                              | invoice_details           | 71                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Invoice Value  | collateral.xlsx | asset_details           | 53                             | vehicle_details           | 155                              | invoice_details           | 72                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Invoice Type   | collateral.xlsx | asset_details           | 54                             | vehicle_details           | 155                              | invoice_details           | 73                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Invoice For    | collateral.xlsx | asset_details           | 55                             | vehicle_details           | 155                              | invoice_details           | 74                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Invoice Number | collateral.xlsx | asset_details           | 56                             | vehicle_details           | 155                              | invoice_details           | 70                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-3628:  User entering a new for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage and enters wrong State RTO Code
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user opens Tractor Details section
    And users fills mandatory fields of tractor details
    When user enters wrong value in State RTO Code
    Then user should get a proper message
    @ImplementedBy-ankit.yadav
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 59                             | tractor_details           | 0                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 59                             | tractor_details           | 0                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 59                             | tractor_details           | 0                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

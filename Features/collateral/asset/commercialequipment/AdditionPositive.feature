@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@Release
@Part-2

#${CollateralType:["Asset"]}
#${CollateralSubType:["Commercial Equipment"]}
#${ApplicantType:["indiv", "nonindiv"]}

Feature: Addition of Commercial Equipment Positive Cases


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  @Perishable
#FeatureID-ACAUTOCAS-234,ACAUTOCAS-244
  Scenario Outline: ACAUTOCAS-2042: user moves to the next stage without collateral for <CollateralSubType> for secured <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user open collateral page of "<ApplicationStage>" stage
    And user deletes the collateral based on sub type
    When user moves to the next stage in collateral
    Then user gets a notification message
      #${ProductType:["PF","EDU"]}
    #${ApplicationStage:["Post Approval"]}
    #${ApplicantType:["indiv", "nonindiv"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 3                         |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Post Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-aditya.tomar
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 3                         |

  @Perishable
    @LoggedBug-CAS-228641
  #PF(Secured),EDU(Secured)
    #FeatureID-ACAUTOCAS-234,ACAUTOCAS-244
  Scenario Outline: At <ApplicationStage> stage user deletes and moves secured <ProductType> application to the next stage without collateral
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user open collateral page of "<ApplicationStage>" stage
    And user deletes the collateral based on sub type
    When user moves to the next stage in collateral
    Then user should not get collateral details not saved error message
      # ${ProductType:["PF","EDU"]}
    # ${ApplicationStage:["DDE",Recommendation","Credit Approval","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonindiv"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 3                         |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ApplicantType:["indiv"]}
    # ${Category:["shares","bonds","metals"]}
    @ImplementedBy-aditya.tomar
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 3                         |


  @Perishable
  #PF(Secured),EDU(Secured)
    #FeatureID-ACAUTOCAS-234,ACAUTOCAS-244
  Scenario Outline: At <ApplicationStage> stage user moves secured <ProductType> application to the next stage with collateral
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_asset_details>" and row <Collateral_assetDetails_rowNum>
    When user adds asset type collateral based on "<CollateralSubType>" subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then user should not get collateral details not saved error message

    # ${ProductType:["PF","EDU"]}
    # ${ApplicationStage:["DDE",Recommendation","Credit Approval","Reconsideration","Post Approval","Disbursal"]}
    #${ApplicantType:["indiv", "nonindiv"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_asset_details | Collateral_assetDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 3                         | asset_details            | 13                             |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Post Approval","Reconsideration"]}
    #${ApplicantType:["indiv"]}
    # ${Category:["shares","bonds","metals"]}
    @ImplementedBy-aditya.tomar
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_asset_details | Collateral_assetDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 3                         | asset_details            | 13                             |


  @Perishable
  #Unsecured
    #FeatureID-ACAUTOCAS-234,ACAUTOCAS-244
  Scenario Outline: At <ApplicationStage> stage user moves unsecured <ProductType> application to the next stage with collateral
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_asset_details>" and row <Collateral_assetDetails_rowNum>
    When user adds asset type collateral based on "<CollateralSubType>" subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then user should not get collateral details not saved error message
    #${ProductType:["HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE",Recommendation","Credit Approval","Reconsideration","Post Approval","Disbursal"]}
    #${ApplicantType:["indiv", "nonindiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_asset_details | Collateral_assetDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 3                         | asset_details            | 13                             |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Post Approval","Reconsideration"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_asset_details | Collateral_assetDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 3                         | asset_details            | 13                             |


  @Perishable
  #Unsecured
    #FeatureID-ACAUTOCAS-234,ACAUTOCAS-244
  Scenario Outline: At <ApplicationStage> stage user deletes and moves unsecured <ProductType> application to the next stage without collateral
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user open collateral page of "<ApplicationStage>" stage
    And user deletes the collateral based on sub type
    When user moves to the next stage in collateral
    Then user should not get collateral details not saved error message

    #${ProductType:["HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE",Recommendation","Credit Approval","Reconsideration","Post Approval","Disbursal"]}
    #${ApplicantType:["indiv", "nonindiv"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_asset_details | Collateral_assetDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 3                         | asset_details            | 13                             |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Post Approval","Reconsideration"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-aditya.tomar
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_asset_details | Collateral_assetDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 3                         | asset_details            | 13                             |


  Scenario Outline: ACAUTOCAS-1013:  User misses entering <MandatoryField> information for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage and saves for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    When user fills mandatory fields of asset details of collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details of collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fills mandatory fields of invoice details of collateral sub type
    And user checks the duplicates on dedupe check
    And user saves the data of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    Then user should receive a failure "<MandatoryField>" missing message
    @ImplementedBy-ankit.yadav
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | MandatoryField | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | asset_Category | collateral.xlsx | asset_details           | 0                              | vehicle_details           | 192                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | manufacturer   | collateral.xlsx | asset_details           | 1                              | vehicle_details           | 192                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | asset_model    | collateral.xlsx | asset_details           | 2                              | vehicle_details           | 192                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | asset_variant  | collateral.xlsx | asset_details           | 3                              | vehicle_details           | 192                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | asset_cost     | collateral.xlsx | asset_details           | 4                              | vehicle_details           | 192                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | engine_number  | collateral.xlsx | asset_details           | 5                              | vehicle_details           | 193                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | chassis_number | collateral.xlsx | asset_details           | 6                              | vehicle_details           | 194                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Invoice Date   | collateral.xlsx | asset_details           | 8                              | vehicle_details           | 197                              | invoice_details           | 71                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Invoice Value  | collateral.xlsx | asset_details           | 9                              | vehicle_details           | 198                              | invoice_details           | 72                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Invoice Type   | collateral.xlsx | asset_details           | 10                             | vehicle_details           | 199                              | invoice_details           | 73                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Invoice For    | collateral.xlsx | asset_details           | 11                             | vehicle_details           | 200                              | invoice_details           | 74                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Invoice Number | collateral.xlsx | asset_details           | 7                              | vehicle_details           | 196                              | invoice_details           | 70                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | MandatoryField | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | asset_Category | collateral.xlsx | asset_details           | 0                              | vehicle_details           | 192                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | manufacturer   | collateral.xlsx | asset_details           | 1                              | vehicle_details           | 192                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | asset_model    | collateral.xlsx | asset_details           | 2                              | vehicle_details           | 192                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | asset_variant  | collateral.xlsx | asset_details           | 3                              | vehicle_details           | 192                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | asset_cost     | collateral.xlsx | asset_details           | 4                              | vehicle_details           | 192                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | engine_number  | collateral.xlsx | asset_details           | 5                              | vehicle_details           | 193                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | chassis_number | collateral.xlsx | asset_details           | 6                              | vehicle_details           | 194                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Invoice Date   | collateral.xlsx | asset_details           | 8                              | vehicle_details           | 197                              | invoice_details           | 71                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Invoice Value  | collateral.xlsx | asset_details           | 9                              | vehicle_details           | 198                              | invoice_details           | 72                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Invoice Type   | collateral.xlsx | asset_details           | 10                             | vehicle_details           | 199                              | invoice_details           | 73                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Invoice For    | collateral.xlsx | asset_details           | 11                             | vehicle_details           | 200                              | invoice_details           | 74                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Invoice Number | collateral.xlsx | asset_details           | 7                              | vehicle_details           | 196                              | invoice_details           | 70                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | MandatoryField | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | asset_Category | collateral.xlsx | asset_details           | 0                              | vehicle_details           | 192                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | manufacturer   | collateral.xlsx | asset_details           | 1                              | vehicle_details           | 192                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | asset_model    | collateral.xlsx | asset_details           | 2                              | vehicle_details           | 192                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | asset_variant  | collateral.xlsx | asset_details           | 3                              | vehicle_details           | 192                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | asset_cost     | collateral.xlsx | asset_details           | 4                              | vehicle_details           | 192                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | engine_number  | collateral.xlsx | asset_details           | 5                              | vehicle_details           | 193                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | chassis_number | collateral.xlsx | asset_details           | 6                              | vehicle_details           | 194                              | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Invoice Date   | collateral.xlsx | asset_details           | 8                              | vehicle_details           | 197                              | invoice_details           | 71                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Invoice Value  | collateral.xlsx | asset_details           | 9                              | vehicle_details           | 198                              | invoice_details           | 72                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Invoice Type   | collateral.xlsx | asset_details           | 10                             | vehicle_details           | 199                              | invoice_details           | 73                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Invoice For    | collateral.xlsx | asset_details           | 11                             | vehicle_details           | 200                              | invoice_details           | 74                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Invoice Number | collateral.xlsx | asset_details           | 7                              | vehicle_details           | 196                              | invoice_details           | 70                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2043:  user moves a new Asset Type collateral to the loan application for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user adds collateral type
    Then User should be able to attach it only if it is linked to the Product against which the application is entered
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-2044:  user adds a collateral with sub type for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type
    Then user should be able to capture the sub collateral
    @ImplementedBy-harshprit.kumar
    @Conventional
       #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2830: User is able to see all fields for new collateral for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage in Equipment Details for empty engine chassis and registration number for rc authentication for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When user enters "<FirstField_uniqueness>" engine number
    And user enters "<SecondField_uniqueness>" chassis number
    And user enters "<ThirdField_uniqueness>" registration number for rc authentication
    And checks for duplicate collateral
    Then user gets a proper notification
    @ImplementedBy-harshprit.kumar
       #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | SectionName       | FirstField_uniqueness | SecondField_uniqueness | ThirdField_uniqueness | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Equipment Details | empty                 | empty                  | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 56                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | SectionName       | FirstField_uniqueness | SecondField_uniqueness | ThirdField_uniqueness | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Equipment Details | empty                 | empty                  | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 56                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |


    @ImplementedBy-aditya.tomar
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | SectionName       | FirstField_uniqueness | SecondField_uniqueness | ThirdField_uniqueness | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Equipment Details | empty                 | empty                  | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 56                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  #ACAUTOCAS-2830
  Scenario Outline: ACAUTOCAS-16657: User is able to see all fields for new collateral Commercial Equipment in Equipment Details with Dataset <Dataset> for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When user enters engine number
    And user enters chassis number
    And user enters registration number for rc authentication
    And checks for duplicate collateral
    Then user should receive a proper popup message
    @ImplementedBy-harshprit.kumar
       #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | SectionName       | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Dataset |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 47                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 0       |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 48                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 1       |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 49                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 2       |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 50                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 3       |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 51                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 4       |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 52                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 5       |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 53                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 6       |

    @ImplementedBy-aditya.tomar
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | SectionName       | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Dataset |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 47                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | 0       |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 48                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | 1       |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 49                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | 2       |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 50                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | 3       |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 51                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | 4       |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 52                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | 5       |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 53                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | 6       |


    @ImplementedBy-aditya.tomar
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | SectionName       | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Dataset |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 47                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 0       |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 48                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 1       |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 49                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 2       |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 50                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 3       |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 51                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 4       |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 52                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 5       |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 53                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 6       |


#User dedupes for unique collateral number and finds duplicate collaterals and ignore the existing collaterals
  Scenario Outline: ACAUTOCAS-1016:  User checks for duplicate collateral and ignores them to create new using Dataset <Dataset> for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When user enters engine number
    And user enters chassis number
    And user enters registration number for rc authentication
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    Then user gets a proper notification
    @ImplementedBy-harshprit.kumar
       #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | SectionName       | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Dataset | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 185                              | 1       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 186                              | 2       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 187                              | 3       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 188                              | 4       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 189                              | 5       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 190                              | 6       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 191                              | 7       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | SectionName       | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Dataset | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 185                              | 1       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 186                              | 2       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 187                              | 3       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 188                              | 4       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 189                              | 5       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 190                              | 6       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 191                              | 7       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | SectionName       | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Dataset | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 185                              | 1       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 186                              | 2       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 187                              | 3       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 188                              | 4       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 189                              | 5       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 190                              | 6       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | collateral.xlsx | default            | 3                         | vehicle_details           | 191                              | 7       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2831:  user attaches a duplicate Commercial Equipment collateral attached to same application of <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user fill "<Field>" of collateral details for collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user add new collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum2>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user fill "<Field>" of collateral details for collateral subtype
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is already attached to the application
    And user saves selected dedupe collateral
    Then user gets a notification message
    @ImplementedBy-rishabh.sachan
       #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType    | Field     |
      | collateral.xlsx | asset_details           | 115                            | 116                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 117                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 118                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 119                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 120                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 121                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 122                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |

    @ImplementedBy-aditya.tomar
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType    | Field     |
      | collateral.xlsx | asset_details           | 115                            | 116                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 117                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 118                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 119                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 120                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 121                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 122                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Commercial Equipment | RC Number |


    @ImplementedBy-aditya.tomar
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType    | Field     |
      | collateral.xlsx | asset_details           | 115                            | 116                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 117                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 118                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 119                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 120                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 121                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 122                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |


  @Perishable
  Scenario Outline: ACAUTOCAS-2832:  user attaches a duplicate Commercial Equipment collateral attached to a different application of <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user fill "<Field>" of collateral details for collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum2>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user fill "<Field>" of collateral details for collateral subtype
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is not attached to the application
    And user saves selected dedupe collateral
    Then user gets a notification message
    @ImplementedBy-rishabh.sachan
       #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType    | Field     |
      | collateral.xlsx | asset_details           | 115                            | 123                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 124                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 125                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 126                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 127                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 128                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 129                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |

    @ImplementedBy-aditya.tomar
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType    | Field     |
      | collateral.xlsx | asset_details           | 115                            | 123                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 124                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 125                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 126                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 127                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 128                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 129                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Commercial Equipment | RC Number |

    @ImplementedBy-aditya.tomar
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType    | Field     |
      | collateral.xlsx | asset_details           | 115                            | 123                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 124                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 125                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 126                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 127                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 128                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |
      | collateral.xlsx | asset_details           | 115                            | 129                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Equipment | RC Number |


##Check if dedupe is still valid
  @LoggedBug
  Scenario Outline: ACAUTOCAS-2833: User modifies Engine number after running dedupe for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage and attempts to save with Dataset <Dataset> for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And goes to "<SectionName>" section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user enters "<FirstField_uniqueness>" engine number
    And user enters "<SecondField_uniqueness>" chassis number
    And user enters "<ThirdField_uniqueness>" registration number for rc authentication
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    When user modifies the Engine number
    And user saves the Collateral Details
    Then user gets a proper notification message
    @ImplementedBy-harshprit.kumar
       #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | SectionName     | FirstField_uniqueness | SecondField_uniqueness | ThirdField_uniqueness | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | Dataset | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Vehicle Details | unique                | empty                  | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 47                               | 1                                 | 1       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Vehicle Details | empty                 | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 48                               | 1                                 | 2       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Vehicle Details | empty                 | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 49                               | 1                                 | 3       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Vehicle Details | unique                | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 50                               | 1                                 | 4       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Vehicle Details | unique                | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 51                               | 1                                 | 5       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Vehicle Details | empty                 | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 52                               | 1                                 | 6       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Vehicle Details | unique                | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 53                               | 1                                 | 7       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | SectionName     | FirstField_uniqueness | SecondField_uniqueness | ThirdField_uniqueness | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | Dataset | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Vehicle Details | unique                | empty                  | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 47                               | 1                                 | 1       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Vehicle Details | empty                 | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 48                               | 1                                 | 2       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Vehicle Details | empty                 | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 49                               | 1                                 | 3       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Vehicle Details | unique                | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 50                               | 1                                 | 4       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Vehicle Details | unique                | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 51                               | 1                                 | 5       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Vehicle Details | empty                 | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 52                               | 1                                 | 6       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Vehicle Details | unique                | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 53                               | 1                                 | 7       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | SectionName     | FirstField_uniqueness | SecondField_uniqueness | ThirdField_uniqueness | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | Dataset | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Vehicle Details | unique                | empty                  | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 47                               | 1                                 | 1       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Vehicle Details | empty                 | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 48                               | 1                                 | 2       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Vehicle Details | empty                 | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 49                               | 1                                 | 3       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Vehicle Details | unique                | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 50                               | 1                                 | 4       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Vehicle Details | unique                | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 51                               | 1                                 | 5       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Vehicle Details | empty                 | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 52                               | 1                                 | 6       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Vehicle Details | unique                | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 53                               | 1                                 | 7       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  @LoggedBug
  Scenario Outline: ACAUTOCAS-2834: User modifies Chassis number after running dedupe for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage and attempts to save with Dataset <Dataset> for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And goes to "<SectionName>" section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user enters "<FirstField_uniqueness>" engine number
    And user enters "<SecondField_uniqueness>" chassis number
    And user enters "<ThirdField_uniqueness>" registration number for rc authentication
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    When user modifies the Chassis Number
    And user saves the Collateral Details
    Then user gets a proper notification message
    @ImplementedBy-harshprit.kumar
       #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | SectionName       | FirstField_uniqueness | SecondField_uniqueness | ThirdField_uniqueness | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | Dataset | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Equipment Details | unique                | empty                  | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 47                               | 64                                | 1       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 48                               | 64                                | 2       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 49                               | 64                                | 3       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 50                               | 64                                | 4       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 51                               | 64                                | 5       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 52                               | 64                                | 6       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 53                               | 64                                | 7       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | SectionName       | FirstField_uniqueness | SecondField_uniqueness | ThirdField_uniqueness | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | Dataset | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Equipment Details | unique                | empty                  | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 47                               | 64                                | 1       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 48                               | 64                                | 2       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 49                               | 64                                | 3       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 50                               | 64                                | 4       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 51                               | 64                                | 5       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 52                               | 64                                | 6       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 53                               | 64                                | 7       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |


    @ImplementedBy-aditya.tomar
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | SectionName       | FirstField_uniqueness | SecondField_uniqueness | ThirdField_uniqueness | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | Dataset | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Equipment Details | unique                | empty                  | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 47                               | 64                                | 1       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 48                               | 64                                | 2       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 49                               | 64                                | 3       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 50                               | 64                                | 4       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 51                               | 64                                | 5       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 52                               | 64                                | 6       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 53                               | 64                                | 7       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  @LoggedBug
  Scenario Outline: ACAUTOCAS-2835: User modifies Registration number after running dedupe for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage and attempts to save with Dataset <Dataset> for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And goes to "<SectionName>" section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user enters "<FirstField_uniqueness>" engine number
    And user enters "<SecondField_uniqueness>" chassis number
    And user enters "<ThirdField_uniqueness>" registration number for rc authentication
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    When user modifies the Registration number for RC Authentication
    And user saves the Collateral Details
    Then user gets a proper notification message
    @ImplementedBy-harshprit.kumar
       #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | SectionName       | FirstField_uniqueness | SecondField_uniqueness | ThirdField_uniqueness | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | Dataset | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Equipment Details | unique                | empty                  | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 47                               | 65                                | 1       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 48                               | 65                                | 2       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 49                               | 65                                | 3       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 50                               | 65                                | 4       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 51                               | 65                                | 5       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 52                               | 65                                | 6       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 53                               | 65                                | 7       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | SectionName       | FirstField_uniqueness | SecondField_uniqueness | ThirdField_uniqueness | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | Dataset | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Equipment Details | unique                | empty                  | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 47                               | 65                                | 1       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 48                               | 65                                | 2       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 49                               | 65                                | 3       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 50                               | 65                                | 4       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 51                               | 65                                | 5       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 52                               | 65                                | 6       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 53                               | 65                                | 7       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |


    @ImplementedBy-aditya.tomar
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | SectionName       | FirstField_uniqueness | SecondField_uniqueness | ThirdField_uniqueness | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | Dataset | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Equipment Details | unique                | empty                  | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 47                               | 65                                | 1       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 48                               | 65                                | 2       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 49                               | 65                                | 3       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 50                               | 65                                | 4       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 51                               | 65                                | 5       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 52                               | 65                                | 6       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 53                               | 65                                | 7       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  @LoggedBug
  Scenario Outline: ACAUTOCAS-2836: User modifies Engine and Chassis number after running dedupe for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage and attempts to save with Dataset <Dataset> for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And goes to "<SectionName>" section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user enters "<FirstField_uniqueness>" engine number
    And user enters "<SecondField_uniqueness>" chassis number
    And user enters "<ThirdField_uniqueness>" registration number for rc authentication
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    When user modifies the Engine number
    And user modifies the Chassis Number
    And user saves the Collateral Details
    Then user gets a proper notification message
    @ImplementedBy-harshprit.kumar
       #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | SectionName       | FirstField_uniqueness | SecondField_uniqueness | ThirdField_uniqueness | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | Dataset | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Equipment Details | unique                | empty                  | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 47                               | 66                                | 1       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 48                               | 66                                | 2       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 49                               | 66                                | 3       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 50                               | 66                                | 4       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 51                               | 66                                | 5       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 52                               | 66                                | 6       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 53                               | 66                                | 7       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | SectionName       | FirstField_uniqueness | SecondField_uniqueness | ThirdField_uniqueness | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | Dataset | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Equipment Details | unique                | empty                  | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 47                               | 66                                | 1       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 48                               | 66                                | 2       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 49                               | 66                                | 3       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 50                               | 66                                | 4       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 51                               | 66                                | 5       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 52                               | 66                                | 6       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 53                               | 66                                | 7       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |


    @ImplementedBy-aditya.tomar
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | SectionName       | FirstField_uniqueness | SecondField_uniqueness | ThirdField_uniqueness | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | Dataset | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Equipment Details | unique                | empty                  | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 47                               | 66                                | 1       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 48                               | 66                                | 2       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 49                               | 66                                | 3       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 50                               | 66                                | 4       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 51                               | 66                                | 5       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 52                               | 66                                | 6       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 53                               | 66                                | 7       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  @LoggedBug
  Scenario Outline: ACAUTOCAS-2837: User modifies Chassis number and Registration Number after running dedupe for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage and attempts to save with Dataset <Dataset> for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user enters "<FirstField_uniqueness>" engine number
    And user enters "<SecondField_uniqueness>" chassis number
    And user enters "<ThirdField_uniqueness>" registration number for rc authentication
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    When user modifies the Chassis Number
    And user modifies the Registration number for RC Authentication
    And user saves the Collateral Details
    Then user gets a proper notification message
    @ImplementedBy-harshprit.kumar
       #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | SectionName       | FirstField_uniqueness | SecondField_uniqueness | ThirdField_uniqueness | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | Dataset | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Equipment Details | unique                | empty                  | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 47                               | 67                                | 1       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 48                               | 67                                | 2       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 49                               | 67                                | 3       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 50                               | 67                                | 4       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 51                               | 67                                | 5       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 52                               | 67                                | 6       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 53                               | 67                                | 7       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | SectionName       | FirstField_uniqueness | SecondField_uniqueness | ThirdField_uniqueness | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | Dataset | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Equipment Details | unique                | empty                  | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 47                               | 67                                | 1       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 48                               | 67                                | 2       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 49                               | 67                                | 3       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 50                               | 67                                | 4       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 51                               | 67                                | 5       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 52                               | 67                                | 6       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 53                               | 67                                | 7       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | SectionName       | FirstField_uniqueness | SecondField_uniqueness | ThirdField_uniqueness | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | Dataset | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Equipment Details | unique                | empty                  | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 47                               | 67                                | 1       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 48                               | 67                                | 2       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 49                               | 67                                | 3       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 50                               | 67                                | 4       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 51                               | 67                                | 5       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 52                               | 67                                | 6       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 53                               | 67                                | 7       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  @LoggedBug
  Scenario Outline: ACAUTOCAS-2838: User modifies Engine number and Registration Number after running dedupe for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage and attempts to save with Dataset <Dataset> for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user enters "<FirstField_uniqueness>" engine number
    And user enters "<SecondField_uniqueness>" chassis number
    And user enters "<ThirdField_uniqueness>" registration number for rc authentication
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    When user modifies the Engine number
    And user modifies the Registration number for RC Authentication
    And user saves the Collateral Details
    Then user gets a proper notification message
    @ImplementedBy-harshprit.kumar
       #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | SectionName       | FirstField_uniqueness | SecondField_uniqueness | ThirdField_uniqueness | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | Dataset | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Equipment Details | unique                | empty                  | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 47                               | 68                                | 1       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 48                               | 68                                | 2       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 49                               | 68                                | 3       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 50                               | 68                                | 4       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 51                               | 68                                | 5       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 52                               | 68                                | 6       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 53                               | 68                                | 7       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | SectionName       | FirstField_uniqueness | SecondField_uniqueness | ThirdField_uniqueness | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | Dataset | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Equipment Details | unique                | empty                  | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 47                               | 68                                | 1       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 48                               | 68                                | 2       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 49                               | 68                                | 3       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 50                               | 68                                | 4       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 51                               | 68                                | 5       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 52                               | 68                                | 6       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 53                               | 68                                | 7       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | SectionName       | FirstField_uniqueness | SecondField_uniqueness | ThirdField_uniqueness | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | Dataset | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Equipment Details | unique                | empty                  | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 47                               | 68                                | 1       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 48                               | 68                                | 2       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 49                               | 68                                | 3       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 50                               | 68                                | 4       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 51                               | 68                                | 5       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 52                               | 68                                | 6       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 53                               | 68                                | 7       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


    #FeatureID-ACAUTOCAS-234,ACAUTOCAS-244
  @LoggedBug
  Scenario Outline: ACAUTOCAS-4289: User modifies Engine Chassis and Registration number after running dedupe for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage and attempts to save with <Dataset> for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user enters "<FirstField_uniqueness>" engine number
    And user enters "<SecondField_uniqueness>" chassis number
    And user enters "<ThirdField_uniqueness>" registration number for rc authentication
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    When user modifies the Engine number
    And user modifies the Chassis Number
    And user modifies the Registration number for RC Authentication
    And user saves the Collateral Details
    Then user gets a proper notification message
    @ImplementedBy-harshprit.kumar
       #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | SectionName       | FirstField_uniqueness | SecondField_uniqueness | ThirdField_uniqueness | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | Dataset | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Equipment Details | unique                | empty                  | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 47                               | 69                                | 1       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 48                               | 69                                | 2       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 49                               | 69                                | 3       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 50                               | 69                                | 4       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 51                               | 69                                | 5       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 52                               | 69                                | 6       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 53                               | 69                                | 7       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | SectionName       | FirstField_uniqueness | SecondField_uniqueness | ThirdField_uniqueness | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | Dataset | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Equipment Details | unique                | empty                  | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 47                               | 69                                | 1       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 48                               | 69                                | 2       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 49                               | 69                                | 3       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 50                               | 69                                | 4       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 51                               | 69                                | 5       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 52                               | 69                                | 6       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 53                               | 69                                | 7       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | SectionName       | FirstField_uniqueness | SecondField_uniqueness | ThirdField_uniqueness | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | Dataset | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Equipment Details | unique                | empty                  | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 47                               | 69                                | 1       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 48                               | 69                                | 2       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 49                               | 69                                | 3       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | empty                 | collateral.xlsx | default            | 3                         | vehicle_details           | 50                               | 69                                | 4       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | empty                  | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 51                               | 69                                | 5       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | empty                 | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 52                               | 69                                | 6       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Equipment Details | unique                | unique                 | unique                | collateral.xlsx | default            | 3                         | vehicle_details           | 53                               | 69                                | 7       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-16658: User checks for duplicate collateral for Chassis Engine and Registration number for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When enters unique Chassis number
    And enters unique Engine number
    And enters unique Registration number for RC Authentication
    And checks for duplicate collateral
    Then user should receive a proper popup message
    @ImplementedBy-harshprit.kumar
       #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1014:  User is able to add a new collateral for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to the application with <Result> with <Collateral_assetDetails_rowNum> for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    When user fills mandatory fields of asset details of collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills all fields of vehicle details of collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fills all fields of invoice details of collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data with "<Result>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    Then User should receive a proper "<Result>" message
    @ImplementedBy-ankit.yadav
       #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | Result  | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Success | collateral.xlsx | asset_details           | 13                             | vehicle_details           | 207                              | invoice_details           | 75                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 14                             | vehicle_details           | 208                              | invoice_details           | 76                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 15                             | vehicle_details           | 209                              | invoice_details           | 77                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 16                             | vehicle_details           | 210                              | invoice_details           | 78                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 17                             | vehicle_details           | 211                              | invoice_details           | 79                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 18                             | vehicle_details           | 212                              | invoice_details           | 80                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 19                             | vehicle_details           | 213                              | invoice_details           | 81                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 20                             | vehicle_details           | 214                              | invoice_details           | 82                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 21                             | vehicle_details           | 215                              | invoice_details           | 83                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 22                             | vehicle_details           | 216                              | invoice_details           | 84                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 23                             | vehicle_details           | 217                              | invoice_details           | 85                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 24                             | vehicle_details           | 218                              | invoice_details           | 86                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 25                             | vehicle_details           | 219                              | invoice_details           | 87                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 26                             | vehicle_details           | 220                              | invoice_details           | 88                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 27                             | vehicle_details           | 221                              | invoice_details           | 89                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 28                             | vehicle_details           | 222                              | invoice_details           | 90                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 29                             | vehicle_details           | 223                              | invoice_details           | 91                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 30                             | vehicle_details           | 224                              | invoice_details           | 92                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 31                             | vehicle_details           | 225                              | invoice_details           | 93                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 32                             | vehicle_details           | 226                              | invoice_details           | 94                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 33                             | vehicle_details           | 227                              | invoice_details           | 95                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 34                             | vehicle_details           | 228                              | invoice_details           | 96                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 35                             | vehicle_details           | 228                              | invoice_details           | 97                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 36                             | vehicle_details           | 229                              | invoice_details           | 98                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 37                             | vehicle_details           | 230                              | invoice_details           | 99                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 38                             | vehicle_details           | 231                              | invoice_details           | 100                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 39                             | vehicle_details           | 232                              | invoice_details           | 101                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 40                             | vehicle_details           | 233                              | invoice_details           | 102                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 41                             | vehicle_details           | 234                              | invoice_details           | 103                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 42                             | vehicle_details           | 235                              | invoice_details           | 104                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 43                             | vehicle_details           | 236                              | invoice_details           | 105                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Result  | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Success | collateral.xlsx | asset_details           | 13                             | vehicle_details           | 207                              | invoice_details           | 75                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 14                             | vehicle_details           | 208                              | invoice_details           | 76                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 15                             | vehicle_details           | 209                              | invoice_details           | 77                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 16                             | vehicle_details           | 210                              | invoice_details           | 78                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 17                             | vehicle_details           | 211                              | invoice_details           | 79                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 18                             | vehicle_details           | 212                              | invoice_details           | 80                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 19                             | vehicle_details           | 213                              | invoice_details           | 81                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 20                             | vehicle_details           | 214                              | invoice_details           | 82                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 21                             | vehicle_details           | 215                              | invoice_details           | 83                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 22                             | vehicle_details           | 216                              | invoice_details           | 84                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 23                             | vehicle_details           | 217                              | invoice_details           | 85                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 24                             | vehicle_details           | 218                              | invoice_details           | 86                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 25                             | vehicle_details           | 219                              | invoice_details           | 87                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 26                             | vehicle_details           | 220                              | invoice_details           | 88                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 27                             | vehicle_details           | 221                              | invoice_details           | 89                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 28                             | vehicle_details           | 222                              | invoice_details           | 90                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 29                             | vehicle_details           | 223                              | invoice_details           | 91                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 30                             | vehicle_details           | 224                              | invoice_details           | 92                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 31                             | vehicle_details           | 225                              | invoice_details           | 93                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 32                             | vehicle_details           | 226                              | invoice_details           | 94                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 33                             | vehicle_details           | 227                              | invoice_details           | 95                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 34                             | vehicle_details           | 228                              | invoice_details           | 96                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 35                             | vehicle_details           | 228                              | invoice_details           | 97                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 36                             | vehicle_details           | 229                              | invoice_details           | 98                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 37                             | vehicle_details           | 230                              | invoice_details           | 99                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 38                             | vehicle_details           | 231                              | invoice_details           | 100                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 39                             | vehicle_details           | 232                              | invoice_details           | 101                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 40                             | vehicle_details           | 233                              | invoice_details           | 102                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 41                             | vehicle_details           | 234                              | invoice_details           | 103                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 42                             | vehicle_details           | 235                              | invoice_details           | 104                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 43                             | vehicle_details           | 236                              | invoice_details           | 105                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |


    @ImplementedBy-aditya.tomar
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Result  | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Success | collateral.xlsx | asset_details           | 13                             | vehicle_details           | 207                              | invoice_details           | 75                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 14                             | vehicle_details           | 208                              | invoice_details           | 76                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 15                             | vehicle_details           | 209                              | invoice_details           | 77                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 16                             | vehicle_details           | 210                              | invoice_details           | 78                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 17                             | vehicle_details           | 211                              | invoice_details           | 79                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 18                             | vehicle_details           | 212                              | invoice_details           | 80                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 19                             | vehicle_details           | 213                              | invoice_details           | 81                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 20                             | vehicle_details           | 214                              | invoice_details           | 82                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 21                             | vehicle_details           | 215                              | invoice_details           | 83                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 22                             | vehicle_details           | 216                              | invoice_details           | 84                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 23                             | vehicle_details           | 217                              | invoice_details           | 85                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 24                             | vehicle_details           | 218                              | invoice_details           | 86                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 25                             | vehicle_details           | 219                              | invoice_details           | 87                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 26                             | vehicle_details           | 220                              | invoice_details           | 88                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 27                             | vehicle_details           | 221                              | invoice_details           | 89                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 28                             | vehicle_details           | 222                              | invoice_details           | 90                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 29                             | vehicle_details           | 223                              | invoice_details           | 91                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 30                             | vehicle_details           | 224                              | invoice_details           | 92                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 31                             | vehicle_details           | 225                              | invoice_details           | 93                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 32                             | vehicle_details           | 226                              | invoice_details           | 94                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 33                             | vehicle_details           | 227                              | invoice_details           | 95                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 34                             | vehicle_details           | 228                              | invoice_details           | 96                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 35                             | vehicle_details           | 228                              | invoice_details           | 97                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 36                             | vehicle_details           | 229                              | invoice_details           | 98                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 37                             | vehicle_details           | 230                              | invoice_details           | 99                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 38                             | vehicle_details           | 231                              | invoice_details           | 100                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 39                             | vehicle_details           | 232                              | invoice_details           | 101                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 40                             | vehicle_details           | 233                              | invoice_details           | 102                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 41                             | vehicle_details           | 234                              | invoice_details           | 103                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 42                             | vehicle_details           | 235                              | invoice_details           | 104                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Faliure | collateral.xlsx | asset_details           | 43                             | vehicle_details           | 236                              | invoice_details           | 105                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1015:  User is able to add a new collateral for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to the application with <Result> with new Global Collateral No with <Collateral_assetDetails_rowNum> for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    When user fills mandatory fields of asset details of collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills all fields of vehicle details of collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fills all fields of invoice details of collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    Then user check the global collateral number for newly added collateral to application
    @ImplementedBy-ankit.yadav
       #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | Result  | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Success | collateral.xlsx | asset_details           | 13                             | vehicle_details           | 207                              | invoice_details           | 75                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 14                             | vehicle_details           | 208                              | invoice_details           | 76                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 15                             | vehicle_details           | 209                              | invoice_details           | 77                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 16                             | vehicle_details           | 210                              | invoice_details           | 78                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 17                             | vehicle_details           | 211                              | invoice_details           | 79                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 18                             | vehicle_details           | 212                              | invoice_details           | 80                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 19                             | vehicle_details           | 213                              | invoice_details           | 81                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 20                             | vehicle_details           | 214                              | invoice_details           | 82                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 21                             | vehicle_details           | 215                              | invoice_details           | 83                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 22                             | vehicle_details           | 216                              | invoice_details           | 84                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 23                             | vehicle_details           | 217                              | invoice_details           | 85                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 24                             | vehicle_details           | 218                              | invoice_details           | 86                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 25                             | vehicle_details           | 219                              | invoice_details           | 87                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 26                             | vehicle_details           | 220                              | invoice_details           | 88                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 27                             | vehicle_details           | 221                              | invoice_details           | 89                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 28                             | vehicle_details           | 222                              | invoice_details           | 90                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 29                             | vehicle_details           | 223                              | invoice_details           | 91                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Result  | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Success | collateral.xlsx | asset_details           | 13                             | vehicle_details           | 207                              | invoice_details           | 75                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 14                             | vehicle_details           | 208                              | invoice_details           | 76                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 15                             | vehicle_details           | 209                              | invoice_details           | 77                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 16                             | vehicle_details           | 210                              | invoice_details           | 78                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 17                             | vehicle_details           | 211                              | invoice_details           | 79                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 18                             | vehicle_details           | 212                              | invoice_details           | 80                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 19                             | vehicle_details           | 213                              | invoice_details           | 81                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 20                             | vehicle_details           | 214                              | invoice_details           | 82                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 21                             | vehicle_details           | 215                              | invoice_details           | 83                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 22                             | vehicle_details           | 216                              | invoice_details           | 84                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 23                             | vehicle_details           | 217                              | invoice_details           | 85                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 24                             | vehicle_details           | 218                              | invoice_details           | 86                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 25                             | vehicle_details           | 219                              | invoice_details           | 87                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 26                             | vehicle_details           | 220                              | invoice_details           | 88                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 27                             | vehicle_details           | 221                              | invoice_details           | 89                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 28                             | vehicle_details           | 222                              | invoice_details           | 90                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 29                             | vehicle_details           | 223                              | invoice_details           | 91                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |


    @ImplementedBy-aditya.tomar
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Result  | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Success | collateral.xlsx | asset_details           | 13                             | vehicle_details           | 207                              | invoice_details           | 75                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 14                             | vehicle_details           | 208                              | invoice_details           | 76                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 15                             | vehicle_details           | 209                              | invoice_details           | 77                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 16                             | vehicle_details           | 210                              | invoice_details           | 78                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 17                             | vehicle_details           | 211                              | invoice_details           | 79                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 18                             | vehicle_details           | 212                              | invoice_details           | 80                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 19                             | vehicle_details           | 213                              | invoice_details           | 81                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 20                             | vehicle_details           | 214                              | invoice_details           | 82                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 21                             | vehicle_details           | 215                              | invoice_details           | 83                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 22                             | vehicle_details           | 216                              | invoice_details           | 84                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 23                             | vehicle_details           | 217                              | invoice_details           | 85                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 24                             | vehicle_details           | 218                              | invoice_details           | 86                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 25                             | vehicle_details           | 219                              | invoice_details           | 87                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 26                             | vehicle_details           | 220                              | invoice_details           | 88                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 27                             | vehicle_details           | 221                              | invoice_details           | 89                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 28                             | vehicle_details           | 222                              | invoice_details           | 90                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Success | collateral.xlsx | asset_details           | 29                             | vehicle_details           | 223                              | invoice_details           | 91                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


##create another after this one
  Scenario Outline: ACAUTOCAS-1017:  Capture for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage against an application with create another after this one for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    When user selects create another after this one option
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    Then CollateralPage remains available to create another collateral
    @ImplementedBy-harshprit.kumar
       #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

###Squash:137607
###Story:CAS-23473
  @Sanity
#FeatureID-ACAUTOCAS-234,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16659: user adds multiple collateral to <ProductType> application at <ApplicationStage> stage with sub type as <CollateralSubType> for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    When user adds asset type collateral of "<CollateralSubType>" subtype
      | collateral.xlsx | asset_details | 13 |
      | collateral.xlsx | asset_details | 14 |
      | collateral.xlsx | asset_details | 15 |
      | collateral.xlsx | asset_details | 16 |
      | collateral.xlsx | asset_details | 17 |
      | collateral.xlsx | asset_details | 18 |
      | collateral.xlsx | asset_details | 19 |
      | collateral.xlsx | asset_details | 20 |
      | collateral.xlsx | asset_details | 21 |
      | collateral.xlsx | asset_details | 22 |
      | collateral.xlsx | asset_details | 23 |
    Then user check the all added collateral to application
    @ImplementedBy-ankit.yadav
       #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | CollateralSubType   | Key | Category | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <CollateralSubType> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | CollateralSubType   | Key | Category   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <CollateralSubType> |     | <Category> | <ApplicantType> |


    @ImplementedBy-aditya.tomar
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | CollateralSubType   | Key | Category | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <CollateralSubType> |     |          | <ApplicantType> |


###Squash:137607
###Story:CAS-23473
#FeatureID-ACAUTOCAS-234,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16660: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as <CollateralSubType> with <Collateral_assetDetails_rowNum> for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "asset_details" and row <Collateral_assetDetails_rowNum>
    When user adds asset type collateral based on "<CollateralSubType>" subtype
    And user views the already added collateral
    Then user should be able to reconcile asset type collateral based on "<CollateralSubType>" data successfully
    @ImplementedBy-ankit.yadav
       #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | Collateral_assetDetails_rowNum | CollateralSubType   | Key | Category | ApplicantType   |
      | <ProductType> | <ApplicationStage> | 13                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 14                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 15                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 16                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 17                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 18                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 19                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 20                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 21                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 22                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 23                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 24                             | <CollateralSubType> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Collateral_assetDetails_rowNum | CollateralSubType   | Key | Category   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | 13                             | <CollateralSubType> |     | <Category> | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 14                             | <CollateralSubType> |     | <Category> | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 15                             | <CollateralSubType> |     | <Category> | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 16                             | <CollateralSubType> |     | <Category> | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 17                             | <CollateralSubType> |     | <Category> | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 18                             | <CollateralSubType> |     | <Category> | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 19                             | <CollateralSubType> |     | <Category> | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 20                             | <CollateralSubType> |     | <Category> | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 21                             | <CollateralSubType> |     | <Category> | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 22                             | <CollateralSubType> |     | <Category> | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 23                             | <CollateralSubType> |     | <Category> | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 24                             | <CollateralSubType> |     | <Category> | <ApplicantType> |


    @ImplementedBy-aditya.tomar
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Collateral_assetDetails_rowNum | CollateralSubType   | Key | Category | ApplicantType   |
      | <ProductType> | <ApplicationStage> | 13                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 14                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 15                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 16                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 17                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 18                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 19                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 20                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 21                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 22                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 23                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 24                             | <CollateralSubType> |     |          | <ApplicantType> |


###Squash:137607
###Story:CAS-23473
#FeatureID-ACAUTOCAS-234,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16661: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as <CollateralSubType> at Enquiry with <Collateral_assetDetails_rowNum> for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "asset_details" and row <Collateral_assetDetails_rowNum>
    And user adds asset type collateral based on "<CollateralSubType>" subtype
    And user opens application from enquiry menu
    And user opens Collateral Page for viewing attached collaterals at "<ApplicationStage>"
    When user views the collateral from enquiry menu
    Then user should be able to reconcile asset type collateral based on "<CollateralSubType>" data successfully
    @ImplementedBy-ankit.yadav
       #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | Collateral_assetDetails_rowNum | CollateralSubType   | Key | Category | ApplicantType   |
      | <ProductType> | <ApplicationStage> | 13                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 14                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 15                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 16                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 17                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 18                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 19                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 20                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 21                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 22                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 23                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 24                             | <CollateralSubType> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Collateral_assetDetails_rowNum | CollateralSubType   | Key | Category   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | 13                             | <CollateralSubType> |     | <Category> | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 14                             | <CollateralSubType> |     | <Category> | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 15                             | <CollateralSubType> |     | <Category> | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 16                             | <CollateralSubType> |     | <Category> | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 17                             | <CollateralSubType> |     | <Category> | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 18                             | <CollateralSubType> |     | <Category> | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 19                             | <CollateralSubType> |     | <Category> | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 20                             | <CollateralSubType> |     | <Category> | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 21                             | <CollateralSubType> |     | <Category> | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 22                             | <CollateralSubType> |     | <Category> | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 23                             | <CollateralSubType> |     | <Category> | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 24                             | <CollateralSubType> |     | <Category> | <ApplicantType> |


    @ImplementedBy-aditya.tomar
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Collateral_assetDetails_rowNum | CollateralSubType   | Key | Category | ApplicantType   |
      | <ProductType> | <ApplicationStage> | 13                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 14                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 15                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 16                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 17                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 18                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 19                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 20                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 21                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 22                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 23                             | <CollateralSubType> |     |          | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | 24                             | <CollateralSubType> |     |          | <ApplicantType> |


@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedByDEV
@Sanity
@ReviewedSecCollateral
@Release
@Part-2
#${CollateralSubType:["Tractor"]}
#${ApplicantType:["indiv","nonindiv"]}
Feature: Tractor Modification

#  Pre-Requisites---
#  In this feature we will modify and delete an Asset Tractor to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  Scenario Outline: ACAUTOCAS-2184: Deleting a <CollateralSubType> attached to the application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills mandatory fields of Tractor Details section
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    When user deletes the saved collateral
    Then user should be able to successfully delete the collateral
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2972: <CollateralSubType> Data Modification of <FieldName> in Asset Details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills mandatory fields of Tractor Details section
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    When user modifies the saved collateral
    Then user should be able to modify the data in field "<FieldName>"
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | FieldName                    | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Collateral Ref No            | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Description                  | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | OLV Grid Value               | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Insured Declared Value       | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Overall Evaluated Value Type | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Usage                  | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Location               | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Cost                   | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Category               | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Manufacturer                 | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Model                  | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Variant                | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Level                  | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                    | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Collateral Ref No            | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Description                  | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | OLV Grid Value               | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Insured Declared Value       | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Overall Evaluated Value Type | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Usage                  | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Location               | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Cost                   | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Category               | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Manufacturer                 | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Model                  | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Variant                | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Level                  | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                    | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Collateral Ref No            | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Description                  | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | OLV Grid Value               | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Insured Declared Value       | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Overall Evaluated Value Type | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Usage                  | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Location               | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Cost                   | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Category               | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Manufacturer                 | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Model                  | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Variant                | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Level                  | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

#This should fail as instead of Tractor Details, it is showing Vehicle Details.
  Scenario Outline: ACAUTOCAS-2973: <CollateralSubType> Data Modification of <FieldName> in Tractor Details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills mandatory fields of Tractor Details section
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    When user modifies the saved collateral
    And user opens Tractor Details section
    Then user should be able to modify the data in field "<FieldName>"
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | FieldName                                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | FIP Number                                | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Date of Delivery                          | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | VIN Number                                | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Transport Office             | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration in Name of                   | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | RC Received Date                          | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Vehicle Capacity                          | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Life (Months)                       | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Initial Odometer Reading                  | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Tractor Sr. No/Fuel Pump No               | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Initial Hour Meter Reading                | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Color                                     | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | State                                     | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Color Type                                | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Chassis Number                            | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Number for RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Date                         | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Expiry Date                  | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Year of Manufacture                       | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | FIP Number                                | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Date of Delivery                          | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | VIN Number                                | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Registration Transport Office             | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Registration in Name of                   | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | RC Received Date                          | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Vehicle Capacity                          | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Life (Months)                       | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Initial Odometer Reading                  | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Tractor Sr. No/Fuel Pump No               | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Initial Hour Meter Reading                | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Color                                     | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | State                                     | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Color Type                                | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Chassis Number                            | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Registration Number for RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Registration Date                         | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Registration Expiry Date                  | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Year of Manufacture                       | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | FIP Number                                | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Date of Delivery                          | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | VIN Number                                | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Transport Office             | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration in Name of                   | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | RC Received Date                          | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Vehicle Capacity                          | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Life (Months)                       | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Initial Odometer Reading                  | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Tractor Sr. No/Fuel Pump No               | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Initial Hour Meter Reading                | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Color                                     | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | State                                     | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Color Type                                | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Chassis Number                            | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Number for RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Date                         | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Expiry Date                  | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Year of Manufacture                       | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2974: <CollateralSubType> restrictions in Data Modification of <FieldName>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills mandatory fields of Tractor Details section
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user modifies the saved collateral
    Then user should not be able to modify the data in "<FieldName>" field
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | FieldName                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Collateral ID            | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Global Collateral Number | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Collateral Type          | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Collateral SubType       | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Collateral ID            | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Global Collateral Number | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Collateral Type          | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Collateral SubType       | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Collateral ID            | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Global Collateral Number | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Collateral Type          | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Collateral SubType       | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

#FeatureID-ACAUTOCAS-233
  Scenario Outline: ACAUTOCAS-4327:  <CollateralSubType> Data Modification in Asset Details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills mandatory fields of Tractor Details section
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    When user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    And user fills all fields of home page of collateral details for given collateral sub type
    And user saves the Collateral Details
    Then collateral should saved successfully
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 599                       | 600                        | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 599                       | 600                        | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 599                       | 600                        | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    #    FeatureID-ACAUTOCAS-234
  @LoggedBug
  Scenario Outline: ACAUTOCAS-16687:  <CollateralSubType> Data Modification in Equipment Details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills all fields of vehicle details of collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    When user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum2>
    And user fills all fields of vehicle details of collateral sub type
    And user saves the Collateral Details
    Then collateral should saved successfully
    @ImplementedBy-aman.verma
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | Collateral_tractorDetails_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | collateral.xlsx | default            | 3                         | tractor_details           | 198                              | 199                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | Collateral_tractorDetails_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | collateral.xlsx | default            | 3                         | tractor_details           | 198                              | 199                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | Collateral_tractorDetails_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | collateral.xlsx | default            | 3                         | tractor_details           | 198                              | 199                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


###Dedupe Check
#  #FeatureID-ACAUTOCAS-233,ACAUTOCAS-244
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-4328:  <CollateralSubType> Data Modification in Equipment Details for dedupe revalidation
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills mandatory fields of Tractor Details section
    And user enters registration number for rc authentication
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    When user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum2>
    And user modifies field "<Field>" in tractor details
    And user saves the Collateral Details
    Then User should get a proper message
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | Field                                              | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | Collateral_tractorDetails_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Engine Number                                      | collateral.xlsx | default            | 4                         | tractor_details           | 199                              | 211                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Engine Number, Chassis Number                      | collateral.xlsx | default            | 4                         | tractor_details           | 199                              | 212                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Engine Number, Registration Number                 | collateral.xlsx | default            | 4                         | tractor_details           | 199                              | 213                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Chassis Number, Registration Number                | collateral.xlsx | default            | 4                         | tractor_details           | 199                              | 214                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Chassis Number                                     | collateral.xlsx | default            | 4                         | tractor_details           | 199                              | 215                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Number                                | collateral.xlsx | default            | 4                         | tractor_details           | 199                              | 216                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Engine Number, Chassis Number, Registration Number | collateral.xlsx | default            | 4                         | tractor_details           | 199                              | 217                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Field                                              | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | Collateral_tractorDetails_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Engine Number                                      | collateral.xlsx | default            | 4                         | tractor_details           | 199                              | 211                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Engine Number, Chassis Number                      | collateral.xlsx | default            | 4                         | tractor_details           | 199                              | 212                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Engine Number, Registration Number                 | collateral.xlsx | default            | 4                         | tractor_details           | 199                              | 213                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Chassis Number, Registration Number                | collateral.xlsx | default            | 4                         | tractor_details           | 199                              | 214                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Chassis Number                                     | collateral.xlsx | default            | 4                         | tractor_details           | 199                              | 215                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Registration Number                                | collateral.xlsx | default            | 4                         | tractor_details           | 199                              | 216                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Engine Number, Chassis Number, Registration Number | collateral.xlsx | default            | 4                         | tractor_details           | 199                              | 217                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Field                                              | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | Collateral_tractorDetails_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Engine Number                                      | collateral.xlsx | default            | 4                         | tractor_details           | 199                              | 211                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Engine Number, Chassis Number                      | collateral.xlsx | default            | 4                         | tractor_details           | 199                              | 212                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Engine Number, Registration Number                 | collateral.xlsx | default            | 4                         | tractor_details           | 199                              | 213                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Chassis Number, Registration Number                | collateral.xlsx | default            | 4                         | tractor_details           | 199                              | 214                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Chassis Number                                     | collateral.xlsx | default            | 4                         | tractor_details           | 199                              | 215                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Number                                | collateral.xlsx | default            | 4                         | tractor_details           | 199                              | 216                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Engine Number, Chassis Number, Registration Number | collateral.xlsx | default            | 4                         | tractor_details           | 199                              | 217                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


# FeatureID-ACAUTOCAS-233,ACAUTOCAS-244
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-4329:  Dedupe revalidation to identify duplicate collaterals of <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills mandatory fields of Tractor Details section
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    And user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum2>
    When user fills mandatory fields of Tractor Details section
    And checks for duplicate collateral
    Then user should get message saying "1 Duplicates Found"
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | Collateral_tractorDetails_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 137                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 138                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 139                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 140                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 141                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 142                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 143                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 144                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 145                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 146                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | Collateral_tractorDetails_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 137                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 138                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 139                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 140                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 141                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 142                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 143                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 144                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 145                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 146                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | Collateral_tractorDetails_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 137                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 138                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 139                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 140                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 141                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 142                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 143                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 144                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 145                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | 146                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

#  #FeatureID-ACAUTOCAS-233,ACAUTOCAS-244
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-4330:  Dedupe revalidation to identify and view duplicate collaterals of <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills mandatory fields of Tractor Details section
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    When user modifies the saved collateral
    And user fills mandatory fields of Tractor Details section for dedupe check
    And checks for duplicate collateral
    And user views the duplicate collateral
    Then user should be able to view the duplicates in collateral details page
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |


#  #FeatureID-ACAUTOCAS-233,ACAUTOCAS-244
  @LoggedBug
  Scenario Outline: ACAUTOCAS-4331:  Dedupe revalidation to identify and attach duplicate collaterals to the same application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user adds asset type collateral of "<CollateralSubType>" subtype
      | collateral.xlsx | asset_details | 75 |
      | collateral.xlsx | asset_details | 76 |
    When user modifies the saved collateral
    And user opens Tractor Details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills mandatory fields of Tractor Details section
    And user enters registration number for rc authentication
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user selects collateral already attached to the same application
    And user saves the duplicate collateral
    Then user gets a proper notification
    @ImplementedBy-ankit.yadav
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | tractor_details           | 250                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | tractor_details           | 250                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | tractor_details           | 250                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    #FeatureID-ACAUTOCAS-233,ACAUTOCAS-244
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-4332:  Dedupe revalidation to identify and attach duplicate collaterals to different application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 4
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "tractor_details" and row 0
    And user fills mandatory fields of Tractor Details section
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 4
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user fills mandatory fields of Tractor Details section for dedupe check
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "Tractor" collateral from dedupe result which is not attached to the application
    When user saves selected dedupe collateral
    Then user is able to save data successfully with existing GlobalCollateralNo
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | collateral.xlsx | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | collateral.xlsx | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | collateral.xlsx | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

## Ignore duplicate and save - Ask for reason
#  #FeatureID-ACAUTOCAS-233,ACAUTOCAS-244
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-4333:  Dedupe revalidation to identify and ignore duplicate collaterals
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 4
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "tractor_details" and row 0
    And user fills mandatory fields of Tractor Details section
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 4
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user fills mandatory fields of Tractor Details section for dedupe check
    And checks for duplicate collateral
    And user ignores the duplicate collaterals found
    When user saves the Collateral Details
    Then user is asked to enter the reason of ignoring
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | collateral.xlsx | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | collateral.xlsx | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | collateral.xlsx | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  #FeatureID-ACAUTOCAS-5077,ACAUTOCAS-234,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-231,ACAUTOCAS-230,ACAUTOCAS-8108
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-11569:  Collateral page modification validation for "<CollateralSubType>" at "<CERSAIRowNumber>" for "<ValidationField>" at Disbursal Author stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 4
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "tractor_details" and row 0
    And user fills mandatory fields of Tractor Details section
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    And user moves from "<ApplicationStage>" to application of "<ProductType>" product type as "<ApplicantType>" applicant at "Disbursal Author" for "<Category>" with "<Key>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "Disbursal Author" for "<Category>" with "<Key>" from application grid
    When user navigates to the collateral page at disbursal stage
    Then user should not be able to modify collateral
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | collateral.xlsx | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
#

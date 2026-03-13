@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@Reconciled
@Release
@Part-1

#${CollateralSubType:["Kisan Vikas Patra"]}
#${ApplicantType:["indiv","nonindiv"]}

Feature: Kisan Vikas Patra Modification

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-3668:  Deleting a Kisan Vikas Patra attached to the application of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user deletes the saved collateral
    Then user should be able to successfully delete the collateral
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 737                       |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |

  Scenario Outline: ACAUTOCAS-3040:  Kisan Vikas Patra Data Modification of <FieldName> in Deposit Details of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "Kisan Vikas Patra"
    Then user should be able to modify the data in field "<FieldName>"
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal"]}
    Examples:
      | FieldName         | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | Collateral Ref No | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Description       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Name Of Holder    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Name of Holder 2  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Name of Holder 3  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Deposit No        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Deposit Amount    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Maturity Amount   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Issue date        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Maturity date     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Face Value        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Accrued Value     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Maturity Value    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | remarks           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName         | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | Collateral Ref No | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Description       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Name Of Holder    | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Name of Holder 2  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Name of Holder 3  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Deposit No        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Deposit Amount    | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Maturity Amount   | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Issue date        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Maturity date     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Face Value        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Accrued Value     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Maturity Value    | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | remarks           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 737                       |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName         | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | Collateral Ref No | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Description       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Name Of Holder    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Name of Holder 2  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Name of Holder 3  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Deposit No        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Deposit Amount    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Maturity Amount   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Issue date        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Maturity date     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Face Value        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Accrued Value     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Maturity Value    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | remarks           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |

  Scenario Outline: ACAUTOCAS-3041:  Kisan Vikas Patra restrictions in Data Modification of <FieldName> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user views the added "Kisan Vikas Patra" collateral
    Then user should not be able to modify the data in field "<FieldName>"
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal"]}
    Examples:
      | FieldName                | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | Collateral ID            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Global Collateral Number | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Collateral Type          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Collateral SubType       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | Collateral ID            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Global Collateral Number | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Collateral Type          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Collateral SubType       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 737                       |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | Collateral ID            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Global Collateral Number | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Collateral Type          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |
      | Collateral SubType       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 737                       |

  Scenario Outline: ACAUTOCAS-3669:  Insurance Tab for Kisan Vikas Patra Collateral of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "Kisan Vikas Patra"
    Then user should not see Insurance Tab
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | 737                       |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | 737                       |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | 737                       |

  Scenario Outline: ACAUTOCAS-4346: Kisan Vikas Patra Data Modifications of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "Kisan Vikas Patra"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisanVikasPatra>" and row <Collateral_kisanVikasPatra_rowNum>
    And user modifies the data of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    Then collateral should saved successfully
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 0                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 0                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 0                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  Scenario Outline: ACAUTOCAS-4347:  Collateral Details modification without dedupe of <ProductType> application at <ApplicationStage> stage of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "Kisan Vikas Patra"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisanVikasPatra>" and row <Collateral_kisanVikasPatra_rowNum>
    And user modifies the data of collateral subtype
    And user saves the data
    Then user gets a proper notification
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 79                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 79                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 79                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  Scenario Outline: ACAUTOCAS-4348:  CollateralPage Collateral Details validation during modification on <Collateral_kisanVikasPatra_rowNum> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "Kisan Vikas Patra"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisanVikasPatra>" and row <Collateral_kisanVikasPatra_rowNum>
    And user modifies the data of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the data
    Then user gets a proper notification
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 2                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 357                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 2                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 357                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 2                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 357                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @LoggedBug
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 84                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @LoggedBug
    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 84                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @LoggedBug
    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 84                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


   #FeatureID-ACAUTOCAS-236
  Scenario Outline: ACAUTOCAS-4349:  Kisan Vikas Patra Data Modification in Asset Details for dedupe revalidation on row number <Collateral_kisanVikasPatra_rowNum> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "Kisan Vikas Patra"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisanVikasPatra>" and row <Collateral_kisanVikasPatra_rowNum>
    And user modifies the data of collateral subtype
    And user saves the data
    Then User should get a proper message
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 79                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 5                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 79                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 5                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 79                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 5                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  Scenario Outline: ACAUTOCAS-4350:  Dedupe revalidation to identify duplicate collaterals of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "Kisan Vikas Patra"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisanVikasPatra>" and row <Collateral_kisanVikasPatra_rowNum>
    And user modifies the data of collateral subtype
    And checks for duplicate collateral
    Then user should receive a message saying some duplicates found
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 0                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 0                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 0                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-4351:  Dedupe revalidation to identify and view duplicate collaterals of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "Kisan Vikas Patra"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisanVikasPatra>" and row <Collateral_kisanVikasPatra_rowNum>
    And user modifies the data of collateral subtype
    And checks for duplicate collateral
    Then User should be able to view the duplicates of collateral subtype
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 8                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 8                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 8                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-4352:  Dedupe revalidation to identify and attach duplicate collaterals to the same application of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 737
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user saves the existing global collateral number of collateral subtype
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 737
    When user click on add new for adding new collateral
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "Kisan Vikas Patra" collateral from dedupe result which is already attached to the application
    And user saves selected dedupe collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "kisan_vikas_patra" and row 15
    Then user gets a notification message
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-4353:  Dedupe revalidation to identify and attach duplicate collaterals to different application of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 737
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "Kisan Vikas Patra" collateral from dedupe result which is not attached to the application
    And user saves selected dedupe collateral
    Then user is able to save data successfully with existing GlobalCollateralNo
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-4354:  Dedupe revalidation to identify and ignore duplicate collaterals of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "Kisan Vikas Patra"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisanVikasPatra>" and row <Collateral_kisanVikasPatra_rowNum>
    And user modifies the data of collateral subtype
    And checks for duplicate collateral
    And user checks ok button in dedupe
    Then user is asked to enter the reason of ignoring duplicates
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 100                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 100                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | 737                       | kisan_vikas_patra          | 100                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

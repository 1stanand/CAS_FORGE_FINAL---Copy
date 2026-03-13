@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@Reconciled
@ReviewedSecCollateral
@ReleaseSecCollateralM5

#${CollateralSubType:["Kisan Vikas Patra"]}
#${ApplicantType:["indiv","nonindiv"]}

Feature: Addition of Kisan Vikas Patra

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    #${ProductType:["PF","EDU"]}
  #PF(Secured),EDU(Secured)
  @Perishable
  Scenario Outline: ACAUTOCAS-3664: user moves to the next stage without collateral of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    When user moves to the next stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisanVikasPatra>" and row <Collateral_kisanVikasPatra_rowNum>
    Then user should get error message without adding collateral
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | kisan_vikas_patra          | 170                               |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | kisan_vikas_patra          | 170                               |

  @Sanity
  Scenario Outline: ACAUTOCAS-3028: User enters mandatory information for Kisan Vikas Patra and saves without checking duplicates of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisanVikasPatra>" and row <Collateral_kisanVikasPatra_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    When saves the data
    Then user gets a proper notification
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra          | 0                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra          | 0                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra          | 0                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  @Sanity
  Scenario Outline: ACAUTOCAS-3029: User misses entering one or more mandatory information for Kisan Vikas Patra and saves of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisanVikasPatra>" and row <Collateral_kisanVikasPatra_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    When user checks for duplicate collateral
    Then user should receive a proper failure message
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra          | 171                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra          | 171                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra          | 171                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  @Sanity
  #FeatureID-ACAUTOCAS-236
  Scenario Outline: ACAUTOCAS-16833: User misses entering one or more mandatory information for Kisan Vikas Patra and saves of <ProductType> application at <ApplicationStage> stage with field name deposit no
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisanVikasPatra>" and row <Collateral_kisanVikasPatra_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    When user saves the data
    Then user receives an error message in collateral page
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra          | 169                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra          | 172                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra          | 173                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra          | 174                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra          | 175                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra          | 176                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra          | 169                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra          | 172                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra          | 173                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra          | 174                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra          | 175                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra          | 176                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra          | 169                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra          | 172                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra          | 173                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra          | 174                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra          | 175                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra          | 176                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  Scenario Outline: ACAUTOCAS-3665: user moves a new Deposit Type collateral to the loan application of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then application should allow only the collateral type which is linked to the product
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  Scenario Outline:ACAUTOCAS-3666: user adds a collateral with sub type as Kisan Vikas Patra of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    When user adds a new collateral type as "Deposit"
    Then user should be able to select sub collateral "Kisan Vikas Patra"
    @ImplementedBy-aman.verma
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#ACAUTOCAS-3667: jira id senario from gwt already covered in above secnario
  #having jira id ACAUTOCAS-3029:

  @Sanity
  Scenario Outline:ACAUTOCAS-3030: CollateralPage Collateral Details validation of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisan_vikas_patra>" and row <Collateral_kisan_vikas_patra_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the data
    Then user receives an error message
    @ImplementedBy-aman.verma
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra            | 151                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra            | 154                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
    @LoggedBug
    @ImplementedBy-aman.verma
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra            | 152                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra            | 153                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra            | 151                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra            | 154                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
    @LoggedBug
    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra            | 152                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra            | 153                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra            | 151                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra            | 154                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
    @LoggedBug
    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra            | 152                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra            | 153                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  Scenario Outline: ACAUTOCAS-3031: User executes dedupe for Kisan Vikas Patra of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisan_vikas_patra>" and row <Collateral_kisan_vikas_patra_rowNum>
    And user fills mandatory fields of collateral subtype kisan vikas patra
    And checks for duplicate collateral
    Then user should receive a proper failure message
    @ImplementedBy-aman.verma
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra            | 155                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra            | 157                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra            | 155                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra            | 157                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra            | 155                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra            | 157                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #FeatureID-ACAUTOCAS-236
  Scenario Outline: ACAUTOCAS-16834: User executes dedupe for Kisan Vikas Patra for the existing collateral with <var> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisan_vikas_patra>" and row <Collateral_kisan_vikas_patra_rowNum>
    And user fills mandatory fields of home page of collateral details for "Kisan Vikas Patra"
    And checks for duplicate collateral
    And saves the data in collateral
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisan_vikas_patra>" and row <Collateral_kisan_vikas_patra_rowNum>
    And user fills mandatory fields of home page of collateral details for "Kisan Vikas Patra"
    When user checks for duplicate collateral
    Then user should get a message in collateral dedupe check
    @ImplementedBy-aman.verma
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | Var                | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | 0 Duplicates Found | collateral.xlsx | kisan_vikas_patra            | 156                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | 0 Duplicates Found | collateral.xlsx | kisan_vikas_patra            | 158                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | 1 Duplicates Found | collateral.xlsx | kisan_vikas_patra            | 159                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | 1 Duplicates Found | collateral.xlsx | kisan_vikas_patra            | 160                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | Var                | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | 0 Duplicates Found | collateral.xlsx | kisan_vikas_patra            | 156                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | 0 Duplicates Found | collateral.xlsx | kisan_vikas_patra            | 158                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | 1 Duplicates Found | collateral.xlsx | kisan_vikas_patra            | 159                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | 1 Duplicates Found | collateral.xlsx | kisan_vikas_patra            | 160                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Var                | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | 0 Duplicates Found | collateral.xlsx | kisan_vikas_patra            | 156                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | 0 Duplicates Found | collateral.xlsx | kisan_vikas_patra            | 158                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | 1 Duplicates Found | collateral.xlsx | kisan_vikas_patra            | 159                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | 1 Duplicates Found | collateral.xlsx | kisan_vikas_patra            | 160                                 | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  @ImplementedBy-aditya.tomar
    @Release3
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
  Scenario Outline: ACAUTOCAS-3051: User checks for duplicate collateral and views the duplicates for Addition Kisan Vikas Patra of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<SecondaryApplicationStage>" stage to add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisan_vikas_patra>" and row <Collateral_kisan_vikas_patra_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral subtype kisan vikas patra
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage to add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisan_vikas_patra>" and row <Collateral_kisan_vikas_patra_rowNum>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral subtype kisan vikas patra
    And checks for duplicate collateral
    Then User should be able to view the duplicates of "<CollateralSubType>" collateral
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | ProductType   | SecondaryApplicationStage | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | kisan_vikas_patra            | 0                                   | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

#This test scenario should fail
  @LoggedBug
  # ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
  Scenario Outline: ACAUTOCAS-3052: User attaches a duplicate Kisan Vikas Patra collateral attached to same application of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisan_vikas_patra>" and row 0
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral subtype kisan vikas patra
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral
    And user add new collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisan_vikas_patra>" and row 0
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral subtype kisan vikas patra
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is already attached to the application
    And user saves selected dedupe collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisan_vikas_patra>" and row <Collateral_kisan_vikas_patra_rowNum>
    Then user gets a notification message
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | kisan_vikas_patra            | 15                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | kisan_vikas_patra            | 15                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | kisan_vikas_patra            | 15                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  @ImplementedBy-aditya.tomar
    @Release3
    @Sanity
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
  Scenario Outline: ACAUTOCAS-3053: User attaches a duplicate Kisan Vikas Patra collateral attached to a different application of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisan_vikas_patra>" and row 0
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral subtype kisan vikas patra
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisan_vikas_patra>" and row 0
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral subtype kisan vikas patra
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is not attached to the application
    And user saves selected dedupe collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisan_vikas_patra>" and row <Collateral_kisan_vikas_patra_rowNum>
    Then user gets a notification message
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | ProductType   | SecondaryApplicationStage | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | kisan_vikas_patra            | 16                                  | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  @Sanity
    @LoggedBug
  Scenario Outline: ACAUTOCAS-3035: User modifies Collateral Details after running dedupe for Kisan Vikas Patra and attempts to save of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisan_vikas_patra>" and row <Collateral_kisan_vikas_patra_rowNum>
    And user fills mandatory fields of collateral subtype kisan vikas patra
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisan_vikas_patra>" and row <Collateral_kisan_vikas_patra_rowNum>
    And user modifies in collateral page "<FieldModified>"
    When user saves the data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisan_vikas_patra>" and row <Collateral_kisan_vikas_patra_rowNum2>
    Then user should receive a proper failure message
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | FieldModified              | Collateral_kisan_vikas_patra_rowNum2 | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra            | 5                                   | Deposit No                 | 39                                   | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra            | 6                                   | Deposit No, Name Of Holder | 39                                   | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | FieldModified              | Collateral_kisan_vikas_patra_rowNum2 | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra            | 5                                   | Deposit No                 | 39                                   | default            | 334                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra            | 6                                   | Deposit No, Name Of Holder | 39                                   | default            | 334                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | FieldModified              | Collateral_kisan_vikas_patra_rowNum2 | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra            | 5                                   | Deposit No                 | 39                                   | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | kisan_vikas_patra            | 6                                   | Deposit No, Name Of Holder | 39                                   | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  @Sanity
    #FeatureID-ACAUTOCAS-236
  Scenario Outline: ACAUTOCAS-16835: User modifies Collateral Details after running dedupe for Kisan Vikas Patra and attempts to save of <ProductType> application at <ApplicationStage> stage for <FieldModified>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisan_vikas_patra>" and row <Collateral_kisan_vikas_patra_rowNum>
    And user fills mandatory fields of collateral subtype kisan vikas patra
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisan_vikas_patra>" and row <Collateral_kisan_vikas_patra_rowNum2>
    And user modifies in collateral page "<FieldModified>"
    And saves the data
    Then collateral should saved successfully
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | FieldModified  | Collateral_kisan_vikas_patra_rowNum2 | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra            | 4                                   | Name Of Holder | 39                                   | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | FieldModified  | Collateral_kisan_vikas_patra_rowNum2 | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra            | 4                                   | Name Of Holder | 39                                   | default            | 334                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | FieldModified  | Collateral_kisan_vikas_patra_rowNum2 | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra            | 4                                   | Name Of Holder | 39                                   | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  @Sanity
  Scenario Outline: ACAUTOCAS-3036:  User checks for duplicate collateral and ignores them to create new of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisan_vikas_patra>" and row <Collateral_kisan_vikas_patra_rowNum>
    And user fills mandatory fields of collateral subtype kisan vikas patra
    And checks for duplicate collateral
    And user views the duplicate Collaterals
    And user ignore the duplicate collaterals found
    And user saves the data
    Then user is asked to enter the reason of ignoring
    @ImplementedBy-shivam.gusain
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra            | 11                                  | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra            | 11                                  | default            | 334                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra            | 11                                  | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  Scenario Outline: ACAUTOCAS-3037:  User is able to add a new collateral as <CollateralSubType> of <ProductType> application at <ApplicationStage> stage with <Description> is <Validity> value on <Field>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 334
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisan_vikas_patra>" and row <Collateral_kisan_vikas_patra_rowNum>
    And user adds collateral all fields based on "<CollateralSubType>" subtype of collateral type
    And user checks the duplicates on collateral dedupe check
    When user saves the data
    Then user is able to validate the addition of new collateral for "<Validity>" data
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Description                                                 | Field             | Validity |
      | collateral.xlsx | kisan_vikas_patra            | 177                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Alphanumeric characters with hyphens, spaces.               | collateral_ref_no | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 178                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains underscores (not allowed).                         | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 179                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains hash symbol (#) (not allowed).                     | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 180                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains dollar symbol ($) (not allowed).                   | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 181                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains at symbol (@) (not allowed).                       | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 182                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains at symbol (@) (not allowed).                       | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 183                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains forward slash (/) (not allowed).                   | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 184                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains ampersand symbol (&) (not allowed).                | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 185                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains dollar symbol ($) (not allowed).                   | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 186                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains leading and trailing hyphens (not allowed).        | collateral_ref_no | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 187                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Leading space (not allowed).                                | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 188                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Missing spaces or hyphens (invalid format).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 189                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains caret symbol (^) (not allowed).                    | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 190                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains exclamation mark (!) (not allowed).                | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 191                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains asterisk symbol (*) (not allowed).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 192                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains double period (..) (not allowed).                  | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 193                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Placeholder text for testing.                               | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 194                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Alphanumeric text with spaces and a hyphen.                 | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 195                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains HTML tags (likely should be filtered).             | description       | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 196                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Includes quotation marks (may be restricted in some cases). | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 197                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Only special characters, which are likely inappropriate.    | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 198                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains backticks (special characters).                    | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 199                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains JavaScript code (security risk).                   | description       | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 200                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Just ellipsis (too short or incomplete).                    | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 201                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Triple square brackets (unusual characters).                | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 202                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Includes curly braces (potentially non-allowed).            | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 203                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains HTML escape codes (&lt;, &gt;).                    | description       | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 204                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                      | name_of_holder    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 205                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 206                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                     | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 207                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                           | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 208                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                      | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 209                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a space between names.                             | name_of_holder    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 210                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                                 | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 211                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a space between the first and last name.           | name_of_holder    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 212                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 213                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a number (0).                                      | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 214                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                      | name_of_holder_2  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 215                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 216                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                     | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 217                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                           | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 218                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                      | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 219                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a space between names.                             | name_of_holder_2  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 220                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                                 | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 221                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a space between the first and last name.           | name_of_holder_2  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 222                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 223                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a number (0).                                      | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 224                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                      | name_of_holder_3  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 225                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 226                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                     | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 227                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                           | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 228                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                      | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 229                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a space between names.                             | name_of_holder_3  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 230                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                                 | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 231                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a space between the first and last name.           | name_of_holder_3  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 232                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 233                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a number (0).                                      | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 234                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters, slash, space, dot, and numbers.                    | deposit_no        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 235                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains lowercase letters (abc).                           | deposit_no        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 236                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (@).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 237                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (#).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 238                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains underscore (_).                                    | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 239                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (#).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 240                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (^).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 241                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains lowercase letter (a).                              | deposit_no        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 242                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (@).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 243                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (&).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 244                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains underscore (_).                                    | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 245                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Exactly 18 digits before the decimal.                       | deposit_amount    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 246                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | deposit_amount    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 247                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 248                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 249                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 250                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 252                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 253                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 254                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 255                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 256                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 257                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Exactly 18 digits before the decimal.                       | maturity_amount   | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 258                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | maturity_amount   | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 259                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 260                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 261                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 262                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 264                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 265                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 266                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 267                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 268                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 269                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid date in August.                                     | issue_date        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 270                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains letters (ab, cd, efgh) instead of numbers.         | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 271                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (#) in the month field.         | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 272                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Jan) instead of digits for the month.   | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 273                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (!@) in the month field.        | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 274                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (abcd) in the year field.                | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 275                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters ($$$) in the year field.        | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 276                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (!) before the day field.                 | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 277                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Feb) for the month.                     | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 278                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (*&^%$#) in the year field.              | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 279                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid day (33 is not a valid day).                        | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 280                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid month (13 is not a valid month).                    | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 281                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Double slashes (//) instead of the valid date format.       | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 282                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character ($) in the year field.                    | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 283                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the month field.                   | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 284                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Extra special character (*) between the date fields.        | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 285                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (XYZ) in place of the day.                          | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 286                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the year field.                    | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 287                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (@@) in the month field.                 | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 288                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (A) in the day field.                               | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 289                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid date in August.                                     | maturity_date     | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 290                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains letters (ab, cd, efgh) instead of numbers.         | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 291                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (#) in the month field.         | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 292                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Jan) instead of digits for the month.   | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 293                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (!@) in the month field.        | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 294                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (abcd) in the year field.                | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 295                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters ($$$) in the year field.        | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 296                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (!) before the day field.                 | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 297                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Feb) for the month.                     | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 298                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (*&^%$#) in the year field.              | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 299                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid day (33 is not a valid day).                        | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 300                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid month (13 is not a valid month).                    | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 301                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Double slashes (//) instead of the valid date format.       | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 302                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character ($) in the year field.                    | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 303                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the month field.                   | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 304                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Extra special character (*) between the date fields.        | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 305                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (XYZ) in place of the day.                          | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 306                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the year field.                    | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 307                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (@@) in the month field.                 | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 308                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (A) in the day field.                               | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 309                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | face_value        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 310                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 311                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 312                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 313                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 315                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 316                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 317                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 318                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 319                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 320                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | accrued_value     | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 321                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 322                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 323                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 324                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 326                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 327                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 328                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 329                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 330                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 331                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | maturity_value    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 332                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 333                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 334                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 335                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 337                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 338                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 339                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 340                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 341                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | maturity_value    | Invalid  |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Description                                                 | Field             | Validity |
      | collateral.xlsx | kisan_vikas_patra            | 177                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Alphanumeric characters with hyphens, spaces.               | collateral_ref_no | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 178                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains underscores (not allowed).                         | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 179                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains hash symbol (#) (not allowed).                     | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 180                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains dollar symbol ($) (not allowed).                   | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 181                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains at symbol (@) (not allowed).                       | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 182                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains at symbol (@) (not allowed).                       | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 183                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains forward slash (/) (not allowed).                   | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 184                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains ampersand symbol (&) (not allowed).                | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 185                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains dollar symbol ($) (not allowed).                   | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 186                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains leading and trailing hyphens (not allowed).        | collateral_ref_no | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 187                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Leading space (not allowed).                                | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 188                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Missing spaces or hyphens (invalid format).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 189                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains caret symbol (^) (not allowed).                    | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 190                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains exclamation mark (!) (not allowed).                | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 191                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains asterisk symbol (*) (not allowed).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 192                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains double period (..) (not allowed).                  | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 193                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Placeholder text for testing.                               | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 194                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Alphanumeric text with spaces and a hyphen.                 | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 195                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains HTML tags (likely should be filtered).             | description       | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 196                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Includes quotation marks (may be restricted in some cases). | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 197                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Only special characters, which are likely inappropriate.    | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 198                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains backticks (special characters).                    | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 199                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains JavaScript code (security risk).                   | description       | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 200                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Just ellipsis (too short or incomplete).                    | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 201                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Triple square brackets (unusual characters).                | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 202                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Includes curly braces (potentially non-allowed).            | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 203                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains HTML escape codes (&lt;, &gt;).                    | description       | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 204                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                      | name_of_holder    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 205                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 206                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                     | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 207                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                           | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 208                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                      | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 209                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a space between names.                             | name_of_holder    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 210                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                                 | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 211                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a space between the first and last name.           | name_of_holder    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 212                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 213                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a number (0).                                      | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 214                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                      | name_of_holder_2  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 215                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 216                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                     | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 217                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                           | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 218                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                      | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 219                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a space between names.                             | name_of_holder_2  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 220                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                                 | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 221                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a space between the first and last name.           | name_of_holder_2  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 222                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 223                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a number (0).                                      | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 224                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                      | name_of_holder_3  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 225                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 226                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                     | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 227                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                           | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 228                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                      | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 229                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a space between names.                             | name_of_holder_3  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 230                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                                 | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 231                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a space between the first and last name.           | name_of_holder_3  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 232                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 233                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a number (0).                                      | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 234                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Letters, slash, space, dot, and numbers.                    | deposit_no        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 235                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains lowercase letters (abc).                           | deposit_no        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 236                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special character (@).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 237                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special character (#).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 238                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains underscore (_).                                    | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 239                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special character (#).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 240                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special character (^).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 241                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains lowercase letter (a).                              | deposit_no        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 242                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special character (@).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 243                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special character (&).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 244                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains underscore (_).                                    | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 245                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Exactly 18 digits before the decimal.                       | deposit_amount    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 246                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | deposit_amount    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 247                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 248                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 249                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 250                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 252                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 253                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 254                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 255                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 256                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 257                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Exactly 18 digits before the decimal.                       | maturity_amount   | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 258                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | maturity_amount   | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 259                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 260                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 261                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 262                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 264                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 265                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 266                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 267                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 268                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 269                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid date in August.                                     | issue_date        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 270                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains letters (ab, cd, efgh) instead of numbers.         | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 271                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special characters (#) in the month field.         | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 272                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains alphabets (Jan) instead of digits for the month.   | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 273                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special characters (!@) in the month field.        | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 274                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains alphabets (abcd) in the year field.                | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 275                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special characters ($$$) in the year field.        | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 276                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character (!) before the day field.                 | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 277                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains alphabets (Feb) for the month.                     | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 278                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special characters (*&^%$#) in the year field.              | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 279                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Invalid day (33 is not a valid day).                        | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 280                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Invalid month (13 is not a valid month).                    | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 281                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Double slashes (//) instead of the valid date format.       | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 282                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character ($) in the year field.                    | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 283                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character (#) in the month field.                   | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 284                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Extra special character (*) between the date fields.        | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 285                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Letters (XYZ) in place of the day.                          | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 286                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character (#) in the year field.                    | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 287                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special characters (@@) in the month field.                 | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 288                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Letters (A) in the day field.                               | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 289                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid date in August.                                     | maturity_date     | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 290                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains letters (ab, cd, efgh) instead of numbers.         | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 291                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special characters (#) in the month field.         | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 292                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains alphabets (Jan) instead of digits for the month.   | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 293                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special characters (!@) in the month field.        | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 294                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains alphabets (abcd) in the year field.                | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 295                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special characters ($$$) in the year field.        | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 296                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character (!) before the day field.                 | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 297                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains alphabets (Feb) for the month.                     | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 298                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special characters (*&^%$#) in the year field.              | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 299                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Invalid day (33 is not a valid day).                        | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 300                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Invalid month (13 is not a valid month).                    | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 301                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Double slashes (//) instead of the valid date format.       | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 302                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character ($) in the year field.                    | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 303                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character (#) in the month field.                   | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 304                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Extra special character (*) between the date fields.        | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 305                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Letters (XYZ) in place of the day.                          | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 306                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character (#) in the year field.                    | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 307                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special characters (@@) in the month field.                 | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 308                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Letters (A) in the day field.                               | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 309                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | face_value        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 310                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 311                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 312                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 313                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 315                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 316                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 317                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 318                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 319                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 320                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | accrued_value     | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 321                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 322                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 323                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 324                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 326                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 327                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 328                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 329                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 330                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 331                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | maturity_value    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 332                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 333                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 334                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 335                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 337                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 338                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 339                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 340                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 341                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | maturity_value    | Invalid  |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Description                                                 | Field             | Validity |
      | collateral.xlsx | kisan_vikas_patra            | 177                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Alphanumeric characters with hyphens, spaces.               | collateral_ref_no | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 178                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains underscores (not allowed).                         | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 179                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains hash symbol (#) (not allowed).                     | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 180                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains dollar symbol ($) (not allowed).                   | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 181                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains at symbol (@) (not allowed).                       | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 182                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains at symbol (@) (not allowed).                       | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 183                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains forward slash (/) (not allowed).                   | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 184                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains ampersand symbol (&) (not allowed).                | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 185                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains dollar symbol ($) (not allowed).                   | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 186                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains leading and trailing hyphens (not allowed).        | collateral_ref_no | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 187                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Leading space (not allowed).                                | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 188                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Missing spaces or hyphens (invalid format).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 189                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains caret symbol (^) (not allowed).                    | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 190                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains exclamation mark (!) (not allowed).                | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 191                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains asterisk symbol (*) (not allowed).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 192                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains double period (..) (not allowed).                  | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 193                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Placeholder text for testing.                               | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 194                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Alphanumeric text with spaces and a hyphen.                 | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 195                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains HTML tags (likely should be filtered).             | description       | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 196                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Includes quotation marks (may be restricted in some cases). | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 197                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Only special characters, which are likely inappropriate.    | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 198                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains backticks (special characters).                    | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 199                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains JavaScript code (security risk).                   | description       | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 200                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Just ellipsis (too short or incomplete).                    | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 201                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Triple square brackets (unusual characters).                | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 202                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Includes curly braces (potentially non-allowed).            | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 203                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains HTML escape codes (&lt;, &gt;).                    | description       | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 204                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                      | name_of_holder    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 205                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 206                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                     | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 207                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                           | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 208                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                      | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 209                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a space between names.                             | name_of_holder    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 210                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                                 | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 211                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a space between the first and last name.           | name_of_holder    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 212                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 213                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a number (0).                                      | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 214                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                      | name_of_holder_2  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 215                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 216                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                     | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 217                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                           | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 218                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                      | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 219                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a space between names.                             | name_of_holder_2  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 220                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                                 | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 221                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a space between the first and last name.           | name_of_holder_2  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 222                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 223                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a number (0).                                      | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 224                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                      | name_of_holder_3  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 225                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 226                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                     | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 227                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                           | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 228                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                      | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 229                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a space between names.                             | name_of_holder_3  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 230                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                                 | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 231                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a space between the first and last name.           | name_of_holder_3  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 232                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 233                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a number (0).                                      | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 234                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters, slash, space, dot, and numbers.                    | deposit_no        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 235                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains lowercase letters (abc).                           | deposit_no        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 236                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (@).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 237                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (#).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 238                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains underscore (_).                                    | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 239                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (#).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 240                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (^).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 241                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains lowercase letter (a).                              | deposit_no        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 242                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (@).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 243                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (&).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 244                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains underscore (_).                                    | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 245                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Exactly 18 digits before the decimal.                       | deposit_amount    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 246                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | deposit_amount    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 247                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 248                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 249                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 250                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 252                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 253                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 254                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 255                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 256                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 257                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Exactly 18 digits before the decimal.                       | maturity_amount   | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 258                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | maturity_amount   | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 259                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 260                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 261                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 262                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 264                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 265                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 266                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 267                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 268                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 269                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid date in August.                                     | issue_date        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 270                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains letters (ab, cd, efgh) instead of numbers.         | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 271                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (#) in the month field.         | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 272                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Jan) instead of digits for the month.   | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 273                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (!@) in the month field.        | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 274                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (abcd) in the year field.                | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 275                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters ($$$) in the year field.        | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 276                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (!) before the day field.                 | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 277                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Feb) for the month.                     | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 278                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (*&^%$#) in the year field.              | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 279                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid day (33 is not a valid day).                        | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 280                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid month (13 is not a valid month).                    | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 281                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Double slashes (//) instead of the valid date format.       | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 282                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character ($) in the year field.                    | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 283                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the month field.                   | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 284                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Extra special character (*) between the date fields.        | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 285                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (XYZ) in place of the day.                          | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 286                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the year field.                    | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 287                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (@@) in the month field.                 | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 288                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (A) in the day field.                               | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 289                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid date in August.                                     | maturity_date     | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 290                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains letters (ab, cd, efgh) instead of numbers.         | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 291                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (#) in the month field.         | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 292                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Jan) instead of digits for the month.   | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 293                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (!@) in the month field.        | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 294                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (abcd) in the year field.                | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 295                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters ($$$) in the year field.        | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 296                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (!) before the day field.                 | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 297                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Feb) for the month.                     | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 298                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (*&^%$#) in the year field.              | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 299                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid day (33 is not a valid day).                        | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 300                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid month (13 is not a valid month).                    | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 301                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Double slashes (//) instead of the valid date format.       | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 302                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character ($) in the year field.                    | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 303                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the month field.                   | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 304                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Extra special character (*) between the date fields.        | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 305                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (XYZ) in place of the day.                          | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 306                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the year field.                    | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 307                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (@@) in the month field.                 | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 308                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (A) in the day field.                               | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 309                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | face_value        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 310                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 311                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 312                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 313                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 315                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 316                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 317                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 318                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 319                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 320                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | accrued_value     | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 321                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 322                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 323                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 324                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 326                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 327                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 328                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 329                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 330                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 331                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | maturity_value    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 332                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 333                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 334                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 335                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 337                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 338                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 339                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 340                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 341                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | maturity_value    | Invalid  |

  Scenario Outline: ACAUTOCAS-3038:  User is able to add a new collateral with new Global Collateral Number on <CollateralSubType> of <ProductType> application at <ApplicationStage> stage with <Description> is <Validity> value on <Field>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 334
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisan_vikas_patra>" and row <Collateral_kisan_vikas_patra_rowNum>
    And user adds collateral all fields based on "<CollateralSubType>" subtype of collateral type
    And user checks the duplicates on collateral dedupe check
    When user saves the data of collateral subtype
    Then collateral should be attached to the application with new Global Collateral Number on "<Validity>"
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Description                                                 | Field             | Validity |
      | collateral.xlsx | kisan_vikas_patra            | 177                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Alphanumeric characters with hyphens, spaces.               | collateral_ref_no | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 178                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains underscores (not allowed).                         | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 179                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains hash symbol (#) (not allowed).                     | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 180                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains dollar symbol ($) (not allowed).                   | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 181                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains at symbol (@) (not allowed).                       | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 182                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains at symbol (@) (not allowed).                       | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 183                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains forward slash (/) (not allowed).                   | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 184                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains ampersand symbol (&) (not allowed).                | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 185                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains dollar symbol ($) (not allowed).                   | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 186                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains leading and trailing hyphens (not allowed).        | collateral_ref_no | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 187                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Leading space (not allowed).                                | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 188                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Missing spaces or hyphens (invalid format).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 189                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains caret symbol (^) (not allowed).                    | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 190                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains exclamation mark (!) (not allowed).                | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 191                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains asterisk symbol (*) (not allowed).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 192                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains double period (..) (not allowed).                  | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 193                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Placeholder text for testing.                               | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 194                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Alphanumeric text with spaces and a hyphen.                 | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 195                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains HTML tags (likely should be filtered).             | description       | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 196                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Includes quotation marks (may be restricted in some cases). | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 197                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Only special characters, which are likely inappropriate.    | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 198                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains backticks (special characters).                    | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 199                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains JavaScript code (security risk).                   | description       | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 200                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Just ellipsis (too short or incomplete).                    | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 201                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Triple square brackets (unusual characters).                | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 202                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Includes curly braces (potentially non-allowed).            | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 203                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains HTML escape codes (&lt;, &gt;).                    | description       | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 204                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                      | name_of_holder    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 205                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 206                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                     | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 207                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                           | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 208                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                      | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 209                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a space between names.                             | name_of_holder    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 210                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                                 | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 211                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a space between the first and last name.           | name_of_holder    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 212                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 213                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a number (0).                                      | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 214                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                      | name_of_holder_2  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 215                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 216                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                     | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 217                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                           | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 218                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                      | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 219                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a space between names.                             | name_of_holder_2  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 220                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                                 | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 221                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a space between the first and last name.           | name_of_holder_2  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 222                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 223                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a number (0).                                      | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 224                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                      | name_of_holder_3  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 225                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 226                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                     | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 227                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                           | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 228                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                      | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 229                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a space between names.                             | name_of_holder_3  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 230                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                                 | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 231                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a space between the first and last name.           | name_of_holder_3  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 232                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 233                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a number (0).                                      | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 234                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters, slash, space, dot, and numbers.                    | deposit_no        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 235                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains lowercase letters (abc).                           | deposit_no        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 236                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (@).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 237                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (#).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 238                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains underscore (_).                                    | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 239                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (#).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 240                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (^).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 241                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains lowercase letter (a).                              | deposit_no        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 242                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (@).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 243                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (&).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 244                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains underscore (_).                                    | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 245                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Exactly 18 digits before the decimal.                       | deposit_amount    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 246                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | deposit_amount    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 247                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 248                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 249                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 250                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 252                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 253                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 254                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 255                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 256                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 257                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Exactly 18 digits before the decimal.                       | maturity_amount   | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 258                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | maturity_amount   | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 259                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 260                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 261                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 262                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 264                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 265                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 266                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 267                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 268                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 269                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid date in August.                                     | issue_date        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 270                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains letters (ab, cd, efgh) instead of numbers.         | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 271                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (#) in the month field.         | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 272                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Jan) instead of digits for the month.   | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 273                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (!@) in the month field.        | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 274                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (abcd) in the year field.                | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 275                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters ($$$) in the year field.        | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 276                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (!) before the day field.                 | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 277                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Feb) for the month.                     | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 278                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (*&^%$#) in the year field.              | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 279                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid day (33 is not a valid day).                        | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 280                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid month (13 is not a valid month).                    | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 281                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Double slashes (//) instead of the valid date format.       | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 282                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character ($) in the year field.                    | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 283                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the month field.                   | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 284                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Extra special character (*) between the date fields.        | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 285                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (XYZ) in place of the day.                          | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 286                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the year field.                    | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 287                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (@@) in the month field.                 | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 288                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (A) in the day field.                               | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 289                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid date in August.                                     | maturity_date     | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 290                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains letters (ab, cd, efgh) instead of numbers.         | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 291                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (#) in the month field.         | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 292                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Jan) instead of digits for the month.   | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 293                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (!@) in the month field.        | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 294                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (abcd) in the year field.                | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 295                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters ($$$) in the year field.        | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 296                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (!) before the day field.                 | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 297                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Feb) for the month.                     | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 298                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (*&^%$#) in the year field.              | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 299                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid day (33 is not a valid day).                        | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 300                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid month (13 is not a valid month).                    | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 301                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Double slashes (//) instead of the valid date format.       | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 302                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character ($) in the year field.                    | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 303                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the month field.                   | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 304                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Extra special character (*) between the date fields.        | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 305                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (XYZ) in place of the day.                          | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 306                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the year field.                    | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 307                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (@@) in the month field.                 | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 308                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (A) in the day field.                               | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 309                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | face_value        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 310                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 311                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 312                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 313                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 315                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 316                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 317                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 318                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 319                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 320                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | accrued_value     | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 321                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 322                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 323                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 324                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 326                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 327                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 328                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 329                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 330                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 331                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | maturity_value    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 332                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 333                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 334                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 335                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 337                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 338                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 339                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 340                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 341                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | maturity_value    | Invalid  |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Description                                                 | Field             | Validity |
      | collateral.xlsx | kisan_vikas_patra            | 177                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Alphanumeric characters with hyphens, spaces.               | collateral_ref_no | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 178                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains underscores (not allowed).                         | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 179                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains hash symbol (#) (not allowed).                     | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 180                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains dollar symbol ($) (not allowed).                   | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 181                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains at symbol (@) (not allowed).                       | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 182                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains at symbol (@) (not allowed).                       | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 183                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains forward slash (/) (not allowed).                   | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 184                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains ampersand symbol (&) (not allowed).                | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 185                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains dollar symbol ($) (not allowed).                   | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 186                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains leading and trailing hyphens (not allowed).        | collateral_ref_no | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 187                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Leading space (not allowed).                                | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 188                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Missing spaces or hyphens (invalid format).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 189                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains caret symbol (^) (not allowed).                    | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 190                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains exclamation mark (!) (not allowed).                | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 191                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains asterisk symbol (*) (not allowed).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 192                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains double period (..) (not allowed).                  | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 193                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Placeholder text for testing.                               | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 194                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Alphanumeric text with spaces and a hyphen.                 | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 195                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains HTML tags (likely should be filtered).             | description       | Invalid    |
      | collateral.xlsx | kisan_vikas_patra            | 196                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Includes quotation marks (may be restricted in some cases). | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 197                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Only special characters, which are likely inappropriate.    | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 198                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains backticks (special characters).                    | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 199                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains JavaScript code (security risk).                   | description       | Invalid    |
      | collateral.xlsx | kisan_vikas_patra            | 200                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Just ellipsis (too short or incomplete).                    | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 201                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Triple square brackets (unusual characters).                | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 202                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Includes curly braces (potentially non-allowed).            | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 203                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains HTML escape codes (&lt;, &gt;).                    | description       | Invalid    |
      | collateral.xlsx | kisan_vikas_patra            | 204                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                      | name_of_holder    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 205                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 206                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                     | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 207                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                           | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 208                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                      | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 209                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a space between names.                             | name_of_holder    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 210                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                                 | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 211                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a space between the first and last name.           | name_of_holder    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 212                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 213                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a number (0).                                      | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 214                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                      | name_of_holder_2  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 215                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 216                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                     | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 217                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                           | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 218                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                      | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 219                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a space between names.                             | name_of_holder_2  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 220                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                                 | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 221                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a space between the first and last name.           | name_of_holder_2  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 222                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 223                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a number (0).                                      | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 224                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                      | name_of_holder_3  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 225                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 226                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                     | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 227                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                           | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 228                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                      | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 229                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a space between names.                             | name_of_holder_3  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 230                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                                 | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 231                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a space between the first and last name.           | name_of_holder_3  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 232                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 233                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a number (0).                                      | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 234                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Letters, slash, space, dot, and numbers.                    | deposit_no        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 235                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains lowercase letters (abc).                           | deposit_no        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 236                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special character (@).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 237                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special character (#).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 238                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains underscore (_).                                    | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 239                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special character (#).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 240                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special character (^).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 241                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains lowercase letter (a).                              | deposit_no        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 242                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special character (@).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 243                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special character (&).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 244                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains underscore (_).                                    | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 245                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Exactly 18 digits before the decimal.                       | deposit_amount    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 246                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | deposit_amount    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 247                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 248                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 249                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 250                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 252                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 253                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 254                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 255                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 256                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 257                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Exactly 18 digits before the decimal.                       | maturity_amount   | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 258                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | maturity_amount   | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 259                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 260                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 261                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 262                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 264                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 265                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 266                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 267                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 268                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 269                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid date in August.                                     | issue_date        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 270                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains letters (ab, cd, efgh) instead of numbers.         | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 271                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special characters (#) in the month field.         | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 272                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains alphabets (Jan) instead of digits for the month.   | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 273                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special characters (!@) in the month field.        | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 274                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains alphabets (abcd) in the year field.                | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 275                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special characters ($$$) in the year field.        | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 276                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character (!) before the day field.                 | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 277                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains alphabets (Feb) for the month.                     | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 278                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special characters (*&^%$#) in the year field.              | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 279                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Invalid day (33 is not a valid day).                        | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 280                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Invalid month (13 is not a valid month).                    | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 281                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Double slashes (//) instead of the valid date format.       | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 282                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character ($) in the year field.                    | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 283                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character (#) in the month field.                   | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 284                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Extra special character (*) between the date fields.        | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 285                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Letters (XYZ) in place of the day.                          | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 286                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character (#) in the year field.                    | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 287                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special characters (@@) in the month field.                 | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 288                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Letters (A) in the day field.                               | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 289                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid date in August.                                     | maturity_date     | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 290                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains letters (ab, cd, efgh) instead of numbers.         | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 291                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special characters (#) in the month field.         | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 292                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains alphabets (Jan) instead of digits for the month.   | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 293                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special characters (!@) in the month field.        | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 294                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains alphabets (abcd) in the year field.                | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 295                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special characters ($$$) in the year field.        | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 296                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character (!) before the day field.                 | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 297                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains alphabets (Feb) for the month.                     | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 298                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special characters (*&^%$#) in the year field.              | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 299                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Invalid day (33 is not a valid day).                        | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 300                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Invalid month (13 is not a valid month).                    | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 301                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Double slashes (//) instead of the valid date format.       | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 302                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character ($) in the year field.                    | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 303                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character (#) in the month field.                   | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 304                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Extra special character (*) between the date fields.        | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 305                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Letters (XYZ) in place of the day.                          | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 306                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character (#) in the year field.                    | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 307                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special characters (@@) in the month field.                 | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 308                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Letters (A) in the day field.                               | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 309                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | face_value        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 310                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 311                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 312                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 313                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 315                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 316                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 317                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 318                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 319                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 320                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | accrued_value     | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 321                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 322                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 323                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 324                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 326                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 327                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 328                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 329                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 330                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 331                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | maturity_value    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 332                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 333                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 334                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 335                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 337                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 338                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 339                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 340                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 341                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | maturity_value    | Invalid  |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Description                                                 | Field             | Validity |
      | collateral.xlsx | kisan_vikas_patra            | 177                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Alphanumeric characters with hyphens, spaces.               | collateral_ref_no | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 178                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains underscores (not allowed).                         | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 179                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains hash symbol (#) (not allowed).                     | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 180                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains dollar symbol ($) (not allowed).                   | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 181                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains at symbol (@) (not allowed).                       | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 182                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains at symbol (@) (not allowed).                       | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 183                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains forward slash (/) (not allowed).                   | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 184                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains ampersand symbol (&) (not allowed).                | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 185                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains dollar symbol ($) (not allowed).                   | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 186                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains leading and trailing hyphens (not allowed).        | collateral_ref_no | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 187                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Leading space (not allowed).                                | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 188                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Missing spaces or hyphens (invalid format).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 189                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains caret symbol (^) (not allowed).                    | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 190                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains exclamation mark (!) (not allowed).                | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 191                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains asterisk symbol (*) (not allowed).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 192                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains double period (..) (not allowed).                  | collateral_ref_no | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 193                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Placeholder text for testing.                               | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 194                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Alphanumeric text with spaces and a hyphen.                 | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 195                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains HTML tags (likely should be filtered).             | description       | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 196                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Includes quotation marks (may be restricted in some cases). | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 197                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Only special characters, which are likely inappropriate.    | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 198                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains backticks (special characters).                    | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 199                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains JavaScript code (security risk).                   | description       | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 200                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Just ellipsis (too short or incomplete).                    | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 201                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Triple square brackets (unusual characters).                | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 202                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Includes curly braces (potentially non-allowed).            | description       | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 203                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains HTML escape codes (&lt;, &gt;).                    | description       | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 204                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                      | name_of_holder    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 205                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 206                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                     | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 207                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                           | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 208                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                      | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 209                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a space between names.                             | name_of_holder    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 210                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                                 | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 211                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a space between the first and last name.           | name_of_holder    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 212                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 213                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a number (0).                                      | name_of_holder    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 214                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                      | name_of_holder_2  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 215                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 216                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                     | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 217                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                           | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 218                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                      | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 219                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a space between names.                             | name_of_holder_2  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 220                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                                 | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 221                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a space between the first and last name.           | name_of_holder_2  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 222                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 223                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a number (0).                                      | name_of_holder_2  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 224                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                      | name_of_holder_3  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 225                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 226                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                     | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 227                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                           | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 228                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                      | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 229                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a space between names.                             | name_of_holder_3  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 230                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                                 | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 231                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a space between the first and last name.           | name_of_holder_3  | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 232                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                                 | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 233                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a number (0).                                      | name_of_holder_3  | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 234                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters, slash, space, dot, and numbers.                    | deposit_no        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 235                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains lowercase letters (abc).                           | deposit_no        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 236                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (@).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 237                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (#).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 238                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains underscore (_).                                    | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 239                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (#).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 240                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (^).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 241                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains lowercase letter (a).                              | deposit_no        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 242                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (@).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 243                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (&).                             | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 244                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains underscore (_).                                    | deposit_no        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 245                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Exactly 18 digits before the decimal.                       | deposit_amount    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 246                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | deposit_amount    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 247                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 248                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 249                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 250                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 252                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 253                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 254                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 255                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 256                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | deposit_amount    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 257                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Exactly 18 digits before the decimal.                       | maturity_amount   | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 258                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | maturity_amount   | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 259                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 260                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 261                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 262                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 264                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 265                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 266                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 267                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 268                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | maturity_amount   | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 269                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid date in August.                                     | issue_date        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 270                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains letters (ab, cd, efgh) instead of numbers.         | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 271                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (#) in the month field.         | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 272                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Jan) instead of digits for the month.   | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 273                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (!@) in the month field.        | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 274                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (abcd) in the year field.                | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 275                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters ($$$) in the year field.        | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 276                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (!) before the day field.                 | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 277                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Feb) for the month.                     | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 278                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (*&^%$#) in the year field.              | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 279                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid day (33 is not a valid day).                        | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 280                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid month (13 is not a valid month).                    | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 281                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Double slashes (//) instead of the valid date format.       | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 282                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character ($) in the year field.                    | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 283                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the month field.                   | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 284                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Extra special character (*) between the date fields.        | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 285                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (XYZ) in place of the day.                          | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 286                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the year field.                    | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 287                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (@@) in the month field.                 | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 288                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (A) in the day field.                               | issue_date        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 289                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid date in August.                                     | maturity_date     | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 290                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains letters (ab, cd, efgh) instead of numbers.         | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 291                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (#) in the month field.         | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 292                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Jan) instead of digits for the month.   | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 293                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (!@) in the month field.        | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 294                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (abcd) in the year field.                | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 295                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters ($$$) in the year field.        | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 296                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (!) before the day field.                 | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 297                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Feb) for the month.                     | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 298                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (*&^%$#) in the year field.              | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 299                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid day (33 is not a valid day).                        | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 300                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid month (13 is not a valid month).                    | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 301                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Double slashes (//) instead of the valid date format.       | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 302                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character ($) in the year field.                    | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 303                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the month field.                   | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 304                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Extra special character (*) between the date fields.        | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 305                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (XYZ) in place of the day.                          | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 306                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the year field.                    | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 307                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (@@) in the month field.                 | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 308                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (A) in the day field.                               | maturity_date     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 309                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | face_value        | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 310                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 311                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 312                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 313                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 315                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 316                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 317                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 318                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 319                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | face_value        | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 320                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | accrued_value     | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 321                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 322                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 323                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 324                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 326                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 327                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 328                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 329                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 330                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | accrued_value     | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 331                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.         | maturity_value    | Valid    |
      | collateral.xlsx | kisan_vikas_patra            | 332                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 333                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                              | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 334                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 335                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).         | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 337                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits before decimal.    | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 338                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before decimal (20 digits).             | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 339                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | 19 digits before the decimal.                               | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 340                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (20 digits).         | maturity_value    | Invalid  |
      | collateral.xlsx | kisan_vikas_patra            | 341                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number with more than 18 digits.                   | maturity_value    | Invalid  |

  @Sanity
  Scenario Outline: ACAUTOCAS-3039:  Capture Kisan Vikas Patra against an application with create another after this one of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user selects create another after this one option
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisan_vikas_patra>" and row <Collateral_kisan_vikas_patra_rowNum>
    And user fills mandatory fields of collateral subtype kisan vikas patra
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user gets saved successfully message
    Then CollateralPage remains available to create another collateral
    @ImplementedBy-shivam.gusain
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra            | 10                                  | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra            | 10                                  | default            | 334                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | kisan_vikas_patra            | 10                                  | default            | 334                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

 
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:["Kisan Vikas Patra"]}
###Squash:137607
###Story:CAS-23473
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-236,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16836: user adds multiple collateral to <ProductType> application at <ApplicationStage> stage with sub type as "Kisan Vikas Patra"
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    When user adds deposit type collateral of "<CollateralSubType>" subtype
      | collateral.xlsx | kisan_vikas_patra | 0  |
      | collateral.xlsx | kisan_vikas_patra | 1  |
      | collateral.xlsx | kisan_vikas_patra | 2  |
      | collateral.xlsx | kisan_vikas_patra | 3  |
      | collateral.xlsx | kisan_vikas_patra | 4  |
      | collateral.xlsx | kisan_vikas_patra | 5  |
      | collateral.xlsx | kisan_vikas_patra | 6  |
      | collateral.xlsx | kisan_vikas_patra | 7  |
      | collateral.xlsx | kisan_vikas_patra | 8  |
      | collateral.xlsx | kisan_vikas_patra | 9  |
      | collateral.xlsx | kisan_vikas_patra | 10 |
    Then user check the all added collateral to application
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

 
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval","Disbursal Initiation"]}
# ${CollType:[]}
# ${CollSubType:["Kisan Vikas Patra"]}
###Squash:137607
###Story:CAS-23473
###Bug:
#FeatureID-ACAUTOCAS-236,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16837: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as <CollSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    When user fills mandatory fields of collateral details to attach collateral from the excel file "<CollateralWB>":
      | SourceSheet       | SourceSheetRow | CollSubType       |
      | kisan_vikas_patra | 0              | Kisan Vikas Patra |
      | kisan_vikas_patra | 1              | Kisan Vikas Patra |
      | kisan_vikas_patra | 2              | Kisan Vikas Patra |
      | kisan_vikas_patra | 3              | Kisan Vikas Patra |
      | kisan_vikas_patra | 4              | Kisan Vikas Patra |
      | kisan_vikas_patra | 5              | Kisan Vikas Patra |
      | kisan_vikas_patra | 6              | Kisan Vikas Patra |
      | kisan_vikas_patra | 7              | Kisan Vikas Patra |
    Then user should be able to reconcile the data for below mentioned collaterals successfully from the excel file "<CollateralWB>":
      | SourceSheet       | SourceSheetRow | CollSubType       |
      | kisan_vikas_patra | 0              | Kisan Vikas Patra |
      | kisan_vikas_patra | 1              | Kisan Vikas Patra |
      | kisan_vikas_patra | 2              | Kisan Vikas Patra |
      | kisan_vikas_patra | 3              | Kisan Vikas Patra |
      | kisan_vikas_patra | 4              | Kisan Vikas Patra |
      | kisan_vikas_patra | 5              | Kisan Vikas Patra |
      | kisan_vikas_patra | 6              | Kisan Vikas Patra |
      | kisan_vikas_patra | 7              | Kisan Vikas Patra |
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx |

 
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval","Disbursal Initiation"]}
# ${CollType:[]}
# ${CollSubType:["Kisan Vikas Patra"]}
###Squash:137607
###Story:CAS-23473
###Bug:
#FeatureID-ACAUTOCAS-236,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16838: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type for <CollateralSubType> at Enquiry with <Collateral_propertyDetails_rowNum>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user fills mandatory fields of collateral details to attach collateral from the excel file "<CollateralWB>":
      | SourceSheet       | SourceSheetRow | CollSubType       |
      | kisan_vikas_patra | 349            | Kisan Vikas Patra |
      | kisan_vikas_patra | 350            | Kisan Vikas Patra |
      | kisan_vikas_patra | 351            | Kisan Vikas Patra |
      | kisan_vikas_patra | 352            | Kisan Vikas Patra |
      | kisan_vikas_patra | 353            | Kisan Vikas Patra |
      | kisan_vikas_patra | 354            | Kisan Vikas Patra |
      | kisan_vikas_patra | 355            | Kisan Vikas Patra |
      | kisan_vikas_patra | 356            | Kisan Vikas Patra |
    And user opens application from enquiry menu
    When user opens Collateral Page for viewing attached collaterals at "<ApplicationStage>"
    Then user should be able to reconcile the data for below mentioned collaterals successfully from the excel file "<CollateralWB>":
      | SourceSheet       | SourceSheetRow | CollSubType       |
      | kisan_vikas_patra | 349            | Kisan Vikas Patra |
      | kisan_vikas_patra | 350            | Kisan Vikas Patra |
      | kisan_vikas_patra | 351            | Kisan Vikas Patra |
      | kisan_vikas_patra | 352            | Kisan Vikas Patra |
      | kisan_vikas_patra | 353            | Kisan Vikas Patra |
      | kisan_vikas_patra | 354            | Kisan Vikas Patra |
      | kisan_vikas_patra | 355            | Kisan Vikas Patra |
      | kisan_vikas_patra | 356            | Kisan Vikas Patra |

      @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx |

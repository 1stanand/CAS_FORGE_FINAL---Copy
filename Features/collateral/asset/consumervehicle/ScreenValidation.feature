@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedByDEV
@ReviewedSecCollateral
@Part-2
#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
#${CollateralSubType:["Consumer Vehicle"]}
#${ApplicantType:["indiv","nonindiv"]}

Feature: Consumer Vehicle Screen Validation

#  Pre-Requisites---
#  In this feature we will validate the screen layout when an Asset Consumer Vehicle is attached to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-2153: user selects collateral type as Asset for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Default_rowNum>
    When user attempts to select a collateral type
    Then application should allow only the type which is linked to the product
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_Default | Collateral_Default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | CollateralWB    | Collateral_Default | Collateral_Default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_Default | Collateral_Default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  Scenario Outline: ACAUTOCAS-2154: user chooses sub collateral as <CollateralSubType> of <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to capture the collateral sub type
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_Default | Collateral_Default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | CollateralWB    | Collateral_Default | Collateral_Default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_Default | Collateral_Default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2952: User is able to see <EntityName> section for new collateral <CollateralSubType> in Vehicle Details of <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<EntityName>"
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | EntityName                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | Vehicle Details           | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | RC Authentication Details | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | PPSR Registration Details | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Invoice Details           | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | EntityName                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | Vehicle Details           | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | RC Authentication Details | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | PPSR Registration Details | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Invoice Details           | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | EntityName                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | Vehicle Details           | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | RC Authentication Details | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | PPSR Registration Details | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Invoice Details           | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2501:  user is able to see <FieldName> field for new collateral <CollateralSubType> of <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName      | Mandatory | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | Asset Category | mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Manufacturer   | mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Model    | mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Cost     | mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | FieldName      | Mandatory | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | Asset Category | mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Manufacturer   | mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Model    | mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Cost     | mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName      | Mandatory | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | Asset Category | mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Manufacturer   | mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Model    | mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Cost     | mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1229: User is able to see <FieldName> field for new collateral <CollateralSubType> of <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName              | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | Asset Category         | mandatory     | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Manufacturer           | mandatory     | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Model            | mandatory     | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Level            | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Variant          | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Overall Accepted Value | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Usage            | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Location         | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Cost             | mandatory     | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Collateral Ref No      | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Description            | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Reason Code            | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Reason Description     | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Remarks                | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | FieldName              | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | Asset Category         | mandatory     | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Manufacturer           | mandatory     | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Model            | mandatory     | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Level            | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Variant          | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Overall Accepted Value | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Usage            | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Location         | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Cost             | mandatory     | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Collateral Ref No      | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Description            | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Reason Code            | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Reason Description     | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Remarks                | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName              | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | Asset Category         | mandatory     | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Manufacturer           | mandatory     | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Model            | mandatory     | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Level            | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Variant          | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Overall Accepted Value | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Usage            | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Location         | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Cost             | mandatory     | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Collateral Ref No      | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Description            | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Reason Code            | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Reason Description     | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Remarks                | non mandatory | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2156: CollateralPage asset details <Validity> <FieldName> with <InputType> validation for collateral Sub Type <CollateralSubType> of <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | Validity | FieldName              | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | valid    | Collateral Ref No      | positive digits                  | does not throw any error        | collateral.xlsx | default            | 351                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | characters                       | does not throw any error        | collateral.xlsx | default            | 352                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 353                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | negative                         | does not throw any error        | collateral.xlsx | default            | 354                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | hyphen                           | does not throw any error        | collateral.xlsx | default            | 355                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | space                            | does not throw any error        | collateral.xlsx | default            | 356                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | positive digits                  | does not throw any error        | collateral.xlsx | default            | 357                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | characters                       | does not throw any error        | collateral.xlsx | default            | 358                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 359                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | negative                         | does not throw any error        | collateral.xlsx | default            | 360                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | space                            | does not throw any error        | collateral.xlsx | default            | 361                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | special characters except hyphen | does not throw any error        | collateral.xlsx | default            | 362                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | OLV Grid Value         | positive digits                  | does not throw any error        | collateral.xlsx | default            | 740                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | characters                       | throws error with error message | collateral.xlsx | default            | 741                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | both digits and characters       | throws error with error message | collateral.xlsx | default            | 742                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | negative                         | throws error with error message | collateral.xlsx | default            | 743                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | hyphen                           | throws error with error message | collateral.xlsx | default            | 744                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | space                            | throws error with error message | collateral.xlsx | default            | 745                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | special characters               | throws error with error message | collateral.xlsx | default            | 746                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Insured Declared Value | positive digits                  | does not throw any error        | collateral.xlsx | default            | 747                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | characters                       | throws error with error message | collateral.xlsx | default            | 748                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | both digits and characters       | throws error with error message | collateral.xlsx | default            | 749                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | negative                         | throws error with error message | collateral.xlsx | default            | 750                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | hyphen                           | throws error with error message | collateral.xlsx | default            | 751                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | space                            | throws error with error message | collateral.xlsx | default            | 752                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | special characters               | throws error with error message | collateral.xlsx | default            | 753                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Asset Cost             | positive digits                  | does not throw any error        | collateral.xlsx | default            | 754                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | characters                       | throws error with error message | collateral.xlsx | default            | 755                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | both digits and characters       | throws error with error message | collateral.xlsx | default            | 756                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | negative                         | throws error with error message | collateral.xlsx | default            | 757                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | hyphen                           | throws error with error message | collateral.xlsx | default            | 758                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | space                            | throws error with error message | collateral.xlsx | default            | 759                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | special characters               | throws error with error message | collateral.xlsx | default            | 760                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | Validity | FieldName              | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | valid    | Collateral Ref No      | positive digits                  | does not throw any error        | collateral.xlsx | default            | 351                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | characters                       | does not throw any error        | collateral.xlsx | default            | 352                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 353                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | negative                         | does not throw any error        | collateral.xlsx | default            | 354                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | hyphen                           | does not throw any error        | collateral.xlsx | default            | 355                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | space                            | does not throw any error        | collateral.xlsx | default            | 356                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | positive digits                  | does not throw any error        | collateral.xlsx | default            | 357                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | characters                       | does not throw any error        | collateral.xlsx | default            | 358                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 359                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | negative                         | does not throw any error        | collateral.xlsx | default            | 360                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | space                            | does not throw any error        | collateral.xlsx | default            | 361                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | special characters except hyphen | does not throw any error        | collateral.xlsx | default            | 362                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | OLV Grid Value         | positive digits                  | does not throw any error        | collateral.xlsx | default            | 740                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | characters                       | throws error with error message | collateral.xlsx | default            | 741                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | both digits and characters       | throws error with error message | collateral.xlsx | default            | 742                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | negative                         | throws error with error message | collateral.xlsx | default            | 743                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | hyphen                           | throws error with error message | collateral.xlsx | default            | 744                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | space                            | throws error with error message | collateral.xlsx | default            | 745                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | special characters               | throws error with error message | collateral.xlsx | default            | 746                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Insured Declared Value | positive digits                  | does not throw any error        | collateral.xlsx | default            | 747                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | characters                       | throws error with error message | collateral.xlsx | default            | 748                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | both digits and characters       | throws error with error message | collateral.xlsx | default            | 749                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | negative                         | throws error with error message | collateral.xlsx | default            | 750                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | hyphen                           | throws error with error message | collateral.xlsx | default            | 751                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | space                            | throws error with error message | collateral.xlsx | default            | 752                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | special characters               | throws error with error message | collateral.xlsx | default            | 753                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Asset Cost             | positive digits                  | does not throw any error        | collateral.xlsx | default            | 754                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | characters                       | throws error with error message | collateral.xlsx | default            | 755                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | both digits and characters       | throws error with error message | collateral.xlsx | default            | 756                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | negative                         | throws error with error message | collateral.xlsx | default            | 757                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | hyphen                           | throws error with error message | collateral.xlsx | default            | 758                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | space                            | throws error with error message | collateral.xlsx | default            | 759                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | special characters               | throws error with error message | collateral.xlsx | default            | 760                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName              | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | valid    | Collateral Ref No      | positive digits                  | does not throw any error        | collateral.xlsx | default            | 351                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | characters                       | does not throw any error        | collateral.xlsx | default            | 352                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 353                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | negative                         | does not throw any error        | collateral.xlsx | default            | 354                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | hyphen                           | does not throw any error        | collateral.xlsx | default            | 355                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | space                            | does not throw any error        | collateral.xlsx | default            | 356                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | positive digits                  | does not throw any error        | collateral.xlsx | default            | 357                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | characters                       | does not throw any error        | collateral.xlsx | default            | 358                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 359                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | negative                         | does not throw any error        | collateral.xlsx | default            | 360                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | space                            | does not throw any error        | collateral.xlsx | default            | 361                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | special characters except hyphen | does not throw any error        | collateral.xlsx | default            | 362                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | OLV Grid Value         | positive digits                  | does not throw any error        | collateral.xlsx | default            | 740                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | characters                       | throws error with error message | collateral.xlsx | default            | 741                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | both digits and characters       | throws error with error message | collateral.xlsx | default            | 742                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | negative                         | throws error with error message | collateral.xlsx | default            | 743                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | hyphen                           | throws error with error message | collateral.xlsx | default            | 744                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | space                            | throws error with error message | collateral.xlsx | default            | 745                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | special characters               | throws error with error message | collateral.xlsx | default            | 746                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Insured Declared Value | positive digits                  | does not throw any error        | collateral.xlsx | default            | 747                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | characters                       | throws error with error message | collateral.xlsx | default            | 748                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | both digits and characters       | throws error with error message | collateral.xlsx | default            | 749                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | negative                         | throws error with error message | collateral.xlsx | default            | 750                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | hyphen                           | throws error with error message | collateral.xlsx | default            | 751                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | space                            | throws error with error message | collateral.xlsx | default            | 752                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | special characters               | throws error with error message | collateral.xlsx | default            | 753                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Asset Cost             | positive digits                  | does not throw any error        | collateral.xlsx | default            | 754                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | characters                       | throws error with error message | collateral.xlsx | default            | 755                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | both digits and characters       | throws error with error message | collateral.xlsx | default            | 756                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | negative                         | throws error with error message | collateral.xlsx | default            | 757                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | hyphen                           | throws error with error message | collateral.xlsx | default            | 758                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | space                            | throws error with error message | collateral.xlsx | default            | 759                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | special characters               | throws error with error message | collateral.xlsx | default            | 760                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#  @ImplementedBy-harshprit.kumar
#    @Release2
  @SkippedFormatValidation
    @NotImplemented
  Scenario Outline: ACAUTOCAS-2157: CollateralPage Equipment details format validation of <FieldName> in Invoice Details for collateral Sub Type <CollateralSubType> of <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And opens Invoice Details section
    Then user should be able to see "<FieldName>" with proper format
    Examples:
      | FieldName    | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | Invoice Date | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2158: CollateralPage asset details data type and labels of <FieldName> for collateral Sub Type <CollateralSubType> of <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" of Asset Details with proper label
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | Collateral Ref No | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Description       | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Category    | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Manufacturer      | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Model       | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Variant     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Level       | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Usage       | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Location    | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Cost        | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | FieldName         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | Collateral Ref No | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Description       | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Category    | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Manufacturer      | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Model       | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Variant     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Level       | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Usage       | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Location    | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Cost        | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | Collateral Ref No | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Description       | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Category    | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Manufacturer      | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Model       | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Variant     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Level       | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Usage       | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Location    | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Cost        | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2953: User is able to see <FieldName> field for new collateral <CollateralSubType> in Vehicle Details of <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user opens Vehicle Details section
    Then user should be able to see "<FieldName>" marked as "<Mandatory_NonMandatory>"
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName                     | Mandatory_NonMandatory | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | Engine Number                 | mandatory              | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chassis Number                | mandatory              | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | FIP Number                    | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Date of Delivery              | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | VIN Number                    | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Date             | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Is Special Number             | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Number           | mandatory              | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Transport Office | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration in Name of       | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Expiry Date      | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | RC Received Date              | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Vehicle Capacity              | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Life (Months)           | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Age (Months)            | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Color                         | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Year of Manufacture           | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | State                         | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Color Type                    | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | FieldName                     | Mandatory_NonMandatory | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | Engine Number                 | mandatory              | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Chassis Number                | mandatory              | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | FIP Number                    | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Date of Delivery              | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | VIN Number                    | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Date             | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Is Special Number             | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Number           | mandatory              | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Transport Office | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration in Name of       | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Expiry Date      | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | RC Received Date              | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Vehicle Capacity              | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Life (Months)           | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Age (Months)            | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Color                         | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Year of Manufacture           | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | State                         | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Color Type                    | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                     | Mandatory_NonMandatory | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | Engine Number                 | mandatory              | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chassis Number                | mandatory              | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | FIP Number                    | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Date of Delivery              | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | VIN Number                    | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Date             | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Is Special Number             | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Number           | mandatory              | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Transport Office | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration in Name of       | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Expiry Date      | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | RC Received Date              | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Vehicle Capacity              | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Life (Months)           | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Age (Months)            | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Color                         | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Year of Manufacture           | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | State                         | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Color Type                    | non mandatory          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # equipment Details Field Format Validation
  Scenario Outline: ACAUTOCAS-2159: CollateralPage Vehicle Details <Validity> Engine Number with <InputType> validation for collateral Sub Type <CollateralSubType> of <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens vehicle details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | Validity | FieldName                | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | valid    | Engine Number            | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 146                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | characters                       | does not throw any error        | collateral.xlsx | vehicle_details           | 147                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | both digits and characters       | does not throw any error        | collateral.xlsx | vehicle_details           | 148                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | negative                         | does not throw any error        | collateral.xlsx | vehicle_details           | 149                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | hyphen                           | does not throw any error        | collateral.xlsx | vehicle_details           | 150                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | space                            | does not throw any error        | collateral.xlsx | vehicle_details           | 151                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Engine Number            | special characters except hyphen | throws error with error message | collateral.xlsx | vehicle_details           | 152                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 146                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | characters                       | does not throw any error        | collateral.xlsx | vehicle_details           | 147                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | both digits and characters       | does not throw any error        | collateral.xlsx | vehicle_details           | 148                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | negative                         | does not throw any error        | collateral.xlsx | vehicle_details           | 149                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | hyphen                           | does not throw any error        | collateral.xlsx | vehicle_details           | 150                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | space                            | does not throw any error        | collateral.xlsx | vehicle_details           | 151                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Chassis Number           | special characters except hyphen | throws error with error message | collateral.xlsx | vehicle_details           | 152                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Date of Delivery         | valid date format                | does not throw any error        | collateral.xlsx | vehicle_details           | 166                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date of Delivery         | invalid date format              | throws error with error message | collateral.xlsx | vehicle_details           | 167                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date of Delivery         | special characters               | throws error with error message | collateral.xlsx | vehicle_details           | 168                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Date of Delivery         | past date                        | does not throw any error        | collateral.xlsx | vehicle_details           | 169                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Date of Delivery         | future date                      | does not throw any error        | collateral.xlsx | vehicle_details           | 170                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date of Delivery         | year less than 1942              | throws error with error message | collateral.xlsx | vehicle_details           | 171                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Date of Delivery         | year equal to 1942               | does not throw any error        | collateral.xlsx | vehicle_details           | 172                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration Expiry Date | valid date format                | does not throw any error        | collateral.xlsx | vehicle_details           | 166                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Registration Expiry Date | invalid date format              | throws error with error message | collateral.xlsx | vehicle_details           | 167                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Registration Expiry Date | special characters               | throws error with error message | collateral.xlsx | vehicle_details           | 168                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration Expiry Date | past date                        | does not throw any error        | collateral.xlsx | vehicle_details           | 169                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration Expiry Date | future date                      | does not throw any error        | collateral.xlsx | vehicle_details           | 170                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Registration Expiry Date | year less than 1942              | throws error with error message | collateral.xlsx | vehicle_details           | 171                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration Expiry Date | year equal to 1942               | does not throw any error        | collateral.xlsx | vehicle_details           | 172                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | RC Received Date         | valid date format                | does not throw any error        | collateral.xlsx | vehicle_details           | 166                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | RC Received Date         | invalid date format              | throws error with error message | collateral.xlsx | vehicle_details           | 167                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | RC Received Date         | special characters               | throws error with error message | collateral.xlsx | vehicle_details           | 168                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | RC Received Date         | past date                        | does not throw any error        | collateral.xlsx | vehicle_details           | 169                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | RC Received Date         | future date                      | does not throw any error        | collateral.xlsx | vehicle_details           | 170                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | RC Received Date         | year less than 1942              | throws error with error message | collateral.xlsx | vehicle_details           | 171                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | RC Received Date         | year equal to 1942               | does not throw any error        | collateral.xlsx | vehicle_details           | 172                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | Validity | FieldName                | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | valid    | Engine Number            | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 146                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | characters                       | does not throw any error        | collateral.xlsx | vehicle_details           | 147                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | both digits and characters       | does not throw any error        | collateral.xlsx | vehicle_details           | 148                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | negative                         | does not throw any error        | collateral.xlsx | vehicle_details           | 149                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | hyphen                           | does not throw any error        | collateral.xlsx | vehicle_details           | 150                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | space                            | does not throw any error        | collateral.xlsx | vehicle_details           | 151                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Engine Number            | special characters except hyphen | throws error with error message | collateral.xlsx | vehicle_details           | 152                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 146                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | characters                       | does not throw any error        | collateral.xlsx | vehicle_details           | 147                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | both digits and characters       | does not throw any error        | collateral.xlsx | vehicle_details           | 148                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | negative                         | does not throw any error        | collateral.xlsx | vehicle_details           | 149                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | hyphen                           | does not throw any error        | collateral.xlsx | vehicle_details           | 150                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | space                            | does not throw any error        | collateral.xlsx | vehicle_details           | 151                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Chassis Number           | special characters except hyphen | throws error with error message | collateral.xlsx | vehicle_details           | 152                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Date of Delivery         | valid date format                | does not throw any error        | collateral.xlsx | vehicle_details           | 166                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date of Delivery         | invalid date format              | throws error with error message | collateral.xlsx | vehicle_details           | 167                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date of Delivery         | special characters               | throws error with error message | collateral.xlsx | vehicle_details           | 168                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Date of Delivery         | past date                        | does not throw any error        | collateral.xlsx | vehicle_details           | 169                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Date of Delivery         | future date                      | does not throw any error        | collateral.xlsx | vehicle_details           | 170                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date of Delivery         | year less than 1942              | throws error with error message | collateral.xlsx | vehicle_details           | 171                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Date of Delivery         | year equal to 1942               | does not throw any error        | collateral.xlsx | vehicle_details           | 172                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration Expiry Date | valid date format                | does not throw any error        | collateral.xlsx | vehicle_details           | 166                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Registration Expiry Date | invalid date format              | throws error with error message | collateral.xlsx | vehicle_details           | 167                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Registration Expiry Date | special characters               | throws error with error message | collateral.xlsx | vehicle_details           | 168                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration Expiry Date | past date                        | does not throw any error        | collateral.xlsx | vehicle_details           | 169                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration Expiry Date | future date                      | does not throw any error        | collateral.xlsx | vehicle_details           | 170                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Registration Expiry Date | year less than 1942              | throws error with error message | collateral.xlsx | vehicle_details           | 171                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration Expiry Date | year equal to 1942               | does not throw any error        | collateral.xlsx | vehicle_details           | 172                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | RC Received Date         | valid date format                | does not throw any error        | collateral.xlsx | vehicle_details           | 166                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | RC Received Date         | invalid date format              | throws error with error message | collateral.xlsx | vehicle_details           | 167                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | RC Received Date         | special characters               | throws error with error message | collateral.xlsx | vehicle_details           | 168                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | RC Received Date         | past date                        | does not throw any error        | collateral.xlsx | vehicle_details           | 169                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | RC Received Date         | future date                      | does not throw any error        | collateral.xlsx | vehicle_details           | 170                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | RC Received Date         | year less than 1942              | throws error with error message | collateral.xlsx | vehicle_details           | 171                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | RC Received Date         | year equal to 1942               | does not throw any error        | collateral.xlsx | vehicle_details           | 172                              | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName                | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | valid    | Engine Number            | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 146                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | characters                       | does not throw any error        | collateral.xlsx | vehicle_details           | 147                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | both digits and characters       | does not throw any error        | collateral.xlsx | vehicle_details           | 148                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | negative                         | does not throw any error        | collateral.xlsx | vehicle_details           | 149                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | hyphen                           | does not throw any error        | collateral.xlsx | vehicle_details           | 150                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | space                            | does not throw any error        | collateral.xlsx | vehicle_details           | 151                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Engine Number            | special characters except hyphen | throws error with error message | collateral.xlsx | vehicle_details           | 152                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 146                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | characters                       | does not throw any error        | collateral.xlsx | vehicle_details           | 147                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | both digits and characters       | does not throw any error        | collateral.xlsx | vehicle_details           | 148                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | negative                         | does not throw any error        | collateral.xlsx | vehicle_details           | 149                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | hyphen                           | does not throw any error        | collateral.xlsx | vehicle_details           | 150                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | space                            | does not throw any error        | collateral.xlsx | vehicle_details           | 151                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Chassis Number           | special characters except hyphen | throws error with error message | collateral.xlsx | vehicle_details           | 152                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Date of Delivery         | valid date format                | does not throw any error        | collateral.xlsx | vehicle_details           | 166                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date of Delivery         | invalid date format              | throws error with error message | collateral.xlsx | vehicle_details           | 167                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date of Delivery         | special characters               | throws error with error message | collateral.xlsx | vehicle_details           | 168                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Date of Delivery         | past date                        | does not throw any error        | collateral.xlsx | vehicle_details           | 169                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Date of Delivery         | future date                      | does not throw any error        | collateral.xlsx | vehicle_details           | 170                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date of Delivery         | year less than 1942              | throws error with error message | collateral.xlsx | vehicle_details           | 171                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Date of Delivery         | year equal to 1942               | does not throw any error        | collateral.xlsx | vehicle_details           | 172                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration Expiry Date | valid date format                | does not throw any error        | collateral.xlsx | vehicle_details           | 166                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Registration Expiry Date | invalid date format              | throws error with error message | collateral.xlsx | vehicle_details           | 167                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Registration Expiry Date | special characters               | throws error with error message | collateral.xlsx | vehicle_details           | 168                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration Expiry Date | past date                        | does not throw any error        | collateral.xlsx | vehicle_details           | 169                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration Expiry Date | future date                      | does not throw any error        | collateral.xlsx | vehicle_details           | 170                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Registration Expiry Date | year less than 1942              | throws error with error message | collateral.xlsx | vehicle_details           | 171                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration Expiry Date | year equal to 1942               | does not throw any error        | collateral.xlsx | vehicle_details           | 172                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | RC Received Date         | valid date format                | does not throw any error        | collateral.xlsx | vehicle_details           | 166                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | RC Received Date         | invalid date format              | throws error with error message | collateral.xlsx | vehicle_details           | 167                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | RC Received Date         | special characters               | throws error with error message | collateral.xlsx | vehicle_details           | 168                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | RC Received Date         | past date                        | does not throw any error        | collateral.xlsx | vehicle_details           | 169                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | RC Received Date         | future date                      | does not throw any error        | collateral.xlsx | vehicle_details           | 170                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | RC Received Date         | year less than 1942              | throws error with error message | collateral.xlsx | vehicle_details           | 171                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | RC Received Date         | year equal to 1942               | does not throw any error        | collateral.xlsx | vehicle_details           | 172                              | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @NotImplemented
    Examples:
      | Validity | FieldName                     | InputType | Throws_NotThrows | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      |          | FIP Number                    |           |                  | collateral.xlsx | vehicle_details           | 146                              | default            | 3                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      |          | Date of Delivery              |           |                  | collateral.xlsx | vehicle_details           | 146                              | default            | 3                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      |          | VIN Number                    |           |                  | collateral.xlsx | vehicle_details           | 146                              | default            | 3                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      |          | Registration Number           |           |                  | collateral.xlsx | vehicle_details           | 146                              | default            | 3                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      |          | Registration Transport Office |           |                  | collateral.xlsx | vehicle_details           | 146                              | default            | 3                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      |          | Registration in Name of       |           |                  | collateral.xlsx | vehicle_details           | 146                              | default            | 3                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      |          | Vehicle Capacity              |           |                  | collateral.xlsx | vehicle_details           | 146                              | default            | 3                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      |          | Asset Life (Months)           |           |                  | collateral.xlsx | vehicle_details           | 146                              | default            | 3                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      |          | Initial Odometer Reading      |           |                  | collateral.xlsx | vehicle_details           | 146                              | default            | 3                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      |          | Color                         |           |                  | collateral.xlsx | vehicle_details           | 146                              | default            | 3                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      |          | Year of Manufacture           |           |                  | collateral.xlsx | vehicle_details           | 146                              | default            | 3                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      |          | State                         |           |                  | collateral.xlsx | vehicle_details           | 146                              | default            | 3                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2160: Collateral Page vehicle details format validation of <FieldName> for collateral Sub Type <CollateralSubType> of <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When user opens Vehicle Details section
    Then user should be able to see "<FieldName>" field with proper format
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | Date of Delivery         | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Date        | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Expiry Date | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | RC Received Date         | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | FieldName                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | Date of Delivery         | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Date        | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Expiry Date | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | RC Received Date         | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | Date of Delivery         | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Date        | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Expiry Date | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | RC Received Date         | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2502: CollateralPage vehicle details label of <FieldName> for collateral Sub Type <CollateralSubType> of <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user opens Vehicle Details section
    Then user should be able to see "<FieldName>" of vehicle details with proper labels
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName                              | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | Engine Number                          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chassis Number                         | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | FIP Number                             | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Date of Delivery                       | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | VIN Number                             | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Date                      | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Number                    | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Transport Office          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration in Name of                | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Expiry Date               | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | RC Received Date                       | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Vehicle Capacity                       | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Life (Months)                    | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Age (Months)                     | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Month Year of Manufacture              | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | State                                  | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Color Type                             | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Content Color                          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Maximum Asset Age for funding (Months) | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Is Special Number                      | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | FieldName                              | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | Engine Number                          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Chassis Number                         | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | FIP Number                             | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Date of Delivery                       | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | VIN Number                             | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Date                      | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Number                    | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Transport Office          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration in Name of                | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Expiry Date               | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | RC Received Date                       | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Vehicle Capacity                       | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Life (Months)                    | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Age (Months)                     | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Month Year of Manufacture              | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | State                                  | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Color Type                             | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Content Color                          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Maximum Asset Age for funding (Months) | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Is Special Number                      | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                              | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | Engine Number                          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chassis Number                         | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | FIP Number                             | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Date of Delivery                       | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | VIN Number                             | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Date                      | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Number                    | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Transport Office          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration in Name of                | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Expiry Date               | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | RC Received Date                       | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Vehicle Capacity                       | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Life (Months)                    | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Age (Months)                     | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Month Year of Manufacture              | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | State                                  | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Color Type                             | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Content Color                          | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Maximum Asset Age for funding (Months) | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Is Special Number                      | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
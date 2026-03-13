@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedByDEV
@Part-2

#${CollateralSubType:["Commercial Vehicle"]}
Feature: Commercial Vehicle Screen Validation

#  Pre-Requisites---
#  In this feature we will validate the screen layout when an Asset Commercial Vehicle is attached to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  Scenario Outline: ACAUTOCAS-2093: user selects collateral type as Asset
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type
    Then application should allow only the type which is linked to the product

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-2094: user chooses sub collateral as <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type
    Then user should be able to capture the collateral sub type

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2925: User is able to see <SectionName> entity for new collateral <CollateralSubType> in Vehicle Details for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<SectionName>"

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    Examples:
      | SectionName               | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Vehicle Details           | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | RC Authentication Details | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | PPSR Registration Details | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Invoice Details           | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName               | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Vehicle Details           | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | RC Authentication Details | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | PPSR Registration Details | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Invoice Details           | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName               | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Vehicle Details           | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | RC Authentication Details | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | PPSR Registration Details | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Invoice Details           | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2926: User is able to see <FieldName> for new collateral <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    Examples:
      | FieldName                    | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Collateral Ref No            | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Description                  | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Category               | mandatory     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Manufacturer                 | mandatory     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Model                  | mandatory     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Variant                | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Level                  | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | OLV Grid Value               | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Insured Declared Value       | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Accepted Value               | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Overall Evaluated Value Type | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Overall Accepted Value       | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Usage                  | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Location               | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Cost                   | mandatory     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Reason Code                  | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Reason Description           | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Remarks                      | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | FieldName                    | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Collateral Ref No            | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Description                  | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Category               | mandatory     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Manufacturer                 | mandatory     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Model                  | mandatory     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Variant                | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Level                  | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | OLV Grid Value               | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Insured Declared Value       | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Accepted Value               | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Overall Evaluated Value Type | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Overall Accepted Value       | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Usage                  | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Location               | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Cost                   | mandatory     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Reason Code                  | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Reason Description           | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Remarks                      | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | FieldName                    | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Collateral Ref No            | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Description                  | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Category               | mandatory     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Manufacturer                 | mandatory     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Model                  | mandatory     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Variant                | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Level                  | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | OLV Grid Value               | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Insured Declared Value       | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Accepted Value               | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Overall Evaluated Value Type | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Overall Accepted Value       | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Usage                  | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Location               | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Cost                   | mandatory     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Reason Code                  | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Reason Description           | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Remarks                      | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2096: CollateralPage asset details <Validity> <FieldName> with <InputType> validation for collateral Sub Type <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Conventional @Release
    Examples:
      | Validity | FieldName              | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType | CollateralSubType   |
      | valid    | Collateral Ref No      | positive digits                  | does not throw any error        | collateral.xlsx | default            | 363                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Collateral Ref No      | characters                       | does not throw any error        | collateral.xlsx | default            | 364                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Collateral Ref No      | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 365                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Collateral Ref No      | negative                         | does not throw any error        | collateral.xlsx | default            | 366                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Collateral Ref No      | hyphen                           | does not throw any error        | collateral.xlsx | default            | 367                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Collateral Ref No      | space                            | does not throw any error        | collateral.xlsx | default            | 368                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Description            | positive digits                  | does not throw any error        | collateral.xlsx | default            | 369                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Description            | characters                       | does not throw any error        | collateral.xlsx | default            | 370                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Description            | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 371                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Description            | negative                         | does not throw any error        | collateral.xlsx | default            | 372                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Description            | space                            | does not throw any error        | collateral.xlsx | default            | 373                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Description            | special characters except hyphen | does not throw any error        | collateral.xlsx | default            | 374                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | OLV Grid Value         | positive digits                  | does not throw any error        | collateral.xlsx | default            | 691                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | OLV Grid Value         | negative                         | throws error with error message | collateral.xlsx | default            | 692                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | valid    | OLV Grid Value         | zero                             | does not throw any error        | collateral.xlsx | default            | 693                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | valid    | OLV Grid Value         | more than 100                    | does not throw any error        | collateral.xlsx | default            | 694                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | valid    | OLV Grid Value         | more than 2 decimal places       | does not throw any error        | collateral.xlsx | default            | 695                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | OLV Grid Value         | characters                       | throws error with error message | collateral.xlsx | default            | 696                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | OLV Grid Value         | both digits and characters       | throws error with error message | collateral.xlsx | default            | 697                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | OLV Grid Value         | space                            | throws error with error message | collateral.xlsx | default            | 698                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | OLV Grid Value         | special characters               | throws error with error message | collateral.xlsx | default            | 699                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | valid    | Insured Declared Value | positive digits                  | does not throw any error        | collateral.xlsx | default            | 691                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | Insured Declared Value | negative                         | throws error with error message | collateral.xlsx | default            | 692                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | valid    | Insured Declared Value | zero                             | does not throw any error        | collateral.xlsx | default            | 693                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | valid    | Insured Declared Value | more than 100                    | does not throw any error        | collateral.xlsx | default            | 694                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | valid    | Insured Declared Value | more than 2 decimal places       | does not throw any error        | collateral.xlsx | default            | 695                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | Insured Declared Value | characters                       | throws error with error message | collateral.xlsx | default            | 696                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | Insured Declared Value | both digits and characters       | throws error with error message | collateral.xlsx | default            | 697                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | Insured Declared Value | space                            | throws error with error message | collateral.xlsx | default            | 698                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | Insured Declared Value | special characters               | throws error with error message | collateral.xlsx | default            | 699                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | valid    | Asset Cost             | positive digits                  | does not throw any error        | collateral.xlsx | default            | 709                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | Asset Cost             | negative                         | throws error with error message | collateral.xlsx | default            | 710                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | valid    | Asset Cost             | zero                             | does not throw any error        | collateral.xlsx | default            | 711                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | valid    | Asset Cost             | more than 100                    | does not throw any error        | collateral.xlsx | default            | 712                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | valid    | Asset Cost             | more than 2 decimal places       | does not throw any error        | collateral.xlsx | default            | 713                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | Asset Cost             | characters                       | throws error with error message | collateral.xlsx | default            | 714                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | Asset Cost             | both digits and characters       | throws error with error message | collateral.xlsx | default            | 715                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | Asset Cost             | space                            | throws error with error message | collateral.xlsx | default            | 716                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | Asset Cost             | special characters               | throws error with error message | collateral.xlsx | default            | 717                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | Validity | FieldName              | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType | CollateralSubType   |
      | valid    | Collateral Ref No      | positive digits                  | does not throw any error        | collateral.xlsx | default            | 363                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | <CollateralSubType> |
      | valid    | Collateral Ref No      | characters                       | does not throw any error        | collateral.xlsx | default            | 364                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | <CollateralSubType> |
      | valid    | Collateral Ref No      | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 365                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | <CollateralSubType> |
      | valid    | Collateral Ref No      | negative                         | does not throw any error        | collateral.xlsx | default            | 366                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | <CollateralSubType> |
      | valid    | Collateral Ref No      | hyphen                           | does not throw any error        | collateral.xlsx | default            | 367                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | <CollateralSubType> |
      | valid    | Collateral Ref No      | space                            | does not throw any error        | collateral.xlsx | default            | 368                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | <CollateralSubType> |
      | valid    | Description            | positive digits                  | does not throw any error        | collateral.xlsx | default            | 369                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | <CollateralSubType> |
      | valid    | Description            | characters                       | does not throw any error        | collateral.xlsx | default            | 370                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | <CollateralSubType> |
      | valid    | Description            | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 371                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | <CollateralSubType> |
      | valid    | Description            | negative                         | does not throw any error        | collateral.xlsx | default            | 372                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | <CollateralSubType> |
      | valid    | Description            | space                            | does not throw any error        | collateral.xlsx | default            | 373                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | <CollateralSubType> |
      | valid    | Description            | special characters except hyphen | does not throw any error        | collateral.xlsx | default            | 374                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | <CollateralSubType> |
      | valid    | OLV Grid Value         | positive digits                  | does not throw any error        | collateral.xlsx | default            | 691                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | invalid  | OLV Grid Value         | negative                         | throws error with error message | collateral.xlsx | default            | 692                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | valid    | OLV Grid Value         | zero                             | does not throw any error        | collateral.xlsx | default            | 693                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | valid    | OLV Grid Value         | more than 100                    | does not throw any error        | collateral.xlsx | default            | 694                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | valid    | OLV Grid Value         | more than 2 decimal places       | does not throw any error        | collateral.xlsx | default            | 695                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | invalid  | OLV Grid Value         | characters                       | throws error with error message | collateral.xlsx | default            | 696                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | invalid  | OLV Grid Value         | both digits and characters       | throws error with error message | collateral.xlsx | default            | 697                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | invalid  | OLV Grid Value         | space                            | throws error with error message | collateral.xlsx | default            | 698                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | invalid  | OLV Grid Value         | special characters               | throws error with error message | collateral.xlsx | default            | 699                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | valid    | Insured Declared Value | positive digits                  | does not throw any error        | collateral.xlsx | default            | 691                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | invalid  | Insured Declared Value | negative                         | throws error with error message | collateral.xlsx | default            | 692                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | valid    | Insured Declared Value | zero                             | does not throw any error        | collateral.xlsx | default            | 693                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | valid    | Insured Declared Value | more than 100                    | does not throw any error        | collateral.xlsx | default            | 694                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | valid    | Insured Declared Value | more than 2 decimal places       | does not throw any error        | collateral.xlsx | default            | 695                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | invalid  | Insured Declared Value | characters                       | throws error with error message | collateral.xlsx | default            | 696                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | invalid  | Insured Declared Value | both digits and characters       | throws error with error message | collateral.xlsx | default            | 697                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | invalid  | Insured Declared Value | space                            | throws error with error message | collateral.xlsx | default            | 698                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | invalid  | Insured Declared Value | special characters               | throws error with error message | collateral.xlsx | default            | 699                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | valid    | Asset Cost             | positive digits                  | does not throw any error        | collateral.xlsx | default            | 709                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | invalid  | Asset Cost             | negative                         | throws error with error message | collateral.xlsx | default            | 710                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | valid    | Asset Cost             | zero                             | does not throw any error        | collateral.xlsx | default            | 711                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | valid    | Asset Cost             | more than 100                    | does not throw any error        | collateral.xlsx | default            | 712                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | valid    | Asset Cost             | more than 2 decimal places       | does not throw any error        | collateral.xlsx | default            | 713                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | invalid  | Asset Cost             | characters                       | throws error with error message | collateral.xlsx | default            | 714                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | invalid  | Asset Cost             | both digits and characters       | throws error with error message | collateral.xlsx | default            | 715                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | invalid  | Asset Cost             | space                            | throws error with error message | collateral.xlsx | default            | 716                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |
      | invalid  | Asset Cost             | special characters               | throws error with error message | collateral.xlsx | default            | 717                       | <ProductType> | <ApplicationStage> |     | <Category> | indiv         | CollateralSubType   |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | Validity | FieldName              | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType | CollateralSubType   |
      | valid    | Collateral Ref No      | positive digits                  | does not throw any error        | collateral.xlsx | default            | 363                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Collateral Ref No      | characters                       | does not throw any error        | collateral.xlsx | default            | 364                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Collateral Ref No      | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 365                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Collateral Ref No      | negative                         | does not throw any error        | collateral.xlsx | default            | 366                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Collateral Ref No      | hyphen                           | does not throw any error        | collateral.xlsx | default            | 367                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Collateral Ref No      | space                            | does not throw any error        | collateral.xlsx | default            | 368                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Description            | positive digits                  | does not throw any error        | collateral.xlsx | default            | 369                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Description            | characters                       | does not throw any error        | collateral.xlsx | default            | 370                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Description            | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 371                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Description            | negative                         | does not throw any error        | collateral.xlsx | default            | 372                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Description            | space                            | does not throw any error        | collateral.xlsx | default            | 373                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Description            | special characters except hyphen | does not throw any error        | collateral.xlsx | default            | 374                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | OLV Grid Value         | positive digits                  | does not throw any error        | collateral.xlsx | default            | 691                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | OLV Grid Value         | negative                         | throws error with error message | collateral.xlsx | default            | 692                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | valid    | OLV Grid Value         | zero                             | does not throw any error        | collateral.xlsx | default            | 693                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | valid    | OLV Grid Value         | more than 100                    | does not throw any error        | collateral.xlsx | default            | 694                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | valid    | OLV Grid Value         | more than 2 decimal places       | does not throw any error        | collateral.xlsx | default            | 695                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | OLV Grid Value         | characters                       | throws error with error message | collateral.xlsx | default            | 696                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | OLV Grid Value         | both digits and characters       | throws error with error message | collateral.xlsx | default            | 697                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | OLV Grid Value         | space                            | throws error with error message | collateral.xlsx | default            | 698                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | OLV Grid Value         | special characters               | throws error with error message | collateral.xlsx | default            | 699                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | valid    | Insured Declared Value | positive digits                  | does not throw any error        | collateral.xlsx | default            | 691                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | Insured Declared Value | negative                         | throws error with error message | collateral.xlsx | default            | 692                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | valid    | Insured Declared Value | zero                             | does not throw any error        | collateral.xlsx | default            | 693                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | valid    | Insured Declared Value | more than 100                    | does not throw any error        | collateral.xlsx | default            | 694                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | valid    | Insured Declared Value | more than 2 decimal places       | does not throw any error        | collateral.xlsx | default            | 695                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | Insured Declared Value | characters                       | throws error with error message | collateral.xlsx | default            | 696                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | Insured Declared Value | both digits and characters       | throws error with error message | collateral.xlsx | default            | 697                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | Insured Declared Value | space                            | throws error with error message | collateral.xlsx | default            | 698                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | Insured Declared Value | special characters               | throws error with error message | collateral.xlsx | default            | 699                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | valid    | Asset Cost             | positive digits                  | does not throw any error        | collateral.xlsx | default            | 709                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | Asset Cost             | negative                         | throws error with error message | collateral.xlsx | default            | 710                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | valid    | Asset Cost             | zero                             | does not throw any error        | collateral.xlsx | default            | 711                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | valid    | Asset Cost             | more than 100                    | does not throw any error        | collateral.xlsx | default            | 712                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | valid    | Asset Cost             | more than 2 decimal places       | does not throw any error        | collateral.xlsx | default            | 713                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | Asset Cost             | characters                       | throws error with error message | collateral.xlsx | default            | 714                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | Asset Cost             | both digits and characters       | throws error with error message | collateral.xlsx | default            | 715                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | Asset Cost             | space                            | throws error with error message | collateral.xlsx | default            | 716                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |
      | invalid  | Asset Cost             | special characters               | throws error with error message | collateral.xlsx | default            | 717                       | <ProductType> | <ApplicationStage> |     |          | indiv         | CollateralSubType   |


  @SkippedFormatValidation
  @NotImplementable
  Scenario: ACAUTOCAS-2096:  CollateralPage asset details format validation for collateral Sub Type <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    When user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user adds a new collateral type as "Asset" and Sub Type "Commercial Vehicle"
    Then user should be able to see all fields of "<asset details>" with proper format


  Scenario Outline: ACAUTOCAS-2097: CollateralPage asset details label of <FieldName> for collateral Sub Type <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" of Asset Details with proper label

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    Examples:
      | FieldName         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
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

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | FieldName         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
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

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | FieldName         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
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


  Scenario Outline: ACAUTOCAS-2927: User is able to see <FieldName> for new collateral <CollateralSubType> in Vehicle Details for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When user opens Vehicle Details section
    Then user should be able to see "<FieldName>" marked as "<Mandatory>"

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    Examples:
      | FieldName                     | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number                 | mandatory     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chassis Number                | mandatory     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | FIP Number                    | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Date of Delivery              | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | VIN Number                    | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Date             | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Is Special Number             | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Number           | mandatory     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Transport Office | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration in Name of       | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Expiry Date      | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | RC Received Date              | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Vehicle Capacity              | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Life (Months)           | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Age (Months)            | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Color                         | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Year of Manufacture           | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | State                         | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Color Type                    | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | FieldName                     | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Engine Number                 | mandatory     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Chassis Number                | mandatory     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | FIP Number                    | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Date of Delivery              | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | VIN Number                    | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Date             | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Is Special Number             | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Number           | mandatory     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Transport Office | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration in Name of       | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Expiry Date      | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | RC Received Date              | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Vehicle Capacity              | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Life (Months)           | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Age (Months)            | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Color                         | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Year of Manufacture           | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | State                         | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Color Type                    | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | FieldName                     | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number                 | mandatory     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chassis Number                | mandatory     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | FIP Number                    | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Date of Delivery              | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | VIN Number                    | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Date             | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Is Special Number             | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Number           | mandatory     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Transport Office | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration in Name of       | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Expiry Date      | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | RC Received Date              | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Vehicle Capacity              | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Life (Months)           | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Age (Months)            | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Color                         | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Year of Manufacture           | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | State                         | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Color Type                    | non mandatory | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |



  Scenario Outline: ACAUTOCAS-2098: CollateralPage vehicle details <Validity> <FieldName> with <InputType> validation for collateral Sub Type <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens vehicle details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    Examples:
      | Validity | FieldName                | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Engine Number            | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 146                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | characters                       | does not throw any error        | collateral.xlsx | vehicle_details           | 147                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | both digits and characters       | does not throw any error        | collateral.xlsx | vehicle_details           | 148                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | negative                         | does not throw any error        | collateral.xlsx | vehicle_details           | 149                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | hyphen                           | does not throw any error        | collateral.xlsx | vehicle_details           | 150                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | space                            | does not throw any error        | collateral.xlsx | vehicle_details           | 151                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Engine Number            | special characters except hyphen | throws error with error message | collateral.xlsx | vehicle_details           | 152                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 146                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | characters                       | does not throw any error        | collateral.xlsx | vehicle_details           | 147                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | negative                         | does not throw any error        | collateral.xlsx | vehicle_details           | 149                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | hyphen                           | does not throw any error        | collateral.xlsx | vehicle_details           | 150                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | space                            | does not throw any error        | collateral.xlsx | vehicle_details           | 151                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Chassis Number           | special characters except hyphen | throws error with error message | collateral.xlsx | vehicle_details           | 152                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Date of Delivery         | valid date format                | does not throw any error        | collateral.xlsx | vehicle_details           | 166                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date of Delivery         | invalid date format              | throws error with error message | collateral.xlsx | vehicle_details           | 167                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date of Delivery         | special characters               | throws error with error message | collateral.xlsx | vehicle_details           | 168                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Date of Delivery         | past date                        | does not throw any error        | collateral.xlsx | vehicle_details           | 169                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Date of Delivery         | future date                      | does not throw any error        | collateral.xlsx | vehicle_details           | 170                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date of Delivery         | year less than 1942              | throws error with error message | collateral.xlsx | vehicle_details           | 374                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Date of Delivery         | year equal to 1942               | does not throw any error        | collateral.xlsx | vehicle_details           | 172                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration Expiry Date | valid date format                | does not throw any error        | collateral.xlsx | vehicle_details           | 166                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Registration Expiry Date | invalid date format              | throws error with error message | collateral.xlsx | vehicle_details           | 167                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Registration Expiry Date | special characters               | throws error with error message | collateral.xlsx | vehicle_details           | 168                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration Expiry Date | past date                        | does not throw any error        | collateral.xlsx | vehicle_details           | 169                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration Expiry Date | future date                      | does not throw any error        | collateral.xlsx | vehicle_details           | 170                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Registration Expiry Date | year less than 1942              | throws error with error message | collateral.xlsx | vehicle_details           | 374                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration Expiry Date | year equal to 1942               | does not throw any error        | collateral.xlsx | vehicle_details           | 172                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | RC Received Date         | valid date format                | does not throw any error        | collateral.xlsx | vehicle_details           | 166                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | RC Received Date         | invalid date format              | throws error with error message | collateral.xlsx | vehicle_details           | 167                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | RC Received Date         | special characters               | throws error with error message | collateral.xlsx | vehicle_details           | 168                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | RC Received Date         | past date                        | does not throw any error        | collateral.xlsx | vehicle_details           | 169                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | RC Received Date         | future date                      | does not throw any error        | collateral.xlsx | vehicle_details           | 170                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | RC Received Date         | year less than 1942              | throws error with error message | collateral.xlsx | vehicle_details           | 374                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | RC Received Date         | year equal to 1942               | does not throw any error        | collateral.xlsx | vehicle_details           | 172                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Conventional @Release
    Examples:
      | Validity | FieldName                | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | FIP Number               | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 260                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | FIP Number               | characters                       | does not throw any error        | collateral.xlsx | vehicle_details           | 261                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | FIP Number               | negative                         | does not throw any error        | collateral.xlsx | vehicle_details           | 375                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | FIP Number               | hyphen                           | does not throw any error        | collateral.xlsx | vehicle_details           | 262                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | FIP Number               | space                            | does not throw any error        | collateral.xlsx | vehicle_details           | 270                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | FIP Number               | special characters except hyphen | does not throw any error        | collateral.xlsx | vehicle_details           | 269                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | VIN Number               | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 288                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | VIN Number               | characters                       | does not throw any error        | collateral.xlsx | vehicle_details           | 289                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | VIN Number               | negative                         | does not throw any error        | collateral.xlsx | vehicle_details           | 376                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | VIN Number               | hyphen                           | does not throw any error        | collateral.xlsx | vehicle_details           | 290                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | VIN Number               | space                            | does not throw any error        | collateral.xlsx | vehicle_details           | 298                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | VIN Number               | special characters except hyphen | does not throw any error        | collateral.xlsx | vehicle_details           | 297                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration in Name of  | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 377                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration in Name of  | characters                       | does not throw any error        | collateral.xlsx | vehicle_details           | 387                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration in Name of  | negative                         | throws error with error message | collateral.xlsx | vehicle_details           | 378                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration in Name of  | hyphen                           | throws error with error message | collateral.xlsx | vehicle_details           | 331                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration in Name of  | space                            | throws error with error message | collateral.xlsx | vehicle_details           | 329                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Registration in Name of  | special characters except hyphen | throws error with error message | collateral.xlsx | vehicle_details           | 333                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Vehicle Capacity         | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 339                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Vehicle Capacity         | characters                       | throws error with error message | collateral.xlsx | vehicle_details           | 348                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Vehicle Capacity         | negative                         | throws error with error message | collateral.xlsx | vehicle_details           | 379                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Vehicle Capacity         | hyphen                           | throws error with error message | collateral.xlsx | vehicle_details           | 341                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Vehicle Capacity         | space                            | throws error with error message | collateral.xlsx | vehicle_details           | 344                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Vehicle Capacity         | special characters except hyphen | throws error with error message | collateral.xlsx | vehicle_details           | 345                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Asset Life (Months)      | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 350                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Life (Months)      | characters                       | throws error with error message | collateral.xlsx | vehicle_details           | 353                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Life (Months)      | negative                         | throws error with error message | collateral.xlsx | vehicle_details           | 380                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Life (Months)      | hyphen                           | throws error with error message | collateral.xlsx | vehicle_details           | 352                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Life (Months)      | space                            | throws error with error message | collateral.xlsx | vehicle_details           | 355                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Life (Months)      | special characters except hyphen | throws error with error message | collateral.xlsx | vehicle_details           | 356                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Initial Odometer Reading | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 361                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Initial Odometer Reading | characters                       | does not throw any error        | collateral.xlsx | vehicle_details           | 362                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Initial Odometer Reading | negative                         | does not throw any error        | collateral.xlsx | vehicle_details           | 381                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Initial Odometer Reading | hyphen                           | does not throw any error        | collateral.xlsx | vehicle_details           | 363                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Initial Odometer Reading | space                            | does not throw any error        | collateral.xlsx | vehicle_details           | 371                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Initial Odometer Reading | special characters except hyphen | does not throw any error        | collateral.xlsx | vehicle_details           | 370                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Year of Manufacture      | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 382                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Year of Manufacture      | characters                       | throws error with error message | collateral.xlsx | vehicle_details           | 383                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Year of Manufacture      | hyphen                           | throws error with error message | collateral.xlsx | vehicle_details           | 384                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Year of Manufacture      | space                            | throws error with error message | collateral.xlsx | vehicle_details           | 385                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Year of Manufacture      | special characters except hyphen | throws error with error message | collateral.xlsx | vehicle_details           | 386                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | Validity | FieldName                | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Engine Number            | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 146                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | characters                       | does not throw any error        | collateral.xlsx | vehicle_details           | 147                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | both digits and characters       | does not throw any error        | collateral.xlsx | vehicle_details           | 148                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | negative                         | does not throw any error        | collateral.xlsx | vehicle_details           | 149                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | hyphen                           | does not throw any error        | collateral.xlsx | vehicle_details           | 150                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | space                            | does not throw any error        | collateral.xlsx | vehicle_details           | 151                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Engine Number            | special characters except hyphen | throws error with error message | collateral.xlsx | vehicle_details           | 152                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 146                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | characters                       | does not throw any error        | collateral.xlsx | vehicle_details           | 147                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | negative                         | does not throw any error        | collateral.xlsx | vehicle_details           | 149                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | hyphen                           | does not throw any error        | collateral.xlsx | vehicle_details           | 150                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | space                            | does not throw any error        | collateral.xlsx | vehicle_details           | 151                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Chassis Number           | special characters except hyphen | throws error with error message | collateral.xlsx | vehicle_details           | 152                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Date of Delivery         | valid date format                | does not throw any error        | collateral.xlsx | vehicle_details           | 166                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date of Delivery         | invalid date format              | throws error with error message | collateral.xlsx | vehicle_details           | 167                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date of Delivery         | special characters               | throws error with error message | collateral.xlsx | vehicle_details           | 168                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Date of Delivery         | past date                        | does not throw any error        | collateral.xlsx | vehicle_details           | 169                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Date of Delivery         | future date                      | does not throw any error        | collateral.xlsx | vehicle_details           | 170                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date of Delivery         | year less than 1942              | throws error with error message | collateral.xlsx | vehicle_details           | 374                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Date of Delivery         | year equal to 1942               | does not throw any error        | collateral.xlsx | vehicle_details           | 172                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration Expiry Date | valid date format                | does not throw any error        | collateral.xlsx | vehicle_details           | 166                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Registration Expiry Date | invalid date format              | throws error with error message | collateral.xlsx | vehicle_details           | 167                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Registration Expiry Date | special characters               | throws error with error message | collateral.xlsx | vehicle_details           | 168                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration Expiry Date | past date                        | does not throw any error        | collateral.xlsx | vehicle_details           | 169                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration Expiry Date | future date                      | does not throw any error        | collateral.xlsx | vehicle_details           | 170                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Registration Expiry Date | year less than 1942              | throws error with error message | collateral.xlsx | vehicle_details           | 374                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration Expiry Date | year equal to 1942               | does not throw any error        | collateral.xlsx | vehicle_details           | 172                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | RC Received Date         | valid date format                | does not throw any error        | collateral.xlsx | vehicle_details           | 166                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | RC Received Date         | invalid date format              | throws error with error message | collateral.xlsx | vehicle_details           | 167                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | RC Received Date         | special characters               | throws error with error message | collateral.xlsx | vehicle_details           | 168                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | RC Received Date         | past date                        | does not throw any error        | collateral.xlsx | vehicle_details           | 169                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | RC Received Date         | future date                      | does not throw any error        | collateral.xlsx | vehicle_details           | 170                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | RC Received Date         | year less than 1942              | throws error with error message | collateral.xlsx | vehicle_details           | 374                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | RC Received Date         | year equal to 1942               | does not throw any error        | collateral.xlsx | vehicle_details           | 172                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | FIP Number               | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 260                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | FIP Number               | characters                       | does not throw any error        | collateral.xlsx | vehicle_details           | 261                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | FIP Number               | negative                         | does not throw any error        | collateral.xlsx | vehicle_details           | 375                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | FIP Number               | hyphen                           | does not throw any error        | collateral.xlsx | vehicle_details           | 262                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | FIP Number               | space                            | does not throw any error        | collateral.xlsx | vehicle_details           | 270                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | FIP Number               | special characters except hyphen | does not throw any error        | collateral.xlsx | vehicle_details           | 269                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | VIN Number               | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 288                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | VIN Number               | characters                       | does not throw any error        | collateral.xlsx | vehicle_details           | 289                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | VIN Number               | negative                         | does not throw any error        | collateral.xlsx | vehicle_details           | 376                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | VIN Number               | hyphen                           | does not throw any error        | collateral.xlsx | vehicle_details           | 290                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | VIN Number               | space                            | does not throw any error        | collateral.xlsx | vehicle_details           | 298                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | VIN Number               | special characters except hyphen | does not throw any error        | collateral.xlsx | vehicle_details           | 297                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration in Name of  | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 377                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration in Name of  | characters                       | does not throw any error        | collateral.xlsx | vehicle_details           | 387                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration in Name of  | negative                         | throws error with error message | collateral.xlsx | vehicle_details           | 378                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration in Name of  | hyphen                           | throws error with error message | collateral.xlsx | vehicle_details           | 331                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration in Name of  | space                            | throws error with error message | collateral.xlsx | vehicle_details           | 329                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Registration in Name of  | special characters except hyphen | throws error with error message | collateral.xlsx | vehicle_details           | 333                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Vehicle Capacity         | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 339                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Vehicle Capacity         | characters                       | throws error with error message | collateral.xlsx | vehicle_details           | 348                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Vehicle Capacity         | negative                         | throws error with error message | collateral.xlsx | vehicle_details           | 379                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Vehicle Capacity         | hyphen                           | throws error with error message | collateral.xlsx | vehicle_details           | 341                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Vehicle Capacity         | space                            | throws error with error message | collateral.xlsx | vehicle_details           | 344                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Vehicle Capacity         | special characters except hyphen | throws error with error message | collateral.xlsx | vehicle_details           | 345                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Asset Life (Months)      | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 350                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Life (Months)      | characters                       | throws error with error message | collateral.xlsx | vehicle_details           | 353                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Life (Months)      | negative                         | throws error with error message | collateral.xlsx | vehicle_details           | 380                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Life (Months)      | hyphen                           | throws error with error message | collateral.xlsx | vehicle_details           | 352                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Life (Months)      | space                            | throws error with error message | collateral.xlsx | vehicle_details           | 355                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Life (Months)      | special characters except hyphen | throws error with error message | collateral.xlsx | vehicle_details           | 356                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Initial Odometer Reading | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 361                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Initial Odometer Reading | characters                       | does not throw any error        | collateral.xlsx | vehicle_details           | 362                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Initial Odometer Reading | negative                         | does not throw any error        | collateral.xlsx | vehicle_details           | 381                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Initial Odometer Reading | hyphen                           | does not throw any error        | collateral.xlsx | vehicle_details           | 363                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Initial Odometer Reading | space                            | does not throw any error        | collateral.xlsx | vehicle_details           | 371                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Initial Odometer Reading | special characters except hyphen | does not throw any error        | collateral.xlsx | vehicle_details           | 370                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Year of Manufacture      | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 382                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Year of Manufacture      | characters                       | throws error with error message | collateral.xlsx | vehicle_details           | 383                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Year of Manufacture      | hyphen                           | throws error with error message | collateral.xlsx | vehicle_details           | 384                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Year of Manufacture      | space                            | throws error with error message | collateral.xlsx | vehicle_details           | 385                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Year of Manufacture      | special characters except hyphen | throws error with error message | collateral.xlsx | vehicle_details           | 386                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |


    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | Validity | FieldName                | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Engine Number            | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 146                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | characters                       | does not throw any error        | collateral.xlsx | vehicle_details           | 147                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | both digits and characters       | does not throw any error        | collateral.xlsx | vehicle_details           | 148                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | negative                         | does not throw any error        | collateral.xlsx | vehicle_details           | 149                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | hyphen                           | does not throw any error        | collateral.xlsx | vehicle_details           | 150                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Engine Number            | space                            | does not throw any error        | collateral.xlsx | vehicle_details           | 151                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Engine Number            | special characters except hyphen | throws error with error message | collateral.xlsx | vehicle_details           | 152                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 146                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | characters                       | does not throw any error        | collateral.xlsx | vehicle_details           | 147                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | negative                         | does not throw any error        | collateral.xlsx | vehicle_details           | 149                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | hyphen                           | does not throw any error        | collateral.xlsx | vehicle_details           | 150                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Chassis Number           | space                            | does not throw any error        | collateral.xlsx | vehicle_details           | 151                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Chassis Number           | special characters except hyphen | throws error with error message | collateral.xlsx | vehicle_details           | 152                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Date of Delivery         | valid date format                | does not throw any error        | collateral.xlsx | vehicle_details           | 166                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date of Delivery         | invalid date format              | throws error with error message | collateral.xlsx | vehicle_details           | 167                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date of Delivery         | special characters               | throws error with error message | collateral.xlsx | vehicle_details           | 168                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Date of Delivery         | past date                        | does not throw any error        | collateral.xlsx | vehicle_details           | 169                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Date of Delivery         | future date                      | does not throw any error        | collateral.xlsx | vehicle_details           | 170                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date of Delivery         | year less than 1942              | throws error with error message | collateral.xlsx | vehicle_details           | 374                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Date of Delivery         | year equal to 1942               | does not throw any error        | collateral.xlsx | vehicle_details           | 172                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration Expiry Date | valid date format                | does not throw any error        | collateral.xlsx | vehicle_details           | 166                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Registration Expiry Date | invalid date format              | throws error with error message | collateral.xlsx | vehicle_details           | 167                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Registration Expiry Date | special characters               | throws error with error message | collateral.xlsx | vehicle_details           | 168                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration Expiry Date | past date                        | does not throw any error        | collateral.xlsx | vehicle_details           | 169                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration Expiry Date | future date                      | does not throw any error        | collateral.xlsx | vehicle_details           | 170                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Registration Expiry Date | year less than 1942              | throws error with error message | collateral.xlsx | vehicle_details           | 374                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration Expiry Date | year equal to 1942               | does not throw any error        | collateral.xlsx | vehicle_details           | 172                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | RC Received Date         | valid date format                | does not throw any error        | collateral.xlsx | vehicle_details           | 166                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | RC Received Date         | invalid date format              | throws error with error message | collateral.xlsx | vehicle_details           | 167                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | RC Received Date         | special characters               | throws error with error message | collateral.xlsx | vehicle_details           | 168                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | RC Received Date         | past date                        | does not throw any error        | collateral.xlsx | vehicle_details           | 169                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | RC Received Date         | future date                      | does not throw any error        | collateral.xlsx | vehicle_details           | 170                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | RC Received Date         | year less than 1942              | throws error with error message | collateral.xlsx | vehicle_details           | 374                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | RC Received Date         | year equal to 1942               | does not throw any error        | collateral.xlsx | vehicle_details           | 172                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | FIP Number               | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 260                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | FIP Number               | characters                       | does not throw any error        | collateral.xlsx | vehicle_details           | 261                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | FIP Number               | negative                         | does not throw any error        | collateral.xlsx | vehicle_details           | 375                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | FIP Number               | hyphen                           | does not throw any error        | collateral.xlsx | vehicle_details           | 262                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | FIP Number               | space                            | does not throw any error        | collateral.xlsx | vehicle_details           | 270                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | FIP Number               | special characters except hyphen | does not throw any error        | collateral.xlsx | vehicle_details           | 269                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | VIN Number               | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 288                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | VIN Number               | characters                       | does not throw any error        | collateral.xlsx | vehicle_details           | 289                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | VIN Number               | negative                         | does not throw any error        | collateral.xlsx | vehicle_details           | 376                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | VIN Number               | hyphen                           | does not throw any error        | collateral.xlsx | vehicle_details           | 290                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | VIN Number               | space                            | does not throw any error        | collateral.xlsx | vehicle_details           | 298                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | VIN Number               | special characters except hyphen | does not throw any error        | collateral.xlsx | vehicle_details           | 297                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration in Name of  | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 377                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration in Name of  | characters                       | does not throw any error        | collateral.xlsx | vehicle_details           | 387                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration in Name of  | negative                         | throws error with error message | collateral.xlsx | vehicle_details           | 378                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration in Name of  | hyphen                           | throws error with error message | collateral.xlsx | vehicle_details           | 331                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Registration in Name of  | space                            | throws error with error message | collateral.xlsx | vehicle_details           | 329                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Registration in Name of  | special characters except hyphen | throws error with error message | collateral.xlsx | vehicle_details           | 333                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Vehicle Capacity         | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 339                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Vehicle Capacity         | characters                       | throws error with error message | collateral.xlsx | vehicle_details           | 348                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Vehicle Capacity         | negative                         | throws error with error message | collateral.xlsx | vehicle_details           | 379                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Vehicle Capacity         | hyphen                           | throws error with error message | collateral.xlsx | vehicle_details           | 341                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Vehicle Capacity         | space                            | throws error with error message | collateral.xlsx | vehicle_details           | 344                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Vehicle Capacity         | special characters except hyphen | throws error with error message | collateral.xlsx | vehicle_details           | 345                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Asset Life (Months)      | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 350                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Life (Months)      | characters                       | throws error with error message | collateral.xlsx | vehicle_details           | 353                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Life (Months)      | negative                         | throws error with error message | collateral.xlsx | vehicle_details           | 380                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Life (Months)      | hyphen                           | throws error with error message | collateral.xlsx | vehicle_details           | 352                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Life (Months)      | space                            | throws error with error message | collateral.xlsx | vehicle_details           | 355                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Life (Months)      | special characters except hyphen | throws error with error message | collateral.xlsx | vehicle_details           | 356                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Initial Odometer Reading | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 361                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Initial Odometer Reading | characters                       | does not throw any error        | collateral.xlsx | vehicle_details           | 362                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Initial Odometer Reading | negative                         | does not throw any error        | collateral.xlsx | vehicle_details           | 381                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Initial Odometer Reading | hyphen                           | does not throw any error        | collateral.xlsx | vehicle_details           | 363                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Initial Odometer Reading | space                            | does not throw any error        | collateral.xlsx | vehicle_details           | 371                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Initial Odometer Reading | special characters except hyphen | does not throw any error        | collateral.xlsx | vehicle_details           | 370                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Year of Manufacture      | positive digits                  | does not throw any error        | collateral.xlsx | vehicle_details           | 382                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Year of Manufacture      | characters                       | throws error with error message | collateral.xlsx | vehicle_details           | 383                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Year of Manufacture      | hyphen                           | throws error with error message | collateral.xlsx | vehicle_details           | 384                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Year of Manufacture      | space                            | throws error with error message | collateral.xlsx | vehicle_details           | 385                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Year of Manufacture      | special characters except hyphen | throws error with error message | collateral.xlsx | vehicle_details           | 386                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  @SkippedFormatValidation
  @NotImplementable
  Scenario: ACAUTOCAS-2099:  CollateralPage vehicle details format validation for collateral Sub Type <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    When user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user adds a new collateral type as "Asset" and Sub Type "Commercial Vehicle"
    Then user should be able to see all fields of "<vehicle details>" with proper format


  Scenario Outline: ACAUTOCAS-2488: CollateralPage vehicle details label of <FieldName> for collateral Sub Type <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When user opens Vehicle Details section
    Then user should be able to see "<FieldName>" of vehicle details with proper labels

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    Examples:
      | FieldName                              | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number                          | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chassis Number                         | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | FIP Number                             | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Date of Delivery                       | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | VIN Number                             | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Date                      | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Number                    | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Transport Office          | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration in Name of                | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Expiry Date               | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | RC Received Date                       | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Vehicle Capacity                       | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Life (Months)                    | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Age (Months)                     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Month Year of Manufacture              | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | State                                  | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Color Type                             | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Content Color                          | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Maximum Asset Age for funding (Months) | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | FieldName                              | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Engine Number                          | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Chassis Number                         | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | FIP Number                             | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Date of Delivery                       | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | VIN Number                             | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Date                      | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Number                    | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Transport Office          | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration in Name of                | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Expiry Date               | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | RC Received Date                       | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Vehicle Capacity                       | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Life (Months)                    | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Age (Months)                     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Month Year of Manufacture              | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | State                                  | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Color Type                             | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Content Color                          | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Maximum Asset Age for funding (Months) | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | FieldName                              | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number                          | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chassis Number                         | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | FIP Number                             | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Date of Delivery                       | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | VIN Number                             | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Date                      | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Number                    | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Transport Office          | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration in Name of                | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Expiry Date               | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | RC Received Date                       | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Vehicle Capacity                       | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Life (Months)                    | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Age (Months)                     | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Month Year of Manufacture              | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | State                                  | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Color Type                             | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Content Color                          | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Maximum Asset Age for funding (Months) | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

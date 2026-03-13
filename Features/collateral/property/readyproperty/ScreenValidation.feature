@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-harshprit.kumar
@ReviewedByDEV
@ReviewedSecCollateral
@Part-1

#${CollateralSubType:["Ready Property"]}
Feature: Ready Property Screen Validation

#  Pre-Requisites---
#  In this feature we will validate the screen layout when an Property Ready Property is attached to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  Scenario Outline: ACAUTOCAS-2355:  user selects collateral type as Property of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type
    Then application should allow only the collateral type which is linked to the product

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aryan.jain
    @Conventional @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |


  Scenario Outline: ACAUTOCAS-2356:  user chooses sub collateral as <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then application should allow only the sub type which is linked to the product

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aryan.jain
    @Conventional @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


    #Collateral Ready Property Entity Validation
  Scenario Outline: ACAUTOCAS-1430:  user is able to see all entities for new collateral <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<SectionName>"

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-tushar.chauhan
    @Conventional @Release
    Examples:
      | SectionName                       | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | Collateral Details                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> | collateral.xlsx | default            | 15                        |
      | Other Details                     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> | collateral.xlsx | default            | 15                        |
      | Property Address                  | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> | collateral.xlsx | default            | 15                        |
      | Property and Registration Details | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> | collateral.xlsx | default            | 15                        |
      | Ownership Details                 | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> | collateral.xlsx | default            | 15                        |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName                       | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | Collateral Details                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> | collateral.xlsx | default            | 15                        |
      | Other Details                     | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> | collateral.xlsx | default            | 15                        |
      | Property Address                  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> | collateral.xlsx | default            | 15                        |
      | Property and Registration Details | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> | collateral.xlsx | default            | 15                        |
      | Ownership Details                 | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> | collateral.xlsx | default            | 15                        |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName                       | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | Collateral Details                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> | collateral.xlsx | default            | 15                        |
      | Other Details                     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> | collateral.xlsx | default            | 15                        |
      | Property Address                  | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> | collateral.xlsx | default            | 15                        |
      | Property and Registration Details | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> | collateral.xlsx | default            | 15                        |
      | Ownership Details                 | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> | collateral.xlsx | default            | 15                        |


  #Collateral Details Field Validation
  Scenario Outline: ACAUTOCAS-1431:  user is able to see all fields for new collateral <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aryan.jain
    @Conventional @Release
    Examples:
      | FieldName              | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Collateral Ref No      | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Description            | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Type          | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Nature of Property     | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Is Builder Constructed | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | FieldName              | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Collateral Ref No      | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Description            | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Type          | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Nature of Property     | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Is Builder Constructed | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | FieldName              | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Collateral Ref No      | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Description            | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Type          | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Nature of Property     | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Is Builder Constructed | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2357: CollateralPage field data type validation for <Validity> <FieldName> with <InputType> for collateral Sub Type <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    When user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in collateral details

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aryan.jain
    @Conventional @Release
    Examples:
      | Validity | FieldName         | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | valid    | Collateral Ref No | positive digits                  | does not throw any error        | collateral.xlsx | default            | 15                        | 602                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Collateral Ref No | characters                       | does not throw any error        | collateral.xlsx | default            | 15                        | 603                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Collateral Ref No | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 15                        | 604                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Collateral Ref No | negative                         | does not throw any error        | collateral.xlsx | default            | 15                        | 605                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Collateral Ref No | hyphen                           | does not throw any error        | collateral.xlsx | default            | 15                        | 606                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Collateral Ref No | space                            | does not throw any error        | collateral.xlsx | default            | 15                        | 607                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Collateral Ref No | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 15                        | 608                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Description       | positive digits                  | does not throw any error        | collateral.xlsx | default            | 15                        | 609                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Description       | characters                       | does not throw any error        | collateral.xlsx | default            | 15                        | 610                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Description       | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 15                        | 611                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Description       | negative                         | does not throw any error        | collateral.xlsx | default            | 15                        | 612                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Description       | space                            | does not throw any error        | collateral.xlsx | default            | 15                        | 613                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Description       | special characters               | does not throw any error        | collateral.xlsx | default            | 15                        | 614                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | Validity | FieldName         | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | valid    | Collateral Ref No | positive digits                  | does not throw any error        | collateral.xlsx | default            | 15                        | 602                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Collateral Ref No | characters                       | does not throw any error        | collateral.xlsx | default            | 15                        | 603                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Collateral Ref No | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 15                        | 604                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Collateral Ref No | negative                         | does not throw any error        | collateral.xlsx | default            | 15                        | 605                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Collateral Ref No | hyphen                           | does not throw any error        | collateral.xlsx | default            | 15                        | 606                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Collateral Ref No | space                            | does not throw any error        | collateral.xlsx | default            | 15                        | 607                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Collateral Ref No | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 15                        | 608                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Description       | positive digits                  | does not throw any error        | collateral.xlsx | default            | 15                        | 609                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Description       | characters                       | does not throw any error        | collateral.xlsx | default            | 15                        | 610                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Description       | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 15                        | 611                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Description       | negative                         | does not throw any error        | collateral.xlsx | default            | 15                        | 612                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Description       | space                            | does not throw any error        | collateral.xlsx | default            | 15                        | 613                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Description       | special characters               | does not throw any error        | collateral.xlsx | default            | 15                        | 614                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | Validity | FieldName         | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | valid    | Collateral Ref No | positive digits                  | does not throw any error        | collateral.xlsx | default            | 15                        | 602                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Collateral Ref No | characters                       | does not throw any error        | collateral.xlsx | default            | 15                        | 603                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Collateral Ref No | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 15                        | 604                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Collateral Ref No | negative                         | does not throw any error        | collateral.xlsx | default            | 15                        | 605                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Collateral Ref No | hyphen                           | does not throw any error        | collateral.xlsx | default            | 15                        | 606                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Collateral Ref No | space                            | does not throw any error        | collateral.xlsx | default            | 15                        | 607                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Collateral Ref No | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 15                        | 608                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Description       | positive digits                  | does not throw any error        | collateral.xlsx | default            | 15                        | 609                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Description       | characters                       | does not throw any error        | collateral.xlsx | default            | 15                        | 610                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Description       | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 15                        | 611                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Description       | negative                         | does not throw any error        | collateral.xlsx | default            | 15                        | 612                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Description       | space                            | does not throw any error        | collateral.xlsx | default            | 15                        | 613                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Description       | special characters               | does not throw any error        | collateral.xlsx | default            | 15                        | 614                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


  @SkippedFormatValidation
  @NotImplementable
#Collateral Details Field Format Validation
  Scenario: ACAUTOCAS-2358:  CollateralPage Ready Property field format validation for Collateral details
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Property" and Sub Type "Ready Property"
    Then user should be able to see all fields of "<Collateral details>" with proper format

  #Collateral Details Field Label Validation
  Scenario Outline: ACAUTOCAS-2359: CollateralPage details <FieldName> label validation for collateral Sub Type <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" of Collateral details with proper label

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aryan.jain
    @Conventional @Release
    Examples:
      | FieldName              | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Collateral Ref No      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Description            | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Type          | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Nature of Property     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Is Builder Constructed | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | FieldName              | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Collateral Ref No      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Description            | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Type          | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Nature of Property     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Is Builder Constructed | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | FieldName              | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Collateral Ref No      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Description            | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Type          | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Nature of Property     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Is Builder Constructed | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


  #Other Details Field Validation
  Scenario Outline: ACAUTOCAS-1432: User is able to see <FieldName> for new collateral <CollateralSubType> in Other Details of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When user opens "<SectionName>" section
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aryan.jain
    @Conventional @Release
    Examples:
      | SectionName   | FieldName                     | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Other Details | Property Classification       | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Property Ownership            | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Market Value                  | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Accepted Value (CIC)          | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Considered Accepted Valuation | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Built Up Area                 | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Built Up Area Unit            | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Carpet Area                   | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Carpet Area Unit              | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Property Purpose              | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Age Of Property(In Years)     | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Residual Age of Property      | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Considered Valuation          | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Plan Type                     | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Plan Number                   | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Property Lot Number           | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName   | FieldName                     | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Other Details | Property Classification       | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Property Ownership            | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Market Value                  | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Accepted Value (CIC)          | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Considered Accepted Valuation | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Built Up Area                 | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Built Up Area Unit            | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Carpet Area                   | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Carpet Area Unit              | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Property Purpose              | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Age Of Property(In Years)     | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Residual Age of Property      | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Considered Valuation          | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Plan Type                     | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Plan Number                   | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Property Lot Number           | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName   | FieldName                     | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Other Details | Property Classification       | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Property Ownership            | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Market Value                  | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Accepted Value (CIC)          | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Considered Accepted Valuation | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Built Up Area                 | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Built Up Area Unit            | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Carpet Area                   | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Carpet Area Unit              | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Property Purpose              | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Age Of Property(In Years)     | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Residual Age of Property      | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Considered Valuation          | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Plan Type                     | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Plan Number                   | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Property Lot Number           | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2360: CollateralPage Other details data type validation of <Validity> <FieldName> with <InputType> for collateral Sub Type <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens "<SectionName>" section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    When user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in Other Details

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aryan.jain
    @Conventional @Release
    Examples:
      | SectionName   | Validity | FieldName           | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Other Details | valid    | Market Value        | positive digits                  | does not throw any error        | collateral.xlsx | other_details           | 151                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Market Value        | characters                       | throws error with error message | collateral.xlsx | other_details           | 152                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Market Value        | both digits and characters       | throws error with error message | collateral.xlsx | other_details           | 153                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Market Value        | negative                         | throws error with error message | collateral.xlsx | other_details           | 154                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Market Value        | hyphen                           | throws error with error message | collateral.xlsx | other_details           | 155                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Market Value        | space                            | throws error with error message | collateral.xlsx | other_details           | 156                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | invalid  | Market Value        | special characters except hyphen | throws error with error message | collateral.xlsx | other_details           | 157                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Built Up Area       | positive digits                  | does not throw any error        | collateral.xlsx | other_details           | 158                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Built Up Area       | characters                       | throws error with error message | collateral.xlsx | other_details           | 159                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Built Up Area       | both digits and characters       | throws error with error message | collateral.xlsx | other_details           | 160                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Built Up Area       | negative                         | throws error with error message | collateral.xlsx | other_details           | 161                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Built Up Area       | hyphen                           | throws error with error message | collateral.xlsx | other_details           | 162                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Built Up Area       | space                            | throws error with error message | collateral.xlsx | other_details           | 163                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | invalid  | Built Up Area       | special characters except hyphen | throws error with error message | collateral.xlsx | other_details           | 164                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Carpet Area         | positive digits                  | does not throw any error        | collateral.xlsx | other_details           | 165                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Carpet Area         | characters                       | throws error with error message | collateral.xlsx | other_details           | 166                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Carpet Area         | both digits and characters       | throws error with error message | collateral.xlsx | other_details           | 167                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Carpet Area         | negative                         | throws error with error message | collateral.xlsx | other_details           | 168                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Carpet Area         | hyphen                           | throws error with error message | collateral.xlsx | other_details           | 169                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Carpet Area         | space                            | throws error with error message | collateral.xlsx | other_details           | 170                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | invalid  | Carpet Area         | special characters except hyphen | throws error with error message | collateral.xlsx | other_details           | 171                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Age Of Property     | positive digits                  | does not throw any error        | collateral.xlsx | other_details           | 172                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Age Of Property     | characters                       | throws error with error message | collateral.xlsx | other_details           | 173                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Age Of Property     | both digits and characters       | throws error with error message | collateral.xlsx | other_details           | 174                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Age Of Property     | negative                         | throws error with error message | collateral.xlsx | other_details           | 175                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Age Of Property     | hyphen                           | throws error with error message | collateral.xlsx | other_details           | 176                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Age Of Property     | space                            | throws error with error message | collateral.xlsx | other_details           | 177                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | invalid  | Age Of Property     | special characters except hyphen | throws error with error message | collateral.xlsx | other_details           | 178                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Plan Type           | positive digits                  | does not throw any error        | collateral.xlsx | other_details           | 179                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Plan Type           | characters                       | does not throw any error        | collateral.xlsx | other_details           | 180                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Plan Type           | both digits and characters       | does not throw any error        | collateral.xlsx | other_details           | 181                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Plan Type           | negative                         | does not throw any error        | collateral.xlsx | other_details           | 182                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Plan Type           | hyphen                           | does not throw any error        | collateral.xlsx | other_details           | 183                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Plan Type           | space                            | does not throw any error        | collateral.xlsx | other_details           | 184                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | invalid  | Plan Type           | special characters except hyphen | does not throw any error        | collateral.xlsx | other_details           | 185                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Plan Number         | positive digits                  | does not throw any error        | collateral.xlsx | other_details           | 186                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Plan Number         | characters                       | does not throw any error        | collateral.xlsx | other_details           | 187                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Plan Number         | both digits and characters       | does not throw any error        | collateral.xlsx | other_details           | 188                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Plan Number         | negative                         | does not throw any error        | collateral.xlsx | other_details           | 189                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Plan Number         | hyphen                           | does not throw any error        | collateral.xlsx | other_details           | 190                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Plan Number         | space                            | does not throw any error        | collateral.xlsx | other_details           | 191                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | invalid  | Plan Number         | special characters except hyphen | does not throw any error        | collateral.xlsx | other_details           | 192                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Property Lot Number | positive digits                  | does not throw any error        | collateral.xlsx | other_details           | 193                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Property Lot Number | characters                       | does not throw any error        | collateral.xlsx | other_details           | 194                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Property Lot Number | both digits and characters       | does not throw any error        | collateral.xlsx | other_details           | 195                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Property Lot Number | negative                         | does not throw any error        | collateral.xlsx | other_details           | 196                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Property Lot Number | hyphen                           | does not throw any error        | collateral.xlsx | other_details           | 197                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Property Lot Number | space                            | does not throw any error        | collateral.xlsx | other_details           | 198                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | invalid  | Property Lot Number | special characters except hyphen | does not throw any error        | collateral.xlsx | other_details           | 199                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName   | Validity | FieldName           | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Other Details | valid    | Market Value        | positive digits                  | does not throw any error        | collateral.xlsx | other_details           | 151                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Market Value        | characters                       | throws error with error message | collateral.xlsx | other_details           | 152                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Market Value        | both digits and characters       | throws error with error message | collateral.xlsx | other_details           | 153                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Market Value        | negative                         | throws error with error message | collateral.xlsx | other_details           | 154                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Market Value        | hyphen                           | throws error with error message | collateral.xlsx | other_details           | 155                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Market Value        | space                            | throws error with error message | collateral.xlsx | other_details           | 156                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | invalid  | Market Value        | special characters except hyphen | throws error with error message | collateral.xlsx | other_details           | 157                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Built Up Area       | positive digits                  | does not throw any error        | collateral.xlsx | other_details           | 158                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Built Up Area       | characters                       | throws error with error message | collateral.xlsx | other_details           | 159                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Built Up Area       | both digits and characters       | throws error with error message | collateral.xlsx | other_details           | 160                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Built Up Area       | negative                         | throws error with error message | collateral.xlsx | other_details           | 161                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Built Up Area       | hyphen                           | throws error with error message | collateral.xlsx | other_details           | 162                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Built Up Area       | space                            | throws error with error message | collateral.xlsx | other_details           | 163                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | invalid  | Built Up Area       | special characters except hyphen | throws error with error message | collateral.xlsx | other_details           | 164                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Carpet Area         | positive digits                  | does not throw any error        | collateral.xlsx | other_details           | 165                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Carpet Area         | characters                       | throws error with error message | collateral.xlsx | other_details           | 166                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Carpet Area         | both digits and characters       | throws error with error message | collateral.xlsx | other_details           | 167                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Carpet Area         | negative                         | throws error with error message | collateral.xlsx | other_details           | 168                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Carpet Area         | hyphen                           | throws error with error message | collateral.xlsx | other_details           | 169                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Carpet Area         | space                            | throws error with error message | collateral.xlsx | other_details           | 170                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | invalid  | Carpet Area         | special characters except hyphen | throws error with error message | collateral.xlsx | other_details           | 171                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Age Of Property     | positive digits                  | does not throw any error        | collateral.xlsx | other_details           | 172                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Age Of Property     | characters                       | throws error with error message | collateral.xlsx | other_details           | 173                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Age Of Property     | both digits and characters       | throws error with error message | collateral.xlsx | other_details           | 174                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Age Of Property     | negative                         | throws error with error message | collateral.xlsx | other_details           | 175                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Age Of Property     | hyphen                           | throws error with error message | collateral.xlsx | other_details           | 176                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Age Of Property     | space                            | throws error with error message | collateral.xlsx | other_details           | 177                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | invalid  | Age Of Property     | special characters except hyphen | throws error with error message | collateral.xlsx | other_details           | 178                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Plan Type           | positive digits                  | does not throw any error        | collateral.xlsx | other_details           | 179                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Plan Type           | characters                       | does not throw any error        | collateral.xlsx | other_details           | 180                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Plan Type           | both digits and characters       | does not throw any error        | collateral.xlsx | other_details           | 181                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Plan Type           | negative                         | does not throw any error        | collateral.xlsx | other_details           | 182                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Plan Type           | hyphen                           | does not throw any error        | collateral.xlsx | other_details           | 183                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Plan Type           | space                            | does not throw any error        | collateral.xlsx | other_details           | 184                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | invalid  | Plan Type           | special characters except hyphen | does not throw any error        | collateral.xlsx | other_details           | 185                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Plan Number         | positive digits                  | does not throw any error        | collateral.xlsx | other_details           | 186                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Plan Number         | characters                       | does not throw any error        | collateral.xlsx | other_details           | 187                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Plan Number         | both digits and characters       | does not throw any error        | collateral.xlsx | other_details           | 188                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Plan Number         | negative                         | does not throw any error        | collateral.xlsx | other_details           | 189                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Plan Number         | hyphen                           | does not throw any error        | collateral.xlsx | other_details           | 190                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Plan Number         | space                            | does not throw any error        | collateral.xlsx | other_details           | 191                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | invalid  | Plan Number         | special characters except hyphen | does not throw any error        | collateral.xlsx | other_details           | 192                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Property Lot Number | positive digits                  | does not throw any error        | collateral.xlsx | other_details           | 193                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Property Lot Number | characters                       | does not throw any error        | collateral.xlsx | other_details           | 194                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Property Lot Number | both digits and characters       | does not throw any error        | collateral.xlsx | other_details           | 195                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Property Lot Number | negative                         | does not throw any error        | collateral.xlsx | other_details           | 196                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Property Lot Number | hyphen                           | does not throw any error        | collateral.xlsx | other_details           | 197                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | valid    | Property Lot Number | space                            | does not throw any error        | collateral.xlsx | other_details           | 198                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | invalid  | Property Lot Number | special characters except hyphen | does not throw any error        | collateral.xlsx | other_details           | 199                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName   | Validity | FieldName           | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Other Details | valid    | Market Value        | positive digits                  | does not throw any error        | collateral.xlsx | other_details           | 151                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Market Value        | characters                       | throws error with error message | collateral.xlsx | other_details           | 152                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Market Value        | both digits and characters       | throws error with error message | collateral.xlsx | other_details           | 153                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Market Value        | negative                         | throws error with error message | collateral.xlsx | other_details           | 154                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Market Value        | hyphen                           | throws error with error message | collateral.xlsx | other_details           | 155                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Market Value        | space                            | throws error with error message | collateral.xlsx | other_details           | 156                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | invalid  | Market Value        | special characters except hyphen | throws error with error message | collateral.xlsx | other_details           | 157                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Built Up Area       | positive digits                  | does not throw any error        | collateral.xlsx | other_details           | 158                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Built Up Area       | characters                       | throws error with error message | collateral.xlsx | other_details           | 159                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Built Up Area       | both digits and characters       | throws error with error message | collateral.xlsx | other_details           | 160                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Built Up Area       | negative                         | throws error with error message | collateral.xlsx | other_details           | 161                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Built Up Area       | hyphen                           | throws error with error message | collateral.xlsx | other_details           | 162                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Built Up Area       | space                            | throws error with error message | collateral.xlsx | other_details           | 163                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | invalid  | Built Up Area       | special characters except hyphen | throws error with error message | collateral.xlsx | other_details           | 164                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Carpet Area         | positive digits                  | does not throw any error        | collateral.xlsx | other_details           | 165                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Carpet Area         | characters                       | throws error with error message | collateral.xlsx | other_details           | 166                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Carpet Area         | both digits and characters       | throws error with error message | collateral.xlsx | other_details           | 167                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Carpet Area         | negative                         | throws error with error message | collateral.xlsx | other_details           | 168                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Carpet Area         | hyphen                           | throws error with error message | collateral.xlsx | other_details           | 169                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Carpet Area         | space                            | throws error with error message | collateral.xlsx | other_details           | 170                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | invalid  | Carpet Area         | special characters except hyphen | throws error with error message | collateral.xlsx | other_details           | 171                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Age Of Property     | positive digits                  | does not throw any error        | collateral.xlsx | other_details           | 172                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Age Of Property     | characters                       | throws error with error message | collateral.xlsx | other_details           | 173                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Age Of Property     | both digits and characters       | throws error with error message | collateral.xlsx | other_details           | 174                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Age Of Property     | negative                         | throws error with error message | collateral.xlsx | other_details           | 175                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Age Of Property     | hyphen                           | throws error with error message | collateral.xlsx | other_details           | 176                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Age Of Property     | space                            | throws error with error message | collateral.xlsx | other_details           | 177                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | invalid  | Age Of Property     | special characters except hyphen | throws error with error message | collateral.xlsx | other_details           | 178                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Plan Type           | positive digits                  | does not throw any error        | collateral.xlsx | other_details           | 179                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Plan Type           | characters                       | does not throw any error        | collateral.xlsx | other_details           | 180                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Plan Type           | both digits and characters       | does not throw any error        | collateral.xlsx | other_details           | 181                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Plan Type           | negative                         | does not throw any error        | collateral.xlsx | other_details           | 182                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Plan Type           | hyphen                           | does not throw any error        | collateral.xlsx | other_details           | 183                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Plan Type           | space                            | does not throw any error        | collateral.xlsx | other_details           | 184                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | invalid  | Plan Type           | special characters except hyphen | does not throw any error        | collateral.xlsx | other_details           | 185                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Plan Number         | positive digits                  | does not throw any error        | collateral.xlsx | other_details           | 186                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Plan Number         | characters                       | does not throw any error        | collateral.xlsx | other_details           | 187                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Plan Number         | both digits and characters       | does not throw any error        | collateral.xlsx | other_details           | 188                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Plan Number         | negative                         | does not throw any error        | collateral.xlsx | other_details           | 189                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Plan Number         | hyphen                           | does not throw any error        | collateral.xlsx | other_details           | 190                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Plan Number         | space                            | does not throw any error        | collateral.xlsx | other_details           | 191                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | invalid  | Plan Number         | special characters except hyphen | does not throw any error        | collateral.xlsx | other_details           | 192                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Property Lot Number | positive digits                  | does not throw any error        | collateral.xlsx | other_details           | 193                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Property Lot Number | characters                       | does not throw any error        | collateral.xlsx | other_details           | 194                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Property Lot Number | both digits and characters       | does not throw any error        | collateral.xlsx | other_details           | 195                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Property Lot Number | negative                         | does not throw any error        | collateral.xlsx | other_details           | 196                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Property Lot Number | hyphen                           | does not throw any error        | collateral.xlsx | other_details           | 197                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | valid    | Property Lot Number | space                            | does not throw any error        | collateral.xlsx | other_details           | 198                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | invalid  | Property Lot Number | special characters except hyphen | does not throw any error        | collateral.xlsx | other_details           | 199                            | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


#Other Details Field Format Validation
  @SkippedFormatValidation
  @NotImplementable
  Scenario: ACAUTOCAS-2361: CollateralPage Other details format validation for collateral Sub Type <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens "CollateralPage"
    When user selects collateral type as "Property"
    And Collateral Sub Types as "<CollateralSubType>"
    Then user should be able to see all fields of "<Other Details>" with proper format

  #Other Details Field Label Validation
  Scenario Outline: ACAUTOCAS-2362:  CollateralPage Other details <FieldName> label validation for collateral Sub Type <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When user opens "<SectionName>" section
    Then user should be able to see "<FieldName>" of Collateral details with proper label

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aryan.jain
    @Conventional @Release
    Examples:
      | SectionName   | FieldName                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Other Details | Property Classification   | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Property Ownership        | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Market Value              | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Accepted Value (CIC)      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Built Up Area             | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Carpet Area               | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Property Purpose          | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Age Of Property(In Years) | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Residual Age of Property  | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Accepted Valuation        | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Plan Type                 | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Plan Number               | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Property Lot Number       | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Considered Value          | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName   | FieldName                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Other Details | Property Classification   | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Property Ownership        | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Market Value              | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Accepted Value (CIC)      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Built Up Area             | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Carpet Area               | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Property Purpose          | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Age Of Property(In Years) | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Residual Age of Property  | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Accepted Valuation        | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Plan Type                 | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Plan Number               | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Property Lot Number       | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Other Details | Considered Value          | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName   | FieldName                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Other Details | Property Classification   | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Property Ownership        | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Market Value              | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Accepted Value (CIC)      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Built Up Area             | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Carpet Area               | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Property Purpose          | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Age Of Property(In Years) | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Residual Age of Property  | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Accepted Valuation        | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Plan Type                 | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Plan Number               | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Property Lot Number       | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Other Details | Considered Value          | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


#Property Address Field Validation
  Scenario Outline: ACAUTOCAS-1433:  User is able to see <FieldName> for new collateral <CollateralSubType> in Property Address of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When user opens "<SectionName>" section
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aryan.jain
    @Conventional @Release
    Examples:
      | SectionName      | FieldName           | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Property Address | Address Type        | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Full Address        | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Country             | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Plot Number         | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Address Line 2      | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Address Line 3      | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | PinCode             | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Region              | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | State               | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | City                | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | District            | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Taluka              | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Village             | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Residence Status    | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Residence Type      | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Landmark            | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Primary Phone       | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Mobile Phone        | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Is address verified | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName      | FieldName           | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Property Address | Address Type        | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Full Address        | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Country             | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Plot Number         | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Address Line 2      | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Address Line 3      | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | PinCode             | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Region              | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | State               | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | City                | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | District            | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Taluka              | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Village             | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Residence Status    | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Residence Type      | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Landmark            | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Primary Phone       | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Mobile Phone        | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Is address verified | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName      | FieldName           | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Property Address | Address Type        | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Full Address        | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Country             | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Plot Number         | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Address Line 2      | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Address Line 3      | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | PinCode             | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Region              | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | State               | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | City                | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | District            | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Taluka              | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Village             | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Residence Status    | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Residence Type      | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Landmark            | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Primary Phone       | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Mobile Phone        | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Is address verified | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2363:  CollateralPage Property Address data type validation of <Validity> <FieldName> with <InputType> for collateral Sub Type <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens "<SectionName>" section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    When user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in Property Address

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aryan.jain
    @Conventional @Release
    Examples:
      | SectionName      | Validity | FieldName      | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Property Address | valid    | Full Address   | positive digits                  | does not throw any error        | collateral.xlsx | property_address           | 79                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Full Address   | characters                       | does not throw any error        | collateral.xlsx | property_address           | 80                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Full Address   | both digits and characters       | does not throw any error        | collateral.xlsx | property_address           | 81                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Full Address   | negative                         | does not throw any error        | collateral.xlsx | property_address           | 82                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Full Address   | hyphen                           | does not throw any error        | collateral.xlsx | property_address           | 83                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Full Address   | space                            | does not throw any error        | collateral.xlsx | property_address           | 84                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | Full Address   | special characters except hyphen | does not throw any error        | collateral.xlsx | property_address           | 85                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 2 | positive digits                  | does not throw any error        | collateral.xlsx | property_address           | 86                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 2 | characters                       | does not throw any error        | collateral.xlsx | property_address           | 87                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 2 | both digits and characters       | does not throw any error        | collateral.xlsx | property_address           | 88                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 2 | negative                         | does not throw any error        | collateral.xlsx | property_address           | 89                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 2 | hyphen                           | does not throw any error        | collateral.xlsx | property_address           | 90                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 2 | space                            | does not throw any error        | collateral.xlsx | property_address           | 91                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | Address Line 2 | special characters except hyphen | does not throw any error        | collateral.xlsx | property_address           | 92                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 3 | positive digits                  | does not throw any error        | collateral.xlsx | property_address           | 93                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 3 | characters                       | does not throw any error        | collateral.xlsx | property_address           | 94                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 3 | both digits and characters       | does not throw any error        | collateral.xlsx | property_address           | 95                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 3 | negative                         | does not throw any error        | collateral.xlsx | property_address           | 96                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 3 | hyphen                           | does not throw any error        | collateral.xlsx | property_address           | 97                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 3 | space                            | does not throw any error        | collateral.xlsx | property_address           | 98                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | Address Line 3 | special characters except hyphen | does not throw any error        | collateral.xlsx | property_address           | 99                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Landmark       | positive digits                  | does not throw any error        | collateral.xlsx | property_address           | 100                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Landmark       | characters                       | does not throw any error        | collateral.xlsx | property_address           | 101                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Landmark       | both digits and characters       | does not throw any error        | collateral.xlsx | property_address           | 102                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Landmark       | negative                         | does not throw any error        | collateral.xlsx | property_address           | 103                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Landmark       | hyphen                           | does not throw any error        | collateral.xlsx | property_address           | 104                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Landmark       | space                            | does not throw any error        | collateral.xlsx | property_address           | 105                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | Landmark       | special characters except hyphen | does not throw any error        | collateral.xlsx | property_address           | 106                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Mobile Phone   | positive digits                  | does not throw any error        | collateral.xlsx | property_address           | 107                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | Mobile Phone   | characters                       | throws error with error message | collateral.xlsx | property_address           | 108                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | Mobile Phone   | both digits and characters       | throws error with error message | collateral.xlsx | property_address           | 109                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | Mobile Phone   | negative                         | throws error with error message | collateral.xlsx | property_address           | 110                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | Mobile Phone   | hyphen                           | throws error with error message | collateral.xlsx | property_address           | 111                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | Mobile Phone   | space                            | throws error with error message | collateral.xlsx | property_address           | 112                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | Mobile Phone   | special characters except hyphen | throws error with error message | collateral.xlsx | property_address           | 113                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | STD            | positive digits                  | does not throw any error        | collateral.xlsx | property_address           | 114                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | STD            | characters                       | throws error with error message | collateral.xlsx | property_address           | 115                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | STD            | both digits and characters       | throws error with error message | collateral.xlsx | property_address           | 116                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | STD            | negative                         | throws error with error message | collateral.xlsx | property_address           | 117                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | STD            | hyphen                           | throws error with error message | collateral.xlsx | property_address           | 118                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | STD            | space                            | throws error with error message | collateral.xlsx | property_address           | 119                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | STD            | special characters except hyphen | throws error with error message | collateral.xlsx | property_address           | 120                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | EXTN           | positive digits                  | does not throw any error        | collateral.xlsx | property_address           | 121                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | EXTN           | characters                       | throws error with error message | collateral.xlsx | property_address           | 122                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | EXTN           | both digits and characters       | throws error with error message | collateral.xlsx | property_address           | 123                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | EXTN           | negative                         | throws error with error message | collateral.xlsx | property_address           | 124                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | EXTN           | hyphen                           | throws error with error message | collateral.xlsx | property_address           | 125                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | EXTN           | space                            | throws error with error message | collateral.xlsx | property_address           | 126                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | EXTN           | special characters except hyphen | throws error with error message | collateral.xlsx | property_address           | 127                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | NUMBER         | positive digits                  | does not throw any error        | collateral.xlsx | property_address           | 128                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | NUMBER         | characters                       | throws error with error message | collateral.xlsx | property_address           | 129                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | NUMBER         | both digits and characters       | throws error with error message | collateral.xlsx | property_address           | 130                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | NUMBER         | negative                         | throws error with error message | collateral.xlsx | property_address           | 131                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | NUMBER         | hyphen                           | throws error with error message | collateral.xlsx | property_address           | 132                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | NUMBER         | space                            | throws error with error message | collateral.xlsx | property_address           | 133                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | NUMBER         | special characters except hyphen | throws error with error message | collateral.xlsx | property_address           | 134                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName      | Validity | FieldName      | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Property Address | valid    | Full Address   | positive digits                  | does not throw any error        | collateral.xlsx | property_address           | 79                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | Full Address   | characters                       | does not throw any error        | collateral.xlsx | property_address           | 80                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | Full Address   | both digits and characters       | does not throw any error        | collateral.xlsx | property_address           | 81                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | Full Address   | negative                         | does not throw any error        | collateral.xlsx | property_address           | 82                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | Full Address   | hyphen                           | does not throw any error        | collateral.xlsx | property_address           | 83                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | Full Address   | space                            | does not throw any error        | collateral.xlsx | property_address           | 84                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | Full Address   | special characters except hyphen | does not throw any error        | collateral.xlsx | property_address           | 85                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 2 | positive digits                  | does not throw any error        | collateral.xlsx | property_address           | 86                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 2 | characters                       | does not throw any error        | collateral.xlsx | property_address           | 87                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 2 | both digits and characters       | does not throw any error        | collateral.xlsx | property_address           | 88                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 2 | negative                         | does not throw any error        | collateral.xlsx | property_address           | 89                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 2 | hyphen                           | does not throw any error        | collateral.xlsx | property_address           | 90                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 2 | space                            | does not throw any error        | collateral.xlsx | property_address           | 91                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | Address Line 2 | special characters except hyphen | does not throw any error        | collateral.xlsx | property_address           | 92                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 3 | positive digits                  | does not throw any error        | collateral.xlsx | property_address           | 93                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 3 | characters                       | does not throw any error        | collateral.xlsx | property_address           | 94                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 3 | both digits and characters       | does not throw any error        | collateral.xlsx | property_address           | 95                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 3 | negative                         | does not throw any error        | collateral.xlsx | property_address           | 96                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 3 | hyphen                           | does not throw any error        | collateral.xlsx | property_address           | 97                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 3 | space                            | does not throw any error        | collateral.xlsx | property_address           | 98                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | Address Line 3 | special characters except hyphen | does not throw any error        | collateral.xlsx | property_address           | 99                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | Landmark       | positive digits                  | does not throw any error        | collateral.xlsx | property_address           | 100                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | Landmark       | characters                       | does not throw any error        | collateral.xlsx | property_address           | 101                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | Landmark       | both digits and characters       | does not throw any error        | collateral.xlsx | property_address           | 102                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | Landmark       | negative                         | does not throw any error        | collateral.xlsx | property_address           | 103                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | Landmark       | hyphen                           | does not throw any error        | collateral.xlsx | property_address           | 104                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | Landmark       | space                            | does not throw any error        | collateral.xlsx | property_address           | 105                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | Landmark       | special characters except hyphen | does not throw any error        | collateral.xlsx | property_address           | 106                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | Mobile Phone   | positive digits                  | does not throw any error        | collateral.xlsx | property_address           | 107                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | Mobile Phone   | characters                       | throws error with error message | collateral.xlsx | property_address           | 108                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | Mobile Phone   | both digits and characters       | throws error with error message | collateral.xlsx | property_address           | 109                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | Mobile Phone   | negative                         | throws error with error message | collateral.xlsx | property_address           | 110                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | Mobile Phone   | hyphen                           | throws error with error message | collateral.xlsx | property_address           | 111                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | Mobile Phone   | space                            | throws error with error message | collateral.xlsx | property_address           | 112                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | Mobile Phone   | special characters except hyphen | throws error with error message | collateral.xlsx | property_address           | 113                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | STD            | positive digits                  | does not throw any error        | collateral.xlsx | property_address           | 114                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | STD            | characters                       | throws error with error message | collateral.xlsx | property_address           | 115                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | STD            | both digits and characters       | throws error with error message | collateral.xlsx | property_address           | 116                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | STD            | negative                         | throws error with error message | collateral.xlsx | property_address           | 117                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | STD            | hyphen                           | throws error with error message | collateral.xlsx | property_address           | 118                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | STD            | space                            | throws error with error message | collateral.xlsx | property_address           | 119                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | STD            | special characters except hyphen | throws error with error message | collateral.xlsx | property_address           | 120                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | EXTN           | positive digits                  | does not throw any error        | collateral.xlsx | property_address           | 121                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | EXTN           | characters                       | throws error with error message | collateral.xlsx | property_address           | 122                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | EXTN           | both digits and characters       | throws error with error message | collateral.xlsx | property_address           | 123                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | EXTN           | negative                         | throws error with error message | collateral.xlsx | property_address           | 124                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | EXTN           | hyphen                           | throws error with error message | collateral.xlsx | property_address           | 125                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | EXTN           | space                            | throws error with error message | collateral.xlsx | property_address           | 126                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | EXTN           | special characters except hyphen | throws error with error message | collateral.xlsx | property_address           | 127                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | valid    | NUMBER         | positive digits                  | does not throw any error        | collateral.xlsx | property_address           | 128                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | NUMBER         | characters                       | throws error with error message | collateral.xlsx | property_address           | 129                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | NUMBER         | both digits and characters       | throws error with error message | collateral.xlsx | property_address           | 130                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | NUMBER         | negative                         | throws error with error message | collateral.xlsx | property_address           | 131                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | NUMBER         | hyphen                           | throws error with error message | collateral.xlsx | property_address           | 132                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | NUMBER         | space                            | throws error with error message | collateral.xlsx | property_address           | 133                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | invalid  | NUMBER         | special characters except hyphen | throws error with error message | collateral.xlsx | property_address           | 134                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName      | Validity | FieldName      | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Property Address | valid    | Full Address   | positive digits                  | does not throw any error        | collateral.xlsx | property_address           | 79                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Full Address   | characters                       | does not throw any error        | collateral.xlsx | property_address           | 80                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Full Address   | both digits and characters       | does not throw any error        | collateral.xlsx | property_address           | 81                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Full Address   | negative                         | does not throw any error        | collateral.xlsx | property_address           | 82                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Full Address   | hyphen                           | does not throw any error        | collateral.xlsx | property_address           | 83                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Full Address   | space                            | does not throw any error        | collateral.xlsx | property_address           | 84                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | Full Address   | special characters except hyphen | does not throw any error        | collateral.xlsx | property_address           | 85                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 2 | positive digits                  | does not throw any error        | collateral.xlsx | property_address           | 86                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 2 | characters                       | does not throw any error        | collateral.xlsx | property_address           | 87                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 2 | both digits and characters       | does not throw any error        | collateral.xlsx | property_address           | 88                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 2 | negative                         | does not throw any error        | collateral.xlsx | property_address           | 89                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 2 | hyphen                           | does not throw any error        | collateral.xlsx | property_address           | 90                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 2 | space                            | does not throw any error        | collateral.xlsx | property_address           | 91                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | Address Line 2 | special characters except hyphen | does not throw any error        | collateral.xlsx | property_address           | 92                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 3 | positive digits                  | does not throw any error        | collateral.xlsx | property_address           | 93                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 3 | characters                       | does not throw any error        | collateral.xlsx | property_address           | 94                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 3 | both digits and characters       | does not throw any error        | collateral.xlsx | property_address           | 95                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 3 | negative                         | does not throw any error        | collateral.xlsx | property_address           | 96                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 3 | hyphen                           | does not throw any error        | collateral.xlsx | property_address           | 97                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Address Line 3 | space                            | does not throw any error        | collateral.xlsx | property_address           | 98                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | Address Line 3 | special characters except hyphen | does not throw any error        | collateral.xlsx | property_address           | 99                                | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Landmark       | positive digits                  | does not throw any error        | collateral.xlsx | property_address           | 100                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Landmark       | characters                       | does not throw any error        | collateral.xlsx | property_address           | 101                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Landmark       | both digits and characters       | does not throw any error        | collateral.xlsx | property_address           | 102                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Landmark       | negative                         | does not throw any error        | collateral.xlsx | property_address           | 103                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Landmark       | hyphen                           | does not throw any error        | collateral.xlsx | property_address           | 104                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Landmark       | space                            | does not throw any error        | collateral.xlsx | property_address           | 105                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | Landmark       | special characters except hyphen | does not throw any error        | collateral.xlsx | property_address           | 106                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | Mobile Phone   | positive digits                  | does not throw any error        | collateral.xlsx | property_address           | 107                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | Mobile Phone   | characters                       | throws error with error message | collateral.xlsx | property_address           | 108                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | Mobile Phone   | both digits and characters       | throws error with error message | collateral.xlsx | property_address           | 109                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | Mobile Phone   | negative                         | throws error with error message | collateral.xlsx | property_address           | 110                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | Mobile Phone   | hyphen                           | throws error with error message | collateral.xlsx | property_address           | 111                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | Mobile Phone   | space                            | throws error with error message | collateral.xlsx | property_address           | 112                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | Mobile Phone   | special characters except hyphen | throws error with error message | collateral.xlsx | property_address           | 113                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | STD            | positive digits                  | does not throw any error        | collateral.xlsx | property_address           | 114                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | STD            | characters                       | throws error with error message | collateral.xlsx | property_address           | 115                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | STD            | both digits and characters       | throws error with error message | collateral.xlsx | property_address           | 116                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | STD            | negative                         | throws error with error message | collateral.xlsx | property_address           | 117                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | STD            | hyphen                           | throws error with error message | collateral.xlsx | property_address           | 118                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | STD            | space                            | throws error with error message | collateral.xlsx | property_address           | 119                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | STD            | special characters except hyphen | throws error with error message | collateral.xlsx | property_address           | 120                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | EXTN           | positive digits                  | does not throw any error        | collateral.xlsx | property_address           | 121                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | EXTN           | characters                       | throws error with error message | collateral.xlsx | property_address           | 122                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | EXTN           | both digits and characters       | throws error with error message | collateral.xlsx | property_address           | 123                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | EXTN           | negative                         | throws error with error message | collateral.xlsx | property_address           | 124                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | EXTN           | hyphen                           | throws error with error message | collateral.xlsx | property_address           | 125                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | EXTN           | space                            | throws error with error message | collateral.xlsx | property_address           | 126                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | EXTN           | special characters except hyphen | throws error with error message | collateral.xlsx | property_address           | 127                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | valid    | NUMBER         | positive digits                  | does not throw any error        | collateral.xlsx | property_address           | 128                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | NUMBER         | characters                       | throws error with error message | collateral.xlsx | property_address           | 129                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | NUMBER         | both digits and characters       | throws error with error message | collateral.xlsx | property_address           | 130                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | NUMBER         | negative                         | throws error with error message | collateral.xlsx | property_address           | 131                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | NUMBER         | hyphen                           | throws error with error message | collateral.xlsx | property_address           | 132                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | NUMBER         | space                            | throws error with error message | collateral.xlsx | property_address           | 133                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | invalid  | NUMBER         | special characters except hyphen | throws error with error message | collateral.xlsx | property_address           | 134                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


#Property Address Field Format Validation
  @SkippedFormatValidation
  @NotImplementable
  Scenario: ACAUTOCAS-2364: CollateralPage Property details format validation in Property Address for collateral Sub Type <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens "CollateralPage"
    When user selects collateral type as "Property"
    And Collateral Sub Types as "<CollateralSubType>"
    Then user should be able to see all fields of "<Property Address>" with proper format

  #Property Address Field Label Validation
  Scenario Outline: ACAUTOCAS-2365:  CollateralPage Property address details <FieldName> label validation in Property Address for collateral Sub Type <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When user opens "<SectionName>" section
    Then user should be able to see "<FieldName>" with proper label in CollateralType Property

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aryan.jain
    @Conventional @Release
    Examples:
      | SectionName      | FieldName           | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Property Address | Address Type        | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Full Address        | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Country             | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Plot Number         | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Address Line 2      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Address Line 3      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | PinCode             | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Region              | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | State               | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | City                | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | District            | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Taluka              | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Village             | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Residence Status    | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Residence Type      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Landmark            | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Primary Phone       | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Mobile Phone        | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Is address verified | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName      | FieldName           | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Property Address | Address Type        | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Full Address        | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Country             | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Plot Number         | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Address Line 2      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Address Line 3      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | P.O. Box            | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Region              | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Emirate             | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | City                | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | District            | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Taluka              | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Village             | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Residence Status    | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Residence Type      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Landmark            | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Primary Phone       | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Mobile Phone        | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property Address | Is address verified | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName      | FieldName           | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Property Address | Address Type        | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Full Address        | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Country             | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Plot Number         | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Address Line 2      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Address Line 3      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | P.O. Box            | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Region              | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Emirate             | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | City                | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | District            | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Taluka              | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Village             | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Residence Status    | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Residence Type      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Landmark            | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Primary Phone       | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Mobile Phone        | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property Address | Is address verified | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


#Property and Registration Details Entity Validation
  Scenario Outline: ACAUTOCAS-2366: User is able to add multiple agreement details for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When user adds property and registration details to collateral data from
      | collateral.xlsx | property_registration_details | 16 |
      | collateral.xlsx | property_registration_details | 17 |
    Then user should be able to add multiple agreement details for ready property

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-tushar.chauhan
    @Conventional @Release
    Examples:
      | CollateralWB    | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | CollateralWB    | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | CollateralWB    | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


#Property and Registration Details Field Validation
  Scenario Outline: ACAUTOCAS-1434:  User is able to see <FieldName> for collateral <CollateralSubType> in Property and Registration Details of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When user opens "<SectionName>" section
    And click on new agreement details
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aryan.jain
    @Conventional @Release
    Examples:
      | SectionName                       | FieldName                 | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Property and Registration Details | Registration Number       | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Agreement Type            | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | SRO                       | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Sale Deed Number          | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Registration Date         | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Sale Deed Date            | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Agreement Value           | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Amenities Agreement Value | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Remarks(Agreement)        | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName                       | FieldName                 | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Property and Registration Details | Registration Number       | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | Agreement Type            | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | SRO                       | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | Sale Deed Number          | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | Registration Date         | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | Sale Deed Date            | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | Agreement Value           | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | Amenities Agreement Value | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | Remarks(Agreement)        | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName                       | FieldName                 | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Property and Registration Details | Registration Number       | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Agreement Type            | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | SRO                       | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Sale Deed Number          | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Registration Date         | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Sale Deed Date            | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Agreement Value           | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Amenities Agreement Value | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Remarks(Agreement)        | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


  #FeatureID-ACAUTOCAS-225
  Scenario Outline: ACAUTOCAS-17066: CollateralPage New Agreement details data type validation of <Validity> Registration Number with <InputType> for collateral Sub Type <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens "<SectionName>" section
    And click on new agreement detail
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agreementDetails>" and row <Collateral_agreementDetails_rowNum>
    When user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in collateral details

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aryan.jain
    @Conventional @Release
    Examples:
      | SectionName                       | Validity | FieldName                 | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Property and Registration Details | valid    | Registration Number       | positive digits                  | does not throw any error        | collateral.xlsx | agreement_details           | 55                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Registration Number       | characters                       | does not throw any error        | collateral.xlsx | agreement_details           | 56                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Registration Number       | both digits and characters       | does not throw any error        | collateral.xlsx | agreement_details           | 57                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Registration Number       | negative                         | does not throw any error        | collateral.xlsx | agreement_details           | 58                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Registration Number       | hyphen                           | does not throw any error        | collateral.xlsx | agreement_details           | 59                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Registration Number       | space                            | throws error with error message | collateral.xlsx | agreement_details           | 60                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Registration Number       | special characters except hyphen | throws error with error message | collateral.xlsx | agreement_details           | 61                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Sale Deed Number          | positive digits                  | does not throw any error        | collateral.xlsx | agreement_details           | 62                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Sale Deed Number          | characters                       | does not throw any error        | collateral.xlsx | agreement_details           | 63                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Sale Deed Number          | both digits and characters       | does not throw any error        | collateral.xlsx | agreement_details           | 64                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Sale Deed Number          | negative                         | does not throw any error        | collateral.xlsx | agreement_details           | 65                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Sale Deed Number          | hyphen                           | does not throw any error        | collateral.xlsx | agreement_details           | 66                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Sale Deed Number          | space                            | does not throw any error        | collateral.xlsx | agreement_details           | 67                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Sale Deed Number          | special characters except hyphen | does not throw any error        | collateral.xlsx | agreement_details           | 68                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Remarks(Agreement)        | positive digits                  | does not throw any error        | collateral.xlsx | agreement_details           | 69                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Remarks(Agreement)        | characters                       | does not throw any error        | collateral.xlsx | agreement_details           | 70                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Remarks(Agreement)        | both digits and characters       | does not throw any error        | collateral.xlsx | agreement_details           | 71                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Remarks(Agreement)        | negative                         | does not throw any error        | collateral.xlsx | agreement_details           | 72                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Remarks(Agreement)        | hyphen                           | does not throw any error        | collateral.xlsx | agreement_details           | 73                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Remarks(Agreement)        | space                            | does not throw any error        | collateral.xlsx | agreement_details           | 74                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Remarks(Agreement)        | special characters except hyphen | does not throw any error        | collateral.xlsx | agreement_details           | 75                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Agreement Value           | positive digits                  | does not throw any error        | collateral.xlsx | agreement_details           | 76                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Agreement Value           | characters                       | throws error with error message | collateral.xlsx | agreement_details           | 77                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Agreement Value           | both digits and characters       | throws error with error message | collateral.xlsx | agreement_details           | 78                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Agreement Value           | negative                         | throws error with error message | collateral.xlsx | agreement_details           | 79                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Agreement Value           | hyphen                           | throws error with error message | collateral.xlsx | agreement_details           | 80                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Agreement Value           | space                            | throws error with error message | collateral.xlsx | agreement_details           | 81                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Agreement Value           | special characters except hyphen | throws error with error message | collateral.xlsx | agreement_details           | 82                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Amenities Agreement Value | positive digits                  | does not throw any error        | collateral.xlsx | agreement_details           | 83                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | characters                       | throws error with error message | collateral.xlsx | agreement_details           | 84                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | both digits and characters       | throws error with error message | collateral.xlsx | agreement_details           | 85                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | negative                         | throws error with error message | collateral.xlsx | agreement_details           | 86                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | hyphen                           | throws error with error message | collateral.xlsx | agreement_details           | 87                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | space                            | throws error with error message | collateral.xlsx | agreement_details           | 88                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | special characters except hyphen | throws error with error message | collateral.xlsx | agreement_details           | 89                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName                       | Validity | FieldName                 | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Property and Registration Details | valid    | Registration Number       | positive digits                  | does not throw any error        | collateral.xlsx | agreement_details           | 55                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Registration Number       | characters                       | does not throw any error        | collateral.xlsx | agreement_details           | 56                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Registration Number       | both digits and characters       | does not throw any error        | collateral.xlsx | agreement_details           | 57                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Registration Number       | negative                         | does not throw any error        | collateral.xlsx | agreement_details           | 58                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Registration Number       | hyphen                           | does not throw any error        | collateral.xlsx | agreement_details           | 59                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Registration Number       | space                            | throws error with error message | collateral.xlsx | agreement_details           | 60                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Registration Number       | special characters except hyphen | throws error with error message | collateral.xlsx | agreement_details           | 61                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Sale Deed Number          | positive digits                  | does not throw any error        | collateral.xlsx | agreement_details           | 62                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Sale Deed Number          | characters                       | does not throw any error        | collateral.xlsx | agreement_details           | 63                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Sale Deed Number          | both digits and characters       | does not throw any error        | collateral.xlsx | agreement_details           | 64                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Sale Deed Number          | negative                         | does not throw any error        | collateral.xlsx | agreement_details           | 65                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Sale Deed Number          | hyphen                           | does not throw any error        | collateral.xlsx | agreement_details           | 66                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Sale Deed Number          | space                            | does not throw any error        | collateral.xlsx | agreement_details           | 67                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Sale Deed Number          | special characters except hyphen | does not throw any error        | collateral.xlsx | agreement_details           | 68                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Remarks(Agreement)        | positive digits                  | does not throw any error        | collateral.xlsx | agreement_details           | 69                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Remarks(Agreement)        | characters                       | does not throw any error        | collateral.xlsx | agreement_details           | 70                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Remarks(Agreement)        | both digits and characters       | does not throw any error        | collateral.xlsx | agreement_details           | 71                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Remarks(Agreement)        | negative                         | does not throw any error        | collateral.xlsx | agreement_details           | 72                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Remarks(Agreement)        | hyphen                           | does not throw any error        | collateral.xlsx | agreement_details           | 73                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Remarks(Agreement)        | space                            | does not throw any error        | collateral.xlsx | agreement_details           | 74                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Remarks(Agreement)        | special characters except hyphen | does not throw any error        | collateral.xlsx | agreement_details           | 75                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Agreement Value           | positive digits                  | does not throw any error        | collateral.xlsx | agreement_details           | 76                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Agreement Value           | characters                       | throws error with error message | collateral.xlsx | agreement_details           | 77                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Agreement Value           | both digits and characters       | throws error with error message | collateral.xlsx | agreement_details           | 78                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Agreement Value           | negative                         | throws error with error message | collateral.xlsx | agreement_details           | 79                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Agreement Value           | hyphen                           | throws error with error message | collateral.xlsx | agreement_details           | 80                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Agreement Value           | space                            | throws error with error message | collateral.xlsx | agreement_details           | 81                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Agreement Value           | special characters except hyphen | throws error with error message | collateral.xlsx | agreement_details           | 82                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Amenities Agreement Value | positive digits                  | does not throw any error        | collateral.xlsx | agreement_details           | 83                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | characters                       | throws error with error message | collateral.xlsx | agreement_details           | 84                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | both digits and characters       | throws error with error message | collateral.xlsx | agreement_details           | 85                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | negative                         | throws error with error message | collateral.xlsx | agreement_details           | 86                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | hyphen                           | throws error with error message | collateral.xlsx | agreement_details           | 87                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | space                            | throws error with error message | collateral.xlsx | agreement_details           | 88                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | special characters except hyphen | throws error with error message | collateral.xlsx | agreement_details           | 89                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName                       | Validity | FieldName                 | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Property and Registration Details | valid    | Registration Number       | positive digits                  | does not throw any error        | collateral.xlsx | agreement_details           | 55                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Registration Number       | characters                       | does not throw any error        | collateral.xlsx | agreement_details           | 56                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Registration Number       | both digits and characters       | does not throw any error        | collateral.xlsx | agreement_details           | 57                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Registration Number       | negative                         | does not throw any error        | collateral.xlsx | agreement_details           | 58                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Registration Number       | hyphen                           | does not throw any error        | collateral.xlsx | agreement_details           | 59                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Registration Number       | space                            | throws error with error message | collateral.xlsx | agreement_details           | 60                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Registration Number       | special characters except hyphen | throws error with error message | collateral.xlsx | agreement_details           | 61                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Sale Deed Number          | positive digits                  | does not throw any error        | collateral.xlsx | agreement_details           | 62                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Sale Deed Number          | characters                       | does not throw any error        | collateral.xlsx | agreement_details           | 63                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Sale Deed Number          | both digits and characters       | does not throw any error        | collateral.xlsx | agreement_details           | 64                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Sale Deed Number          | negative                         | does not throw any error        | collateral.xlsx | agreement_details           | 65                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Sale Deed Number          | hyphen                           | does not throw any error        | collateral.xlsx | agreement_details           | 66                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Sale Deed Number          | space                            | does not throw any error        | collateral.xlsx | agreement_details           | 67                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Sale Deed Number          | special characters except hyphen | does not throw any error        | collateral.xlsx | agreement_details           | 68                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Remarks(Agreement)        | positive digits                  | does not throw any error        | collateral.xlsx | agreement_details           | 69                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Remarks(Agreement)        | characters                       | does not throw any error        | collateral.xlsx | agreement_details           | 70                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Remarks(Agreement)        | both digits and characters       | does not throw any error        | collateral.xlsx | agreement_details           | 71                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Remarks(Agreement)        | negative                         | does not throw any error        | collateral.xlsx | agreement_details           | 72                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Remarks(Agreement)        | hyphen                           | does not throw any error        | collateral.xlsx | agreement_details           | 73                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Remarks(Agreement)        | space                            | does not throw any error        | collateral.xlsx | agreement_details           | 74                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Remarks(Agreement)        | special characters except hyphen | does not throw any error        | collateral.xlsx | agreement_details           | 75                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Agreement Value           | positive digits                  | does not throw any error        | collateral.xlsx | agreement_details           | 76                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Agreement Value           | characters                       | throws error with error message | collateral.xlsx | agreement_details           | 77                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Agreement Value           | both digits and characters       | throws error with error message | collateral.xlsx | agreement_details           | 78                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Agreement Value           | negative                         | throws error with error message | collateral.xlsx | agreement_details           | 79                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Agreement Value           | hyphen                           | throws error with error message | collateral.xlsx | agreement_details           | 80                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Agreement Value           | space                            | throws error with error message | collateral.xlsx | agreement_details           | 81                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Agreement Value           | special characters except hyphen | throws error with error message | collateral.xlsx | agreement_details           | 82                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | valid    | Amenities Agreement Value | positive digits                  | does not throw any error        | collateral.xlsx | agreement_details           | 83                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | characters                       | throws error with error message | collateral.xlsx | agreement_details           | 84                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | both digits and characters       | throws error with error message | collateral.xlsx | agreement_details           | 85                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | negative                         | throws error with error message | collateral.xlsx | agreement_details           | 86                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | hyphen                           | throws error with error message | collateral.xlsx | agreement_details           | 87                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | space                            | throws error with error message | collateral.xlsx | agreement_details           | 88                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | special characters except hyphen | throws error with error message | collateral.xlsx | agreement_details           | 89                                 | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |



#Property and Registration Details Field Format Validation
  @SkippedFormatValidation
  @NotImplementable
    #FeatureID-ACAUTOCAS-225
  Scenario Outline: ACAUTOCAS-17067:  CollateralPage Property and Registration details <FieldName> format validation for collateral Sub Type <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When user opens "<SectionName>" section
    And click on new agreement details
    Then user should be able to see "<FieldName>" with proper format for collateral Sub Type "<CollateralSubType>"
    Examples:
      | SectionName                       | FieldName         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | applicantType | ApplicationStage   | category | key | CollateralSubType   |
      | Property and Registration Details | Registration Date | collateral.xlsx | default            | 15                        | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Sale Deed Date    | collateral.xlsx | default            | 15                        | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |

  #Property and Registration Details Field Label Validation
  #FeatureID-ACAUTOCAS-225
  Scenario Outline: ACAUTOCAS-17068: CollateralPage Property details <FieldName> labels validation for collateral Sub Type <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When user opens "<SectionName>" section
    And click on new agreement details
    Then user should be able to see "<FieldName>" of Property and Registration Details with proper label

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aryan.jain
    @Conventional @Release
    Examples:
      | SectionName                       | FieldName                      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Property and Registration Details | Registration Number(Agreement) | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Agreement Type                 | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | SRO                            | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Sale Deed Number               | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Registration Date              | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Sale Deed Date                 | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Agreement Value                | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Amenities Agreement Value      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Remarks(Agreement)             | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName                       | FieldName                      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Property and Registration Details | Registration Number(Agreement) | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | Agreement Type                 | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | SRO                            | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | Sale Deed Number               | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | Registration Date              | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | Sale Deed Date                 | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | Agreement Value                | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | Amenities Agreement Value      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Property and Registration Details | Remarks(Agreement)             | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName                       | FieldName                      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Property and Registration Details | Registration Number(Agreement) | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Agreement Type                 | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | SRO                            | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Sale Deed Number               | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Registration Date              | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Sale Deed Date                 | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Agreement Value                | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Amenities Agreement Value      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Property and Registration Details | Remarks(Agreement)             | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


#Ownership Details Field Validation
  Scenario Outline: ACAUTOCAS-1435:  User is able to see <FieldName> for collateral <CollateralSubType> in Ownership Details of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When user opens "<SectionName>" section
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aryan.jain
    @Conventional @Release
    Examples:
      | SectionName       | FieldName           | Mandatory | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Ownership Details | Owner Type          | mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | Ownership Status    | mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | Owner Name          | mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | Linked Applicant    | mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | Percent Share       | mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | Ownership From Date | mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | Ownership To Date   | mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName       | FieldName           | Mandatory | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Ownership Details | Owner Type          | mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Ownership Details | Ownership Status    | mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Ownership Details | Owner Name          | mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Ownership Details | Linked Applicant    | mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Ownership Details | Percent Share       | mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Ownership Details | Ownership From Date | mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Ownership Details | Ownership To Date   | mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName       | FieldName           | Mandatory | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Ownership Details | Owner Type          | mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | Ownership Status    | mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | Owner Name          | mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | Linked Applicant    | mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | Percent Share       | mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | Ownership From Date | mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | Ownership To Date   | mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2370: CollateralPage Ownership Details data type validation of <Validity> <FieldName> with <InputType> for collateral Sub Type <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens "<SectionName>" section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Ownership_Details>" and row <Collateral_Ownership_Details_rowNum>
    When user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in collateral details

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aryan.jain
    @Conventional @Release
    Examples:
      | SectionName       | Validity | FieldName  | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_Ownership_Details | Collateral_Ownership_Details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Ownership Details | valid    | Owner Name | positive digits                  | does not throw any error        | collateral.xlsx | ownership_details            | 73                                  | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | valid    | Owner Name | characters                       | does not throw any error        | collateral.xlsx | ownership_details            | 74                                  | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | valid    | Owner Name | both digits and characters       | does not throw any error        | collateral.xlsx | ownership_details            | 75                                  | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | valid    | Owner Name | negative                         | throws error with error message | collateral.xlsx | ownership_details            | 76                                  | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | valid    | Owner Name | hyphen                           | throws error with error message | collateral.xlsx | ownership_details            | 77                                  | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | valid    | Owner Name | space                            | does not throw any error        | collateral.xlsx | ownership_details            | 78                                  | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | invalid  | Owner Name | special characters except hyphen | throws error with error message | collateral.xlsx | ownership_details            | 79                                  | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName       | Validity | FieldName  | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_Ownership_Details | Collateral_Ownership_Details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Ownership Details | valid    | Owner Name | positive digits                  | does not throw any error        | collateral.xlsx | ownership_details            | 73                                  | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Ownership Details | valid    | Owner Name | characters                       | does not throw any error        | collateral.xlsx | ownership_details            | 74                                  | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Ownership Details | valid    | Owner Name | both digits and characters       | does not throw any error        | collateral.xlsx | ownership_details            | 75                                  | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Ownership Details | valid    | Owner Name | negative                         | throws error with error message | collateral.xlsx | ownership_details            | 76                                  | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Ownership Details | valid    | Owner Name | hyphen                           | throws error with error message | collateral.xlsx | ownership_details            | 77                                  | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Ownership Details | valid    | Owner Name | space                            | does not throw any error        | collateral.xlsx | ownership_details            | 78                                  | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Ownership Details | invalid  | Owner Name | special characters except hyphen | throws error with error message | collateral.xlsx | ownership_details            | 79                                  | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName       | Validity | FieldName  | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_Ownership_Details | Collateral_Ownership_Details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Ownership Details | valid    | Owner Name | positive digits                  | does not throw any error        | collateral.xlsx | ownership_details            | 73                                  | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | valid    | Owner Name | characters                       | does not throw any error        | collateral.xlsx | ownership_details            | 74                                  | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | valid    | Owner Name | both digits and characters       | does not throw any error        | collateral.xlsx | ownership_details            | 75                                  | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | valid    | Owner Name | negative                         | throws error with error message | collateral.xlsx | ownership_details            | 76                                  | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | valid    | Owner Name | hyphen                           | throws error with error message | collateral.xlsx | ownership_details            | 77                                  | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | valid    | Owner Name | space                            | does not throw any error        | collateral.xlsx | ownership_details            | 78                                  | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | invalid  | Owner Name | special characters except hyphen | throws error with error message | collateral.xlsx | ownership_details            | 79                                  | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


#Ownership Details Field Format Validation
  @SkippedFormatValidation
  @NotImplementable
  Scenario: ACAUTOCAS-2371: CollateralPage Ownership details format validation for collateral Sub Type <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When user opens "CollateralPage"
    And User selects Collateral Type as "Property"
    And user selects sub collateral as "<CollateralSubType>"
    Then user should be able to see all fields of "<Ownership Details>" with proper format

  #Ownership Details Field Label Validation
  Scenario Outline: ACAUTOCAS-2372: CollateralPage Ownership details <FieldName> label validation for collateral Sub Type <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When user opens "<SectionName>" section
    Then user should be able to see "<FieldName>" of "<SectionName>" with proper label

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aryan.jain
    @Conventional @Release
    Examples:
      | SectionName       | FieldName        | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Ownership Details | Owner Type       | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | Ownership Status | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | Owner Name       | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | Linked Applicant | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | Percent Share    | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | Ownership Dates  | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName       | FieldName        | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Ownership Details | Owner Type       | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Ownership Details | Ownership Status | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Ownership Details | Owner Name       | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Ownership Details | Linked Applicant | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Ownership Details | Percent Share    | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Ownership Details | Ownership Dates  | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName       | FieldName        | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Ownership Details | Owner Type       | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | Ownership Status | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | Owner Name       | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | Linked Applicant | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | Percent Share    | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Ownership Details | Ownership Dates  | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


  #Builder Details Field Validation
  Scenario Outline: ACAUTOCAS-1436: User is able to see <FieldName> for collateral <CollateralSubType> in Builder Details of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user checks property checkbox
    When user opens "<SectionName>" section
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aryan.jain
    @Conventional @Release
    Examples:
      | SectionName     | FieldName             | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Builder Details | Company Name          | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Tier of Builder       | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Project Name          | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Building Name         | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Wing Name             | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Flat/Shop No.         | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Floor No.             | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Building Completion % | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | APF Number            | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName     | FieldName             | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Builder Details | Company Name          | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | Tier of Builder       | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | Project Name          | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | Building Name         | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | Wing Name             | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | Flat/Shop No.         | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | Floor No.             | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | Building Completion % | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | APF Number            | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName     | FieldName             | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Builder Details | Company Name          | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Tier of Builder       | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Project Name          | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Building Name         | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Wing Name             | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Flat/Shop No.         | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Floor No.             | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Building Completion % | mandatory     | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | APF Number            | non mandatory | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2373:  CollateralPage Builder Details data type validation of <Validity> <FieldName> with <InputType> for collateral Sub Type <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user checks property checkbox
    And user opens "<SectionName>" section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_builderDetails>" and row <Collateral_builderDetails_rowNum>
    When user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in Builder Details

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aryan.jain
    @Conventional @Release
    Examples:
      | SectionName     | Validity | FieldName     | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_builderDetails | Collateral_builderDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Builder Details | valid    | Flat/Shop No. | positive digits                  | does not throw any error        | collateral.xlsx | builder_details           | 24                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | invalid  | Flat/Shop No. | characters                       | throws error with error message | collateral.xlsx | builder_details           | 25                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | invalid  | Flat/Shop No. | both digits and characters       | throws error with error message | collateral.xlsx | builder_details           | 26                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | invalid  | Flat/Shop No. | negative                         | throws error with error message | collateral.xlsx | builder_details           | 27                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | invalid  | Flat/Shop No. | hyphen                           | throws error with error message | collateral.xlsx | builder_details           | 28                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | invalid  | Flat/Shop No. | space                            | throws error with error message | collateral.xlsx | builder_details           | 29                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | invalid  | Flat/Shop No. | special characters except hyphen | throws error with error message | collateral.xlsx | builder_details           | 30                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | valid    | Floor No.     | positive digits                  | does not throw any error        | collateral.xlsx | builder_details           | 31                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | invalid  | Floor No.     | characters                       | throws error with error message | collateral.xlsx | builder_details           | 32                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | invalid  | Floor No.     | both digits and characters       | throws error with error message | collateral.xlsx | builder_details           | 33                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | invalid  | Floor No.     | negative                         | throws error with error message | collateral.xlsx | builder_details           | 34                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | invalid  | Floor No.     | hyphen                           | throws error with error message | collateral.xlsx | builder_details           | 35                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | invalid  | Floor No.     | space                            | throws error with error message | collateral.xlsx | builder_details           | 36                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | invalid  | Floor No.     | special characters except hyphen | throws error with error message | collateral.xlsx | builder_details           | 37                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName     | Validity | FieldName     | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_builderDetails | Collateral_builderDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Builder Details | valid    | Flat/Shop No. | positive digits                  | does not throw any error        | collateral.xlsx | builder_details           | 24                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | invalid  | Flat/Shop No. | characters                       | throws error with error message | collateral.xlsx | builder_details           | 25                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | invalid  | Flat/Shop No. | both digits and characters       | throws error with error message | collateral.xlsx | builder_details           | 26                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | invalid  | Flat/Shop No. | negative                         | throws error with error message | collateral.xlsx | builder_details           | 27                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | invalid  | Flat/Shop No. | hyphen                           | throws error with error message | collateral.xlsx | builder_details           | 28                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | invalid  | Flat/Shop No. | space                            | throws error with error message | collateral.xlsx | builder_details           | 29                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | invalid  | Flat/Shop No. | special characters except hyphen | throws error with error message | collateral.xlsx | builder_details           | 30                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | valid    | Floor No.     | positive digits                  | does not throw any error        | collateral.xlsx | builder_details           | 31                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | invalid  | Floor No.     | characters                       | throws error with error message | collateral.xlsx | builder_details           | 32                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | invalid  | Floor No.     | both digits and characters       | throws error with error message | collateral.xlsx | builder_details           | 33                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | invalid  | Floor No.     | negative                         | throws error with error message | collateral.xlsx | builder_details           | 34                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | invalid  | Floor No.     | hyphen                           | throws error with error message | collateral.xlsx | builder_details           | 35                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | invalid  | Floor No.     | space                            | throws error with error message | collateral.xlsx | builder_details           | 36                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | invalid  | Floor No.     | special characters except hyphen | throws error with error message | collateral.xlsx | builder_details           | 37                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName     | Validity | FieldName     | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_builderDetails | Collateral_builderDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Builder Details | valid    | Flat/Shop No. | positive digits                  | does not throw any error        | collateral.xlsx | builder_details           | 24                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | invalid  | Flat/Shop No. | characters                       | throws error with error message | collateral.xlsx | builder_details           | 25                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | invalid  | Flat/Shop No. | both digits and characters       | throws error with error message | collateral.xlsx | builder_details           | 26                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | invalid  | Flat/Shop No. | negative                         | throws error with error message | collateral.xlsx | builder_details           | 27                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | invalid  | Flat/Shop No. | hyphen                           | throws error with error message | collateral.xlsx | builder_details           | 28                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | invalid  | Flat/Shop No. | space                            | throws error with error message | collateral.xlsx | builder_details           | 29                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | invalid  | Flat/Shop No. | special characters except hyphen | throws error with error message | collateral.xlsx | builder_details           | 30                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | valid    | Floor No.     | positive digits                  | does not throw any error        | collateral.xlsx | builder_details           | 31                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | invalid  | Floor No.     | characters                       | throws error with error message | collateral.xlsx | builder_details           | 32                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | invalid  | Floor No.     | both digits and characters       | throws error with error message | collateral.xlsx | builder_details           | 33                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | invalid  | Floor No.     | negative                         | throws error with error message | collateral.xlsx | builder_details           | 34                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | invalid  | Floor No.     | hyphen                           | throws error with error message | collateral.xlsx | builder_details           | 35                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | invalid  | Floor No.     | space                            | throws error with error message | collateral.xlsx | builder_details           | 36                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | invalid  | Floor No.     | special characters except hyphen | throws error with error message | collateral.xlsx | builder_details           | 37                               | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |



    #Builder Details Field Format Validation
  @SkippedFormatValidation
  @NotImplementable
  Scenario: ACAUTOCAS-2374: CollateralPage Builder details format validation for collateral Sub Type <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user selects collateral type as "Property"
    And Collateral Sub Types as "<CollateralSubType>"
    And user checks property checkbox
    When user opens "<SectionName>" section
    Then user should be able to see all fields of "<Builder Details>" with proper format

  #Builder Details Field Label Validation
  Scenario Outline: ACAUTOCAS-2375: CollateralPage Builder details <FieldName> label validation for collateral Sub Type <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user checks property checkbox
    When user opens "<SectionName>" section
    Then user should be able to see "<FieldName>" of Builder Constructed with proper label

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aryan.jain
    @Conventional @Release
    Examples:
      | SectionName     | FieldName             | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Builder Details | Company Name          | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Tier of Builder       | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Project Name          | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Building Name         | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Wing Name             | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Flat/Shop No.         | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Floor No.             | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Building Completion % | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | APF Number            | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName     | FieldName             | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Builder Details | Company Name          | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | Tier of Builder       | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | Project Name          | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | Building Name         | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | Wing Name             | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | Flat/Shop No.         | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | Floor No.             | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | Building Completion % | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Builder Details | APF Number            | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic @Release
    Examples:
      | SectionName     | FieldName             | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Builder Details | Company Name          | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Tier of Builder       | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Project Name          | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Building Name         | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Wing Name             | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Flat/Shop No.         | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Floor No.             | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | Building Completion % | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Builder Details | APF Number            | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


#Sale Deed Date <= Registration Date

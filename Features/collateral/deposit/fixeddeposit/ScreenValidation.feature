@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-harshprit.kumar
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@Part-1
#${ApplicantType:["indiv", "nonindiv"]}

Feature: Fixed Deposit Screen Validation

#  Pre-Requisites---
#  In this feature we will validate the screen layout when an Deposit Fixed Deposit is attached to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-2516: user selects collateral type as Deposit of the <ProductType> Product Type application at the <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then application should allow only the collateral type which is linked to the product
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

  Scenario Outline: ACAUTOCAS-2517: user chooses sub collateral as Fixed Deposit of the <ProductType> Product Type application at the <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then application should allow only the sub type which is linked to the product
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

  Scenario Outline: ACAUTOCAS-3021: User is able to see <SectionName> for new collateral Fixed Deposit of the <ProductType> Product Type application at the <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then User should be able to see "<SectionName>" on collateral page
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | SectionName        | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | collateral.xlsx | Collateral Details | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Nominee Details    | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Reason             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

     # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | SectionName        | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | collateral.xlsx | Collateral Details | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Nominee Details    | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Reason             | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | SectionName        | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | collateral.xlsx | Collateral Details | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Nominee Details    | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Reason             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

  Scenario Outline: ACAUTOCAS-3022: User is able to see <FieldName> in Collateral details for new collateral Fixed Deposit of the <ProductType> Product Type application at the <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see field "<FieldName>" as "<Mandatory>" on collateral page
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | FieldName                    | Mandatory | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | collateral.xlsx | Collateral Ref No            | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Description                  | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Issuer Bank                  | yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | FD Number                    | yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Name of Fixed Deposit Holder | yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Deposit Amount               | yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Maturity Date                | yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Maturity Amount              | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Rate of Interest             | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Account Number               | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Is Joint Fixed Deposit       | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Remarks                      | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Auto Renewal                 | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Product Processor            | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

  # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | FieldName                    | Mandatory | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | collateral.xlsx | Collateral Ref No            | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Description                  | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Issuer Bank                  | yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | FD Number                    | yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Name of Fixed Deposit Holder | yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Deposit Amount               | yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Maturity Date                | yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Maturity Amount              | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Rate of Interest             | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Account Number               | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Is Joint Fixed Deposit       | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Remarks                      | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Auto Renewal                 | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Product Processor            | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | FieldName                    | Mandatory | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | collateral.xlsx | Collateral Ref No            | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Description                  | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Issuer Bank                  | yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | FD Number                    | yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Name of Fixed Deposit Holder | yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Deposit Amount               | yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Maturity Date                | yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Maturity Amount              | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Rate of Interest             | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Account Number               | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Is Joint Fixed Deposit       | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Remarks                      | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Auto Renewal                 | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Product Processor            | no        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |


  Scenario Outline: ACAUTOCAS-2518: CollateralPage details <Validity> Collateral Ref No with <InputType> validation for collateral Sub Type Fixed Deposit of the <ProductType> Product Type application at the <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    When user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName         | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Collateral Ref No | fixed_deposit           | 95                             | positive digits                  | does not throw any error        | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Collateral Ref No | fixed_deposit           | 96                             | characters                       | does not throw any error        | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Collateral Ref No | fixed_deposit           | 97                             | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Collateral Ref No | fixed_deposit           | 98                             | negative                         | does not throw any error        | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Collateral Ref No | fixed_deposit           | 99                             | hyphen                           | does not throw any error        | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Collateral Ref No | fixed_deposit           | 100                            | space                            | does not throw any error        | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Collateral Ref No | fixed_deposit           | 101                            | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName         | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | valid    | Collateral Ref No | fixed_deposit           | 95                             | positive digits                  | does not throw any error        | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Collateral Ref No | fixed_deposit           | 96                             | characters                       | does not throw any error        | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Collateral Ref No | fixed_deposit           | 97                             | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Collateral Ref No | fixed_deposit           | 98                             | negative                         | does not throw any error        | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Collateral Ref No | fixed_deposit           | 99                             | hyphen                           | does not throw any error        | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Collateral Ref No | fixed_deposit           | 100                            | space                            | does not throw any error        | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Collateral Ref No | fixed_deposit           | 101                            | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName         | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Collateral Ref No | fixed_deposit           | 95                             | positive digits                  | does not throw any error        | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Collateral Ref No | fixed_deposit           | 96                             | characters                       | does not throw any error        | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Collateral Ref No | fixed_deposit           | 97                             | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Collateral Ref No | fixed_deposit           | 98                             | negative                         | does not throw any error        | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Collateral Ref No | fixed_deposit           | 99                             | hyphen                           | does not throw any error        | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Collateral Ref No | fixed_deposit           | 100                            | space                            | does not throw any error        | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Collateral Ref No | fixed_deposit           | 101                            | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |


  Scenario Outline: ACAUTOCAS-16898: CollateralPage details <Validity> Deposit Amount with <InputType> validation for collateral Sub Type Fixed Deposit of the <ProductType> Product Type application at the <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixed_deposit>" and row <Collateral_fixed_deposit_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_fixed_deposit | Collateral_fixed_deposit_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Deposit Amount | positive                   | does not throw any error        | collateral.xlsx | fixed_deposit            | 0                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Deposit Amount | negative                   | throws error with error message | collateral.xlsx | fixed_deposit            | 116                             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Deposit Amount | zero                       | throws error with error message | collateral.xlsx | fixed_deposit            | 113                             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Deposit Amount | characters                 | throws error with error message | collateral.xlsx | fixed_deposit            | 112                             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Deposit Amount | both digits and characters | throws error with error message | collateral.xlsx | fixed_deposit            | 117                             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Deposit Amount | space                      | throws error with error message | collateral.xlsx | fixed_deposit            | 114                             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Deposit Amount | special characters         | throws error with error message | collateral.xlsx | fixed_deposit            | 115                             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

        # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_fixed_deposit | Collateral_fixed_deposit_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | valid    | Deposit Amount | positive                   | does not throw any error        | collateral.xlsx | fixed_deposit            | 0                               | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Deposit Amount | negative                   | throws error with error message | collateral.xlsx | fixed_deposit            | 116                             | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Deposit Amount | zero                       | throws error with error message | collateral.xlsx | fixed_deposit            | 113                             | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Deposit Amount | characters                 | throws error with error message | collateral.xlsx | fixed_deposit            | 112                             | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Deposit Amount | both digits and characters | throws error with error message | collateral.xlsx | fixed_deposit            | 117                             | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Deposit Amount | space                      | throws error with error message | collateral.xlsx | fixed_deposit            | 114                             | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Deposit Amount | special characters         | throws error with error message | collateral.xlsx | fixed_deposit            | 115                             | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_fixed_deposit | Collateral_fixed_deposit_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Deposit Amount | positive                   | does not throw any error        | collateral.xlsx | fixed_deposit            | 0                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Deposit Amount | negative                   | throws error with error message | collateral.xlsx | fixed_deposit            | 116                             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Deposit Amount | zero                       | throws error with error message | collateral.xlsx | fixed_deposit            | 113                             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Deposit Amount | characters                 | throws error with error message | collateral.xlsx | fixed_deposit            | 112                             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Deposit Amount | both digits and characters | throws error with error message | collateral.xlsx | fixed_deposit            | 117                             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Deposit Amount | space                      | throws error with error message | collateral.xlsx | fixed_deposit            | 114                             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Deposit Amount | special characters         | throws error with error message | collateral.xlsx | fixed_deposit            | 115                             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |


  Scenario Outline: ACAUTOCAS-16899: CollateralPage details <Validity> FD Number with <InputType> validation for collateral Sub Type Fixed Deposit of the <ProductType> Product Type application at the <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixed_deposit>" and row <Collateral_fixed_deposit_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_fixed_deposit | Collateral_fixed_deposit_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | FD Number | positive                   | does not throw any error        | collateral.xlsx | fixed_deposit            | 0                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | FD Number | negative                   | throws error with error message | collateral.xlsx | fixed_deposit            | 121                             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | FD Number | zero                       | does not throw any error        | collateral.xlsx | fixed_deposit            | 120                             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | FD Number | characters                 | does not throw any error        | collateral.xlsx | fixed_deposit            | 118                             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | FD Number | both digits and characters | does not throw any error        | collateral.xlsx | fixed_deposit            | 123                             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | FD Number | space                      | does not throw any error        | collateral.xlsx | fixed_deposit            | 119                             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | FD Number | special characters         | throws error with error message | collateral.xlsx | fixed_deposit            | 122                             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

        # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_fixed_deposit | Collateral_fixed_deposit_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | valid    | FD Number | positive                   | does not throw any error        | collateral.xlsx | fixed_deposit            | 0                               | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | FD Number | negative                   | throws error with error message | collateral.xlsx | fixed_deposit            | 121                             | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | FD Number | zero                       | does not throw any error        | collateral.xlsx | fixed_deposit            | 120                             | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | FD Number | characters                 | does not throw any error        | collateral.xlsx | fixed_deposit            | 118                             | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | FD Number | both digits and characters | does not throw any error        | collateral.xlsx | fixed_deposit            | 123                             | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | FD Number | space                      | does not throw any error        | collateral.xlsx | fixed_deposit            | 119                             | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | FD Number | special characters         | throws error with error message | collateral.xlsx | fixed_deposit            | 122                             | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_fixed_deposit | Collateral_fixed_deposit_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | FD Number | positive                   | does not throw any error        | collateral.xlsx | fixed_deposit            | 0                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | FD Number | negative                   | throws error with error message | collateral.xlsx | fixed_deposit            | 121                             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | FD Number | zero                       | does not throw any error        | collateral.xlsx | fixed_deposit            | 120                             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | FD Number | characters                 | does not throw any error        | collateral.xlsx | fixed_deposit            | 118                             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | FD Number | both digits and characters | does not throw any error        | collateral.xlsx | fixed_deposit            | 123                             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | FD Number | space                      | does not throw any error        | collateral.xlsx | fixed_deposit            | 119                             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | FD Number | special characters         | throws error with error message | collateral.xlsx | fixed_deposit            | 122                             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |


  Scenario Outline: ACAUTOCAS-16900: CollateralPage details <Validity> Name of Fixed Deposit Holder with <InputType> validation for collateral Sub Type Fixed Deposit of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
        #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName                    | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | invalid  | Name of Fixed Deposit Holder | positive digits            | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 124                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Name of Fixed Deposit Holder | characters                 | does not throw any error        | collateral.xlsx | default            | 16                        | fixed_deposit           | 125                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Name of Fixed Deposit Holder | negative                   | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 127                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Name of Fixed Deposit Holder | both digits and characters | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 126                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Name of Fixed Deposit Holder | special characters         | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 128                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Name of Fixed Deposit Holder | space                      | does not throw any error        | collateral.xlsx | default            | 16                        | fixed_deposit           | 129                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

       # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName                    | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | invalid  | Name of Fixed Deposit Holder | positive digits            | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 124                            | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Name of Fixed Deposit Holder | characters                 | does not throw any error        | collateral.xlsx | default            | 16                        | fixed_deposit           | 125                            | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Name of Fixed Deposit Holder | negative                   | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 127                            | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Name of Fixed Deposit Holder | both digits and characters | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 126                            | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Name of Fixed Deposit Holder | special characters         | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 128                            | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Name of Fixed Deposit Holder | space                      | does not throw any error        | collateral.xlsx | default            | 16                        | fixed_deposit           | 129                            | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName                    | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | invalid  | Name of Fixed Deposit Holder | positive digits            | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 124                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Name of Fixed Deposit Holder | characters                 | does not throw any error        | collateral.xlsx | default            | 16                        | fixed_deposit           | 125                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Name of Fixed Deposit Holder | negative                   | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 127                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Name of Fixed Deposit Holder | both digits and characters | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 126                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Name of Fixed Deposit Holder | special characters         | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 128                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Name of Fixed Deposit Holder | space                      | does not throw any error        | collateral.xlsx | default            | 16                        | fixed_deposit           | 129                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |


  Scenario Outline: ACAUTOCAS-16901: CollateralPage details <Validity> Maturity Amount with <InputType> validation for collateral Sub Type Fixed Deposit of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName       | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Maturity Amount | positive                   | does not throw any error        | collateral.xlsx | fixed_deposit           | 0                              | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Maturity Amount | negative                   | throws error with error message | collateral.xlsx | fixed_deposit           | 134                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Maturity Amount | zero                       | does not throw any error        | collateral.xlsx | fixed_deposit           | 131                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Maturity Amount | characters                 | throws error with error message | collateral.xlsx | fixed_deposit           | 130                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Maturity Amount | both digits and characters | throws error with error message | collateral.xlsx | fixed_deposit           | 135                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Maturity Amount | space                      | throws error with error message | collateral.xlsx | fixed_deposit           | 132                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Maturity Amount | special characters         | throws error with error message | collateral.xlsx | fixed_deposit           | 133                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName       | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | valid    | Maturity Amount | positive                   | does not throw any error        | collateral.xlsx | fixed_deposit           | 0                              | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Maturity Amount | negative                   | throws error with error message | collateral.xlsx | fixed_deposit           | 134                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Maturity Amount | zero                       | does not throw any error        | collateral.xlsx | fixed_deposit           | 131                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Maturity Amount | characters                 | throws error with error message | collateral.xlsx | fixed_deposit           | 130                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Maturity Amount | both digits and characters | throws error with error message | collateral.xlsx | fixed_deposit           | 135                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Maturity Amount | space                      | throws error with error message | collateral.xlsx | fixed_deposit           | 132                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Maturity Amount | special characters         | throws error with error message | collateral.xlsx | fixed_deposit           | 133                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName       | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Maturity Amount | positive                   | does not throw any error        | collateral.xlsx | fixed_deposit           | 0                              | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Maturity Amount | negative                   | throws error with error message | collateral.xlsx | fixed_deposit           | 134                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Maturity Amount | zero                       | does not throw any error        | collateral.xlsx | fixed_deposit           | 131                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Maturity Amount | characters                 | throws error with error message | collateral.xlsx | fixed_deposit           | 130                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Maturity Amount | both digits and characters | throws error with error message | collateral.xlsx | fixed_deposit           | 135                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Maturity Amount | space                      | throws error with error message | collateral.xlsx | fixed_deposit           | 132                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Maturity Amount | special characters         | throws error with error message | collateral.xlsx | fixed_deposit           | 133                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |


  Scenario Outline: ACAUTOCAS-16902: CollateralPage details <Validity> Account Number with <InputType> validation for collateral Sub Type Fixed Deposit of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
      #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Account Number | positive                   | does not throw any error        | collateral.xlsx | fixed_deposit           | 0                              | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Account Number | negative                   | throws error with error message | collateral.xlsx | fixed_deposit           | 140                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Account Number | zero                       | does not throw any error        | collateral.xlsx | fixed_deposit           | 139                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Account Number | characters                 | does not throw any error        | collateral.xlsx | fixed_deposit           | 136                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Account Number | both digits and characters | does not throw any error        | collateral.xlsx | fixed_deposit           | 138                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Account Number | space                      | does not throw any error        | collateral.xlsx | fixed_deposit           | 137                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Account Number | special characters         | throws error with error message | collateral.xlsx | fixed_deposit           | 141                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

     # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | valid    | Account Number | positive                   | does not throw any error        | collateral.xlsx | fixed_deposit           | 0                              | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Account Number | negative                   | throws error with error message | collateral.xlsx | fixed_deposit           | 140                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Account Number | zero                       | does not throw any error        | collateral.xlsx | fixed_deposit           | 139                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Account Number | characters                 | does not throw any error        | collateral.xlsx | fixed_deposit           | 136                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Account Number | both digits and characters | does not throw any error        | collateral.xlsx | fixed_deposit           | 138                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Account Number | space                      | does not throw any error        | collateral.xlsx | fixed_deposit           | 137                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Account Number | special characters         | throws error with error message | collateral.xlsx | fixed_deposit           | 141                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Account Number | positive                   | does not throw any error        | collateral.xlsx | fixed_deposit           | 0                              | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Account Number | negative                   | throws error with error message | collateral.xlsx | fixed_deposit           | 140                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Account Number | zero                       | does not throw any error        | collateral.xlsx | fixed_deposit           | 139                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Account Number | characters                 | does not throw any error        | collateral.xlsx | fixed_deposit           | 136                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Account Number | both digits and characters | does not throw any error        | collateral.xlsx | fixed_deposit           | 138                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Account Number | space                      | does not throw any error        | collateral.xlsx | fixed_deposit           | 137                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Account Number | special characters         | throws error with error message | collateral.xlsx | fixed_deposit           | 141                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |


  Scenario Outline: ACAUTOCAS-16903: CollateralPage details <Validity> Rate Of Interest with <InputType> validation for collateral Sub Type Fixed Deposit of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
          #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName        | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Rate Of Interest | positive                   | does not throw any error        | collateral.xlsx | fixed_deposit           | 0                              | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Rate Of Interest | negative                   | throws error with error message | collateral.xlsx | fixed_deposit           | 146                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Rate Of Interest | zero                       | does not throw any error        | collateral.xlsx | fixed_deposit           | 145                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Rate Of Interest | characters                 | throws error with error message | collateral.xlsx | fixed_deposit           | 142                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Rate Of Interest | both digits and characters | throws error with error message | collateral.xlsx | fixed_deposit           | 144                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Rate Of Interest | space                      | throws error with error message | collateral.xlsx | fixed_deposit           | 143                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Rate Of Interest | special characters         | throws error with error message | collateral.xlsx | fixed_deposit           | 147                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

     # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName        | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | valid    | Rate Of Interest | positive                   | does not throw any error        | collateral.xlsx | fixed_deposit           | 0                              | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Rate Of Interest | negative                   | throws error with error message | collateral.xlsx | fixed_deposit           | 146                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Rate Of Interest | zero                       | does not throw any error        | collateral.xlsx | fixed_deposit           | 145                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Rate Of Interest | characters                 | throws error with error message | collateral.xlsx | fixed_deposit           | 142                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Rate Of Interest | both digits and characters | throws error with error message | collateral.xlsx | fixed_deposit           | 144                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Rate Of Interest | space                      | throws error with error message | collateral.xlsx | fixed_deposit           | 143                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Rate Of Interest | special characters         | throws error with error message | collateral.xlsx | fixed_deposit           | 147                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName        | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Rate Of Interest | positive                   | does not throw any error        | collateral.xlsx | fixed_deposit           | 0                              | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Rate Of Interest | negative                   | throws error with error message | collateral.xlsx | fixed_deposit           | 146                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Rate Of Interest | zero                       | does not throw any error        | collateral.xlsx | fixed_deposit           | 145                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Rate Of Interest | characters                 | throws error with error message | collateral.xlsx | fixed_deposit           | 142                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Rate Of Interest | both digits and characters | throws error with error message | collateral.xlsx | fixed_deposit           | 144                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Rate Of Interest | space                      | throws error with error message | collateral.xlsx | fixed_deposit           | 143                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Rate Of Interest | special characters         | throws error with error message | collateral.xlsx | fixed_deposit           | 147                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |


  Scenario Outline: ACAUTOCAS-16904: CollateralPage details <Validity> Maturity Date(Fixed Deposit) with <InputType> validation for collateral Sub Type Fixed Deposit of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
              #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName                    | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Maturity Date(Fixed Deposit) | valid date format   | does not throw any error        | collateral.xlsx | fixed_deposit           | 148                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Maturity Date(Fixed Deposit) | invalid date format | throws error with error message | collateral.xlsx | fixed_deposit           | 149                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Maturity Date(Fixed Deposit) | special characters  | throws error with error message | collateral.xlsx | fixed_deposit           | 150                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Maturity Date(Fixed Deposit) | past date           | does not throw any error        | collateral.xlsx | fixed_deposit           | 151                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Maturity Date(Fixed Deposit) | future date         | does not throw any error        | collateral.xlsx | fixed_deposit           | 152                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Maturity Date(Fixed Deposit) | year less than 1942 | throws error with error message | collateral.xlsx | fixed_deposit           | 153                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Maturity Date(Fixed Deposit) | year equal to 1942  | does not throw any error        | collateral.xlsx | fixed_deposit           | 154                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

      # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName                    | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | valid    | Maturity Date(Fixed Deposit) | valid date format   | does not throw any error        | collateral.xlsx | fixed_deposit           | 148                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Maturity Date(Fixed Deposit) | invalid date format | throws error with error message | collateral.xlsx | fixed_deposit           | 149                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Maturity Date(Fixed Deposit) | special characters  | throws error with error message | collateral.xlsx | fixed_deposit           | 150                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Maturity Date(Fixed Deposit) | past date           | does not throw any error        | collateral.xlsx | fixed_deposit           | 151                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Maturity Date(Fixed Deposit) | future date         | does not throw any error        | collateral.xlsx | fixed_deposit           | 152                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Maturity Date(Fixed Deposit) | year less than 1942 | throws error with error message | collateral.xlsx | fixed_deposit           | 153                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Maturity Date(Fixed Deposit) | year equal to 1942  | does not throw any error        | collateral.xlsx | fixed_deposit           | 154                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName                    | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Maturity Date(Fixed Deposit) | valid date format   | does not throw any error        | collateral.xlsx | fixed_deposit           | 148                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Maturity Date(Fixed Deposit) | invalid date format | throws error with error message | collateral.xlsx | fixed_deposit           | 149                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Maturity Date(Fixed Deposit) | special characters  | throws error with error message | collateral.xlsx | fixed_deposit           | 150                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Maturity Date(Fixed Deposit) | past date           | does not throw any error        | collateral.xlsx | fixed_deposit           | 151                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Maturity Date(Fixed Deposit) | future date         | does not throw any error        | collateral.xlsx | fixed_deposit           | 152                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Maturity Date(Fixed Deposit) | year less than 1942 | throws error with error message | collateral.xlsx | fixed_deposit           | 153                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Maturity Date(Fixed Deposit) | year equal to 1942  | does not throw any error        | collateral.xlsx | fixed_deposit           | 154                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

  @SkippedFormatValidation
  Scenario: ACAUTOCAS-2519:  CollateralPage Collateral details field format validation for Fixed Deposit
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Deposit" and Sub Type "Fixed Deposit"
    Then user should be able to see all fields of "<Collateral details>" with proper format

  Scenario Outline: ACAUTOCAS-2520: CollateralPage Collateral details field labels <Collateral details> for Fixed Deposit of the <ProductType> Product Type application at the <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then user should be able to see all fields of "<Collateral details>" with proper label
  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral details           | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | collateral.xlsx | Collateral Ref No            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Description                  | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Issuer Bank                  | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Name of Fixed Deposit Holder | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Deposit Amount               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Maturity Date                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Maturity Amount              | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Rate of Interest             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Account Number               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Is Joint Fixed Deposit       | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Remark                       | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

      # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral details           | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | collateral.xlsx | Collateral Ref No            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Description                  | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Issuer Bank                  | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Name of Fixed Deposit Holder | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Deposit Amount               | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Maturity Date                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Maturity Amount              | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Rate of Profit               | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Account Number               | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Is Joint Fixed Deposit       | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Remark                       | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral details           | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | collateral.xlsx | Collateral Ref No            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Description                  | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Issuer Bank                  | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Name of Fixed Deposit Holder | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Deposit Amount               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Maturity Date                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Maturity Amount              | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Rate of Profit               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Account Number               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Is Joint Fixed Deposit       | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Remark                       | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

  Scenario Outline: ACAUTOCAS-3023: User is able to see <FieldName> field for new collateral Fixed Deposit in Nominee Details of the <ProductType> Product Type application at the <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user clicks on add nominee on nominee details
    Then user should be able to the see field "<FieldName>" marked mandatory as "<Mandatory>"
      #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                 | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | Nominee Name              | mandatory     | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Nominee Relationship      | mandatory     | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Gender                    | mandatory     | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Date of Birth             | mandatory     | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Is Minor?                 | non mandatory | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Appointee Name            | non mandatory | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Appointee Relationship    | non mandatory | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Appointee DOB             | non mandatory | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Nominee address           | non mandatory | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Percentage of Entitlement | mandatory     | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

      # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                 | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | Nominee Name              | mandatory     | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | Nominee Relationship      | mandatory     | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | Gender                    | mandatory     | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | Date of Birth             | mandatory     | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | Is Minor?                 | non mandatory | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | Appointee Name            | non mandatory | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | Appointee Relationship    | non mandatory | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | Appointee DOB             | non mandatory | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | Nominee address           | non mandatory | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | Percentage of Entitlement | mandatory     | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                 | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | Nominee Name              | mandatory     | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Nominee Relationship      | mandatory     | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Gender                    | mandatory     | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Date of Birth             | mandatory     | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Is Minor?                 | non mandatory | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Appointee Name            | non mandatory | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Appointee Relationship    | non mandatory | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Appointee DOB             | non mandatory | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Nominee address           | non mandatory | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Percentage of Entitlement | mandatory     | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |


  Scenario Outline:ACAUTOCAS-2521:CollateralPage details <Validity> Percentage Of Entitlement(Nominee Details) with <InputType> validation for collateral Sub Type Fixed Deposit of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user clicks on add nominee on nominee details
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
          #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName                                  | InputType                       | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Percentage Of Entitlement(Nominee Details) | positive less than equal to 100 | does not throw any error        | collateral.xlsx | default            | 16                        | fixed_deposit           | 102                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Percentage Of Entitlement(Nominee Details) | negative                        | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 103                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Percentage Of Entitlement(Nominee Details) | zero                            | does not throw any error        | collateral.xlsx | default            | 16                        | fixed_deposit           | 104                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Percentage Of Entitlement(Nominee Details) | more than 100                   | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 105                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Percentage Of Entitlement(Nominee Details) | more than 2 decimal places      | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 106                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Percentage Of Entitlement(Nominee Details) | characters                      | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 107                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Percentage Of Entitlement(Nominee Details) | both digits and characters      | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 108                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Percentage Of Entitlement(Nominee Details) | space                           | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 109                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Percentage Of Entitlement(Nominee Details) | special characters              | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 110                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

     # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName                                  | InputType                       | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | valid    | Percentage Of Entitlement(Nominee Details) | positive less than equal to 100 | does not throw any error        | collateral.xlsx | default            | 16                        | fixed_deposit           | 102                            | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Percentage Of Entitlement(Nominee Details) | negative                        | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 103                            | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Percentage Of Entitlement(Nominee Details) | zero                            | does not throw any error        | collateral.xlsx | default            | 16                        | fixed_deposit           | 104                            | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Percentage Of Entitlement(Nominee Details) | more than 100                   | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 105                            | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Percentage Of Entitlement(Nominee Details) | more than 2 decimal places      | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 106                            | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Percentage Of Entitlement(Nominee Details) | characters                      | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 107                            | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Percentage Of Entitlement(Nominee Details) | both digits and characters      | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 108                            | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Percentage Of Entitlement(Nominee Details) | space                           | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 109                            | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Percentage Of Entitlement(Nominee Details) | special characters              | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 110                            | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName                                  | InputType                       | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Percentage Of Entitlement(Nominee Details) | positive less than equal to 100 | does not throw any error        | collateral.xlsx | default            | 16                        | fixed_deposit           | 102                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Percentage Of Entitlement(Nominee Details) | negative                        | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 103                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Percentage Of Entitlement(Nominee Details) | zero                            | does not throw any error        | collateral.xlsx | default            | 16                        | fixed_deposit           | 104                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Percentage Of Entitlement(Nominee Details) | more than 100                   | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 105                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Percentage Of Entitlement(Nominee Details) | more than 2 decimal places      | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 106                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Percentage Of Entitlement(Nominee Details) | characters                      | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 107                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Percentage Of Entitlement(Nominee Details) | both digits and characters      | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 108                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Percentage Of Entitlement(Nominee Details) | space                           | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 109                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Percentage Of Entitlement(Nominee Details) | special characters              | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 110                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |


  Scenario Outline: ACAUTOCAS-16905:CollateralPage details <Validity> Nominee Name(Fixed Deposit) with <InputType> validation for collateral Sub Type Fixed Deposit of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user clicks on add nominee on nominee details
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
              #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName                   | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | invalid  | Nominee Name(Fixed Deposit) | positive digits            | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 124                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Nominee Name(Fixed Deposit) | characters                 | does not throw any error        | collateral.xlsx | default            | 16                        | fixed_deposit           | 125                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Nominee Name(Fixed Deposit) | negative                   | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 127                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Nominee Name(Fixed Deposit) | both digits and characters | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 126                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Nominee Name(Fixed Deposit) | special characters         | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 128                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Nominee Name(Fixed Deposit) | space                      | does not throw any error        | collateral.xlsx | default            | 16                        | fixed_deposit           | 129                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

     # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName                   | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | invalid  | Nominee Name(Fixed Deposit) | positive digits            | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 124                            | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Nominee Name(Fixed Deposit) | characters                 | does not throw any error        | collateral.xlsx | default            | 16                        | fixed_deposit           | 125                            | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Nominee Name(Fixed Deposit) | negative                   | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 127                            | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Nominee Name(Fixed Deposit) | both digits and characters | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 126                            | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Nominee Name(Fixed Deposit) | special characters         | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 128                            | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Nominee Name(Fixed Deposit) | space                      | does not throw any error        | collateral.xlsx | default            | 16                        | fixed_deposit           | 129                            | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName                   | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | invalid  | Nominee Name(Fixed Deposit) | positive digits            | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 124                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Nominee Name(Fixed Deposit) | characters                 | does not throw any error        | collateral.xlsx | default            | 16                        | fixed_deposit           | 125                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Nominee Name(Fixed Deposit) | negative                   | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 127                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Nominee Name(Fixed Deposit) | both digits and characters | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 126                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Nominee Name(Fixed Deposit) | special characters         | throws error with error message | collateral.xlsx | default            | 16                        | fixed_deposit           | 128                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Nominee Name(Fixed Deposit) | space                      | does not throw any error        | collateral.xlsx | default            | 16                        | fixed_deposit           | 129                            | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |


  Scenario Outline: ACAUTOCAS-16906:CollateralPage details <Validity> Date Of Birth(Nominee Details) with <InputType> validation for collateral Sub Type Fixed Deposit of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user clicks on add nominee on nominee details
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName                      | Throws_NotThrows                | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   | InputType           |
      | valid    | Date Of Birth(Nominee Details) | does not throw any error        | collateral.xlsx | fixed_deposit           | 162                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> | valid date format   |
      | invalid  | Date Of Birth(Nominee Details) | throws error with error message | collateral.xlsx | fixed_deposit           | 163                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> | invalid date format |
      | invalid  | Date Of Birth(Nominee Details) | throws error with error message | collateral.xlsx | fixed_deposit           | 164                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> | current date        |
      | valid    | Date Of Birth(Nominee Details) | does not throw any error        | collateral.xlsx | fixed_deposit           | 165                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> | past date           |
      | invalid  | Date Of Birth(Nominee Details) | throws error with error message | collateral.xlsx | fixed_deposit           | 166                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> | future date         |
      | invalid  | Date Of Birth(Nominee Details) | throws error with error message | collateral.xlsx | fixed_deposit           | 167                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> | year less than 1942 |
      | valid    | Date Of Birth(Nominee Details) | does not throw any error        | collateral.xlsx | fixed_deposit           | 168                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> | year equal to 1942  |
      | invalid  | Date Of Birth(Nominee Details) | throws error with error message | collateral.xlsx | fixed_deposit           | 169                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> | special characters  |

       # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName                      | Throws_NotThrows                | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   | InputType           |
      | valid    | Date Of Birth(Nominee Details) | does not throw any error        | collateral.xlsx | fixed_deposit           | 162                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> | valid date format   |
      | invalid  | Date Of Birth(Nominee Details) | throws error with error message | collateral.xlsx | fixed_deposit           | 163                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> | invalid date format |
      | invalid  | Date Of Birth(Nominee Details) | throws error with error message | collateral.xlsx | fixed_deposit           | 164                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> | current date        |
      | valid    | Date Of Birth(Nominee Details) | does not throw any error        | collateral.xlsx | fixed_deposit           | 165                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> | past date           |
      | invalid  | Date Of Birth(Nominee Details) | throws error with error message | collateral.xlsx | fixed_deposit           | 166                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> | future date         |
      | invalid  | Date Of Birth(Nominee Details) | throws error with error message | collateral.xlsx | fixed_deposit           | 167                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> | year less than 1942 |
      | valid    | Date Of Birth(Nominee Details) | does not throw any error        | collateral.xlsx | fixed_deposit           | 168                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> | year equal to 1942  |
      | invalid  | Date Of Birth(Nominee Details) | throws error with error message | collateral.xlsx | fixed_deposit           | 169                            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> | special characters  |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName                      | Throws_NotThrows                | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   | InputType           |
      | valid    | Date Of Birth(Nominee Details) | does not throw any error        | collateral.xlsx | fixed_deposit           | 162                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> | valid date format   |
      | invalid  | Date Of Birth(Nominee Details) | throws error with error message | collateral.xlsx | fixed_deposit           | 163                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> | invalid date format |
      | invalid  | Date Of Birth(Nominee Details) | throws error with error message | collateral.xlsx | fixed_deposit           | 164                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> | current date        |
      | valid    | Date Of Birth(Nominee Details) | does not throw any error        | collateral.xlsx | fixed_deposit           | 165                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> | past date           |
      | invalid  | Date Of Birth(Nominee Details) | throws error with error message | collateral.xlsx | fixed_deposit           | 166                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> | future date         |
      | invalid  | Date Of Birth(Nominee Details) | throws error with error message | collateral.xlsx | fixed_deposit           | 167                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> | year less than 1942 |
      | valid    | Date Of Birth(Nominee Details) | does not throw any error        | collateral.xlsx | fixed_deposit           | 168                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> | year equal to 1942  |
      | invalid  | Date Of Birth(Nominee Details) | throws error with error message | collateral.xlsx | fixed_deposit           | 169                            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> | special characters  |


  @SkippedFormatValidation
  @NotImplementable
  Scenario: ACAUTOCAS-2522: CollateralPage Nominee details field format validation for Fixed Deposit
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Deposit" and Sub Type "Fixed Deposit"
    Then user should be able to see all fields of "<Nominee Details>" with proper format


  Scenario Outline: ACAUTOCAS-2523: CollateralPage Nominee details field labels for Fixed Deposit of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is trying to attach a new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user fills mandatory fields of collateral details for fixed Deposit
    When user clicks on add nominee on nominee details
    Then user should be able to see all fields of "<Nominee Details>" with proper labels in fixed deposit
      #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Nominee Details           | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | collateral.xlsx | fixed_deposit           | 0                              | Nominee Name              | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | fixed_deposit           | 0                              | Nominee Relationship      | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | fixed_deposit           | 0                              | Gender                    | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | fixed_deposit           | 0                              | Date of Birth             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | fixed_deposit           | 0                              | Appointee Relationship    | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | fixed_deposit           | 0                              | Appointee DOB             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | fixed_deposit           | 0                              | Percentage of Entitlement | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

     # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Nominee Details           | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | collateral.xlsx | fixed_deposit           | 0                              | Nominee Name              | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | fixed_deposit           | 0                              | Nominee Relationship      | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | fixed_deposit           | 0                              | Gender                    | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | fixed_deposit           | 0                              | Date of Birth             | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | fixed_deposit           | 0                              | Appointee Relationship    | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | fixed_deposit           | 0                              | Appointee DOB             | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | fixed_deposit           | 0                              | Percentage of Entitlement | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Nominee Details           | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | collateral.xlsx | fixed_deposit           | 0                              | Nominee Name              | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | fixed_deposit           | 0                              | Nominee Relationship      | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | fixed_deposit           | 0                              | Gender                    | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | fixed_deposit           | 0                              | Date of Birth             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | fixed_deposit           | 0                              | Appointee Relationship    | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | fixed_deposit           | 0                              | Appointee DOB             | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | fixed_deposit           | 0                              | Percentage of Entitlement | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

  Scenario Outline: ACAUTOCAS-3024: User is able to see <FieldName> in reason details for new collateral Fixed Deposit of the <ProductType> Product Type application at the <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see field "<FieldName>" marked mandatory as "<Mandatory>"
          #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | FieldName          | Mandatory | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | collateral.xlsx | Reason Code        | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Reason Description | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Remarks            | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

     # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | FieldName          | Mandatory | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | collateral.xlsx | Reason Code        | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Reason Description | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Remarks            | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | FieldName          | Mandatory | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | collateral.xlsx | Reason Code        | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Reason Description | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Remarks            | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |


  Scenario Outline: ACAUTOCAS-2524: CollateralPage details <Validity> Remarks with <InputType> validation for collateral Sub Type Fixed Deposit of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the data
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    When user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
              #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName               | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | InputType                        | Throws_NotThrows         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   | Var |
      | valid    | Remarks(Reason Details) | fixed_deposit           | 155                            | positive digits                  | does not throw any error | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |     |
      | valid    | Remarks(Reason Details) | fixed_deposit           | 156                            | characters                       | does not throw any error | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |     |
      | valid    | Remarks(Reason Details) | fixed_deposit           | 157                            | both digits and characters       | does not throw any error | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |     |
      | valid    | Remarks(Reason Details) | fixed_deposit           | 158                            | negative                         | does not throw any error | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |     |
      | valid    | Remarks(Reason Details) | fixed_deposit           | 159                            | hyphen                           | does not throw any error | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |     |
      | valid    | Remarks(Reason Details) | fixed_deposit           | 160                            | space                            | does not throw any error | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |     |
      | valid    | Remarks(Reason Details) | fixed_deposit           | 161                            | special characters except hyphen | does not throw any error | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |     |

     # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName               | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | InputType                        | Throws_NotThrows         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   | Var |
      | valid    | Remarks(Reason Details) | fixed_deposit           | 155                            | positive digits                  | does not throw any error | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |     |
      | valid    | Remarks(Reason Details) | fixed_deposit           | 156                            | characters                       | does not throw any error | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |     |
      | valid    | Remarks(Reason Details) | fixed_deposit           | 157                            | both digits and characters       | does not throw any error | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |     |
      | valid    | Remarks(Reason Details) | fixed_deposit           | 158                            | negative                         | does not throw any error | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |     |
      | valid    | Remarks(Reason Details) | fixed_deposit           | 159                            | hyphen                           | does not throw any error | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |     |
      | valid    | Remarks(Reason Details) | fixed_deposit           | 160                            | space                            | does not throw any error | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |     |
      | valid    | Remarks(Reason Details) | fixed_deposit           | 161                            | special characters except hyphen | does not throw any error | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |     |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName               | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | InputType                        | Throws_NotThrows         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   | Var |
      | valid    | Remarks(Reason Details) | fixed_deposit           | 155                            | positive digits                  | does not throw any error | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |     |
      | valid    | Remarks(Reason Details) | fixed_deposit           | 156                            | characters                       | does not throw any error | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |     |
      | valid    | Remarks(Reason Details) | fixed_deposit           | 157                            | both digits and characters       | does not throw any error | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |     |
      | valid    | Remarks(Reason Details) | fixed_deposit           | 158                            | negative                         | does not throw any error | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |     |
      | valid    | Remarks(Reason Details) | fixed_deposit           | 159                            | hyphen                           | does not throw any error | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |     |
      | valid    | Remarks(Reason Details) | fixed_deposit           | 160                            | space                            | does not throw any error | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |     |
      | valid    | Remarks(Reason Details) | fixed_deposit           | 161                            | special characters except hyphen | does not throw any error | collateral.xlsx | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |     |


  @SkippedFormatValidation
  @NotImplementable
  Scenario: ACAUTOCAS-2525:  CollateralPage Reason details field format validation for collateral Sub Type Fixed Deposit
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Deposit" and Sub Type "Fixed Deposit"
    Then user should be able to see all fields of "<Reason details>" with proper format


  Scenario Outline: ACAUTOCAS-2526: CollateralPage Reason details field labels for Fixed Deposit of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is trying to attach a new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see all fields of "<Reason details>" with proper labels
                  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Reason details     | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | collateral.xlsx | Reason Code        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Reason Description | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Remarks            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

     # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Reason details     | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | collateral.xlsx | Reason Code        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Reason Description | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Remarks            | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Reason details     | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | collateral.xlsx | Reason Code        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Reason Description | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Remarks            | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

    #Nominee Address Field Validation
  Scenario Outline: ACAUTOCAS-3025: User is able to see all address fields for nominee of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is trying to attach a new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user clicks on add nominee on nominee details
    When user add the address on the nominee details
    Then user should be able to see field "<FieldName>" marked mandatory as "<Mandatory>" on the collateral page
  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | FieldName                     | Mandatory | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | collateral.xlsx | Address Type                  | Yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Country                       | Yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Flat/Plot Number              | Yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Address Line 2                | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Address Line 3                | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | PinCode                       | Yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Region                        | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | State                         | Yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | City                          | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | District                      | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Taluka                        | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Village                       | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Current Address               | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Duration at this Address From | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Duration at this Address To   | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Duration at this City From    | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Duration at this City To      | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Phone Number:                 | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Mobile Phone                  | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

      # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | FieldName                     | Mandatory | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | collateral.xlsx | Address Type                  | Yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Country                       | Yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Flat/Plot Number              | Yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Address Line 2                | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Address Line 3                | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | PinCode                       | Yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Region                        | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | State                         | Yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | City                          | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | District                      | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Taluka                        | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Village                       | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Current Address               | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Duration at this Address From | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Duration at this Address To   | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Duration at this City From    | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Duration at this City To      | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Phone Number:                 | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | collateral.xlsx | Mobile Phone                  | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | FieldName                     | Mandatory | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | collateral.xlsx | Address Type                  | Yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Country                       | Yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Flat/Plot Number              | Yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Address Line 2                | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Address Line 3                | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | PinCode                       | Yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Region                        | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | State                         | Yes       | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | City                          | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | District                      | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Taluka                        | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Village                       | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Current Address               | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Duration at this Address From | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Duration at this Address To   | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Duration at this City From    | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Duration at this City To      | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Phone Number:                 | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | collateral.xlsx | Mobile Phone                  | No        | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |


  Scenario Outline:ACAUTOCAS-2527:CollateralPage Property Address <Validity> Full Address with <InputType> validation for collateral Sub Type Fixed Deposit of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user clicks on add nominee on nominee details
    And user add the address on the nominee details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fill "<FieldName>" of nominee details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
      #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName    | InputType                        | Throws_NotThrows         | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Full Address | positive digits                  | does not throw any error | collateral.xlsx | address_details           | 0                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Full Address | characters                       | does not throw any error | collateral.xlsx | address_details           | 1                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Full Address | both digits and characters       | does not throw any error | collateral.xlsx | address_details           | 2                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Full Address | negative                         | does not throw any error | collateral.xlsx | address_details           | 3                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Full Address | hyphen                           | does not throw any error | collateral.xlsx | address_details           | 4                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Full Address | space                            | does not throw any error | collateral.xlsx | address_details           | 5                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Full Address | special characters except hyphen | does not throw any error | collateral.xlsx | address_details           | 6                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

      # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName    | InputType                        | Throws_NotThrows         | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | valid    | Full Address | positive digits                  | does not throw any error | collateral.xlsx | address_details           | 0                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Full Address | characters                       | does not throw any error | collateral.xlsx | address_details           | 1                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Full Address | both digits and characters       | does not throw any error | collateral.xlsx | address_details           | 2                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Full Address | negative                         | does not throw any error | collateral.xlsx | address_details           | 3                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Full Address | hyphen                           | does not throw any error | collateral.xlsx | address_details           | 4                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Full Address | space                            | does not throw any error | collateral.xlsx | address_details           | 5                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Full Address | special characters except hyphen | does not throw any error | collateral.xlsx | address_details           | 6                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName    | InputType                        | Throws_NotThrows         | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Full Address | positive digits                  | does not throw any error | collateral.xlsx | address_details           | 0                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Full Address | characters                       | does not throw any error | collateral.xlsx | address_details           | 1                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Full Address | both digits and characters       | does not throw any error | collateral.xlsx | address_details           | 2                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Full Address | negative                         | does not throw any error | collateral.xlsx | address_details           | 3                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Full Address | hyphen                           | does not throw any error | collateral.xlsx | address_details           | 4                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Full Address | space                            | does not throw any error | collateral.xlsx | address_details           | 5                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Full Address | special characters except hyphen | does not throw any error | collateral.xlsx | address_details           | 6                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |


  Scenario Outline: ACAUTOCAS-16907:CollateralPage Property Address <Validity> Plot Number with <InputType> validation for collateral Sub Type Fixed Deposit of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user clicks on add nominee on nominee details
    And user add the address on the nominee details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fill "<FieldName>" of nominee details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
          #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName        | InputType                        | Throws_NotThrows         | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Flat/Plot Number | positive digits                  | does not throw any error | collateral.xlsx | address_details           | 4                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Flat/Plot Number | characters                       | does not throw any error | collateral.xlsx | address_details           | 5                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Flat/Plot Number | both digits and characters       | does not throw any error | collateral.xlsx | address_details           | 6                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Flat/Plot Number | negative                         | does not throw any error | collateral.xlsx | address_details           | 7                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Flat/Plot Number | hyphen                           | does not throw any error | collateral.xlsx | address_details           | 8                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Flat/Plot Number | space                            | does not throw any error | collateral.xlsx | address_details           | 9                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Flat/Plot Number | special characters except hyphen | does not throw any error | collateral.xlsx | address_details           | 10                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

     # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName        | InputType                        | Throws_NotThrows         | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | valid    | Flat/Plot Number | positive digits                  | does not throw any error | collateral.xlsx | address_details           | 4                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Flat/Plot Number | characters                       | does not throw any error | collateral.xlsx | address_details           | 5                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Flat/Plot Number | both digits and characters       | does not throw any error | collateral.xlsx | address_details           | 6                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Flat/Plot Number | negative                         | does not throw any error | collateral.xlsx | address_details           | 7                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Flat/Plot Number | hyphen                           | does not throw any error | collateral.xlsx | address_details           | 8                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Flat/Plot Number | space                            | does not throw any error | collateral.xlsx | address_details           | 9                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Flat/Plot Number | special characters except hyphen | does not throw any error | collateral.xlsx | address_details           | 10                               | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName        | InputType                        | Throws_NotThrows         | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Flat/Plot Number | positive digits                  | does not throw any error | collateral.xlsx | address_details           | 4                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Flat/Plot Number | characters                       | does not throw any error | collateral.xlsx | address_details           | 5                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Flat/Plot Number | both digits and characters       | does not throw any error | collateral.xlsx | address_details           | 6                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Flat/Plot Number | negative                         | does not throw any error | collateral.xlsx | address_details           | 7                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Flat/Plot Number | hyphen                           | does not throw any error | collateral.xlsx | address_details           | 8                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Flat/Plot Number | space                            | does not throw any error | collateral.xlsx | address_details           | 9                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Flat/Plot Number | special characters except hyphen | does not throw any error | collateral.xlsx | address_details           | 10                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |


  Scenario Outline: ACAUTOCAS-16908:CollateralPage Property Address <Validity> Address Line 2 with <InputType> validation for collateral Sub Type Fixed Deposit of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user clicks on add nominee on nominee details
    And user add the address on the nominee details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fill "<FieldName>" of nominee details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
              #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName      | InputType                        | Throws_NotThrows         | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Address Line 2 | positive digits                  | does not throw any error | collateral.xlsx | address_details           | 12                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Address Line 2 | characters                       | does not throw any error | collateral.xlsx | address_details           | 13                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Address Line 2 | both digits and characters       | does not throw any error | collateral.xlsx | address_details           | 14                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Address Line 2 | negative                         | does not throw any error | collateral.xlsx | address_details           | 15                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Address Line 2 | hyphen                           | does not throw any error | collateral.xlsx | address_details           | 16                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Address Line 2 | space                            | does not throw any error | collateral.xlsx | address_details           | 17                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Address Line 2 | special characters except hyphen | does not throw any error | collateral.xlsx | address_details           | 18                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

      # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName      | InputType                        | Throws_NotThrows         | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | valid    | Address Line 2 | positive digits                  | does not throw any error | collateral.xlsx | address_details           | 12                               | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Address Line 2 | characters                       | does not throw any error | collateral.xlsx | address_details           | 13                               | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Address Line 2 | both digits and characters       | does not throw any error | collateral.xlsx | address_details           | 14                               | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Address Line 2 | negative                         | does not throw any error | collateral.xlsx | address_details           | 15                               | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Address Line 2 | hyphen                           | does not throw any error | collateral.xlsx | address_details           | 16                               | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Address Line 2 | space                            | does not throw any error | collateral.xlsx | address_details           | 17                               | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Address Line 2 | special characters except hyphen | does not throw any error | collateral.xlsx | address_details           | 18                               | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName      | InputType                        | Throws_NotThrows         | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Address Line 2 | positive digits                  | does not throw any error | collateral.xlsx | address_details           | 12                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Address Line 2 | characters                       | does not throw any error | collateral.xlsx | address_details           | 13                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Address Line 2 | both digits and characters       | does not throw any error | collateral.xlsx | address_details           | 14                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Address Line 2 | negative                         | does not throw any error | collateral.xlsx | address_details           | 15                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Address Line 2 | hyphen                           | does not throw any error | collateral.xlsx | address_details           | 16                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Address Line 2 | space                            | does not throw any error | collateral.xlsx | address_details           | 17                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Address Line 2 | special characters except hyphen | does not throw any error | collateral.xlsx | address_details           | 18                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |


  Scenario Outline: ACAUTOCAS-16909:CollateralPage Property Address <Validity> Address Line 3 with <InputType> validation for collateral Sub Type Fixed Deposit of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user clicks on add nominee on nominee details
    And user add the address on the nominee details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fill "<FieldName>" of nominee details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
                  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName      | InputType                        | Throws_NotThrows         | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Address Line 3 | positive digits                  | does not throw any error | collateral.xlsx | address_details           | 19                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Address Line 3 | characters                       | does not throw any error | collateral.xlsx | address_details           | 20                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Address Line 3 | both digits and characters       | does not throw any error | collateral.xlsx | address_details           | 21                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Address Line 3 | negative                         | does not throw any error | collateral.xlsx | address_details           | 22                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Address Line 3 | hyphen                           | does not throw any error | collateral.xlsx | address_details           | 23                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Address Line 3 | space                            | does not throw any error | collateral.xlsx | address_details           | 24                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Address Line 3 | special characters except hyphen | does not throw any error | collateral.xlsx | address_details           | 25                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

       # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName      | InputType                        | Throws_NotThrows         | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | valid    | Address Line 3 | positive digits                  | does not throw any error | collateral.xlsx | address_details           | 19                               | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Address Line 3 | characters                       | does not throw any error | collateral.xlsx | address_details           | 20                               | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Address Line 3 | both digits and characters       | does not throw any error | collateral.xlsx | address_details           | 21                               | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Address Line 3 | negative                         | does not throw any error | collateral.xlsx | address_details           | 22                               | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Address Line 3 | hyphen                           | does not throw any error | collateral.xlsx | address_details           | 23                               | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Address Line 3 | space                            | does not throw any error | collateral.xlsx | address_details           | 24                               | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Address Line 3 | special characters except hyphen | does not throw any error | collateral.xlsx | address_details           | 25                               | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName      | InputType                        | Throws_NotThrows         | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Address Line 3 | positive digits                  | does not throw any error | collateral.xlsx | address_details           | 19                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Address Line 3 | characters                       | does not throw any error | collateral.xlsx | address_details           | 20                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Address Line 3 | both digits and characters       | does not throw any error | collateral.xlsx | address_details           | 21                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Address Line 3 | negative                         | does not throw any error | collateral.xlsx | address_details           | 22                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Address Line 3 | hyphen                           | does not throw any error | collateral.xlsx | address_details           | 23                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Address Line 3 | space                            | does not throw any error | collateral.xlsx | address_details           | 24                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Address Line 3 | special characters except hyphen | does not throw any error | collateral.xlsx | address_details           | 25                               | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |


  Scenario Outline: ACAUTOCAS-16910: CollateralPage Property Address <Validity> Mobile Phone with <InputType> validation for collateral Sub Type Fixed Deposit of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user clicks on add nominee on nominee details
    And user add the address on the nominee details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fill "<FieldName>" of nominee details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
                      #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName             | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Mobile Phone(Nominee) | positive digits                  | does not throw any error        | collateral.xlsx | property_address          | 0                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Mobile Phone(Nominee) | characters                       | throws error with error message | collateral.xlsx | property_address          | 1                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Mobile Phone(Nominee) | both digits and characters       | throws error with error message | collateral.xlsx | property_address          | 2                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Mobile Phone(Nominee) | negative                         | throws error with error message | collateral.xlsx | property_address          | 3                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Mobile Phone(Nominee) | hyphen                           | throws error with error message | collateral.xlsx | property_address          | 4                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Mobile Phone(Nominee) | space                            | throws error with error message | collateral.xlsx | property_address          | 5                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Mobile Phone(Nominee) | special characters except hyphen | throws error with error message | collateral.xlsx | property_address          | 6                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

       # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName             | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | valid    | Mobile Phone(Nominee) | positive digits                  | does not throw any error        | collateral.xlsx | property_address          | 0                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Mobile Phone(Nominee) | characters                       | throws error with error message | collateral.xlsx | property_address          | 1                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Mobile Phone(Nominee) | both digits and characters       | throws error with error message | collateral.xlsx | property_address          | 2                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Mobile Phone(Nominee) | negative                         | throws error with error message | collateral.xlsx | property_address          | 3                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Mobile Phone(Nominee) | hyphen                           | throws error with error message | collateral.xlsx | property_address          | 4                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Mobile Phone(Nominee) | space                            | throws error with error message | collateral.xlsx | property_address          | 5                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | Mobile Phone(Nominee) | special characters except hyphen | throws error with error message | collateral.xlsx | property_address          | 6                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName             | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Mobile Phone(Nominee) | positive digits                  | does not throw any error        | collateral.xlsx | property_address          | 0                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Mobile Phone(Nominee) | characters                       | throws error with error message | collateral.xlsx | property_address          | 1                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Mobile Phone(Nominee) | both digits and characters       | throws error with error message | collateral.xlsx | property_address          | 2                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Mobile Phone(Nominee) | negative                         | throws error with error message | collateral.xlsx | property_address          | 3                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Mobile Phone(Nominee) | hyphen                           | throws error with error message | collateral.xlsx | property_address          | 4                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Mobile Phone(Nominee) | space                            | throws error with error message | collateral.xlsx | property_address          | 5                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | Mobile Phone(Nominee) | special characters except hyphen | throws error with error message | collateral.xlsx | property_address          | 6                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |


  Scenario Outline: ACAUTOCAS-16911:  CollateralPage Property Address <Validity> Standard with <InputType> validation for collateral Sub Type Fixed Deposit of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user clicks on add nominee on nominee details
    And user add the address on the nominee details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fill "<FieldName>" of nominee details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
                          #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-ankit.yadav
    Examples:
      | Validity | FieldName    | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | STD(Nominee) | positive digits                  | does not throw any error        | collateral.xlsx | property_address          | 0                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | STD(Nominee) | characters                       | throws error with error message | collateral.xlsx | property_address          | 1                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | STD(Nominee) | both digits and characters       | throws error with error message | collateral.xlsx | property_address          | 2                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | STD(Nominee) | negative                         | throws error with error message | collateral.xlsx | property_address          | 3                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | STD(Nominee) | hyphen                           | throws error with error message | collateral.xlsx | property_address          | 4                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | STD(Nominee) | space                            | throws error with error message | collateral.xlsx | property_address          | 5                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | STD(Nominee) | special characters except hyphen | throws error with error message | collateral.xlsx | property_address          | 6                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

      # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName    | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | valid    | STD(Nominee) | positive digits                  | does not throw any error        | collateral.xlsx | property_address          | 0                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | STD(Nominee) | characters                       | throws error with error message | collateral.xlsx | property_address          | 1                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | STD(Nominee) | both digits and characters       | throws error with error message | collateral.xlsx | property_address          | 2                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | STD(Nominee) | negative                         | throws error with error message | collateral.xlsx | property_address          | 3                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | STD(Nominee) | hyphen                           | throws error with error message | collateral.xlsx | property_address          | 4                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | STD(Nominee) | space                            | throws error with error message | collateral.xlsx | property_address          | 5                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | STD(Nominee) | special characters except hyphen | throws error with error message | collateral.xlsx | property_address          | 6                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName    | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | STD(Nominee) | positive digits                  | does not throw any error        | collateral.xlsx | property_address          | 0                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | STD(Nominee) | characters                       | throws error with error message | collateral.xlsx | property_address          | 1                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | STD(Nominee) | both digits and characters       | throws error with error message | collateral.xlsx | property_address          | 2                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | STD(Nominee) | negative                         | throws error with error message | collateral.xlsx | property_address          | 3                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | STD(Nominee) | hyphen                           | throws error with error message | collateral.xlsx | property_address          | 4                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | STD(Nominee) | space                            | throws error with error message | collateral.xlsx | property_address          | 5                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | STD(Nominee) | special characters except hyphen | throws error with error message | collateral.xlsx | property_address          | 6                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |


  Scenario Outline: ACAUTOCAS-16912: CollateralPage Property Address <Validity> Extension with <InputType> validation for collateral Sub Type Fixed Deposit of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user clicks on add nominee on nominee details
    And user add the address on the nominee details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fill "<FieldName>" of nominee details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
                              #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-ankit.yadav
    Examples:
      | Validity | FieldName     | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | EXTN(Nominee) | positive digits                  | does not throw any error        | collateral.xlsx | property_address          | 0                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | EXTN(Nominee) | characters                       | throws error with error message | collateral.xlsx | property_address          | 1                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | EXTN(Nominee) | both digits and characters       | throws error with error message | collateral.xlsx | property_address          | 2                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | EXTN(Nominee) | negative                         | throws error with error message | collateral.xlsx | property_address          | 3                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | EXTN(Nominee) | hyphen                           | throws error with error message | collateral.xlsx | property_address          | 4                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | EXTN(Nominee) | space                            | throws error with error message | collateral.xlsx | property_address          | 5                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | EXTN(Nominee) | special characters except hyphen | throws error with error message | collateral.xlsx | property_address          | 6                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

     # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName     | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | valid    | EXTN(Nominee) | positive digits                  | does not throw any error        | collateral.xlsx | property_address          | 0                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | EXTN(Nominee) | characters                       | throws error with error message | collateral.xlsx | property_address          | 1                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | EXTN(Nominee) | both digits and characters       | throws error with error message | collateral.xlsx | property_address          | 2                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | EXTN(Nominee) | negative                         | throws error with error message | collateral.xlsx | property_address          | 3                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | EXTN(Nominee) | hyphen                           | throws error with error message | collateral.xlsx | property_address          | 4                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | EXTN(Nominee) | space                            | throws error with error message | collateral.xlsx | property_address          | 5                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | EXTN(Nominee) | special characters except hyphen | throws error with error message | collateral.xlsx | property_address          | 6                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName     | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | EXTN(Nominee) | positive digits                  | does not throw any error        | collateral.xlsx | property_address          | 0                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | EXTN(Nominee) | characters                       | throws error with error message | collateral.xlsx | property_address          | 1                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | EXTN(Nominee) | both digits and characters       | throws error with error message | collateral.xlsx | property_address          | 2                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | EXTN(Nominee) | negative                         | throws error with error message | collateral.xlsx | property_address          | 3                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | EXTN(Nominee) | hyphen                           | throws error with error message | collateral.xlsx | property_address          | 4                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | EXTN(Nominee) | space                            | throws error with error message | collateral.xlsx | property_address          | 5                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | EXTN(Nominee) | special characters except hyphen | throws error with error message | collateral.xlsx | property_address          | 6                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |


  Scenario Outline: ACAUTOCAS-16913:  CollateralPage Property Address <Validity> Number with <InputType> validation for collateral Sub Type Fixed Deposit of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user clicks on add nominee on nominee details
    And user add the address on the nominee details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fill "<FieldName>" of nominee details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
                                 #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-ankit.yadav
    Examples:
      | Validity | FieldName       | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | NUMBER(Nominee) | positive digits                  | does not throw any error        | collateral.xlsx | property_address          | 0                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | NUMBER(Nominee) | characters                       | throws error with error message | collateral.xlsx | property_address          | 1                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | NUMBER(Nominee) | both digits and characters       | throws error with error message | collateral.xlsx | property_address          | 2                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | NUMBER(Nominee) | negative                         | throws error with error message | collateral.xlsx | property_address          | 3                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | NUMBER(Nominee) | hyphen                           | throws error with error message | collateral.xlsx | property_address          | 4                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | NUMBER(Nominee) | space                            | throws error with error message | collateral.xlsx | property_address          | 5                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | NUMBER(Nominee) | special characters except hyphen | throws error with error message | collateral.xlsx | property_address          | 6                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
    
       # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName       | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | valid    | NUMBER(Nominee) | positive digits                  | does not throw any error        | collateral.xlsx | property_address          | 0                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | NUMBER(Nominee) | characters                       | throws error with error message | collateral.xlsx | property_address          | 1                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | NUMBER(Nominee) | both digits and characters       | throws error with error message | collateral.xlsx | property_address          | 2                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | NUMBER(Nominee) | negative                         | throws error with error message | collateral.xlsx | property_address          | 3                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | NUMBER(Nominee) | hyphen                           | throws error with error message | collateral.xlsx | property_address          | 4                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | NUMBER(Nominee) | space                            | throws error with error message | collateral.xlsx | property_address          | 5                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | invalid  | NUMBER(Nominee) | special characters except hyphen | throws error with error message | collateral.xlsx | property_address          | 6                                | default            | 16                        | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName       | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | NUMBER(Nominee) | positive digits                  | does not throw any error        | collateral.xlsx | property_address          | 0                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | NUMBER(Nominee) | characters                       | throws error with error message | collateral.xlsx | property_address          | 1                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | NUMBER(Nominee) | both digits and characters       | throws error with error message | collateral.xlsx | property_address          | 2                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | NUMBER(Nominee) | negative                         | throws error with error message | collateral.xlsx | property_address          | 3                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | NUMBER(Nominee) | hyphen                           | throws error with error message | collateral.xlsx | property_address          | 4                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | NUMBER(Nominee) | space                            | throws error with error message | collateral.xlsx | property_address          | 5                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | invalid  | NUMBER(Nominee) | special characters except hyphen | throws error with error message | collateral.xlsx | property_address          | 6                                | default            | 16                        | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |


#Nominee Address Field Format Validation
  @SkippedFormatValidation
  @NotImplementable
  Scenario: ACAUTOCAS-2528:  CollateralPage data format validation in Nominee Address for Fixed Deposit
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Deposit" and Sub Type "Fixed Deposit"
    And user enters nominee details
    And goes to "Nominee Address" section
    Then user should be able to see all fields of "<Nominee Address>" with proper format


  Scenario Outline: ACAUTOCAS-2529: CollateralPage Deposit details label validation in Nominee Address for collateral Sub Type Fixed Deposit of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is trying to attach a new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user clicks on add nominee on nominee details
    When user add the address on the nominee details
    Then user should be able to see all fields of "<Nominee Address>" with proper label
                                     #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Nominee Address | Collateral_default | Collateral_default_rowNum | CollateralWB    | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | Address Type    | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Country         | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Address Line 2  | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Address Line 3  | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | PinCode         | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Region          | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | State           | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | District        | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Taluka          | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Village         | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Current Address | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Phone Number:   | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Mobile Phone    | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

      # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Nominee Address | Collateral_default | Collateral_default_rowNum | CollateralWB    | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | Address Type    | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | Country         | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | Address Line 2  | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | Address Line 3  | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | PinCode         | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | Region          | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | State           | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | District        | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | Taluka          | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | Village         | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | Current Address | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | Phone Number:   | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | Mobile Phone    | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Nominee Address | Collateral_default | Collateral_default_rowNum | CollateralWB    | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | Address Type    | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Country         | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Address Line 2  | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Address Line 3  | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | PinCode         | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Region          | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | State           | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | District        | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Taluka          | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Village         | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Current Address | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Phone Number:   | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | Mobile Phone    | default            | 16                        | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |





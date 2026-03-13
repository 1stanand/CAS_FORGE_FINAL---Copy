@Epic-CollateralDetails
@AuthoredBy-aditya.tomar
@ImplementedBy-aditya.tomar
@PQMStory
@Order
@Collateral

Feature: CAS60913 'Joint FD' and 'Remarks' fields to be added in Collateral Details when we select FD as a collateral type

  @Release
  Scenario Outline: ACAUTOCAS-21167: The user selects the STP application for the <ApplicationStage> stage of the <ProductType> product with as the LogicalID <LogicalID>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user starts creating application of logical id "<LogicalID>"
    When user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    Then set Application ID in the thread context
    @DDE
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | ApplicantType | Category | Key |
      | HL00CAS_60913_fdNo_App00   | HL          | DDE              | indiv         |          |     |
      | HL00CAS_60913_fdYes_App00  | HL          | DDE              | indiv         |          |     |
      | MAL00CAS_60913_fdNo_App00  | MAL         | DDE              | indiv         |          |     |
      | MAL00CAS_60913_fdYes_App00 | MAL         | DDE              | indiv         |          |     |
      | PF00CAS_60913_fdNo_App00   | PF          | DDE              | indiv         |          |     |
      | PF00CAS_60913_fdYes_App00  | PF          | DDE              | indiv         |          |     |

    @CreditApproval
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | ApplicantType | Category | Key |
      | HL00CAS_60913_fdNo_App01   | HL          | Credit Approval  | indiv         |          |     |
      | HL00CAS_60913_fdYes_App01  | HL          | Credit Approval  | indiv         |          |     |
      | MAL00CAS_60913_fdNo_App01  | MAL         | Credit Approval  | indiv         |          |     |
      | MAL00CAS_60913_fdYes_App01 | MAL         | Credit Approval  | indiv         |          |     |
      | PF00CAS_60913_fdNo_App01   | PF          | Credit Approval  | indiv         |          |     |
      | PF00CAS_60913_fdYes_App01  | PF          | Credit Approval  | indiv         |          |     |

    @Recommendation
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | ApplicantType | Category | Key |
      | HL00CAS_60913_fdNo_App02   | HL          | Recommendation   | indiv         |          |     |
      | HL00CAS_60913_fdYes_App02  | HL          | Recommendation   | indiv         |          |     |
      | MAL00CAS_60913_fdNo_App02  | MAL         | Recommendation   | indiv         |          |     |
      | MAL00CAS_60913_fdYes_App02 | MAL         | Recommendation   | indiv         |          |     |
      | PF00CAS_60913_fdNo_App02   | PF          | Recommendation   | indiv         |          |     |
      | PF00CAS_60913_fdYes_App02  | PF          | Recommendation   | indiv         |          |     |

    @Reconsideration
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | ApplicantType | Category | Key |
      | HL00CAS_60913_fdNo_App03   | HL          | Reconsideration  | indiv         |          |     |
      | HL00CAS_60913_fdYes_App03  | HL          | Reconsideration  | indiv         |          |     |
      | MAL00CAS_60913_fdNo_App03  | MAL         | Reconsideration  | indiv         |          |     |
      | MAL00CAS_60913_fdYes_App03 | MAL         | Reconsideration  | indiv         |          |     |
      | PF00CAS_60913_fdNo_App03   | PF          | Reconsideration  | indiv         |          |     |
      | PF00CAS_60913_fdYes_App03  | PF          | Reconsideration  | indiv         |          |     |

    @Disbursal
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | ApplicantType | Category | Key |
      | HL00CAS_60913_fdNo_App04   | HL          | Disbursal        | indiv         |          |     |
      | HL00CAS_60913_fdYes_App04  | HL          | Disbursal        | indiv         |          |     |
      | MAL00CAS_60913_fdNo_App04  | MAL         | Disbursal        | indiv         |          |     |
      | MAL00CAS_60913_fdYes_App04 | MAL         | Disbursal        | indiv         |          |     |
      | PF00CAS_60913_fdNo_App04   | PF          | Disbursal        | indiv         |          |     |
      | PF00CAS_60913_fdYes_App04  | PF          | Disbursal        | indiv         |          |     |


  @Release
  # PQM-01-CAS-60913
  # PQM-02-CAS-60913
  Scenario Outline: ACAUTOCAS-21168: Checking the <Fields> visibility for the collateral type Deposit and collateral subType Fixed Deposit <ApplicationStage> stage of the <ProductType> product with as the LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    Then user should be able to see mandatory field tagging in collateral details:
      | Fields                 | Mandatory |
      | Is Joint Fixed Deposit | No        |
      | Remark                 | No        |

    @DDE
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Fields                            |
      | HL00CAS_60913_fdNo_App00   | HL          | DDE              | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | HL00CAS_60913_fdYes_App00  | HL          | DDE              | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | MAL00CAS_60913_fdNo_App00  | MAL         | DDE              | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | MAL00CAS_60913_fdYes_App00 | MAL         | DDE              | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | PF00CAS_60913_fdNo_App00   | PF          | DDE              | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | PF00CAS_60913_fdYes_App00  | PF          | DDE              | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |

    @CreditApproval
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Fields                            |
      | HL00CAS_60913_fdNo_App01   | HL          | Credit Approval  | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | HL00CAS_60913_fdYes_App01  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | MAL00CAS_60913_fdNo_App01  | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | MAL00CAS_60913_fdYes_App01 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | PF00CAS_60913_fdNo_App01   | PF          | Credit Approval  | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | PF00CAS_60913_fdYes_App01  | PF          | Credit Approval  | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |

    @Recommendation
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Fields                            |
      | HL00CAS_60913_fdNo_App02   | HL          | Recommendation   | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | HL00CAS_60913_fdYes_App02  | HL          | Recommendation   | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | MAL00CAS_60913_fdNo_App02  | MAL         | Recommendation   | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | MAL00CAS_60913_fdYes_App02 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | PF00CAS_60913_fdNo_App02   | PF          | Recommendation   | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | PF00CAS_60913_fdYes_App02  | PF          | Recommendation   | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |

    @Reconsideration
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Fields                            |
      | HL00CAS_60913_fdNo_App03   | HL          | Reconsideration  | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | HL00CAS_60913_fdYes_App03  | HL          | Reconsideration  | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | MAL00CAS_60913_fdNo_App03  | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | MAL00CAS_60913_fdYes_App03 | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | PF00CAS_60913_fdNo_App03   | PF          | Reconsideration  | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | PF00CAS_60913_fdYes_App03  | PF          | Reconsideration  | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |

    @Disbursal
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Fields                            |
      | HL00CAS_60913_fdNo_App04   | HL          | Disbursal        | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | HL00CAS_60913_fdYes_App04  | HL          | Disbursal        | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | MAL00CAS_60913_fdNo_App04  | MAL         | Disbursal        | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | MAL00CAS_60913_fdYes_App04 | MAL         | Disbursal        | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | PF00CAS_60913_fdNo_App04   | PF          | Disbursal        | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |
      | PF00CAS_60913_fdYes_App04  | PF          | Disbursal        | collateral.xlsx | fixed_deposit           | 375                            | Is Joint Fixed Deposit and Remark |


  @Release
  Scenario Outline: ACAUTOCAS-21174: Collateral Details should get saved with the fields Is Joint Fixed Deposit as <value> and Remarks on <ApplicationStage> stage of the <ProductType> product with as the LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user fills all fields of home page of collateral details for Fixed Deposit
    And user checks the duplicates on collateral dedupe check
    When user saves the collateral data
    Then collateral should saved successfully
    @DDE
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | value | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum |
      | HL00CAS_60913_fdNo_App00   | HL          | DDE              | No    | collateral.xlsx | fixed_deposit           | 376                            |
      | HL00CAS_60913_fdYes_App00  | HL          | DDE              | Yes   | collateral.xlsx | fixed_deposit           | 377                            |
      | MAL00CAS_60913_fdNo_App00  | MAL         | DDE              | No    | collateral.xlsx | fixed_deposit           | 376                            |
      | MAL00CAS_60913_fdYes_App00 | MAL         | DDE              | Yes   | collateral.xlsx | fixed_deposit           | 377                            |
      | PF00CAS_60913_fdNo_App00   | PF          | DDE              | No    | collateral.xlsx | fixed_deposit           | 376                            |
      | PF00CAS_60913_fdYes_App00  | PF          | DDE              | Yes   | collateral.xlsx | fixed_deposit           | 377                            |

    @CreditApproval
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | value | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum |
      | HL00CAS_60913_fdNo_App01   | HL          | Credit Approval  | No    | collateral.xlsx | fixed_deposit           | 376                            |
      | HL00CAS_60913_fdYes_App01  | HL          | Credit Approval  | Yes   | collateral.xlsx | fixed_deposit           | 377                            |
      | MAL00CAS_60913_fdNo_App01  | MAL         | Credit Approval  | No    | collateral.xlsx | fixed_deposit           | 376                            |
      | MAL00CAS_60913_fdYes_App01 | MAL         | Credit Approval  | Yes   | collateral.xlsx | fixed_deposit           | 377                            |
      | PF00CAS_60913_fdNo_App01   | PF          | Credit Approval  | No    | collateral.xlsx | fixed_deposit           | 376                            |
      | PF00CAS_60913_fdYes_App01  | PF          | Credit Approval  | Yes   | collateral.xlsx | fixed_deposit           | 377                            |

    @Recommendation
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | value | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum |
      | HL00CAS_60913_fdNo_App02   | HL          | Recommendation   | No    | collateral.xlsx | fixed_deposit           | 376                            |
      | HL00CAS_60913_fdYes_App02  | HL          | Recommendation   | Yes   | collateral.xlsx | fixed_deposit           | 377                            |
      | MAL00CAS_60913_fdNo_App02  | MAL         | Recommendation   | No    | collateral.xlsx | fixed_deposit           | 376                            |
      | MAL00CAS_60913_fdYes_App02 | MAL         | Recommendation   | Yes   | collateral.xlsx | fixed_deposit           | 377                            |
      | PF00CAS_60913_fdNo_App02   | PF          | Recommendation   | No    | collateral.xlsx | fixed_deposit           | 376                            |
      | PF00CAS_60913_fdYes_App02  | PF          | Recommendation   | Yes   | collateral.xlsx | fixed_deposit           | 377                            |

    @Reconsideration
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | value | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum |
      | HL00CAS_60913_fdNo_App03   | HL          | Reconsideration  | No    | collateral.xlsx | fixed_deposit           | 376                            |
      | HL00CAS_60913_fdYes_App03  | HL          | Reconsideration  | Yes   | collateral.xlsx | fixed_deposit           | 377                            |
      | MAL00CAS_60913_fdNo_App03  | MAL         | Reconsideration  | No    | collateral.xlsx | fixed_deposit           | 376                            |
      | MAL00CAS_60913_fdYes_App03 | MAL         | Reconsideration  | Yes   | collateral.xlsx | fixed_deposit           | 377                            |
      | PF00CAS_60913_fdNo_App03   | PF          | Reconsideration  | No    | collateral.xlsx | fixed_deposit           | 376                            |
      | PF00CAS_60913_fdYes_App03  | PF          | Reconsideration  | Yes   | collateral.xlsx | fixed_deposit           | 377                            |

    @Disbursal
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | value | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum |
      | HL00CAS_60913_fdNo_App04   | HL          | Disbursal        | No    | collateral.xlsx | fixed_deposit           | 376                            |
      | HL00CAS_60913_fdYes_App04  | HL          | Disbursal        | Yes   | collateral.xlsx | fixed_deposit           | 377                            |
      | MAL00CAS_60913_fdNo_App04  | MAL         | Disbursal        | No    | collateral.xlsx | fixed_deposit           | 376                            |
      | MAL00CAS_60913_fdYes_App04 | MAL         | Disbursal        | Yes   | collateral.xlsx | fixed_deposit           | 377                            |
      | PF00CAS_60913_fdNo_App04   | PF          | Disbursal        | No    | collateral.xlsx | fixed_deposit           | 376                            |
      | PF00CAS_60913_fdYes_App04  | PF          | Disbursal        | Yes   | collateral.xlsx | fixed_deposit           | 377                            |


  @Release
  # PQM-03-CAS-60913
  Scenario Outline: Field named as Remarks with <Count> characters for the <ApplicationStage> stage of the <ProductType> product with as the LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    When user opens the recently added collateral in the edit mode
    Then Is Joint Fixed Deposit field should contain "<Option>" with Remarks should have "<Count>" characters
    @DDE
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | Count | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Option |
      | HL00CAS_60913_fdNo_App00   | HL          | DDE              | 255   | collateral.xlsx | fixed_deposit           | 376                            | No     |
      | HL00CAS_60913_fdYes_App00  | HL          | DDE              | 255   | collateral.xlsx | fixed_deposit           | 377                            | Yes    |
      | MAL00CAS_60913_fdNo_App00  | MAL         | DDE              | 255   | collateral.xlsx | fixed_deposit           | 376                            | No     |
      | MAL00CAS_60913_fdYes_App00 | MAL         | DDE              | 255   | collateral.xlsx | fixed_deposit           | 377                            | Yes    |
      | PF00CAS_60913_fdNo_App00   | PF          | DDE              | 255   | collateral.xlsx | fixed_deposit           | 376                            | No     |
      | PF00CAS_60913_fdYes_App00  | PF          | DDE              | 255   | collateral.xlsx | fixed_deposit           | 377                            | Yes    |

    @CreditApproval
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | Count | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Option |
      | HL00CAS_60913_fdNo_App01   | HL          | Credit Approval  | 255   | collateral.xlsx | fixed_deposit           | 376                            | No     |
      | HL00CAS_60913_fdYes_App01  | HL          | Credit Approval  | 255   | collateral.xlsx | fixed_deposit           | 377                            | Yes    |
      | MAL00CAS_60913_fdNo_App01  | MAL         | Credit Approval  | 255   | collateral.xlsx | fixed_deposit           | 376                            | No     |
      | MAL00CAS_60913_fdYes_App01 | MAL         | Credit Approval  | 255   | collateral.xlsx | fixed_deposit           | 377                            | Yes    |
      | PF00CAS_60913_fdNo_App01   | PF          | Credit Approval  | 255   | collateral.xlsx | fixed_deposit           | 376                            | No     |
      | PF00CAS_60913_fdYes_App01  | PF          | Credit Approval  | 255   | collateral.xlsx | fixed_deposit           | 377                            | Yes    |

    @Recommendation
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | Count | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Option |
      | HL00CAS_60913_fdNo_App02   | HL          | Recommendation   | 255   | collateral.xlsx | fixed_deposit           | 376                            | No     |
      | HL00CAS_60913_fdYes_App02  | HL          | Recommendation   | 255   | collateral.xlsx | fixed_deposit           | 377                            | Yes    |
      | MAL00CAS_60913_fdNo_App02  | MAL         | Recommendation   | 255   | collateral.xlsx | fixed_deposit           | 376                            | No     |
      | MAL00CAS_60913_fdYes_App02 | MAL         | Recommendation   | 255   | collateral.xlsx | fixed_deposit           | 377                            | Yes    |
      | PF00CAS_60913_fdNo_App02   | PF          | Recommendation   | 255   | collateral.xlsx | fixed_deposit           | 376                            | No     |
      | PF00CAS_60913_fdYes_App02  | PF          | Recommendation   | 255   | collateral.xlsx | fixed_deposit           | 377                            | Yes    |

    @Reconsideration
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | Count | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Option |
      | HL00CAS_60913_fdNo_App03   | HL          | Reconsideration  | 255   | collateral.xlsx | fixed_deposit           | 376                            | No     |
      | HL00CAS_60913_fdYes_App03  | HL          | Reconsideration  | 255   | collateral.xlsx | fixed_deposit           | 377                            | Yes    |
      | MAL00CAS_60913_fdNo_App03  | MAL         | Reconsideration  | 255   | collateral.xlsx | fixed_deposit           | 376                            | No     |
      | MAL00CAS_60913_fdYes_App03 | MAL         | Reconsideration  | 255   | collateral.xlsx | fixed_deposit           | 377                            | Yes    |
      | PF00CAS_60913_fdNo_App03   | PF          | Reconsideration  | 255   | collateral.xlsx | fixed_deposit           | 376                            | No     |
      | PF00CAS_60913_fdYes_App03  | PF          | Reconsideration  | 255   | collateral.xlsx | fixed_deposit           | 377                            | Yes    |

    @Disbursal
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | Count | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Option |
      | HL00CAS_60913_fdNo_App04   | HL          | Disbursal        | 255   | collateral.xlsx | fixed_deposit           | 376                            | No     |
      | HL00CAS_60913_fdYes_App04  | HL          | Disbursal        | 255   | collateral.xlsx | fixed_deposit           | 377                            | Yes    |
      | MAL00CAS_60913_fdNo_App04  | MAL         | Disbursal        | 255   | collateral.xlsx | fixed_deposit           | 376                            | No     |
      | MAL00CAS_60913_fdYes_App04 | MAL         | Disbursal        | 255   | collateral.xlsx | fixed_deposit           | 377                            | Yes    |
      | PF00CAS_60913_fdNo_App04   | PF          | Disbursal        | 255   | collateral.xlsx | fixed_deposit           | 376                            | No     |
      | PF00CAS_60913_fdYes_App04  | PF          | Disbursal        | 255   | collateral.xlsx | fixed_deposit           | 377                            | Yes    |


  @Release
  # PQM-03-CAS-60913
  Scenario Outline: Verify the Is Joint Fixed Deposit and Remarks is Non-Mandatory <ApplicationStage> stage of the <ProductType> product with as the LogicalID <LogicalID>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user starts creating application of logical id "<LogicalID>"
    And set Application ID in the thread context
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for Fixed Deposit
    And user checks the duplicates on collateral dedupe check
    When user saves the data
    Then collateral should saved successfully
    @DDE
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ApplicantType | Category | Key |
      | HL00CAS_60913_App05  | HL          | DDE              | collateral.xlsx | fixed_deposit           | 378                            | indiv         |          |     |
      | MAL00CAS_60913_App05 | MAL         | DDE              | collateral.xlsx | fixed_deposit           | 378                            | indiv         |          |     |
      | PF00CAS_60913_App05  | PF          | DDE              | collateral.xlsx | fixed_deposit           | 378                            | indiv         |          |     |

    @CreditApproval
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ApplicantType | Category | Key |
      | HL00CAS_60913_App06  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit           | 378                            | indiv         |          |     |
      | MAL00CAS_60913_App06 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit           | 378                            | indiv         |          |     |
      | PF00CAS_60913_App06  | PF          | Credit Approval  | collateral.xlsx | fixed_deposit           | 378                            | indiv         |          |     |

    @Recommendation
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ApplicantType | Category | Key |
      | HL00CAS_60913_App07  | HL          | Recommendation   | collateral.xlsx | fixed_deposit           | 378                            | indiv         |          |     |
      | MAL00CAS_60913_App07 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit           | 378                            | indiv         |          |     |
      | PF00CAS_60913_App07  | PF          | Recommendation   | collateral.xlsx | fixed_deposit           | 378                            | indiv         |          |     |

    @Reconsideration
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ApplicantType | Category | Key |
      | HL00CAS_60913_App08  | HL          | Reconsideration  | collateral.xlsx | fixed_deposit           | 378                            | indiv         |          |     |
      | MAL00CAS_60913_App08 | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit           | 378                            | indiv         |          |     |
      | PF00CAS_60913_App08  | PF          | Reconsideration  | collateral.xlsx | fixed_deposit           | 378                            | indiv         |          |     |

    @Disbursal
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ApplicantType | Category | Key |
      | HL00CAS_60913_App09  | HL          | Disbursal        | collateral.xlsx | fixed_deposit           | 378                            | indiv         |          |     |
      | MAL00CAS_60913_App09 | MAL         | Disbursal        | collateral.xlsx | fixed_deposit           | 378                            | indiv         |          |     |
      | PF00CAS_60913_App09  | PF          | Disbursal        | collateral.xlsx | fixed_deposit           | 378                            | indiv         |          |     |


  @Release
# PQM-03-CAS-60913
  Scenario Outline: ACAUTOCAS-21175: Verify the Deposit Amount captured is always less than that of the entered Maturity Amount for the <ApplicationStage> stage of the <ProductType> product with as the LogicalID <LogicalID>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user starts creating application of logical id "<LogicalID>"
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for Fixed Deposit
    And user checks the duplicates on collateral dedupe check
    When user saves the data
    Then user gets a error notification message
    @DDE
    Examples:
      | LogicalID             | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ApplicantType | Category | Key |
      | HL00CAS_60913_App005  | HL          | DDE              | collateral.xlsx | fixed_deposit           | 384                            | indiv         |          |     |
      | MAL00CAS_60913_App005 | MAL         | DDE              | collateral.xlsx | fixed_deposit           | 384                            | indiv         |          |     |
      | PF00CAS_60913_App005  | PF          | DDE              | collateral.xlsx | fixed_deposit           | 384                            | indiv         |          |     |
    @CreditApproval
    Examples:
      | LogicalID             | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ApplicantType | Category | Key |
      | HL00CAS_60913_App006  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit           | 384                            | indiv         |          |     |
      | MAL00CAS_60913_App006 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit           | 384                            | indiv         |          |     |
      | PF00CAS_60913_App006  | PF          | Credit Approval  | collateral.xlsx | fixed_deposit           | 384                            | indiv         |          |     |
    @Recommendation
    Examples:
      | LogicalID             | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ApplicantType | Category | Key |
      | HL00CAS_60913_App007  | HL          | Recommendation   | collateral.xlsx | fixed_deposit           | 384                            | indiv         |          |     |
      | MAL00CAS_60913_App007 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit           | 384                            | indiv         |          |     |
      | PF00CAS_60913_App007  | PF          | Recommendation   | collateral.xlsx | fixed_deposit           | 384                            | indiv         |          |     |
    @Reconsideration
    Examples:
      | LogicalID             | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ApplicantType | Category | Key |
      | HL00CAS_60913_App008  | HL          | Reconsideration  | collateral.xlsx | fixed_deposit           | 384                            | indiv         |          |     |
      | MAL00CAS_60913_App008 | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit           | 384                            | indiv         |          |     |
      | PF00CAS_60913_App008  | PF          | Reconsideration  | collateral.xlsx | fixed_deposit           | 384                            | indiv         |          |     |
    @Disbursal
    Examples:
      | LogicalID             | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ApplicantType | Category | Key |
      | HL00CAS_60913_App009  | HL          | Disbursal        | collateral.xlsx | fixed_deposit           | 384                            | indiv         |          |     |
      | MAL00CAS_60913_App009 | MAL         | Disbursal        | collateral.xlsx | fixed_deposit           | 384                            | indiv         |          |     |
      | PF00CAS_60913_App009  | PF          | Disbursal        | collateral.xlsx | fixed_deposit           | 384                            | indiv         |          |     |

  @Release
   # PQM-04-CAS-60913
  Scenario Outline: ACAUTOCAS-21176: OGNL Should be provide for the Joint FD with <LogicalID>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user stores logical ID "<LogicalID>" in report
    And user navigates to the Object Graph Type screen
    When user searches OGNL for the Joint FD
    Then "<OGNL>" OGNL Should be provided for the Joint FD
    Examples:
      | LogicalID   | OGNL    |
      | 60913_App15 | SLCList |


  @Release
  # PQM-07-CAS-60913
  # PQM-08-CAS-60913
  Scenario Outline: ACAUTOCAS-21177: Hit the Application Creation Service with collateral Type as Deposit collateral Subtype as Fixed Deposit add fields for <Option> option as Joint FD <ApplicationStage> stage of the <ProductType> product with as the LogicalID <LogicalID>
    Given user starts creating application of logical id "<LogicalID>"
    And user creates stage variant for an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum>
    When user hits Application Creation Service API for collateral Type as Deposit collateral Subtype as Fixed Deposit
    And user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Application should move to "<ApplicationStage>" Stage using "Search" service
    And user opens the application created during the Application Creation Service at "<ApplicationStage>" stage
    And user opens Collateral Page on "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum>
    And user opens the collateral in the edit mode
    Then user should be validate the "<Option>" FD field and Fixed Deposit remarks on the UI based on the response
    @DDE
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App10  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 385                        | indiv         |          |     | Yes    |
      | MAL00CAS_60913_App10 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 385                        | indiv         |          |     | Yes    |
      | PF00CAS_60913_App10  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 385                        | indiv         |          |     | Yes    |

    @CreditApproval
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App11  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit      | 385                        | indiv         |          |     | Yes    |
      | MAL00CAS_60913_App11 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit      | 385                        | indiv         |          |     | Yes    |
      | PF00CAS_60913_App11  | PF          | Credit Approval  | collateral.xlsx | fixed_deposit      | 385                        | indiv         |          |     | Yes    |

    @Recommendation
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App12  | HL          | Recommendation   | collateral.xlsx | fixed_deposit      | 385                        | indiv         |          |     | Yes    |
      | MAL00CAS_60913_App12 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit      | 385                        | indiv         |          |     | Yes    |
      | PF00CAS_60913_App12  | PF          | Recommendation   | collateral.xlsx | fixed_deposit      | 385                        | indiv         |          |     | Yes    |

    @Reconsideration
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | PF00CAS_60913_App13  | PF          | Reconsideration  | collateral.xlsx | fixed_deposit      | 385                        | indiv         |          |     | Yes    |

    @Disbursal
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | PF00CAS_60913_App14  | PF          | Disbursal        | collateral.xlsx | fixed_deposit      | 385                        | indiv         |          |     | Yes    |

    @DDE
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App15  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 386                        | indiv         |          |     | NO     |
      | MAL00CAS_60913_App15 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 386                        | indiv         |          |     | NO     |
      | PF00CAS_60913_App15  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 386                        | indiv         |          |     | NO     |

    @CreditApproval
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App16  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit      | 386                        | indiv         |          |     | NO     |
      | MAL00CAS_60913_App16 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit      | 386                        | indiv         |          |     | NO     |
      | PF00CAS_60913_App16  | PF          | Credit Approval  | collateral.xlsx | fixed_deposit      | 386                        | indiv         |          |     | NO     |

    @Recommendation
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App17  | HL          | Recommendation   | collateral.xlsx | fixed_deposit      | 386                        | indiv         |          |     | NO     |
      | MAL00CAS_60913_App17 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit      | 386                        | indiv         |          |     | NO     |
      | PF00CAS_60913_App17  | PF          | Recommendation   | collateral.xlsx | fixed_deposit      | 386                        | indiv         |          |     | NO     |

    @Reconsideration
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | PF00CAS_60913_App18  | PF          | Reconsideration  | collateral.xlsx | fixed_deposit      | 386                        | indiv         |          |     | NO     |

    @Disbursal
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | PF00CAS_60913_App19  | PF          | Disbursal        | collateral.xlsx | fixed_deposit      | 386                        | indiv         |          |     | NO     |

    @DDE
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App20  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 387                        | indiv         |          |     | Empty  |
      | MAL00CAS_60913_App20 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 387                        | indiv         |          |     | Empty  |
      | PF00CAS_60913_App20  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 387                        | indiv         |          |     | Empty  |

    @CreditApproval
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App21  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit      | 387                        | indiv         |          |     | Empty  |
      | MAL00CAS_60913_App21 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit      | 387                        | indiv         |          |     | Empty  |
      | PF00CAS_60913_App21  | PF          | Credit Approval  | collateral.xlsx | fixed_deposit      | 387                        | indiv         |          |     | Empty  |

    @Recommendation
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App22  | HL          | Recommendation   | collateral.xlsx | fixed_deposit      | 387                        | indiv         |          |     | Empty  |
      | MAL00CAS_60913_App22 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit      | 387                        | indiv         |          |     | Empty  |
      | PF00CAS_60913_App22  | PF          | Recommendation   | collateral.xlsx | fixed_deposit      | 387                        | indiv         |          |     | Empty  |

    @Reconsideration
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | PF00CAS_60913_App23  | PF          | Reconsideration  | collateral.xlsx | fixed_deposit      | 387                        | indiv         |          |     | Empty  |

    @Disbursal
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | PF00CAS_60913_App24  | PF          | Disbursal        | collateral.xlsx | fixed_deposit      | 387                        | indiv         |          |     | Empty  |

    @DDE
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_NULL_App20  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 389                        | indiv         |          |     | Null   |
      | MAL00CAS_60913_NULL_App20 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 389                        | indiv         |          |     | Null   |
      | PF00CAS_60913_NULL_App20  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 389                        | indiv         |          |     | Null   |

    @CreditApproval
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_NULL_App21  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit      | 389                        | indiv         |          |     | Null   |
      | MAL00CAS_60913_NULL_App21 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit      | 389                        | indiv         |          |     | Null   |
      | PF00CAS_60913_NULL_App21  | PF          | Credit Approval  | collateral.xlsx | fixed_deposit      | 389                        | indiv         |          |     | Null   |

    @Recommendation
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_NULL_App22  | HL          | Recommendation   | collateral.xlsx | fixed_deposit      | 389                        | indiv         |          |     | Null   |
      | MAL00CAS_60913_NULL_App22 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit      | 389                        | indiv         |          |     | Null   |
      | PF00CAS_60913_NULL_App22  | PF          | Recommendation   | collateral.xlsx | fixed_deposit      | 389                        | indiv         |          |     | Null   |

    @Reconsideration
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | PF00CAS_60913_NULL_App23  | PF          | Reconsideration  | collateral.xlsx | fixed_deposit      | 389                        | indiv         |          |     | Null   |

    @Disbursal
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | PF00CAS_60913_NULL_App24  | PF          | Disbursal        | collateral.xlsx | fixed_deposit      | 389                        | indiv         |          |     | Null   |


  @Release
  # PQM-09-CAS-60913
  Scenario Outline: ACAUTOCAS-21178: Hit the Application Creation Service with collateral Type as Deposit collateral Subtype as Fixed Deposit add fields for Joint FD with invalid values for the <Message> message <ApplicationStage> stage of the <ProductType> product with as the LogicalID <LogicalID>
    Given user starts creating application of logical id "<LogicalID>"
    And user creates stage variant for an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum>
    When user hits Application Creation Service API for collateral Type as Deposit collateral Subtype as Fixed Deposit
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum1>
    Then "<Message>" message should come based on the response
    @DDE
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | Collateral_dFdSheet_rowNum1 | ApplicantType | Category | Key | Message |
      | HL00CAS_60913_App25  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 388                        | 390                         | indiv         |          |     | Failure |
      | MAL00CAS_60913_App25 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 388                        | 390                         | indiv         |          |     | Failure |
      | PF00CAS_60913_App25  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 388                        | 390                         | indiv         |          |     | Failure |


  @Release
  # PQM-10-CAS-60913
  Scenario Outline: ACAUTOCAS-21179: Hit the application updation Service with collateral Type as Deposit collateral Subtype as Fixed Deposit add fields for Joint FD with invalid values for the <Message> message <ApplicationStage> stage of the <ProductType> product with as the LogicalID <LogicalID>
    Given user starts creating application of logical id "<LogicalID>"
    And user creates stage variant for an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum>
    When user hits Application Creation Service API for collateral Type as Deposit collateral Subtype as Fixed Deposit
    And Application should move to "<ApplicationStage>" Stage using "Search" service
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum1>
    And user hits Application update Service API with collateral Type as Deposit collateral Subtype as Fixed Deposit Collateral Details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum2>
    Then "<Message>" message should come based on the response
    @DDE
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | Collateral_dFdSheet_rowNum1 | Collateral_dFdSheet_rowNum2 | ApplicantType | Category | Key | Message |
      | HL00CAS_60913_App30  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 385                        | 388                         | 390                         | indiv         |          |     | Failure |
      | MAL00CAS_60913_App30 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 385                        | 388                         | 390                         | indiv         |          |     | Failure |
      | PF00CAS_60913_App30  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 385                        | 388                         | 390                         | indiv         |          |     | Failure |


  @Release
  # PQM-10-CAS-60913
  Scenario Outline: ACAUTOCAS-21180: Hit the Application Updation Service with collateral Type as Deposit collateral Subtype as Fixed Deposit <Option> values in Joint FD field of <ApplicationStage> stage of the <ProductType> product with as the LogicalID <LogicalID>
    Given user starts creating application of logical id "<LogicalID>"
    And user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user creates stage variant for an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum1>
    When user hits Application Creation Service API for collateral Type as Deposit collateral Subtype as Fixed Deposit
    And Application should move to "<ApplicationStage>" Stage using "Search" service
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum>
    And user hits Application update Service API with collateral Type as Deposit collateral Subtype as Fixed Deposit Collateral Details
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user opens Collateral Page on "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum>
    And user opens the updated collateral based on the service response in the edit mode
    Then user should be validate the "<Option>" FD field and Fixed Deposit remarks on the UI based on the response
    @DDE
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Collateral_dFdSheet_rowNum1 |
      | HL00CAS_60913_App90  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 385                        | indiv         |          |     | Yes    | 386                         |
      | MAL00CAS_60913_App90 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 385                        | indiv         |          |     | Yes    | 386                         |
      | PF00CAS_60913_App90  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 385                        | indiv         |          |     | Yes    | 386                         |

    @CreditApproval
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Collateral_dFdSheet_rowNum1 |
      | HL00CAS_60913_App91  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit      | 385                        | indiv         |          |     | Yes    | 386                         |
      | MAL00CAS_60913_App91 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit      | 385                        | indiv         |          |     | Yes    | 386                         |
      | PF00CAS_60913_App91  | PF          | Credit Approval  | collateral.xlsx | fixed_deposit      | 385                        | indiv         |          |     | Yes    | 386                         |

    @Recommendation
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Collateral_dFdSheet_rowNum1 |
      | HL00CAS_60913_App92  | HL          | Recommendation   | collateral.xlsx | fixed_deposit      | 385                        | indiv         |          |     | Yes    | 386                         |
      | MAL00CAS_60913_App92 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit      | 385                        | indiv         |          |     | Yes    | 386                         |
      | PF00CAS_60913_App92  | PF          | Recommendation   | collateral.xlsx | fixed_deposit      | 385                        | indiv         |          |     | Yes    | 386                         |

    @Reconsideration
    Examples:
      | LogicalID           | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Collateral_dFdSheet_rowNum1 |
      | PF00CAS_60913_App93 | PF          | Reconsideration  | collateral.xlsx | fixed_deposit      | 385                        | indiv         |          |     | Yes    | 386                         |

    @DDE
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Collateral_dFdSheet_rowNum1 |
      | HL00CAS_60913_App95  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 386                        | indiv         |          |     | NO     | 385                         |
      | MAL00CAS_60913_App95 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 386                        | indiv         |          |     | NO     | 385                         |
      | PF00CAS_60913_App95  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 386                        | indiv         |          |     | NO     | 385                         |

    @CreditApproval
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Collateral_dFdSheet_rowNum1 |
      | HL00CAS_60913_App96  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit      | 386                        | indiv         |          |     | NO     | 385                         |
      | MAL00CAS_60913_App96 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit      | 386                        | indiv         |          |     | NO     | 385                         |
      | PF00CAS_60913_App96  | PF          | Credit Approval  | collateral.xlsx | fixed_deposit      | 386                        | indiv         |          |     | NO     | 385                         |

    @Recommendation
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Collateral_dFdSheet_rowNum1 |
      | HL00CAS_60913_App97  | HL          | Recommendation   | collateral.xlsx | fixed_deposit      | 386                        | indiv         |          |     | NO     | 385                         |
      | MAL00CAS_60913_App97 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit      | 386                        | indiv         |          |     | NO     | 385                         |
      | PF00CAS_60913_App97  | PF          | Recommendation   | collateral.xlsx | fixed_deposit      | 386                        | indiv         |          |     | NO     | 385                         |

    @Reconsideration
    Examples:
      | LogicalID           | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Collateral_dFdSheet_rowNum1 |
      | PF00CAS_60913_App98 | PF          | Reconsideration  | collateral.xlsx | fixed_deposit      | 386                        | indiv         |          |     | NO     | 385                         |


  @Release
   # PQM-12-CAS-60913
  Scenario Outline: ACAUTOCAS-21181: Collateral should be created directly through GCC with collateral Type as Deposit and New field joint FD and Remarks <ApplicationStage> stage of the <ProductType> product with as the LogicalID <LogicalID>
    Given user starts creating application of logical id "<LogicalID>"
    And user creates stage variant for an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum>
    And user creates the collateral directly through GCC with collateral Type as Deposit and New field joint FD and Remarks
    And user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum>
    And user opens Collateral Page on "<ApplicationStage>" stage
    When user searches for an existing internal collateral using Global Collateral Number
    And user links the collateral with the application
    And user opens the collateral in the edit mode
    Then user should be validate the "<Option>" FD field and Fixed Deposit remarks on the UI based on the response
    @DDE
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App35  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 385                        | indiv         |          |     | Yes    |
      | MAL00CAS_60913_App35 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 385                        | indiv         |          |     | Yes    |
      | PF00CAS_60913_App35  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 385                        | indiv         |          |     | Yes    |

    @DDE
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App40  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 386                        | indiv         |          |     | NO     |
      | MAL00CAS_60913_App40 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 386                        | indiv         |          |     | NO     |
      | PF00CAS_60913_App40  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 386                        | indiv         |          |     | NO     |


    @DDE
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App45  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 387                        | indiv         |          |     | Empty  |
      | MAL00CAS_60913_App45 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 387                        | indiv         |          |     | Empty  |
      | PF00CAS_60913_App45  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 387                        | indiv         |          |     | Empty  |


    @DDE
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_NULL_App45  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 389                        | indiv         |          |     | Null   |
      | MAL00CAS_60913_NULL_App45 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 389                        | indiv         |          |     | Null   |
      | PF00CAS_60913_NULL_App45  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 389                        | indiv         |          |     | Null   |



    @Release
    # PQM-12-CAS-60913
  Scenario Outline: ACAUTOCAS-21182: Collateral should be updated directly through GCC with collateral Type as Deposit and New field <Option> option as joint FD and Remarks <ApplicationStage> stage of the <ProductType> product with as the LogicalID <LogicalID>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user starts creating application of logical id "<LogicalID>"
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for Fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user creates stage variant for an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum_1>
    And user updates the collateral directly through GCC with collateral Type as Deposit and New field joint FD and Remarks
    And user opens the recently added collateral in the edit mode
    When user clicks on the Collateral Refresh button
    Then user should be validate the "<Option>" FD field and Fixed Deposit remarks on the UI based on the response
    @DDE
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Collateral_dFdSheet_rowNum_1 |
      | HL00CAS_60913_App50  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | No     | 380                          |
      | MAL00CAS_60913_App50 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | No     | 380                          |
      | PF00CAS_60913_App50  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | No     | 380                          |

    @CreditApproval
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Collateral_dFdSheet_rowNum_1 |
      | HL00CAS_60913_App51  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | No     | 380                          |
      | MAL00CAS_60913_App51 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | No     | 380                          |
      | PF00CAS_60913_App51  | PF          | Credit Approval  | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | No     | 380                          |

    @Recommendation
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Collateral_dFdSheet_rowNum_1 |
      | HL00CAS_60913_App52  | HL          | Recommendation   | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | No     | 380                          |
      | MAL00CAS_60913_App52 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | No     | 380                          |
      | PF00CAS_60913_App52  | PF          | Recommendation   | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | No     | 380                          |

    @Reconsideration
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Collateral_dFdSheet_rowNum_1 |
      | HL00CAS_60913_App53  | HL          | Reconsideration  | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | No     | 380                          |
      | MAL00CAS_60913_App53 | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | No     | 380                          |
      | PF00CAS_60913_App53  | PF          | Reconsideration  | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | No     | 380                          |

    @Disbursal
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Collateral_dFdSheet_rowNum_1 |
      | HL00CAS_60913_App54  | HL          | Disbursal        | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | No     | 380                          |
      | MAL00CAS_60913_App54 | MAL         | Disbursal        | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | No     | 380                          |
      | PF00CAS_60913_App54  | PF          | Disbursal        | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | No     | 380                          |

    @DDE
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Collateral_dFdSheet_rowNum_1 |
      | HL00CAS_60913_App55  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | Yes    | 379                          |
      | MAL00CAS_60913_App55 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | Yes    | 379                          |
      | PF00CAS_60913_App55  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | Yes    | 379                          |

    @CreditApproval
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Collateral_dFdSheet_rowNum_1 |
      | HL00CAS_60913_App56  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | Yes    | 379                          |
      | MAL00CAS_60913_App56 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | Yes    | 379                          |
      | PF00CAS_60913_App56  | PF          | Credit Approval  | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | Yes    | 379                          |

    @Recommendation
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Collateral_dFdSheet_rowNum_1 |
      | HL00CAS_60913_App57  | HL          | Recommendation   | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | Yes    | 379                          |
      | MAL00CAS_60913_App57 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | Yes    | 379                          |
      | PF00CAS_60913_App57  | PF          | Recommendation   | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | Yes    | 379                          |

    @Reconsideration
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Collateral_dFdSheet_rowNum_1 |
      | HL00CAS_60913_App58  | HL          | Reconsideration  | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | Yes    | 379                          |
      | MAL00CAS_60913_App58 | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | Yes    | 379                          |
      | PF00CAS_60913_App58  | PF          | Reconsideration  | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | Yes    | 379                          |

    @Disbursal
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Collateral_dFdSheet_rowNum_1 |
      | HL00CAS_60913_App59  | HL          | Disbursal        | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | Yes    | 379                          |
      | MAL00CAS_60913_App59 | MAL         | Disbursal        | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | Yes    | 379                          |
      | PF00CAS_60913_App59  | PF          | Disbursal        | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | Yes    | 379                          |


  @Release
 # PQM-13-CAS-60913
  Scenario Outline: ACAUTOCAS-21183: Collateral should be searched directly through GCC with collateral Type as Deposit and new field <Option> option as joint FD and Remarks <ApplicationStage> stage of the <ProductType> product with as the LogicalID <LogicalID>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user starts creating application of logical id "<LogicalID>"
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for Fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user hits the service to search the collateral through GCC
    Then Collateral should be searched directly through GCC from the response

    @DDE
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App60  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |
      | MAL00CAS_60913_App60 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |
      | PF00CAS_60913_App60  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |

    @CreditApproval
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App61  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |
      | MAL00CAS_60913_App61 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |
      | PF00CAS_60913_App61  | PF          | Credit Approval  | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |

    @Recommendation
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App62  | HL          | Recommendation   | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |
      | MAL00CAS_60913_App62 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |
      | PF00CAS_60913_App62  | PF          | Recommendation   | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |

    @Reconsideration
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App63  | HL          | Reconsideration  | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |
      | MAL00CAS_60913_App63 | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |
      | PF00CAS_60913_App63  | PF          | Reconsideration  | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |

    @Disbursal
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App64  | HL          | Disbursal        | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |
      | MAL00CAS_60913_App64 | MAL         | Disbursal        | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |
      | PF00CAS_60913_App64  | PF          | Disbursal        | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |

    @DDE
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App65  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |
      | MAL00CAS_60913_App65 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |
      | PF00CAS_60913_App65  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |

    @CreditApproval
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App66  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |
      | MAL00CAS_60913_App66 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |
      | PF00CAS_60913_App66  | PF          | Credit Approval  | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |

    @Recommendation
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App67  | HL          | Recommendation   | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |
      | MAL00CAS_60913_App67 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |
      | PF00CAS_60913_App67  | PF          | Recommendation   | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |

    @Reconsideration
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App68  | HL          | Reconsideration  | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |
      | MAL00CAS_60913_App68 | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |
      | PF00CAS_60913_App68  | PF          | Reconsideration  | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |

    @Disbursal
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App69  | HL          | Disbursal        | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |
      | MAL00CAS_60913_App69 | MAL         | Disbursal        | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |
      | PF00CAS_60913_App69  | PF          | Disbursal        | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |

    @DDE
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App70  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |
      | MAL00CAS_60913_App70 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |
      | PF00CAS_60913_App70  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |

    @CreditApproval
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App71  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |
      | MAL00CAS_60913_App71 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |
      | PF00CAS_60913_App71  | PF          | Credit Approval  | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |

    @Recommendation
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App72  | HL          | Recommendation   | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |
      | MAL00CAS_60913_App72 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |
      | PF00CAS_60913_App72  | PF          | Recommendation   | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |

    @Reconsideration
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App73  | HL          | Reconsideration  | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |
      | MAL00CAS_60913_App73 | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |
      | PF00CAS_60913_App73  | PF          | Reconsideration  | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |

    @Disbursal
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App74  | HL          | Disbursal        | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |
      | MAL00CAS_60913_App74 | MAL         | Disbursal        | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |
      | PF00CAS_60913_App74  | PF          | Disbursal        | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |


  @Release
    @LoggedBug-CAS-226964
  # PQM-14-CAS-60913
  Scenario Outline: ACAUTOCAS-21184: Collateral should get Copied with <Option> option as Joint FD and Remarks for the <ApplicationStage> stage of the <ProductType> product with as the LogicalID <LogicalID>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user starts creating application of logical id "<LogicalID>"
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for Fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CopyApplicationWB>" under sheet "<CopyApplication_home>" and row <CopyApplication_home_rowNum>
    And user searches the "<ApplicantType>" application using "<Identifier>" from context on copy application screen
    When user copy the application
    And user opens the copied application "<ApplicationStage1>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum>
    And user opens Collateral Page on "<ApplicationStage1>" stage
    And user edits the collateral copied in the application
    Then user should be validate the "<Option>" FD field and Fixed Deposit remarks of the copied collateral
    @DDE
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Identifier         | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum | ApplicationStage1 |
      | HL00CAS_60913_App75  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | MAL00CAS_60913_App75 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | PF00CAS_60913_App75  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |

    @CreditApproval
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Identifier         | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum | ApplicationStage1 |
      | HL00CAS_60913_App76  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | MAL00CAS_60913_App76 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | PF00CAS_60913_App76  | PF          | Credit Approval  | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |

    @Recommendation
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Identifier         | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum | ApplicationStage1 |
      | HL00CAS_60913_App77  | HL          | Recommendation   | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | MAL00CAS_60913_App77 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | PF00CAS_60913_App77  | PF          | Recommendation   | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |

    @Reconsideration
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Identifier         | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum | ApplicationStage1 |
      | HL00CAS_60913_App78  | HL          | Reconsideration  | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | MAL00CAS_60913_App78 | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | PF00CAS_60913_App78  | PF          | Reconsideration  | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |

    @Disbursal
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Identifier         | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum | ApplicationStage1 |
      | HL00CAS_60913_App79  | HL          | Disbursal        | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | MAL00CAS_60913_App79 | MAL         | Disbursal        | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | PF00CAS_60913_App79  | PF          | Disbursal        | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |

    @DDE
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Identifier         | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum | ApplicationStage1 |
      | HL00CAS_60913_App80  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | MAL00CAS_60913_App80 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | PF00CAS_60913_App80  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |

    @CreditApproval
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Identifier         | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum | ApplicationStage1 |
      | HL00CAS_60913_App81  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | MAL00CAS_60913_App81 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | PF00CAS_60913_App81  | PF          | Credit Approval  | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |

    @Recommendation
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Identifier         | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum | ApplicationStage1 |
      | HL00CAS_60913_App82  | HL          | Recommendation   | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | MAL00CAS_60913_App82 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | PF00CAS_60913_App82  | PF          | Recommendation   | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |

    @Reconsideration
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Identifier         | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum | ApplicationStage1 |
      | HL00CAS_60913_App83  | HL          | Reconsideration  | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | MAL00CAS_60913_App83 | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | PF00CAS_60913_App83  | PF          | Reconsideration  | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |

    @Disbursal
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Identifier         | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum | ApplicationStage1 |
      | HL00CAS_60913_App84  | HL          | Disbursal        | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | MAL00CAS_60913_App84 | MAL         | Disbursal        | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | PF00CAS_60913_App84  | PF          | Disbursal        | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |

    @DDE
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Identifier         | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum | ApplicationStage1 |
      | HL00CAS_60913_App85  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | MAL00CAS_60913_App85 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | PF00CAS_60913_App85  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |

    @CreditApproval
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Identifier         | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum | ApplicationStage1 |
      | HL00CAS_60913_App86  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | MAL00CAS_60913_App86 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | PF00CAS_60913_App86  | PF          | Credit Approval  | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |

    @Recommendation
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Identifier         | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum | ApplicationStage1 |
      | HL00CAS_60913_App87  | HL          | Recommendation   | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | MAL00CAS_60913_App87 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | PF00CAS_60913_App87  | PF          | Recommendation   | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |

    @Reconsideration
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Identifier         | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum | ApplicationStage1 |
      | HL00CAS_60913_App88  | HL          | Reconsideration  | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | MAL00CAS_60913_App88 | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | PF00CAS_60913_App88  | PF          | Reconsideration  | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |

    @Disbursal
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option | Identifier         | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum | ApplicationStage1 |
      | HL00CAS_60913_App89  | HL          | Disbursal        | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | MAL00CAS_60913_App89 | MAL         | Disbursal        | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |
      | PF00CAS_60913_App89  | PF          | Disbursal        | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  | Application Number | copy_application.xlsx | home                 | 0                           | DDE               |


  @Release
  # PQM-14-CAS-60913
  Scenario Outline: ACAUTOCAS-21185: Collateral should get Copied with <Option> option as Joint FD and Remarks form the existing search for the <ApplicationStage> stage of the <ProductType> product with as the LogicalID <LogicalID>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user starts creating application of logical id "<LogicalID>"
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And  user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for Fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page on "<ApplicationStage>" stage
    When user searches for an existing internal collateral using Global Collateral Number
    And user links the collateral with the application
    And user edits the recently added collateral for copied collateral
    Then user should be validate the "<Option>" FD field and Fixed Deposit remarks of the copied collateral

    @DDE
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App90  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |
      | MAL00CAS_60913_App90 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |
      | PF00CAS_60913_App90  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |

    @CreditApproval
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App91  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |
      | MAL00CAS_60913_App91 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |
      | PF00CAS_60913_App91  | PF          | Credit Approval  | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |

    @Recommendation
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App92  | HL          | Recommendation   | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |
      | MAL00CAS_60913_App92 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |
      | PF00CAS_60913_App92  | PF          | Recommendation   | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |

    @Reconsideration
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App93  | HL          | Reconsideration  | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |
      | MAL00CAS_60913_App93 | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |
      | PF00CAS_60913_App93  | PF          | Reconsideration  | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |

    @Disbursal
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App94  | HL          | Disbursal        | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |
      | MAL00CAS_60913_App94 | MAL         | Disbursal        | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |
      | PF00CAS_60913_App94  | PF          | Disbursal        | collateral.xlsx | fixed_deposit      | 379                        | indiv         |          |     | Yes    |

    @DDE
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App95  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |
      | MAL00CAS_60913_App95 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |
      | PF00CAS_60913_App95  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |

    @CreditApproval
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App96  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |
      | MAL00CAS_60913_App96 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |
      | PF00CAS_60913_App96  | PF          | Credit Approval  | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |

    @Recommendation
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App97  | HL          | Recommendation   | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |
      | MAL00CAS_60913_App97 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |
      | PF00CAS_60913_App97  | PF          | Recommendation   | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |

    @Reconsideration
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App98  | HL          | Reconsideration  | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |
      | MAL00CAS_60913_App98 | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |
      | PF00CAS_60913_App98  | PF          | Reconsideration  | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |

    @Disbursal
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App99  | HL          | Disbursal        | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |
      | MAL00CAS_60913_App99 | MAL         | Disbursal        | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |
      | PF00CAS_60913_App99  | PF          | Disbursal        | collateral.xlsx | fixed_deposit      | 380                        | indiv         |          |     | NO     |

    @DDE
    Examples:
      | LogicalID             | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App100  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |
      | MAL00CAS_60913_App100 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |
      | PF00CAS_60913_App100  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |

    @CreditApproval
    Examples:
      | LogicalID             | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App101  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |
      | MAL00CAS_60913_App101 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |
      | PF00CAS_60913_App101  | PF          | Credit Approval  | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |

    @Recommendation
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App97  | HL          | Recommendation   | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |
      | MAL00CAS_60913_App97 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |
      | PF00CAS_60913_App97  | PF          | Recommendation   | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |

    @Reconsideration
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App98  | HL          | Reconsideration  | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |
      | MAL00CAS_60913_App98 | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |
      | PF00CAS_60913_App98  | PF          | Reconsideration  | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |

    @Disbursal
    Examples:
      | LogicalID            | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | Option |
      | HL00CAS_60913_App99  | HL          | Disbursal        | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |
      | MAL00CAS_60913_App99 | MAL         | Disbursal        | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |
      | PF00CAS_60913_App99  | PF          | Disbursal        | collateral.xlsx | fixed_deposit      | 381                        | indiv         |          |     | Empty  |

#  @NotImplemented
#   # PQM-05-CAS-60913
#   # PQM-11-CAS-60913
#  Scenario Outline: Dynamic form and joint FD field + Remarks should be visible in the GCC DB
#    Given Verify the impact when Dynamic form is added with fields that field plus Dyanamic form is visvile in the GCC DB
#    When &nbsp;
#    And &nbsp;
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    Then Dynamic form and joint FD field + Remarks should be visible in the GCC DB
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |







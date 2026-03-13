@Epic-CollateralDetails
@AuthoredBy-pallavi.singh
@ReviewedBy-
@ImplementedBy-pallavi.singh
@Collateral
@PQMStory
@Order
@Release
@Perishable

#Story-CAS-52835
#This story covers collateral search service API and collateral dedupe search service API
Feature: Test_Case_CAS52835_GCC Search Service Changes

  # PQM-01_CAS-52835, # PQM-02_CAS-52835
  Scenario Outline: ACAUTOCAS-22409: Validate response of collateral search service API for <Field> LogicalID <LogicalID>
    Given user stores logical ID "<LogicalID>" in report
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_searchCollateralApi>" and row <Collateral_searchCollateralApi_rowNum>
    When user hits collateral search service API with "<Field>"
    Then collateral search service API should throw proper error response
    Examples:
      | LogicalID        | CollateralWB    | Collateral_searchCollateralApi | Collateral_searchCollateralApi_rowNum | Field                            |
      | CAS_52835_GCC_01 | collateral.xlsx | search_collateral_api          | 1                                     | invalid global collateral number |
      | CAS_52835_GCC_02 | collateral.xlsx | search_collateral_api          | 2                                     | empty global collateral number   |
      | CAS_52835_GCC_03 | collateral.xlsx | search_collateral_api          | 3                                     | null global collateral number    |
      | CAS_52835_GCC_04 | collateral.xlsx | search_collateral_api          | 4                                     | invalid loan reference number    |


  #Scenario for application pick
  # PQM-03_CAS-52835, #PQM-04_CAS-52835, #PQM-05_CAS-52835, # PQM-06_CAS-52835,# PQM-07_CAS-52835,# PQM-08_CAS-52835
  @PickApplication
  Scenario Outline: ACAUTOCAS-22411: Pick STP application of <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given user stores logical ID "<LogicalID>" in report
    And user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user starts creating application of logical id "<LogicalID>"
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    Then set Application ID in the thread context
    @PostApproval
    Examples:
      | LogicalID            | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_52835_GCC_01  | PL          | indiv         | Post Approval    |          |     |
      | HL_CAS_52835_GCC_01  | HL          | indiv         | Post Approval    |          |     |
      | MAL_CAS_52835_GCC_01 | MAL         | indiv         | Post Approval    |          |     |

    @Disbursal
    Examples:
      | LogicalID                | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_52835_GCC_02      | PL          | indiv         | Disbursal        |          |     |
      | HL_CAS_52835_GCC_02      | HL          | indiv         | Disbursal        |          |     |
      | MAL_CAS_52835_GCC_02     | MAL         | indiv         | Disbursal        |          |     |
      | PL_CAS_52835_GCC_LAN_01  | PL          | indiv         | Disbursal        |          |     |
      | HL_CAS_52835_GCC_LAN_01  | HL          | indiv         | Disbursal        |          |     |
      | MAL_CAS_52835_GCC_LAN_01 | MAL         | indiv         | Disbursal        |          |     |

    @CreditApproval
    Examples:
      | LogicalID            | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_52835_GCC_03  | PL          | indiv         | Credit Approval  |          |     |
      | HL_CAS_52835_GCC_03  | HL          | indiv         | Credit Approval  |          |     |
      | MAL_CAS_52835_GCC_03 | MAL         | indiv         | Credit Approval  |          |     |

    @Recommendation
    Examples:
      | LogicalID            | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_52835_GCC_04  | PL          | indiv         | Recommendation   |          |     |
      | HL_CAS_52835_GCC_04  | HL          | indiv         | Recommendation   |          |     |
      | MAL_CAS_52835_GCC_04 | MAL         | indiv         | Recommendation   |          |     |

    @Reconsideration
    Examples:
      | LogicalID            | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_52835_GCC_05  | PL          | indiv         | Reconsideration  |          |     |
      | HL_CAS_52835_GCC_05  | HL          | indiv         | Reconsideration  |          |     |
      | MAL_CAS_52835_GCC_05 | MAL         | indiv         | Reconsideration  |          |     |

    @DDE
    @DBConfig-1
    Examples:
      | LogicalID                   | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_52835_GCC_CONFIG_01  | PL          | indiv         | DDE              |          |     |
      | HL_CAS_52835_GCC_CONFIG_01  | HL          | indiv         | DDE              |          |     |
      | MAL_CAS_52835_GCC_CONFIG_01 | MAL         | indiv         | DDE              |          |     |


  #Scenario for application create through API service
  # PQM-11_CAS-52835
  @DDE
  Scenario Outline: ACAUTOCAS-22412: Create application through application create API service for <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given user stores logical ID "<LogicalID>" in report
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user creates an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from web service
    Then set Application ID in the thread context
    Examples:
      | LogicalID               | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_52835_GCC_UI_03  | PL          | DDE              | indiv         |          |     |
      | HL_CAS_52835_GCC_UI_03  | HL          | DDE              | indiv         |          |     |
      | MAL_CAS_52835_GCC_UI_03 | MAL         | DDE              | indiv         |          |     |

  # PQM-03_CAS-52835, #PQM-04_CAS-52835, #PQM-05_CAS-52835, # PQM-06_CAS-52835,# PQM-07_CAS-52835,# PQM-08_CAS-52835,# PQM-11_CAS-52835
  Scenario Outline: Add Collateral Detail Incase not present for <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user opens Collateral Page on "<ApplicationStage>" stage
    And user reads data from the excel file "collateral.xlsx" under sheet "asset_details" and row 77
    When user adds a collateral detail in application
    Then collateral details should be present in application
    @PostApproval
    Examples:
      | LogicalID            | ProductType | ApplicationStage |
      | PL_CAS_52835_GCC_01  | PL          | Post Approval    |
      | HL_CAS_52835_GCC_01  | HL          | Post Approval    |
      | MAL_CAS_52835_GCC_01 | MAL         | Post Approval    |

    @Disbursal
    Examples:
      | LogicalID                | ProductType | ApplicationStage |
      | PL_CAS_52835_GCC_02      | PL          | Disbursal        |
      | HL_CAS_52835_GCC_02      | HL          | Disbursal        |
      | MAL_CAS_52835_GCC_02     | MAL         | Disbursal        |
      | PL_CAS_52835_GCC_LAN_01  | PL          | Disbursal        |
      | HL_CAS_52835_GCC_LAN_01  | HL          | Disbursal        |
      | MAL_CAS_52835_GCC_LAN_01 | MAL         | Disbursal        |

    @CreditApproval
    Examples:
      | LogicalID            | ProductType | ApplicationStage |
      | PL_CAS_52835_GCC_03  | PL          | Credit Approval  |
      | HL_CAS_52835_GCC_03  | HL          | Credit Approval  |
      | MAL_CAS_52835_GCC_03 | MAL         | Credit Approval  |

    @Recommendation
    Examples:
      | LogicalID            | ProductType | ApplicationStage |
      | PL_CAS_52835_GCC_04  | PL          | Recommendation   |
      | HL_CAS_52835_GCC_04  | HL          | Recommendation   |
      | MAL_CAS_52835_GCC_04 | MAL         | Recommendation   |

    @Reconsideration
    Examples:
      | LogicalID            | ProductType | ApplicationStage |
      | PL_CAS_52835_GCC_05  | PL          | Reconsideration  |
      | HL_CAS_52835_GCC_05  | HL          | Reconsideration  |
      | MAL_CAS_52835_GCC_05 | MAL         | Reconsideration  |

    @DDE
    @DBConfig-1
    Examples:
      | LogicalID                   | ProductType | ApplicationStage |
      | PL_CAS_52835_GCC_CONFIG_01  | PL          | DDE              |
      | HL_CAS_52835_GCC_CONFIG_01  | HL          | DDE              |
      | MAL_CAS_52835_GCC_CONFIG_01 | MAL         | DDE              |


    @DDE
    Examples:
      | LogicalID               | ProductType | ApplicationStage |
      | PL_CAS_52835_GCC_UI_03  | PL          | DDE              |
      | HL_CAS_52835_GCC_UI_03  | HL          | DDE              |
      | MAL_CAS_52835_GCC_UI_03 | MAL         | DDE              |

  #Scenario for checking if collateral details present and set in context
  # PQM-02_CAS-52835, # PQM-03_CAS-52835, # PQM-04_CAS-52835, # PQM-05_CAS-52835, # PQM-06_CAS-52835,# PQM-07_CAS-52835
  # PQM-08_CAS-52835, # PQM-09_CAS-52835, # PQM-10_CAS-52835, # PQM-11_CAS-52835, # PQM-12_CAS-52835
  Scenario Outline: ACAUTOCAS-22418: Validate collateral details present for <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user opens Collateral Page on "<ApplicationStage>" without adding New Collateral
    Then collateral details should be present in application
    @PostApproval
    Examples:
      | LogicalID            | ProductType | ApplicationStage |
      | PL_CAS_52835_GCC_01  | PL          | Post Approval    |
      | HL_CAS_52835_GCC_01  | HL          | Post Approval    |
      | MAL_CAS_52835_GCC_01 | MAL         | Post Approval    |

    @Disbursal
    Examples:
      | LogicalID            | ProductType | ApplicationStage |
      | PL_CAS_52835_GCC_02  | PL          | Disbursal        |
      | HL_CAS_52835_GCC_02  | HL          | Disbursal        |
      | MAL_CAS_52835_GCC_02 | MAL         | Disbursal        |

    @CreditApproval
    Examples:
      | LogicalID            | ProductType | ApplicationStage |
      | PL_CAS_52835_GCC_03  | PL          | Credit Approval  |
      | HL_CAS_52835_GCC_03  | HL          | Credit Approval  |
      | MAL_CAS_52835_GCC_03 | MAL         | Credit Approval  |

    @Recommendation
    Examples:
      | LogicalID            | ProductType | ApplicationStage |
      | PL_CAS_52835_GCC_04  | PL          | Recommendation   |
      | HL_CAS_52835_GCC_04  | HL          | Recommendation   |
      | MAL_CAS_52835_GCC_04 | MAL         | Recommendation   |

    @Reconsideration
    Examples:
      | LogicalID            | ProductType | ApplicationStage |
      | PL_CAS_52835_GCC_05  | PL          | Reconsideration  |
      | HL_CAS_52835_GCC_05  | HL          | Reconsideration  |
      | MAL_CAS_52835_GCC_05 | MAL         | Reconsideration  |

    @DDE
    Examples:
      | LogicalID               | ProductType | ApplicationStage |
      | PL_CAS_52835_GCC_UI_02  | PL          | DDE              |
      | HL_CAS_52835_GCC_UI_02  | HL          | DDE              |
      | MAL_CAS_52835_GCC_UI_02 | MAL         | DDE              |
      | PL_CAS_52835_GCC_UI_03  | PL          | DDE              |
      | HL_CAS_52835_GCC_UI_03  | HL          | DDE              |
      | MAL_CAS_52835_GCC_UI_03 | MAL         | DDE              |
      | PL_CAS_52835_GCC_UI_04  | PL          | DDE              |
      | HL_CAS_52835_GCC_UI_04  | HL          | DDE              |
      | MAL_CAS_52835_GCC_UI_04 | MAL         | DDE              |

    @DDE
    @DBConfig-1
    Examples:
      | LogicalID                   | ProductType | ApplicationStage |
      | PL_CAS_52835_GCC_CONFIG_01  | PL          | DDE              |
      | HL_CAS_52835_GCC_CONFIG_01  | HL          | DDE              |
      | MAL_CAS_52835_GCC_CONFIG_01 | MAL         | DDE              |

  #Scenario for moving application
  @DDE
  Scenario Outline: ACAUTOCAS-22419: Move Application from <ApplicationStage> to <Moved_Stage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user selects document tab
    And user submit the documents with wait
    When user moves from "<ApplicationStage>" to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<Moved_Stage>" for "<Category>" with "<key>" stage
    Then application should be moved to "<Moved_Stage>" stage successfully
    Examples:
      | LogicalID               | ProductType | ApplicationStage | Moved_Stage   | ApplicantType | Category | key |
      | PL_CAS_52835_GCC_UI_02  | PL          | DDE              | Post Approval | indiv         |          |     |
      | HL_CAS_52835_GCC_UI_02  | HL          | DDE              | Post Approval | indiv         |          |     |
      | MAL_CAS_52835_GCC_UI_02 | MAL         | DDE              | Post Approval | indiv         |          |     |
      | PL_CAS_52835_GCC_UI_03  | PL          | DDE              | Post Approval | indiv         |          |     |
      | HL_CAS_52835_GCC_UI_03  | HL          | DDE              | Post Approval | indiv         |          |     |
      | MAL_CAS_52835_GCC_UI_03 | MAL         | DDE              | Post Approval | indiv         |          |     |
      | PL_CAS_52835_GCC_UI_04  | PL          | DDE              | Post Approval | indiv         |          |     |
      | HL_CAS_52835_GCC_UI_04  | HL          | DDE              | Post Approval | indiv         |          |     |
      | MAL_CAS_52835_GCC_UI_04 | MAL         | DDE              | Post Approval | indiv         |          |     |

  Scenario Outline:Disbursal initiation at disbursal stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Disbursal" stage present in context from application grid
    When user moves to main tab of "disbursal"
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 49
    And user clicks on add entry on disbursal page
    And user fills mandatory field in disbursal entry on disbursal page for "<ProductType>"
    And user fills disbursal Checklist
    And user opens payee details on disbursal
    And user selects payment mode as "<PaymentMode>"
    And user fills payment details of "<PaymentMode>"
    And user saves the disbursal
    And user initiate disbursal
    Then Application should move to "<FinalStage>" Stage
    @Disbursal
    Examples:
      | LogicalID                | ProductType   | FinalStage       | PaymentMode |
      | PL_CAS_52835_GCC_LAN_01  | Personal Loan | Disbursal Author | Cheque      |
      | HL_CAS_52835_GCC_LAN_01  | Home Loan     | Disbursal Author | Cheque      |
      | MAL_CAS_52835_GCC_LAN_01 | Auto Loan     | Disbursal Author | Cheque      |


  #Scenario for send back application
  @PostApproval
  Scenario Outline: ACAUTOCAS-22420: Send Back Application from <ApplicationStage> to <SendBack_Stage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user navigates to send back application screen
    And user selects "<SendBack_Stage>" stage to send back
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 7
    And user fills reason for send back
    When user clicks on send back Application button
    Then validate application sent back to "<SendBack_Stage>" stage
    Examples:
      | LogicalID               | ProductType | SendBack_Stage | ApplicationStage |
      | PL_CAS_52835_GCC_UI_04  | PL          | DDE            | Post Approval    |
      | HL_CAS_52835_GCC_UI_04  | HL          | DDE            | Post Approval    |
      | MAL_CAS_52835_GCC_UI_04 | MAL         | DDE            | Post Approval    |

    # PQM-01_CAS-52835
  Scenario Outline: ACAUTOCAS-22410: Capture LAN Number with collateral details at Sent To ops for LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigate to disbursal author Screen
    And user opens an application present in context from disbursal author grid
    And Author accepts the disbursal application on disbursal author page
    And Application should move to "SEND_TO_OPTS" Stage using "Search" service
    When user opens an application present in context from sent to ops grid
    #Pre-requisite for LAN number capture
    And user captures the LAN no of the application
    And user navigates to collateral tab
    Then collateral details should be present in application
    @DisbursalAuthor
    @LoggedBug-CAS-244714
    Examples:
      | LogicalID                | ProductType |
      | PL_CAS_52835_GCC_LAN_01  | PL          |
      | HL_CAS_52835_GCC_LAN_01  | HL          |
      | MAL_CAS_52835_GCC_LAN_01 | MAL         |


  # Scenario for collateral search through API
  # PQM-02_CAS-52835, # PQM-05_CAS-52835, # PQM-06_CAS-52835,# PQM-07_CAS-52835
  # PQM-08_CAS-52835, # PQM-09_CAS-52835, # PQM-10_CAS-52835, # PQM-11_CAS-52835, # PQM-12_CAS-52835
  Scenario Outline: ACAUTOCAS-22421: Validate Collateral Search Service Response for <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_searchCollateralApi>" and row <Collateral_searchCollateralApi_rowNum>
    When user hits collateral search Service API as <CollateralNo>
    Then response should be success with collateral details <CollateralNo> as per the service
    @PostApproval
    Examples:
      | LogicalID            | CollateralNo | ProductType   | ApplicationStage | CollateralWB    | Collateral_searchCollateralApi | Collateral_searchCollateralApi_rowNum |
      | PL_CAS_52835_GCC_01  | 1            | Personal Loan | Post Approval    | collateral.xlsx | search_collateral_api          | 0                                     |
      | HL_CAS_52835_GCC_01  | 1            | Home Loan     | Post Approval    | collateral.xlsx | search_collateral_api          | 0                                     |
      | MAL_CAS_52835_GCC_01 | 1            | Auto Loan     | Post Approval    | collateral.xlsx | search_collateral_api          | 0                                     |
    @Disbursal
    Examples:
      | LogicalID            | CollateralNo | ProductType   | ApplicationStage | CollateralWB    | Collateral_searchCollateralApi | Collateral_searchCollateralApi_rowNum |
      | PL_CAS_52835_GCC_02  | 1            | Personal Loan | Disbursal        | collateral.xlsx | search_collateral_api          | 0                                     |
      | HL_CAS_52835_GCC_02  | 1            | Home Loan     | Disbursal        | collateral.xlsx | search_collateral_api          | 0                                     |
      | MAL_CAS_52835_GCC_02 | 1            | Auto Loan     | Disbursal        | collateral.xlsx | search_collateral_api          | 0                                     |
    @CreditApproval
    Examples:
      | LogicalID            | CollateralNo | ProductType   | ApplicationStage | CollateralWB    | Collateral_searchCollateralApi | Collateral_searchCollateralApi_rowNum |
      | PL_CAS_52835_GCC_03  | 1            | Personal Loan | Credit Approval  | collateral.xlsx | search_collateral_api          | 0                                     |
      | HL_CAS_52835_GCC_03  | 1            | Home Loan     | Credit Approval  | collateral.xlsx | search_collateral_api          | 0                                     |
      | MAL_CAS_52835_GCC_03 | 1            | Auto Loan     | Credit Approval  | collateral.xlsx | search_collateral_api          | 0                                     |
    @Recommendation
    Examples:
      | LogicalID            | CollateralNo | ProductType   | ApplicationStage | CollateralWB    | Collateral_searchCollateralApi | Collateral_searchCollateralApi_rowNum |
      | PL_CAS_52835_GCC_04  | 1            | Personal Loan | Recommendation   | collateral.xlsx | search_collateral_api          | 0                                     |
      | HL_CAS_52835_GCC_04  | 1            | Home Loan     | Recommendation   | collateral.xlsx | search_collateral_api          | 0                                     |
      | MAL_CAS_52835_GCC_04 | 1            | Auto Loan     | Recommendation   | collateral.xlsx | search_collateral_api          | 0                                     |

    @Reconsideration
    Examples:
      | LogicalID            | CollateralNo | ProductType   | ApplicationStage | CollateralWB    | Collateral_searchCollateralApi | Collateral_searchCollateralApi_rowNum |
      | PL_CAS_52835_GCC_05  | 1            | Personal Loan | Reconsideration  | collateral.xlsx | search_collateral_api          | 0                                     |
      | HL_CAS_52835_GCC_05  | 1            | Home Loan     | Reconsideration  | collateral.xlsx | search_collateral_api          | 0                                     |
      | MAL_CAS_52835_GCC_05 | 1            | Auto Loan     | Reconsideration  | collateral.xlsx | search_collateral_api          | 0                                     |

    @SentToOps
    @LoggedBug-CAS-244714
    Examples:
      | LogicalID                | CollateralNo | ProductType   | ApplicationStage | CollateralWB    | Collateral_searchCollateralApi | Collateral_searchCollateralApi_rowNum |
      | PL_CAS_52835_GCC_LAN_01  | 1            | Personal Loan | Sent To Ops      | collateral.xlsx | search_collateral_api          | 5                                     |
      | HL_CAS_52835_GCC_LAN_01  | 1            | Home Loan     | Sent To Ops      | collateral.xlsx | search_collateral_api          | 5                                     |
      | MAL_CAS_52835_GCC_LAN_01 | 1            | Auto Loan     | Sent To Ops      | collateral.xlsx | search_collateral_api          | 5                                     |

    @PostApproval
    Examples:
      | LogicalID               | CollateralNo | ProductType   | ApplicationStage | CollateralWB    | Collateral_searchCollateralApi | Collateral_searchCollateralApi_rowNum |
      | PL_CAS_52835_GCC_UI_02  | 1            | Personal Loan | Post Approval    | collateral.xlsx | search_collateral_api          | 0                                     |
      | PL_CAS_52835_GCC_UI_02  | 2            | Personal Loan | Post Approval    | collateral.xlsx | search_collateral_api          | 0                                     |
      | PL_CAS_52835_GCC_UI_02  | 3            | Personal Loan | Post Approval    | collateral.xlsx | search_collateral_api          | 0                                     |
      | PL_CAS_52835_GCC_UI_02  | 4            | Personal Loan | Post Approval    | collateral.xlsx | search_collateral_api          | 0                                     |
      | PL_CAS_52835_GCC_UI_02  | 5            | Personal Loan | Post Approval    | collateral.xlsx | search_collateral_api          | 0                                     |
      | HL_CAS_52835_GCC_UI_02  | 1            | Home Loan     | Post Approval    | collateral.xlsx | search_collateral_api          | 0                                     |
      | HL_CAS_52835_GCC_UI_02  | 2            | Home Loan     | Post Approval    | collateral.xlsx | search_collateral_api          | 0                                     |
      | HL_CAS_52835_GCC_UI_02  | 3            | Home Loan     | Post Approval    | collateral.xlsx | search_collateral_api          | 0                                     |
      | HL_CAS_52835_GCC_UI_02  | 4            | Home Loan     | Post Approval    | collateral.xlsx | search_collateral_api          | 0                                     |
      | HL_CAS_52835_GCC_UI_02  | 5            | Home Loan     | Post Approval    | collateral.xlsx | search_collateral_api          | 0                                     |
      | MAL_CAS_52835_GCC_UI_02 | 1            | Auto Loan     | Post Approval    | collateral.xlsx | search_collateral_api          | 0                                     |
      | MAL_CAS_52835_GCC_UI_02 | 2            | Auto Loan     | Post Approval    | collateral.xlsx | search_collateral_api          | 0                                     |
      | MAL_CAS_52835_GCC_UI_02 | 3            | Auto Loan     | Post Approval    | collateral.xlsx | search_collateral_api          | 0                                     |
      | MAL_CAS_52835_GCC_UI_02 | 4            | Auto Loan     | Post Approval    | collateral.xlsx | search_collateral_api          | 0                                     |
      | MAL_CAS_52835_GCC_UI_02 | 5            | Auto Loan     | Post Approval    | collateral.xlsx | search_collateral_api          | 0                                     |
      | PL_CAS_52835_GCC_UI_03  | 1            | Personal Loan | Post Approval    | collateral.xlsx | search_collateral_api          | 0                                     |
      | HL_CAS_52835_GCC_UI_03  | 1            | Home Loan     | Post Approval    | collateral.xlsx | search_collateral_api          | 0                                     |
      | MAL_CAS_52835_GCC_UI_03 | 1            | Auto Loan     | Post Approval    | collateral.xlsx | search_collateral_api          | 0                                     |

    @DDE
    Examples:
      | LogicalID               | CollateralNo | ProductType   | ApplicationStage | CollateralWB    | Collateral_searchCollateralApi | Collateral_searchCollateralApi_rowNum |
      | PL_CAS_52835_GCC_UI_04  | 1            | Personal Loan | DDE              | collateral.xlsx | search_collateral_api          | 0                                     |
      | PL_CAS_52835_GCC_UI_04  | 2            | Personal Loan | DDE              | collateral.xlsx | search_collateral_api          | 0                                     |
      | PL_CAS_52835_GCC_UI_04  | 3            | Personal Loan | DDE              | collateral.xlsx | search_collateral_api          | 0                                     |
      | PL_CAS_52835_GCC_UI_04  | 4            | Personal Loan | DDE              | collateral.xlsx | search_collateral_api          | 0                                     |
      | PL_CAS_52835_GCC_UI_04  | 5            | Personal Loan | DDE              | collateral.xlsx | search_collateral_api          | 0                                     |
      | HL_CAS_52835_GCC_UI_04  | 1            | Home Loan     | DDE              | collateral.xlsx | search_collateral_api          | 0                                     |
      | HL_CAS_52835_GCC_UI_04  | 2            | Home Loan     | DDE              | collateral.xlsx | search_collateral_api          | 0                                     |
      | HL_CAS_52835_GCC_UI_04  | 3            | Home Loan     | DDE              | collateral.xlsx | search_collateral_api          | 0                                     |
      | HL_CAS_52835_GCC_UI_04  | 4            | Home Loan     | DDE              | collateral.xlsx | search_collateral_api          | 0                                     |
      | HL_CAS_52835_GCC_UI_04  | 5            | Home Loan     | DDE              | collateral.xlsx | search_collateral_api          | 0                                     |
      | MAL_CAS_52835_GCC_UI_04 | 1            | Auto Loan     | DDE              | collateral.xlsx | search_collateral_api          | 0                                     |
      | MAL_CAS_52835_GCC_UI_04 | 2            | Auto Loan     | DDE              | collateral.xlsx | search_collateral_api          | 0                                     |
      | MAL_CAS_52835_GCC_UI_04 | 3            | Auto Loan     | DDE              | collateral.xlsx | search_collateral_api          | 0                                     |
      | MAL_CAS_52835_GCC_UI_04 | 4            | Auto Loan     | DDE              | collateral.xlsx | search_collateral_api          | 0                                     |
      | MAL_CAS_52835_GCC_UI_04 | 5            | Auto Loan     | DDE              | collateral.xlsx | search_collateral_api          | 0                                     |

  # Scenario for dedupe search through API
  # PQM-13_CAS-52835, # PQM-14_CAS-52835, # PQM-15_CAS-52835, # PQM-16_CAS-52835
  Scenario Outline: ACAUTOCAS-22422: Validate Collateral dedupe Service response for LogicalID <LogicalID>
    Given user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_searchCollateralDedupeApi>" and row <Collateral_searchCollateralDedupeApi_rowNum>
    And user stores logical ID "<LogicalID>" in report
    When user hits collateral dedupe service API for "<CollateralType>"
    Then collateral dedupe service should run successfully with duplicate result
    Examples:
      | LogicalID        | CollateralType | CollateralWB    | Collateral_searchCollateralDedupeApi | Collateral_searchCollateralDedupeApi_rowNum |
      | CAS_52835_GCC_05 | Land           | collateral.xlsx | search_collateral_dedupe_api         | 0                                           |
      | CAS_52835_GCC_05 | Asset          | collateral.xlsx | search_collateral_dedupe_api         | 1                                           |
      | CAS_52835_GCC_05 | Insurance      | collateral.xlsx | search_collateral_dedupe_api         | 2                                           |
      | CAS_52835_GCC_05 | Deposit        | collateral.xlsx | search_collateral_dedupe_api         | 3                                           |

  #Config Scenario of collateral search through API
  # PQM-03_CAS-52835, # PQM-04_CAS-52835
  @DBConfig-1
  Scenario Outline: Verify that <ApplicationStage> application which has not crossed credit approval should not be searched for <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_searchCollateralApi>" and row <Collateral_searchCollateralApi_rowNum>
    When user hits collateral search Service API as <CollateralNo>
    Then collateral search service API should throw proper error response
    @DDE
    Examples:
      | LogicalID                   | CollateralNo | ProductType   | ApplicationStage | CollateralWB    | Collateral_searchCollateralApi | Collateral_searchCollateralApi_rowNum |
      | PL_CAS_52835_GCC_CONFIG_01  | 1            | Personal Loan | DDE              | collateral.xlsx | search_collateral_api          | 6                                     |
      | HL_CAS_52835_GCC_CONFIG_01  | 1            | Home Loan     | DDE              | collateral.xlsx | search_collateral_api          | 6                                     |
      | MAL_CAS_52835_GCC_CONFIG_01 | 1            | Auto Loan     | DDE              | collateral.xlsx | search_collateral_api          | 6                                     |

@Epic-CollateralDetails
@AuthoredBy-harshprit.kumar
@ImplementedBy-harshprit.kumar
@Collateral
@PQMStory
@Order
@Perishable
  #Story-CAS-109708
Feature: CAS109708_Collateral Delinking with Application in CAS

  Scenario Outline: ACAUTOCAS-21208: Pick STP application of <ApplicantType> applicant at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user starts creating application of logical id "<LogicalID>"
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<category>" with key "<key>"
    Then set Application ID in the thread context

    @LeadDetails @Release
    Examples:
      | LogicalID              | ProductType | ApplicantType | ApplicationStage | category | key |
      | HL_CAS_109708_Set4_06  | HL          | indiv         | Lead Details     |          |     |
      | MAL_CAS_109708_Set4_06 | MAL         | indiv         | Lead Details     |          |     |

    @DDE @Release
    Examples:
      | LogicalID               | ProductType | ApplicantType | ApplicationStage | category | key |
      | PL_CAS_109708_Set1_01   | PL          | indiv         | DDE              |          |     |
      | PL_CAS_109708_Set2_01   | PL          | indiv         | DDE              |          |     |
      | PL_CAS_109708_Set6_01   | PL          | indiv         | DDE              |          |     |
      | PL_CAS_109708_Set8_01   | PL          | indiv         | DDE              |          |     |
      | PL_CAS_109708_Set9_01   | PL          | indiv         | DDE              |          |     |
      | PL_CAS_109708_Set10_01  | PL          | indiv         | DDE              |          |     |
      | PL_CAS_109708_Set11_01  | PL          | indiv         | DDE              |          |     |
      | PL_CAS_109708_Set13_01  | PL          | indiv         | DDE              |          |     |
      | PL_CAS_109708_Set14_01  | PL          | indiv         | DDE              |          |     |

      | PL_CAS_52835_GCC_UI_02  | PL          | indiv         | DDE              |          |     |
      | PL_CAS_52835_GCC_UI_04  | PL          | indiv         | DDE              |          |     |


      | HL_CAS_109708_Set1_01   | HL          | indiv         | DDE              |          |     |
      | HL_CAS_109708_Set2_01   | HL          | indiv         | DDE              |          |     |
      | HL_CAS_109708_Set4_01   | HL          | indiv         | DDE              |          |     |
      | HL_CAS_109708_Set6_01   | HL          | indiv         | DDE              |          |     |
      | HL_CAS_109708_Set7_01   | HL          | indiv         | DDE              |          |     |
      | HL_CAS_109708_Set8_01   | HL          | indiv         | DDE              |          |     |
      | HL_CAS_109708_Set9_01   | HL          | indiv         | DDE              |          |     |
      | HL_CAS_109708_Set10_01  | HL          | indiv         | DDE              |          |     |
      | HL_CAS_109708_Set11_01  | HL          | indiv         | DDE              |          |     |
      | HL_CAS_109708_Set13_01  | HL          | indiv         | DDE              |          |     |
      | HL_CAS_109708_Set14_01  | HL          | indiv         | DDE              |          |     |

      | HL_CAS_52835_GCC_UI_02  | HL          | indiv         | DDE              |          |     |
      | HL_CAS_52835_GCC_UI_04  | HL          | indiv         | DDE              |          |     |


      | MAL_CAS_109708_Set1_01  | MAL         | indiv         | DDE              |          |     |
      | MAL_CAS_109708_Set2_01  | MAL         | indiv         | DDE              |          |     |
      | MAL_CAS_109708_Set4_01  | MAL         | indiv         | DDE              |          |     |
      | MAL_CAS_109708_Set6_01  | MAL         | indiv         | DDE              |          |     |
      | MAL_CAS_109708_Set7_01  | MAL         | indiv         | DDE              |          |     |
      | MAL_CAS_109708_Set8_01  | MAL         | indiv         | DDE              |          |     |
      | MAL_CAS_109708_Set9_01  | MAL         | indiv         | DDE              |          |     |
      | MAL_CAS_109708_Set10_01 | MAL         | indiv         | DDE              |          |     |
      | MAL_CAS_109708_Set11_01 | MAL         | indiv         | DDE              |          |     |
      | MAL_CAS_109708_Set12_01 | MAL         | indiv         | DDE              |          |     |
      | MAL_CAS_109708_Set13_01 | MAL         | indiv         | DDE              |          |     |
      | MAL_CAS_109708_Set14_01 | MAL         | indiv         | DDE              |          |     |

      | MAL_CAS_52835_GCC_UI_02 | MAL         | indiv         | DDE              |          |     |
      | MAL_CAS_52835_GCC_UI_04 | MAL         | indiv         | DDE              |          |     |


    @CreditApproval @Release
    Examples:
      | LogicalID               | ProductType | ApplicantType | ApplicationStage | category | key |
      | PL_CAS_109708_Set1_02   | PL          | indiv         | Credit Approval  |          |     |
      | PL_CAS_109708_Set2_02   | PL          | indiv         | Credit Approval  |          |     |
      | PL_CAS_109708_Set6_02   | PL          | indiv         | Credit Approval  |          |     |
      | PL_CAS_109708_Set8_02   | PL          | indiv         | Credit Approval  |          |     |
      | PL_CAS_109708_Set9_02   | PL          | indiv         | Credit Approval  |          |     |
      | PL_CAS_109708_Set10_02  | PL          | indiv         | Credit Approval  |          |     |
      | PL_CAS_109708_Set11_02  | PL          | indiv         | Credit Approval  |          |     |
      | PL_CAS_109708_Set13_02  | PL          | indiv         | Credit Approval  |          |     |
      | PL_CAS_109708_Set14_02  | PL          | indiv         | Credit Approval  |          |     |

      | HL_CAS_109708_Set1_02   | HL          | indiv         | Credit Approval  |          |     |
      | HL_CAS_109708_Set2_02   | HL          | indiv         | Credit Approval  |          |     |
      | HL_CAS_109708_Set4_02   | HL          | indiv         | Credit Approval  |          |     |
      | HL_CAS_109708_Set5_02   | HL          | indiv         | Credit Approval  |          |     |
      | HL_CAS_109708_Set6_02   | HL          | indiv         | Credit Approval  |          |     |
      | HL_CAS_109708_Set7_02   | HL          | indiv         | Credit Approval  |          |     |
      | HL_CAS_109708_Set8_02   | HL          | indiv         | Credit Approval  |          |     |
      | HL_CAS_109708_Set9_02   | HL          | indiv         | Credit Approval  |          |     |
      | HL_CAS_109708_Set10_02  | HL          | indiv         | Credit Approval  |          |     |
      | HL_CAS_109708_Set11_02  | HL          | indiv         | Credit Approval  |          |     |
      | HL_CAS_109708_Set13_02  | HL          | indiv         | Credit Approval  |          |     |
      | HL_CAS_109708_Set14_02  | HL          | indiv         | Credit Approval  |          |     |

      | MAL_CAS_109708_Set1_02  | MAL         | indiv         | Credit Approval  |          |     |
      | MAL_CAS_109708_Set2_02  | MAL         | indiv         | Credit Approval  |          |     |
      | MAL_CAS_109708_Set4_02  | MAL         | indiv         | Credit Approval  |          |     |
      | MAL_CAS_109708_Set5_02  | MAL         | indiv         | Credit Approval  |          |     |
      | MAL_CAS_109708_Set6_02  | MAL         | indiv         | Credit Approval  |          |     |
      | MAL_CAS_109708_Set7_02  | MAL         | indiv         | Credit Approval  |          |     |
      | MAL_CAS_109708_Set8_02  | MAL         | indiv         | Credit Approval  |          |     |
      | MAL_CAS_109708_Set9_02  | MAL         | indiv         | Credit Approval  |          |     |
      | MAL_CAS_109708_Set10_02 | MAL         | indiv         | Credit Approval  |          |     |
      | MAL_CAS_109708_Set11_02 | MAL         | indiv         | Credit Approval  |          |     |
      | MAL_CAS_109708_Set12_02 | MAL         | indiv         | Credit Approval  |          |     |
      | MAL_CAS_109708_Set13_02 | MAL         | indiv         | Credit Approval  |          |     |
      | MAL_CAS_109708_Set14_02 | MAL         | indiv         | Credit Approval  |          |     |



    @Reconsideration @Release
    Examples:
      | LogicalID               | ProductType | ApplicantType | ApplicationStage | category | key |
      | PL_CAS_109708_Set1_03   | PL          | indiv         | Reconsideration  |          |     |
      | PL_CAS_109708_Set2_03   | PL          | indiv         | Reconsideration  |          |     |
      | PL_CAS_109708_Set6_03   | PL          | indiv         | Reconsideration  |          |     |
      | PL_CAS_109708_Set8_03   | PL          | indiv         | Reconsideration  |          |     |
      | PL_CAS_109708_Set9_03   | PL          | indiv         | Reconsideration  |          |     |
      | PL_CAS_109708_Set10_03  | PL          | indiv         | Reconsideration  |          |     |
      | PL_CAS_109708_Set11_03  | PL          | indiv         | Reconsideration  |          |     |
      | PL_CAS_109708_Set13_03  | PL          | indiv         | Reconsideration  |          |     |
      | PL_CAS_109708_Set14_03  | PL          | indiv         | Reconsideration  |          |     |

      | HL_CAS_109708_Set1_03   | HL          | indiv         | Reconsideration  |          |     |
      | HL_CAS_109708_Set2_03   | HL          | indiv         | Reconsideration  |          |     |
      | HL_CAS_109708_Set4_03   | HL          | indiv         | Reconsideration  |          |     |
      | HL_CAS_109708_Set6_03   | HL          | indiv         | Reconsideration  |          |     |
      | HL_CAS_109708_Set7_03   | HL          | indiv         | Reconsideration  |          |     |
      | HL_CAS_109708_Set8_03   | HL          | indiv         | Reconsideration  |          |     |
      | HL_CAS_109708_Set9_03   | HL          | indiv         | Reconsideration  |          |     |
      | HL_CAS_109708_Set10_03  | HL          | indiv         | Reconsideration  |          |     |
      | HL_CAS_109708_Set11_03  | HL          | indiv         | Reconsideration  |          |     |
      | HL_CAS_109708_Set13_03  | HL          | indiv         | Reconsideration  |          |     |
      | HL_CAS_109708_Set14_03  | HL          | indiv         | Reconsideration  |          |     |

      | MAL_CAS_109708_Set1_03  | MAL         | indiv         | Reconsideration  |          |     |
      | MAL_CAS_109708_Set2_03  | MAL         | indiv         | Reconsideration  |          |     |
      | MAL_CAS_109708_Set4_03  | MAL         | indiv         | Reconsideration  |          |     |
      | MAL_CAS_109708_Set6_03  | MAL         | indiv         | Reconsideration  |          |     |
      | MAL_CAS_109708_Set7_03  | MAL         | indiv         | Reconsideration  |          |     |
      | MAL_CAS_109708_Set8_03  | MAL         | indiv         | Reconsideration  |          |     |
      | MAL_CAS_109708_Set9_03  | MAL         | indiv         | Reconsideration  |          |     |
      | MAL_CAS_109708_Set10_03 | MAL         | indiv         | Reconsideration  |          |     |
      | MAL_CAS_109708_Set11_03 | MAL         | indiv         | Reconsideration  |          |     |
      | MAL_CAS_109708_Set12_03 | MAL         | indiv         | Reconsideration  |          |     |
      | MAL_CAS_109708_Set13_03 | MAL         | indiv         | Reconsideration  |          |     |
      | MAL_CAS_109708_Set14_03 | MAL         | indiv         | Reconsideration  |          |     |



    @Recommendation @Release
    Examples:
      | LogicalID               | ProductType | ApplicantType | ApplicationStage | category | key |
      | PL_CAS_109708_Set1_04   | PL          | indiv         | Recommendation   |          |     |
      | PL_CAS_109708_Set2_04   | PL          | indiv         | Recommendation   |          |     |
      | PL_CAS_109708_Set6_04   | PL          | indiv         | Recommendation   |          |     |
      | PL_CAS_109708_Set8_04   | PL          | indiv         | Recommendation   |          |     |
      | PL_CAS_109708_Set9_04   | PL          | indiv         | Recommendation   |          |     |
      | PL_CAS_109708_Set10_04  | PL          | indiv         | Recommendation   |          |     |
      | PL_CAS_109708_Set11_04  | PL          | indiv         | Recommendation   |          |     |
      | PL_CAS_109708_Set13_04  | PL          | indiv         | Recommendation   |          |     |
      | PL_CAS_109708_Set14_04  | PL          | indiv         | Recommendation   |          |     |

      | HL_CAS_109708_Set1_04   | HL          | indiv         | Recommendation   |          |     |
      | HL_CAS_109708_Set2_04   | HL          | indiv         | Recommendation   |          |     |
      | HL_CAS_109708_Set4_04   | HL          | indiv         | Recommendation   |          |     |
      | HL_CAS_109708_Set6_04   | HL          | indiv         | Recommendation   |          |     |
      | HL_CAS_109708_Set7_04   | HL          | indiv         | Recommendation   |          |     |
      | HL_CAS_109708_Set8_04   | HL          | indiv         | Recommendation   |          |     |
      | HL_CAS_109708_Set9_04   | HL          | indiv         | Recommendation   |          |     |
      | HL_CAS_109708_Set10_04  | HL          | indiv         | Recommendation   |          |     |
      | HL_CAS_109708_Set11_04  | HL          | indiv         | Recommendation   |          |     |
      | HL_CAS_109708_Set13_04  | HL          | indiv         | Recommendation   |          |     |
      | HL_CAS_109708_Set14_04  | HL          | indiv         | Recommendation   |          |     |

      | MAL_CAS_109708_Set1_04  | MAL         | indiv         | Recommendation   |          |     |
      | MAL_CAS_109708_Set2_04  | MAL         | indiv         | Recommendation   |          |     |
      | MAL_CAS_109708_Set4_04  | MAL         | indiv         | Recommendation   |          |     |
      | MAL_CAS_109708_Set6_04  | MAL         | indiv         | Recommendation   |          |     |
      | MAL_CAS_109708_Set7_04  | MAL         | indiv         | Recommendation   |          |     |
      | MAL_CAS_109708_Set8_04  | MAL         | indiv         | Recommendation   |          |     |
      | MAL_CAS_109708_Set9_04  | MAL         | indiv         | Recommendation   |          |     |
      | MAL_CAS_109708_Set10_04 | MAL         | indiv         | Recommendation   |          |     |
      | MAL_CAS_109708_Set11_04 | MAL         | indiv         | Recommendation   |          |     |
      | MAL_CAS_109708_Set12_04 | MAL         | indiv         | Recommendation   |          |     |
      | MAL_CAS_109708_Set13_04 | MAL         | indiv         | Recommendation   |          |     |
      | MAL_CAS_109708_Set14_04 | MAL         | indiv         | Recommendation   |          |     |

    @PostApproval @Release
    Examples:
      | LogicalID             | ProductType | ApplicantType | ApplicationStage | category | key |
      | PL_CAS_49521_MG_16III | PL          | indiv         | Post approval    |          |     |

    @Disbursal @Release
    Examples:
      | LogicalID               | ProductType | ApplicantType | ApplicationStage | category | key |
      | PL_CAS_109708_Set1_05   | PL          | indiv         | Disbursal        |          |     |
      | PL_CAS_109708_Set2_05   | PL          | indiv         | Disbursal        |          |     |
      | PL_CAS_109708_Set6_05   | PL          | indiv         | Disbursal        |          |     |
      | PL_CAS_109708_Set8_05   | PL          | indiv         | Disbursal        |          |     |
      | PL_CAS_109708_Set9_05   | PL          | indiv         | Disbursal        |          |     |
      | PL_CAS_109708_Set10_05  | PL          | indiv         | Disbursal        |          |     |
      | PL_CAS_109708_Set11_05  | PL          | indiv         | Disbursal        |          |     |
      | PL_CAS_109708_Set13_05  | PL          | indiv         | Disbursal        |          |     |
      | PL_CAS_109708_Set14_05  | PL          | indiv         | Disbursal        |          |     |

      | HL_CAS_109708_Set1_05   | HL          | indiv         | Disbursal        |          |     |
      | HL_CAS_109708_Set2_05   | HL          | indiv         | Disbursal        |          |     |
      | HL_CAS_109708_Set6_05   | HL          | indiv         | Disbursal        |          |     |
      | HL_CAS_109708_Set8_05   | HL          | indiv         | Disbursal        |          |     |
      | HL_CAS_109708_Set9_05   | HL          | indiv         | Disbursal        |          |     |
      | HL_CAS_109708_Set10_05  | HL          | indiv         | Disbursal        |          |     |
      | HL_CAS_109708_Set11_05  | HL          | indiv         | Disbursal        |          |     |
      | HL_CAS_109708_Set13_05  | HL          | indiv         | Disbursal        |          |     |
      | HL_CAS_109708_Set14_05  | HL          | indiv         | Disbursal        |          |     |

      | MAL_CAS_109708_Set1_05  | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_109708_Set2_05  | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_109708_Set6_05  | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_109708_Set8_05  | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_109708_Set9_05  | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_109708_Set10_05 | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_109708_Set11_05 | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_109708_Set13_05 | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_109708_Set14_05 | MAL         | indiv         | Disbursal        |          |     |

    @DDE @Release @DBConfig-1 @Release
    Examples:
      | LogicalID              | ProductType | ApplicantType | ApplicationStage | category | key |
      | PL_CAS_109708_Set3_01  | PL          | indiv         | DDE              |          |     |
      | HL_CAS_109708_Set3_01  | HL          | indiv         | DDE              |          |     |
      | MAL_CAS_109708_Set3_01 | MAL         | indiv         | DDE              |          |     |


    @CreditApproval @Release @DBConfig-1 @Release
    Examples:
      | LogicalID              | ProductType | ApplicantType | ApplicationStage | category | key |
      | PL_CAS_109708_Set3_02  | PL          | indiv         | Credit Approval  |          |     |
      | HL_CAS_109708_Set3_02  | HL          | indiv         | Credit Approval  |          |     |
      | MAL_CAS_109708_Set3_02 | MAL         | indiv         | Credit Approval  |          |     |


    @Reconsideration @Release @DBConfig-1 @Release
    Examples:
      | LogicalID              | ProductType | ApplicantType | ApplicationStage | category | key |
      | PL_CAS_109708_Set3_03  | PL          | indiv         | Reconsideration  |          |     |
      | HL_CAS_109708_Set3_03  | HL          | indiv         | Reconsideration  |          |     |
      | MAL_CAS_109708_Set3_03 | MAL         | indiv         | Reconsideration  |          |     |


    @Recommendation @Release @DBConfig-1 @Release
    Examples:
      | LogicalID              | ProductType | ApplicantType | ApplicationStage | category | key |
      | PL_CAS_109708_Set3_04  | PL          | indiv         | Recommendation   |          |     |
      | HL_CAS_109708_Set3_04  | HL          | indiv         | Recommendation   |          |     |
      | MAL_CAS_109708_Set3_04 | MAL         | indiv         | Recommendation   |          |     |


    @Disbursal @Release @DBConfig-1 @Release
    Examples:
      | LogicalID              | ProductType | ApplicantType | ApplicationStage | category | key |
      | PL_CAS_109708_Set3_05  | PL          | indiv         | Disbursal        |          |     |
      | HL_CAS_109708_Set3_05  | HL          | indiv         | Disbursal        |          |     |
      | MAL_CAS_109708_Set3_05 | MAL         | indiv         | Disbursal        |          |     |



    @DDE @NotImplemented
    Examples:
      | LogicalID                   | ProductType | ApplicantType | ApplicationStage | category | key |
      | CV_CAS_109708_BodyFunded_01 | CV          | indiv         | DDE              |          |     |
    @CreditApproval @NotImplemented
    Examples:
      | LogicalID                   | ProductType | ApplicantType | ApplicationStage | category | key |
      | CV_CAS_109708_BodyFunded_02 | CV          | indiv         | Credit Approval  |          |     |
    @Reconsideration @NotImplemented
    Examples:
      | LogicalID                   | ProductType | ApplicantType | ApplicationStage | category | key |
      | CV_CAS_109708_BodyFunded_03 | CV          | indiv         | Reconsideration  |          |     |
    @Recommendation  @NotImplemented
    Examples:
      | LogicalID                   | ProductType | ApplicantType | ApplicationStage | category | key |
      | CV_CAS_109708_BodyFunded_04 | CV          | indiv         | Recommendation   |          |     |

    #PQM-18_CAS-109708, #PQM-03_CAS-109708
  Scenario Outline: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>]  Check opening of Collateral page at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" from application grid
    When user open collateral page of "<ApplicationStage>" stage
    Then Collateral Details page should open

    @DDE @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | RevisitCount |
      | PL_CAS_109708_Set1_01   | PL          | DDE              |              |
      | PL_CAS_109708_Set2_01   | PL          | DDE              |              |
      | PL_CAS_109708_Set6_01   | PL          | DDE              |              |
      | PL_CAS_109708_Set8_01   | PL          | DDE              |              |
      | PL_CAS_109708_Set9_01   | PL          | DDE              |              |
      | PL_CAS_109708_Set10_01  | PL          | DDE              |              |
      | PL_CAS_109708_Set11_01  | PL          | DDE              |              |
      | PL_CAS_109708_Set13_01  | PL          | DDE              |              |
      | PL_CAS_109708_Set14_01  | PL          | DDE              |              |
      | PL_CAS_52835_GCC_UI_02  | PL          | DDE              |              |
      | PL_CAS_52835_GCC_UI_04  | PL          | DDE              |              |


      | HL_CAS_109708_Set1_01   | HL          | DDE              |              |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | 1            |
      | HL_CAS_109708_Set2_01   | HL          | DDE              |              |
      | HL_CAS_109708_Set6_01   | HL          | DDE              |              |
      | HL_CAS_109708_Set8_01   | HL          | DDE              |              |
      | HL_CAS_109708_Set9_01   | HL          | DDE              |              |
      | HL_CAS_109708_Set10_01  | HL          | DDE              |              |
      | HL_CAS_109708_Set11_01  | HL          | DDE              |              |
      | HL_CAS_109708_Set13_01  | HL          | DDE              |              |
      | HL_CAS_109708_Set14_01  | HL          | DDE              |              |
      | HL_CAS_52835_GCC_UI_02  | HL          | DDE              |              |
      | HL_CAS_52835_GCC_UI_03  | HL          | DDE              |              |
      | HL_CAS_52835_GCC_UI_04  | HL          | DDE              |              |


      | MAL_CAS_109708_Set1_01  | MAL         | DDE              |              |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | 1            |
      | MAL_CAS_109708_Set2_01  | MAL         | DDE              |              |
      | MAL_CAS_109708_Set6_01  | MAL         | DDE              |              |
      | MAL_CAS_109708_Set8_01  | MAL         | DDE              |              |
      | MAL_CAS_109708_Set9_01  | MAL         | DDE              |              |
      | MAL_CAS_109708_Set10_01 | MAL         | DDE              |              |
      | MAL_CAS_109708_Set11_01 | MAL         | DDE              |              |
      | MAL_CAS_109708_Set13_01 | MAL         | DDE              |              |
      | MAL_CAS_109708_Set14_01 | MAL         | DDE              |              |
      | MAL_CAS_52835_GCC_UI_02 | MAL         | DDE              |              |
      | MAL_CAS_52835_GCC_UI_04 | MAL         | DDE              |              |

    @CreditApproval @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | RevisitCount |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  |              |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | 1            |
      | PL_CAS_109708_Set2_02   | PL          | Credit Approval  |              |
      | PL_CAS_109708_Set6_02   | PL          | Credit Approval  |              |
      | PL_CAS_109708_Set8_02   | PL          | Credit Approval  |              |
      | PL_CAS_109708_Set9_02   | PL          | Credit Approval  |              |
      | PL_CAS_109708_Set10_02  | PL          | Credit Approval  |              |
      | PL_CAS_109708_Set11_02  | PL          | Credit Approval  |              |
      | PL_CAS_109708_Set13_02  | PL          | Credit Approval  |              |
      | PL_CAS_109708_Set14_02  | PL          | Credit Approval  |              |

      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  |              |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | 1            |
      | HL_CAS_109708_Set2_02   | HL          | Credit Approval  |              |
      | HL_CAS_109708_Set6_02   | HL          | Credit Approval  |              |
      | HL_CAS_109708_Set8_02   | HL          | Credit Approval  |              |
      | HL_CAS_109708_Set9_02   | HL          | Credit Approval  |              |
      | HL_CAS_109708_Set10_02  | HL          | Credit Approval  |              |
      | HL_CAS_109708_Set11_02  | HL          | Credit Approval  |              |
      | HL_CAS_109708_Set13_02  | HL          | Credit Approval  |              |
      | HL_CAS_109708_Set14_02  | HL          | Credit Approval  |              |

      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  |              |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | 1            |
      | MAL_CAS_109708_Set2_02  | MAL         | Credit Approval  |              |
      | MAL_CAS_109708_Set6_02  | MAL         | Credit Approval  |              |
      | MAL_CAS_109708_Set8_02  | MAL         | Credit Approval  |              |
      | MAL_CAS_109708_Set9_02  | MAL         | Credit Approval  |              |
      | MAL_CAS_109708_Set10_02 | MAL         | Credit Approval  |              |
      | MAL_CAS_109708_Set11_02 | MAL         | Credit Approval  |              |
      | MAL_CAS_109708_Set13_02 | MAL         | Credit Approval  |              |
      | MAL_CAS_109708_Set14_02 | MAL         | Credit Approval  |              |

    @Reconsideration @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | RevisitCount |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  |              |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | 1            |
      | PL_CAS_109708_Set2_03   | PL          | Reconsideration  |              |
      | PL_CAS_109708_Set6_03   | PL          | Reconsideration  |              |
      | PL_CAS_109708_Set8_03   | PL          | Reconsideration  |              |
      | PL_CAS_109708_Set9_03   | PL          | Reconsideration  |              |
      | PL_CAS_109708_Set10_03  | PL          | Reconsideration  |              |
      | PL_CAS_109708_Set11_03  | PL          | Reconsideration  |              |
      | PL_CAS_109708_Set13_03  | PL          | Reconsideration  |              |
      | PL_CAS_109708_Set14_03  | PL          | Reconsideration  |              |

      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  |              |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | 1            |
      | HL_CAS_109708_Set2_03   | HL          | Reconsideration  |              |
      | HL_CAS_109708_Set6_03   | HL          | Reconsideration  |              |
      | HL_CAS_109708_Set8_03   | HL          | Reconsideration  |              |
      | HL_CAS_109708_Set9_03   | HL          | Reconsideration  |              |
      | HL_CAS_109708_Set10_03  | HL          | Reconsideration  |              |
      | HL_CAS_109708_Set11_03  | HL          | Reconsideration  |              |
      | HL_CAS_109708_Set13_03  | HL          | Reconsideration  |              |
      | HL_CAS_109708_Set14_03  | HL          | Reconsideration  |              |

      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  |              |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | 1            |
      | MAL_CAS_109708_Set2_03  | MAL         | Reconsideration  |              |
      | MAL_CAS_109708_Set6_03  | MAL         | Reconsideration  |              |
      | MAL_CAS_109708_Set8_03  | MAL         | Reconsideration  |              |
      | MAL_CAS_109708_Set9_03  | MAL         | Reconsideration  |              |
      | MAL_CAS_109708_Set10_03 | MAL         | Reconsideration  |              |
      | MAL_CAS_109708_Set11_03 | MAL         | Reconsideration  |              |
      | MAL_CAS_109708_Set13_03 | MAL         | Reconsideration  |              |
      | MAL_CAS_109708_Set14_03 | MAL         | Reconsideration  |              |

    @Recommendation @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | RevisitCount |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   |              |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | 1            |
      | PL_CAS_109708_Set2_04   | PL          | Recommendation   |              |
      | PL_CAS_109708_Set6_04   | PL          | Recommendation   |              |
      | PL_CAS_109708_Set8_04   | PL          | Recommendation   |              |
      | PL_CAS_109708_Set9_04   | PL          | Recommendation   |              |
      | PL_CAS_109708_Set10_04  | PL          | Recommendation   |              |
      | PL_CAS_109708_Set11_04  | PL          | Recommendation   |              |
      | PL_CAS_109708_Set13_04  | PL          | Recommendation   |              |
      | PL_CAS_109708_Set14_04  | PL          | Recommendation   |              |

      | HL_CAS_109708_Set1_04   | HL          | Recommendation   |              |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | 1            |
      | HL_CAS_109708_Set2_04   | HL          | Recommendation   |              |
      | HL_CAS_109708_Set6_04   | HL          | Recommendation   |              |
      | HL_CAS_109708_Set8_04   | HL          | Recommendation   |              |
      | HL_CAS_109708_Set9_04   | HL          | Recommendation   |              |
      | HL_CAS_109708_Set10_04  | HL          | Recommendation   |              |
      | HL_CAS_109708_Set11_04  | HL          | Recommendation   |              |
      | HL_CAS_109708_Set13_04  | HL          | Recommendation   |              |
      | HL_CAS_109708_Set14_04  | HL          | Recommendation   |              |

      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   |              |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | 1            |
      | MAL_CAS_109708_Set2_04  | MAL         | Recommendation   |              |
      | MAL_CAS_109708_Set6_04  | MAL         | Recommendation   |              |
      | MAL_CAS_109708_Set8_04  | MAL         | Recommendation   |              |
      | MAL_CAS_109708_Set9_04  | MAL         | Recommendation   |              |
      | MAL_CAS_109708_Set10_04 | MAL         | Recommendation   |              |
      | MAL_CAS_109708_Set11_04 | MAL         | Recommendation   |              |
      | MAL_CAS_109708_Set13_04 | MAL         | Recommendation   |              |
      | MAL_CAS_109708_Set14_04 | MAL         | Recommendation   |              |

    @PostApproval @Release
    Examples:
      | LogicalID             | ProductType | ApplicationStage | RevisitCount |
      | PL_CAS_49521_MG_16III | PL          | Post Approval    |              |

    @Disbursal @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | RevisitCount |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        |              |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | 1            |
      | PL_CAS_109708_Set2_05   | PL          | Disbursal        |              |
      | PL_CAS_109708_Set6_05   | PL          | Disbursal        |              |
      | PL_CAS_109708_Set8_05   | PL          | Disbursal        |              |
      | PL_CAS_109708_Set9_05   | PL          | Disbursal        |              |
      | PL_CAS_109708_Set10_05  | PL          | Disbursal        |              |
      | PL_CAS_109708_Set11_05  | PL          | Disbursal        |              |
      | PL_CAS_109708_Set13_05  | PL          | Disbursal        |              |
      | PL_CAS_109708_Set14_05  | PL          | Disbursal        |              |

      | HL_CAS_109708_Set1_05   | HL          | Disbursal        |              |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | 1            |
      | HL_CAS_109708_Set2_05   | HL          | Disbursal        |              |
      | HL_CAS_109708_Set6_05   | HL          | Disbursal        |              |
      | HL_CAS_109708_Set8_05   | HL          | Disbursal        |              |
      | HL_CAS_109708_Set9_05   | HL          | Disbursal        |              |
      | HL_CAS_109708_Set10_05  | HL          | Disbursal        |              |
      | HL_CAS_109708_Set11_05  | HL          | Disbursal        |              |
      | HL_CAS_109708_Set13_05  | HL          | Disbursal        |              |
      | HL_CAS_109708_Set14_05  | HL          | Disbursal        |              |

      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        |              |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | 1            |
      | MAL_CAS_109708_Set2_05  | MAL         | Disbursal        |              |
      | MAL_CAS_109708_Set6_05  | MAL         | Disbursal        |              |
      | MAL_CAS_109708_Set8_05  | MAL         | Disbursal        |              |
      | MAL_CAS_109708_Set9_05  | MAL         | Disbursal        |              |
      | MAL_CAS_109708_Set10_05 | MAL         | Disbursal        |              |
      | MAL_CAS_109708_Set11_05 | MAL         | Disbursal        |              |
      | MAL_CAS_109708_Set13_05 | MAL         | Disbursal        |              |
      | MAL_CAS_109708_Set14_05 | MAL         | Disbursal        |              |

    # PQM-18_CAS-109708, #PQM-03_CAS-109708, # PQM-04_CAS_109708
  Scenario Outline: ACAUTOCAS-21228: Generation of CMS Id on event of Save after Creation of <CollateralSubType> collateral sub type at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_sheetName>" and row <Collateral_sheet_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    When user saves the collateral data
    Then CMS id should be generated for "<CollateralSubType>"

    @DDE @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_sheetName        | Collateral_sheet_rowNum |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Ready Property                      | collateral.xlsx | property_details            | 226                     |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Construction On Land                | collateral.xlsx | property_details            | 229                     |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Insurance                           | collateral.xlsx | insurance_details           | 600                     |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Ornament                            | collateral.xlsx | gold_details                | 2                       |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       |
#      | PL_CAS_109708_Set1_01   | PL          | DDE              | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      |

      | PL_CAS_109708_Set2_01   | PL          | DDE              | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | PL_CAS_109708_Set6_01   | PL          | DDE              | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | PL_CAS_109708_Set8_01   | PL          | DDE              | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | PL_CAS_109708_Set9_01   | PL          | DDE              | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | PL_CAS_109708_Set10_01  | PL          | DDE              | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | PL_CAS_109708_Set11_01  | PL          | DDE              | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | PL_CAS_109708_Set13_01  | PL          | DDE              | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | PL_CAS_109708_Set14_01  | PL          | DDE              | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |

      | PL_CAS_52835_GCC_UI_02  | PL          | DDE              | Ready Property                      | collateral.xlsx | property_details            | 226                     |
      | PL_CAS_52835_GCC_UI_02  | PL          | DDE              | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     |
      | PL_CAS_52835_GCC_UI_02  | PL          | DDE              | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     |
      | PL_CAS_52835_GCC_UI_02  | PL          | DDE              | Construction On Land                | collateral.xlsx | property_details            | 229                     |
      | PL_CAS_52835_GCC_UI_02  | PL          | DDE              | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | PL_CAS_52835_GCC_UI_02  | PL          | DDE              | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | PL_CAS_52835_GCC_UI_02  | PL          | DDE              | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | PL_CAS_52835_GCC_UI_02  | PL          | DDE              | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | PL_CAS_52835_GCC_UI_02  | PL          | DDE              | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | PL_CAS_52835_GCC_UI_02  | PL          | DDE              | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | PL_CAS_52835_GCC_UI_02  | PL          | DDE              | Insurance                           | collateral.xlsx | insurance_details           | 600                     |
      | PL_CAS_52835_GCC_UI_02  | PL          | DDE              | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      |
      | PL_CAS_52835_GCC_UI_02  | PL          | DDE              | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     |
      | PL_CAS_52835_GCC_UI_02  | PL          | DDE              | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     |
      | PL_CAS_52835_GCC_UI_02  | PL          | DDE              | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     |
      | PL_CAS_52835_GCC_UI_02  | PL          | DDE              | Ornament                            | collateral.xlsx | gold_details                | 2                       |
      | PL_CAS_52835_GCC_UI_02  | PL          | DDE              | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       |
      | PL_CAS_52835_GCC_UI_02  | PL          | DDE              | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       |
#      | PL_CAS_52835_GCC_UI_02  | PL          | DDE              | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      |



      | PL_CAS_52835_GCC_UI_04  | PL          | DDE              | Ready Property                      | collateral.xlsx | property_details            | 226                     |
      | PL_CAS_52835_GCC_UI_04  | PL          | DDE              | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     |
      | PL_CAS_52835_GCC_UI_04  | PL          | DDE              | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     |
      | PL_CAS_52835_GCC_UI_04  | PL          | DDE              | Construction On Land                | collateral.xlsx | property_details            | 229                     |
      | PL_CAS_52835_GCC_UI_04  | PL          | DDE              | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | PL_CAS_52835_GCC_UI_04  | PL          | DDE              | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | PL_CAS_52835_GCC_UI_04  | PL          | DDE              | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | PL_CAS_52835_GCC_UI_04  | PL          | DDE              | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | PL_CAS_52835_GCC_UI_04  | PL          | DDE              | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | PL_CAS_52835_GCC_UI_04  | PL          | DDE              | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | PL_CAS_52835_GCC_UI_04  | PL          | DDE              | Insurance                           | collateral.xlsx | insurance_details           | 600                     |
      | PL_CAS_52835_GCC_UI_04  | PL          | DDE              | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      |
      | PL_CAS_52835_GCC_UI_04  | PL          | DDE              | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     |
      | PL_CAS_52835_GCC_UI_04  | PL          | DDE              | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     |
      | PL_CAS_52835_GCC_UI_04  | PL          | DDE              | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     |
      | PL_CAS_52835_GCC_UI_04  | PL          | DDE              | Ornament                            | collateral.xlsx | gold_details                | 2                       |
      | PL_CAS_52835_GCC_UI_04  | PL          | DDE              | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       |
      | PL_CAS_52835_GCC_UI_04  | PL          | DDE              | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       |
#      | PL_CAS_52835_GCC_UI_04  | PL          | DDE              | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      |




      | HL_CAS_109708_Set1_01   | HL          | DDE              | Ready Property                      | collateral.xlsx | property_details            | 226                     |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Construction On Land                | collateral.xlsx | property_details            | 229                     |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Insurance                           | collateral.xlsx | insurance_details           | 600                     |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Ornament                            | collateral.xlsx | gold_details                | 2                       |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       |
#      | HL_CAS_109708_Set1_01   | HL          | DDE              | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      |

      | HL_CAS_109708_Set2_01   | HL          | DDE              | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | HL_CAS_109708_Set6_01   | HL          | DDE              | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | HL_CAS_109708_Set8_01   | HL          | DDE              | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | HL_CAS_109708_Set9_01   | HL          | DDE              | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | HL_CAS_109708_Set10_01  | HL          | DDE              | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | HL_CAS_109708_Set11_01  | HL          | DDE              | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | HL_CAS_109708_Set13_01  | HL          | DDE              | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | HL_CAS_109708_Set14_01  | HL          | DDE              | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |


      | HL_CAS_52835_GCC_UI_02  | HL          | DDE              | Ready Property                      | collateral.xlsx | property_details            | 226                     |
      | HL_CAS_52835_GCC_UI_02  | HL          | DDE              | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     |
      | HL_CAS_52835_GCC_UI_02  | HL          | DDE              | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     |
      | HL_CAS_52835_GCC_UI_02  | HL          | DDE              | Construction On Land                | collateral.xlsx | property_details            | 229                     |
      | HL_CAS_52835_GCC_UI_02  | HL          | DDE              | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | HL_CAS_52835_GCC_UI_02  | HL          | DDE              | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | HL_CAS_52835_GCC_UI_02  | HL          | DDE              | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | HL_CAS_52835_GCC_UI_02  | HL          | DDE              | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | HL_CAS_52835_GCC_UI_02  | HL          | DDE              | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | HL_CAS_52835_GCC_UI_02  | HL          | DDE              | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | HL_CAS_52835_GCC_UI_02  | HL          | DDE              | Insurance                           | collateral.xlsx | insurance_details           | 600                     |
      | HL_CAS_52835_GCC_UI_02  | HL          | DDE              | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      |
      | HL_CAS_52835_GCC_UI_02  | HL          | DDE              | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     |
      | HL_CAS_52835_GCC_UI_02  | HL          | DDE              | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     |
      | HL_CAS_52835_GCC_UI_02  | HL          | DDE              | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     |
      | HL_CAS_52835_GCC_UI_02  | HL          | DDE              | Ornament                            | collateral.xlsx | gold_details                | 2                       |
      | HL_CAS_52835_GCC_UI_02  | HL          | DDE              | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       |
      | HL_CAS_52835_GCC_UI_02  | HL          | DDE              | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       |
#      | HL_CAS_52835_GCC_UI_02  | HL          | DDE              | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      |

      | HL_CAS_52835_GCC_UI_04  | HL          | DDE              | Ready Property                      | collateral.xlsx | property_details            | 226                     |
      | HL_CAS_52835_GCC_UI_04  | HL          | DDE              | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     |
      | HL_CAS_52835_GCC_UI_04  | HL          | DDE              | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     |
      | HL_CAS_52835_GCC_UI_04  | HL          | DDE              | Construction On Land                | collateral.xlsx | property_details            | 229                     |
      | HL_CAS_52835_GCC_UI_04  | HL          | DDE              | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | HL_CAS_52835_GCC_UI_04  | HL          | DDE              | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | HL_CAS_52835_GCC_UI_04  | HL          | DDE              | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | HL_CAS_52835_GCC_UI_04  | HL          | DDE              | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | HL_CAS_52835_GCC_UI_04  | HL          | DDE              | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | HL_CAS_52835_GCC_UI_04  | HL          | DDE              | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | HL_CAS_52835_GCC_UI_04  | HL          | DDE              | Insurance                           | collateral.xlsx | insurance_details           | 600                     |
      | HL_CAS_52835_GCC_UI_04  | HL          | DDE              | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      |
      | HL_CAS_52835_GCC_UI_04  | HL          | DDE              | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     |
      | HL_CAS_52835_GCC_UI_04  | HL          | DDE              | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     |
      | HL_CAS_52835_GCC_UI_04  | HL          | DDE              | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     |
      | HL_CAS_52835_GCC_UI_04  | HL          | DDE              | Ornament                            | collateral.xlsx | gold_details                | 2                       |
      | HL_CAS_52835_GCC_UI_04  | HL          | DDE              | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       |
      | HL_CAS_52835_GCC_UI_04  | HL          | DDE              | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       |
#      | HL_CAS_52835_GCC_UI_04  | HL          | DDE              | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      |



      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Ready Property                      | collateral.xlsx | property_details            | 226                     |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Construction On Land                | collateral.xlsx | property_details            | 229                     |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Insurance                           | collateral.xlsx | insurance_details           | 600                     |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Ornament                            | collateral.xlsx | gold_details                | 2                       |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       |
#      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      |

      | MAL_CAS_109708_Set2_01  | MAL         | DDE              | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | MAL_CAS_109708_Set6_01  | MAL         | DDE              | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | MAL_CAS_109708_Set8_01  | MAL         | DDE              | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | MAL_CAS_109708_Set9_01  | MAL         | DDE              | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | MAL_CAS_109708_Set10_01 | MAL         | DDE              | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | MAL_CAS_109708_Set11_01 | MAL         | DDE              | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | MAL_CAS_109708_Set13_01 | MAL         | DDE              | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | MAL_CAS_109708_Set14_01 | MAL         | DDE              | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |

      | MAL_CAS_52835_GCC_UI_02 | MAL         | DDE              | Ready Property                      | collateral.xlsx | property_details            | 226                     |
      | MAL_CAS_52835_GCC_UI_02 | MAL         | DDE              | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     |
      | MAL_CAS_52835_GCC_UI_02 | MAL         | DDE              | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     |
      | MAL_CAS_52835_GCC_UI_02 | MAL         | DDE              | Construction On Land                | collateral.xlsx | property_details            | 229                     |
      | MAL_CAS_52835_GCC_UI_02 | MAL         | DDE              | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | MAL_CAS_52835_GCC_UI_02 | MAL         | DDE              | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | MAL_CAS_52835_GCC_UI_02 | MAL         | DDE              | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | MAL_CAS_52835_GCC_UI_02 | MAL         | DDE              | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | MAL_CAS_52835_GCC_UI_02 | MAL         | DDE              | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | MAL_CAS_52835_GCC_UI_02 | MAL         | DDE              | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | MAL_CAS_52835_GCC_UI_02 | MAL         | DDE              | Insurance                           | collateral.xlsx | insurance_details           | 600                     |
      | MAL_CAS_52835_GCC_UI_02 | MAL         | DDE              | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      |
      | MAL_CAS_52835_GCC_UI_02 | MAL         | DDE              | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     |
      | MAL_CAS_52835_GCC_UI_02 | MAL         | DDE              | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     |
      | MAL_CAS_52835_GCC_UI_02 | MAL         | DDE              | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     |
      | MAL_CAS_52835_GCC_UI_02 | MAL         | DDE              | Ornament                            | collateral.xlsx | gold_details                | 2                       |
      | MAL_CAS_52835_GCC_UI_02 | MAL         | DDE              | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       |
      | MAL_CAS_52835_GCC_UI_02 | MAL         | DDE              | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       |
#      | MAL_CAS_52835_GCC_UI_02 | MAL         | DDE              | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      |


      | MAL_CAS_52835_GCC_UI_04 | MAL         | DDE              | Ready Property                      | collateral.xlsx | property_details            | 226                     |
      | MAL_CAS_52835_GCC_UI_04 | MAL         | DDE              | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     |
      | MAL_CAS_52835_GCC_UI_04 | MAL         | DDE              | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     |
      | MAL_CAS_52835_GCC_UI_04 | MAL         | DDE              | Construction On Land                | collateral.xlsx | property_details            | 229                     |
      | MAL_CAS_52835_GCC_UI_04 | MAL         | DDE              | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | MAL_CAS_52835_GCC_UI_04 | MAL         | DDE              | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | MAL_CAS_52835_GCC_UI_04 | MAL         | DDE              | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | MAL_CAS_52835_GCC_UI_04 | MAL         | DDE              | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | MAL_CAS_52835_GCC_UI_04 | MAL         | DDE              | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | MAL_CAS_52835_GCC_UI_04 | MAL         | DDE              | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | MAL_CAS_52835_GCC_UI_04 | MAL         | DDE              | Insurance                           | collateral.xlsx | insurance_details           | 600                     |
      | MAL_CAS_52835_GCC_UI_04 | MAL         | DDE              | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      |
      | MAL_CAS_52835_GCC_UI_04 | MAL         | DDE              | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     |
      | MAL_CAS_52835_GCC_UI_04 | MAL         | DDE              | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     |
      | MAL_CAS_52835_GCC_UI_04 | MAL         | DDE              | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     |
      | MAL_CAS_52835_GCC_UI_04 | MAL         | DDE              | Ornament                            | collateral.xlsx | gold_details                | 2                       |
      | MAL_CAS_52835_GCC_UI_04 | MAL         | DDE              | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       |
      | MAL_CAS_52835_GCC_UI_04 | MAL         | DDE              | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       |
#      | MAL_CAS_52835_GCC_UI_04 | MAL         | DDE              | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      |


    @CreditApproval @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_sheetName        | Collateral_sheet_rowNum |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Ready Property                      | collateral.xlsx | property_details            | 226                     |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Construction On Land                | collateral.xlsx | property_details            | 229                     |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Insurance                           | collateral.xlsx | insurance_details           | 600                     |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Ornament                            | collateral.xlsx | gold_details                | 2                       |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       |
#      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      |

      | PL_CAS_109708_Set2_02   | PL          | Credit Approval  | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | PL_CAS_109708_Set6_02   | PL          | Credit Approval  | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | PL_CAS_109708_Set8_02   | PL          | Credit Approval  | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | PL_CAS_109708_Set9_02   | PL          | Credit Approval  | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | PL_CAS_109708_Set10_02  | PL          | Credit Approval  | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | PL_CAS_109708_Set11_02  | PL          | Credit Approval  | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | PL_CAS_109708_Set13_02  | PL          | Credit Approval  | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | PL_CAS_109708_Set14_02  | PL          | Credit Approval  | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |


      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Ready Property                      | collateral.xlsx | property_details            | 226                     |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Construction On Land                | collateral.xlsx | property_details            | 229                     |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Insurance                           | collateral.xlsx | insurance_details           | 600                     |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Ornament                            | collateral.xlsx | gold_details                | 2                       |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       |
#      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      |

      | HL_CAS_109708_Set2_02   | HL          | Credit Approval  | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | HL_CAS_109708_Set6_02   | HL          | Credit Approval  | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | HL_CAS_109708_Set8_02   | HL          | Credit Approval  | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | HL_CAS_109708_Set9_02   | HL          | Credit Approval  | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | HL_CAS_109708_Set10_02  | HL          | Credit Approval  | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | HL_CAS_109708_Set11_02  | HL          | Credit Approval  | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | HL_CAS_109708_Set13_02  | HL          | Credit Approval  | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | HL_CAS_109708_Set14_02  | HL          | Credit Approval  | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |


      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Ready Property                      | collateral.xlsx | property_details            | 226                     |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Construction On Land                | collateral.xlsx | property_details            | 229                     |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Insurance                           | collateral.xlsx | insurance_details           | 600                     |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Ornament                            | collateral.xlsx | gold_details                | 2                       |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       |
#      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      |

      | MAL_CAS_109708_Set2_02  | MAL         | Credit Approval  | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | MAL_CAS_109708_Set6_02  | MAL         | Credit Approval  | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | MAL_CAS_109708_Set8_02  | MAL         | Credit Approval  | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | MAL_CAS_109708_Set9_02  | MAL         | Credit Approval  | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | MAL_CAS_109708_Set10_02 | MAL         | Credit Approval  | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | MAL_CAS_109708_Set11_02 | MAL         | Credit Approval  | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | MAL_CAS_109708_Set13_02 | MAL         | Credit Approval  | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | MAL_CAS_109708_Set14_02 | MAL         | Credit Approval  | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |







    @Reconsideration @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_sheetName        | Collateral_sheet_rowNum |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Ready Property                      | collateral.xlsx | property_details            | 226                     |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Construction On Land                | collateral.xlsx | property_details            | 229                     |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Insurance                           | collateral.xlsx | insurance_details           | 600                     |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Ornament                            | collateral.xlsx | gold_details                | 2                       |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       |
#      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      |

      | PL_CAS_109708_Set2_03   | PL          | Reconsideration  | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | PL_CAS_109708_Set6_03   | PL          | Reconsideration  | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | PL_CAS_109708_Set8_03   | PL          | Reconsideration  | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | PL_CAS_109708_Set9_03   | PL          | Reconsideration  | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | PL_CAS_109708_Set10_03  | PL          | Reconsideration  | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | PL_CAS_109708_Set11_03  | PL          | Reconsideration  | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | PL_CAS_109708_Set13_03  | PL          | Reconsideration  | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | PL_CAS_109708_Set14_03  | PL          | Reconsideration  | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |






      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Ready Property                      | collateral.xlsx | property_details            | 226                     |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Construction On Land                | collateral.xlsx | property_details            | 229                     |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Insurance                           | collateral.xlsx | insurance_details           | 600                     |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Ornament                            | collateral.xlsx | gold_details                | 2                       |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       |
#      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      |

      | HL_CAS_109708_Set2_03   | HL          | Reconsideration  | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | HL_CAS_109708_Set6_03   | HL          | Reconsideration  | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | HL_CAS_109708_Set8_03   | HL          | Reconsideration  | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | HL_CAS_109708_Set9_03   | HL          | Reconsideration  | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | HL_CAS_109708_Set10_03  | HL          | Reconsideration  | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | HL_CAS_109708_Set11_03  | HL          | Reconsideration  | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | HL_CAS_109708_Set13_03  | HL          | Reconsideration  | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | HL_CAS_109708_Set14_03  | HL          | Reconsideration  | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |








      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Ready Property                      | collateral.xlsx | property_details            | 226                     |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Construction On Land                | collateral.xlsx | property_details            | 229                     |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Insurance                           | collateral.xlsx | insurance_details           | 600                     |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Ornament                            | collateral.xlsx | gold_details                | 2                       |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       |
#      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      |

      | MAL_CAS_109708_Set2_03  | MAL         | Reconsideration  | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | MAL_CAS_109708_Set6_03  | MAL         | Reconsideration  | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | MAL_CAS_109708_Set8_03  | MAL         | Reconsideration  | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | MAL_CAS_109708_Set9_03  | MAL         | Reconsideration  | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | MAL_CAS_109708_Set10_03 | MAL         | Reconsideration  | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | MAL_CAS_109708_Set11_03 | MAL         | Reconsideration  | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | MAL_CAS_109708_Set13_03 | MAL         | Reconsideration  | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | MAL_CAS_109708_Set14_03 | MAL         | Reconsideration  | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |







    @Recommendation @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_sheetName        | Collateral_sheet_rowNum |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Ready Property                      | collateral.xlsx | property_details            | 226                     |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Construction On Land                | collateral.xlsx | property_details            | 229                     |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Insurance                           | collateral.xlsx | insurance_details           | 600                     |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Ornament                            | collateral.xlsx | gold_details                | 2                       |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       |
#      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      |

      | PL_CAS_109708_Set2_04   | PL          | Recommendation   | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | PL_CAS_109708_Set6_04   | PL          | Recommendation   | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | PL_CAS_109708_Set8_04   | PL          | Recommendation   | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | PL_CAS_109708_Set9_04   | PL          | Recommendation   | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | PL_CAS_109708_Set10_04  | PL          | Recommendation   | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | PL_CAS_109708_Set11_04  | PL          | Recommendation   | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | PL_CAS_109708_Set13_04  | PL          | Recommendation   | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | PL_CAS_109708_Set14_04  | PL          | Recommendation   | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |

      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Ready Property                      | collateral.xlsx | property_details            | 226                     |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Construction On Land                | collateral.xlsx | property_details            | 229                     |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Insurance                           | collateral.xlsx | insurance_details           | 600                     |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Ornament                            | collateral.xlsx | gold_details                | 2                       |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       |
#      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      |

      | HL_CAS_109708_Set2_04   | HL          | Recommendation   | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | HL_CAS_109708_Set6_04   | HL          | Recommendation   | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | HL_CAS_109708_Set8_04   | HL          | Recommendation   | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | HL_CAS_109708_Set9_04   | HL          | Recommendation   | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | HL_CAS_109708_Set10_04  | HL          | Recommendation   | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | HL_CAS_109708_Set11_04  | HL          | Recommendation   | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | HL_CAS_109708_Set13_04  | HL          | Recommendation   | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | HL_CAS_109708_Set14_04  | HL          | Recommendation   | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |






      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Ready Property                      | collateral.xlsx | property_details            | 226                     |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Construction On Land                | collateral.xlsx | property_details            | 229                     |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Insurance                           | collateral.xlsx | insurance_details           | 600                     |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Ornament                            | collateral.xlsx | gold_details                | 2                       |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       |
#      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      |

      | MAL_CAS_109708_Set2_04  | MAL         | Recommendation   | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | MAL_CAS_109708_Set6_04  | MAL         | Recommendation   | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | MAL_CAS_109708_Set8_04  | MAL         | Recommendation   | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | MAL_CAS_109708_Set9_04  | MAL         | Recommendation   | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | MAL_CAS_109708_Set10_04 | MAL         | Recommendation   | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | MAL_CAS_109708_Set11_04 | MAL         | Recommendation   | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | MAL_CAS_109708_Set13_04 | MAL         | Recommendation   | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | MAL_CAS_109708_Set14_04 | MAL         | Recommendation   | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |

    @PostApproval @Release
    Examples:
      | LogicalID             | ProductType | ApplicationStage | CollateralSubType  | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum |
      | PL_CAS_49521_MG_16III | PL          | PostApproval     | Mortgage Guarantee | collateral.xlsx | guarantee_details    | 1                       |




    @Disbursal @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_sheetName        | Collateral_sheet_rowNum |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Ready Property                      | collateral.xlsx | property_details            | 226                     |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Construction On Land                | collateral.xlsx | property_details            | 229                     |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Insurance                           | collateral.xlsx | insurance_details           | 600                     |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Ornament                            | collateral.xlsx | gold_details                | 2                       |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       |
#      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      |

      | PL_CAS_109708_Set2_05   | PL          | Disbursal        | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | PL_CAS_109708_Set6_05   | PL          | Disbursal        | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | PL_CAS_109708_Set8_05   | PL          | Disbursal        | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | PL_CAS_109708_Set9_05   | PL          | Disbursal        | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | PL_CAS_109708_Set10_05  | PL          | Disbursal        | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | PL_CAS_109708_Set11_05  | PL          | Disbursal        | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | PL_CAS_109708_Set13_05  | PL          | Disbursal        | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | PL_CAS_109708_Set14_05  | PL          | Disbursal        | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |




      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Ready Property                      | collateral.xlsx | property_details            | 226                     |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Construction On Land                | collateral.xlsx | property_details            | 229                     |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Insurance                           | collateral.xlsx | insurance_details           | 600                     |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Ornament                            | collateral.xlsx | gold_details                | 2                       |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       |
#      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      |

      | HL_CAS_109708_Set2_05   | HL          | Disbursal        | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | HL_CAS_109708_Set6_05   | HL          | Disbursal        | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | HL_CAS_109708_Set8_05   | HL          | Disbursal        | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | HL_CAS_109708_Set9_05   | HL          | Disbursal        | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | HL_CAS_109708_Set10_05  | HL          | Disbursal        | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | HL_CAS_109708_Set11_05  | HL          | Disbursal        | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | HL_CAS_109708_Set13_05  | HL          | Disbursal        | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | HL_CAS_109708_Set14_05  | HL          | Disbursal        | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |






      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Ready Property                      | collateral.xlsx | property_details            | 226                     |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Construction On Land                | collateral.xlsx | property_details            | 229                     |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Insurance                           | collateral.xlsx | insurance_details           | 600                     |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Ornament                            | collateral.xlsx | gold_details                | 2                       |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       |
#      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      |

      | MAL_CAS_109708_Set2_05  | MAL         | Disbursal        | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | MAL_CAS_109708_Set6_05  | MAL         | Disbursal        | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     |
      | MAL_CAS_109708_Set8_05  | MAL         | Disbursal        | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     |
      | MAL_CAS_109708_Set9_05  | MAL         | Disbursal        | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     |
      | MAL_CAS_109708_Set10_05 | MAL         | Disbursal        | Tractor                             | collateral.xlsx | asset_details               | 312                     |
      | MAL_CAS_109708_Set11_05 | MAL         | Disbursal        | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |
      | MAL_CAS_109708_Set13_05 | MAL         | Disbursal        | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     |
      | MAL_CAS_109708_Set14_05 | MAL         | Disbursal        | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     |


    # PQM-18_CAS-109708, #PQM-03_CAS-109708
  Scenario Outline: ACAUTOCAS-21229: Validation of Confirmation message on delinking of <CollateralSubType> Secondary Collateral at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on delete button of Secondary Collateral of "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then confirmation message should popup
    @DDE @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Ready Property                      | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Builder Property Under Construction | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Plot + Self Construction            | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Construction On Land                | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Consumer Durable                    | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Consumer Vehicle                    | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Commercial Vehicle                  | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Tractor                             | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Commercial Equipment                | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Implements and Attachments          | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Insurance                           | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Agricultural Land                   | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Kisan Vikas Patra                   | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Fixed Deposit                       | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | National Saving Certificate         | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Ornament                            | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Corporate Guarantee                 | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Mortgage Guarantee                  | collateral.xlsx | default            | 844                       |
#      | PL_CAS_109708_Set1_01  | PL          | DDE              | Stock and Book Debts                | collateral.xlsx | default            | 844                       |

      | HL_CAS_109708_Set1_01  | HL          | DDE              | Ready Property                      | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Builder Property Under Construction | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Plot + Self Construction            | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Construction On Land                | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Consumer Durable                    | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Consumer Vehicle                    | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Commercial Vehicle                  | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Tractor                             | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Commercial Equipment                | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Implements and Attachments          | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Insurance                           | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Agricultural Land                   | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Kisan Vikas Patra                   | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Fixed Deposit                       | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | National Saving Certificate         | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Ornament                            | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Corporate Guarantee                 | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Mortgage Guarantee                  | collateral.xlsx | default            | 844                       |
#      | HL_CAS_109708_Set1_01  | HL          | DDE              | Stock and Book Debts                | collateral.xlsx | default            | 844                       |

      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Ready Property                      | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Builder Property Under Construction | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Plot + Self Construction            | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Construction On Land                | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Consumer Durable                    | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Consumer Vehicle                    | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Commercial Vehicle                  | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Tractor                             | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Commercial Equipment                | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Implements and Attachments          | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Insurance                           | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Agricultural Land                   | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Kisan Vikas Patra                   | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Fixed Deposit                       | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | National Saving Certificate         | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Ornament                            | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Corporate Guarantee                 | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Mortgage Guarantee                  | collateral.xlsx | default            | 844                       |
#      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Stock and Book Debts                | collateral.xlsx | default            | 844                       |

    @CreditApproval @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Ready Property                      | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Builder Property Under Construction | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Plot + Self Construction            | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Construction On Land                | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Consumer Durable                    | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Consumer Vehicle                    | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Commercial Vehicle                  | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Tractor                             | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Commercial Equipment                | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Implements and Attachments          | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Insurance                           | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Agricultural Land                   | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Kisan Vikas Patra                   | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Fixed Deposit                       | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | National Saving Certificate         | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Ornament                            | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Corporate Guarantee                 | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Mortgage Guarantee                  | collateral.xlsx | default            | 844                       |
#      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Stock and Book Debts                | collateral.xlsx | default            | 844                       |

      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Ready Property                      | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Builder Property Under Construction | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Plot + Self Construction            | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Construction On Land                | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Consumer Durable                    | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Consumer Vehicle                    | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Commercial Vehicle                  | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Tractor                             | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Commercial Equipment                | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Implements and Attachments          | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Insurance                           | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Agricultural Land                   | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Kisan Vikas Patra                   | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Fixed Deposit                       | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | National Saving Certificate         | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Ornament                            | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Corporate Guarantee                 | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Mortgage Guarantee                  | collateral.xlsx | default            | 844                       |
#      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Stock and Book Debts                | collateral.xlsx | default            | 844                       |

      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Ready Property                      | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Builder Property Under Construction | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Plot + Self Construction            | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Construction On Land                | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Consumer Durable                    | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Consumer Vehicle                    | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Commercial Vehicle                  | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Tractor                             | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Commercial Equipment                | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Implements and Attachments          | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Insurance                           | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Agricultural Land                   | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Kisan Vikas Patra                   | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Fixed Deposit                       | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | National Saving Certificate         | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Ornament                            | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Corporate Guarantee                 | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Mortgage Guarantee                  | collateral.xlsx | default            | 844                       |
#      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Stock and Book Debts                | collateral.xlsx | default            | 844                       |
    @Reconsideration @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Ready Property                      | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Builder Property Under Construction | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Plot + Self Construction            | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Construction On Land                | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Consumer Durable                    | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Consumer Vehicle                    | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Commercial Vehicle                  | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Tractor                             | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Commercial Equipment                | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Implements and Attachments          | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Insurance                           | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Agricultural Land                   | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Kisan Vikas Patra                   | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Fixed Deposit                       | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | National Saving Certificate         | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Ornament                            | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Corporate Guarantee                 | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Mortgage Guarantee                  | collateral.xlsx | default            | 844                       |
#      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Stock and Book Debts                | collateral.xlsx | default            | 844                       |

      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Ready Property                      | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Builder Property Under Construction | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Plot + Self Construction            | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Construction On Land                | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Consumer Durable                    | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Consumer Vehicle                    | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Commercial Vehicle                  | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Commercial Equipment                | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Tractor                             | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Implements and Attachments          | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Insurance                           | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Agricultural Land                   | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Kisan Vikas Patra                   | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Fixed Deposit                       | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | National Saving Certificate         | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Ornament                            | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Corporate Guarantee                 | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Mortgage Guarantee                  | collateral.xlsx | default            | 844                       |
#      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Stock and Book Debts                | collateral.xlsx | default            | 844                       |

      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Ready Property                      | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Builder Property Under Construction | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Plot + Self Construction            | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Construction On Land                | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Consumer Durable                    | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Consumer Vehicle                    | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Commercial Vehicle                  | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Tractor                             | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Commercial Equipment                | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Implements and Attachments          | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Insurance                           | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Agricultural Land                   | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Kisan Vikas Patra                   | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Fixed Deposit                       | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | National Saving Certificate         | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Ornament                            | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Corporate Guarantee                 | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Mortgage Guarantee                  | collateral.xlsx | default            | 844                       |
#      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Stock and Book Debts                | collateral.xlsx | default            | 844                       |

    @Recommendation @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Ready Property                      | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Builder Property Under Construction | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Plot + Self Construction            | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Construction On Land                | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Consumer Durable                    | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Consumer Vehicle                    | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Commercial Vehicle                  | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Tractor                             | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Commercial Equipment                | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Implements and Attachments          | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Insurance                           | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Agricultural Land                   | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Kisan Vikas Patra                   | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Fixed Deposit                       | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | National Saving Certificate         | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Ornament                            | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Corporate Guarantee                 | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Mortgage Guarantee                  | collateral.xlsx | default            | 844                       |
#      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Stock and Book Debts                | collateral.xlsx | default            | 844                       |

      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Ready Property                      | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Builder Property Under Construction | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Plot + Self Construction            | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Construction On Land                | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Consumer Durable                    | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Consumer Vehicle                    | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Commercial Vehicle                  | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Tractor                             | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Commercial Equipment                | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Implements and Attachments          | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Insurance                           | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Agricultural Land                   | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Kisan Vikas Patra                   | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Fixed Deposit                       | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | National Saving Certificate         | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Ornament                            | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Corporate Guarantee                 | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Mortgage Guarantee                  | collateral.xlsx | default            | 844                       |
#      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Stock and Book Debts                | collateral.xlsx | default            | 844                       |

      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Ready Property                      | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Builder Property Under Construction | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Plot + Self Construction            | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Construction On Land                | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Consumer Durable                    | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Consumer Vehicle                    | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Commercial Vehicle                  | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Tractor                             | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Commercial Equipment                | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Implements and Attachments          | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Insurance                           | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Agricultural Land                   | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Kisan Vikas Patra                   | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Fixed Deposit                       | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | National Saving Certificate         | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Ornament                            | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Corporate Guarantee                 | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Mortgage Guarantee                  | collateral.xlsx | default            | 844                       |
#      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Stock and Book Debts                | collateral.xlsx | default            | 844                       |

    @Disbursal @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Ready Property                      | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Builder Property Under Construction | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Plot + Self Construction            | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Construction On Land                | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Consumer Durable                    | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Consumer Vehicle                    | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Commercial Vehicle                  | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Tractor                             | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Commercial Equipment                | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Implements and Attachments          | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Insurance                           | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Agricultural Land                   | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Kisan Vikas Patra                   | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Fixed Deposit                       | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | National Saving Certificate         | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Ornament                            | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Corporate Guarantee                 | collateral.xlsx | default            | 844                       |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Mortgage Guarantee                  | collateral.xlsx | default            | 844                       |
#      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Stock and Book Debts                | collateral.xlsx | default            | 844                       |

      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Ready Property                      | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Builder Property Under Construction | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Plot + Self Construction            | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Construction On Land                | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Consumer Durable                    | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Consumer Vehicle                    | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Commercial Vehicle                  | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Tractor                             | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Commercial Equipment                | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Implements and Attachments          | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Insurance                           | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Agricultural Land                   | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Kisan Vikas Patra                   | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Fixed Deposit                       | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | National Saving Certificate         | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Ornament                            | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Corporate Guarantee                 | collateral.xlsx | default            | 844                       |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Mortgage Guarantee                  | collateral.xlsx | default            | 844                       |
#      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Stock and Book Debts                | collateral.xlsx | default            | 844                       |

      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Ready Property                      | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Builder Property Under Construction | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Plot + Self Construction            | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Construction On Land                | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Consumer Durable                    | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Consumer Vehicle                    | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Commercial Vehicle                  | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Commercial Equipment                | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Tractor                             | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Implements and Attachments          | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Insurance                           | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Agricultural Land                   | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Kisan Vikas Patra                   | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Fixed Deposit                       | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | National Saving Certificate         | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Ornament                            | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Corporate Guarantee                 | collateral.xlsx | default            | 844                       |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Mortgage Guarantee                  | collateral.xlsx | default            | 844                       |
#      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Stock and Book Debts                | collateral.xlsx | default            | 844                       |

    # PQM-18_CAS-109708
  Scenario Outline: ACAUTOCAS-21230: Remaining on Collateral Page after not confirming on confirm message popup box of <CollateralSubType> at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on delete button of Secondary Collateral of "<CollateralSubType>"
    And user clicks on "Close" of confirmation message popup box
    Then user remains on Collateral Page
    @DDE @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Ready Property                      |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Builder Property Under Construction |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Plot + Self Construction            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Construction On Land                |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Consumer Durable                    |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Consumer Vehicle                    |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Commercial Vehicle                  |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Tractor                             |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Commercial Equipment                |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Implements and Attachments          |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Insurance                           |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Agricultural Land                   |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Kisan Vikas Patra                   |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Fixed Deposit                       |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | National Saving Certificate         |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Ornament                            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Corporate Guarantee                 |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Mortgage Guarantee                  |
#      | PL_CAS_109708_Set1_01  | PL          | DDE              | Stock and Book Debts                |

      | HL_CAS_109708_Set1_01  | HL          | DDE              | Ready Property                      |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Builder Property Under Construction |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Plot + Self Construction            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Construction On Land                |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Consumer Durable                    |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Consumer Vehicle                    |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Commercial Vehicle                  |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Tractor                             |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Commercial Equipment                |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Implements and Attachments          |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Insurance                           |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Agricultural Land                   |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Kisan Vikas Patra                   |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Fixed Deposit                       |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | National Saving Certificate         |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Ornament                            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Corporate Guarantee                 |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Mortgage Guarantee                  |
#      | HL_CAS_109708_Set1_01  | HL          | DDE              | Stock and Book Debts                |

      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Ready Property                      |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Builder Property Under Construction |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Plot + Self Construction            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Construction On Land                |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Consumer Durable                    |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Consumer Vehicle                    |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Commercial Vehicle                  |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Tractor                             |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Commercial Equipment                |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Implements and Attachments          |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Insurance                           |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Agricultural Land                   |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Kisan Vikas Patra                   |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Fixed Deposit                       |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | National Saving Certificate         |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Ornament                            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Corporate Guarantee                 |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Mortgage Guarantee                  |
#      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Stock and Book Debts                |

    @CreditApproval @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Ready Property                      |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Builder Property Under Construction |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Plot + Self Construction            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Construction On Land                |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Consumer Durable                    |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Consumer Vehicle                    |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Commercial Vehicle                  |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Tractor                             |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Commercial Equipment                |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Implements and Attachments          |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Insurance                           |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Agricultural Land                   |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Kisan Vikas Patra                   |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Fixed Deposit                       |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | National Saving Certificate         |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Ornament                            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Corporate Guarantee                 |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Mortgage Guarantee                  |
#      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Stock and Book Debts                |

      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Ready Property                      |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Builder Property Under Construction |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Plot + Self Construction            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Construction On Land                |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Consumer Durable                    |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Consumer Vehicle                    |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Commercial Vehicle                  |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Tractor                             |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Commercial Equipment                |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Implements and Attachments          |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Insurance                           |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Agricultural Land                   |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Kisan Vikas Patra                   |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Fixed Deposit                       |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | National Saving Certificate         |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Ornament                            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Corporate Guarantee                 |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Mortgage Guarantee                  |
#      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Stock and Book Debts                |

      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Ready Property                      |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Builder Property Under Construction |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Plot + Self Construction            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Construction On Land                |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Consumer Durable                    |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Consumer Vehicle                    |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Commercial Vehicle                  |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Tractor                             |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Commercial Equipment                |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Implements and Attachments          |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Insurance                           |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Agricultural Land                   |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Kisan Vikas Patra                   |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Fixed Deposit                       |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | National Saving Certificate         |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Ornament                            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Corporate Guarantee                 |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Mortgage Guarantee                  |
#      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Stock and Book Debts                |
    @Reconsideration @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Ready Property                      |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Builder Property Under Construction |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Plot + Self Construction            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Construction On Land                |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Consumer Durable                    |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Consumer Vehicle                    |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Commercial Vehicle                  |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Tractor                             |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Commercial Equipment                |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Implements and Attachments          |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Insurance                           |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Agricultural Land                   |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Kisan Vikas Patra                   |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Fixed Deposit                       |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | National Saving Certificate         |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Ornament                            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Corporate Guarantee                 |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Mortgage Guarantee                  |
#      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Stock and Book Debts                |

      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Ready Property                      |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Builder Property Under Construction |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Plot + Self Construction            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Construction On Land                |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Consumer Durable                    |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Consumer Vehicle                    |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Commercial Vehicle                  |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Commercial Equipment                |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Tractor                             |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Implements and Attachments          |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Insurance                           |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Agricultural Land                   |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Kisan Vikas Patra                   |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Fixed Deposit                       |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | National Saving Certificate         |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Ornament                            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Corporate Guarantee                 |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Mortgage Guarantee                  |
#      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Stock and Book Debts                |

      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Ready Property                      |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Builder Property Under Construction |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Plot + Self Construction            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Construction On Land                |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Consumer Durable                    |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Consumer Vehicle                    |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Commercial Vehicle                  |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Tractor                             |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Commercial Equipment                |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Implements and Attachments          |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Insurance                           |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Agricultural Land                   |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Kisan Vikas Patra                   |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Fixed Deposit                       |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | National Saving Certificate         |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Ornament                            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Corporate Guarantee                 |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Mortgage Guarantee                  |
#      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Stock and Book Debts                |

    @Recommendation @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Ready Property                      |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Builder Property Under Construction |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Plot + Self Construction            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Construction On Land                |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Consumer Durable                    |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Consumer Vehicle                    |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Commercial Vehicle                  |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Tractor                             |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Commercial Equipment                |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Implements and Attachments          |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Insurance                           |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Agricultural Land                   |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Kisan Vikas Patra                   |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Fixed Deposit                       |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | National Saving Certificate         |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Ornament                            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Corporate Guarantee                 |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Mortgage Guarantee                  |
#      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Stock and Book Debts                |

      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Ready Property                      |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Builder Property Under Construction |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Plot + Self Construction            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Construction On Land                |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Consumer Durable                    |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Consumer Vehicle                    |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Commercial Vehicle                  |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Tractor                             |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Commercial Equipment                |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Implements and Attachments          |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Insurance                           |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Agricultural Land                   |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Kisan Vikas Patra                   |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Fixed Deposit                       |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | National Saving Certificate         |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Ornament                            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Corporate Guarantee                 |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Mortgage Guarantee                  |
#      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Stock and Book Debts                |

      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Ready Property                      |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Builder Property Under Construction |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Plot + Self Construction            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Construction On Land                |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Consumer Durable                    |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Consumer Vehicle                    |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Commercial Vehicle                  |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Tractor                             |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Commercial Equipment                |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Implements and Attachments          |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Insurance                           |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Agricultural Land                   |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Kisan Vikas Patra                   |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Fixed Deposit                       |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | National Saving Certificate         |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Ornament                            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Corporate Guarantee                 |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Mortgage Guarantee                  |
#      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Stock and Book Debts                |

    @Disbursal @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Ready Property                      |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Builder Property Under Construction |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Plot + Self Construction            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Construction On Land                |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Consumer Durable                    |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Consumer Vehicle                    |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Commercial Vehicle                  |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Tractor                             |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Commercial Equipment                |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Implements and Attachments          |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Insurance                           |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Agricultural Land                   |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Kisan Vikas Patra                   |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Fixed Deposit                       |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | National Saving Certificate         |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Ornament                            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Corporate Guarantee                 |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Mortgage Guarantee                  |
#      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Stock and Book Debts                |

      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Ready Property                      |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Builder Property Under Construction |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Plot + Self Construction            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Construction On Land                |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Consumer Durable                    |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Consumer Vehicle                    |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Commercial Vehicle                  |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Tractor                             |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Commercial Equipment                |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Implements and Attachments          |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Insurance                           |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Agricultural Land                   |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Kisan Vikas Patra                   |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Fixed Deposit                       |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | National Saving Certificate         |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Ornament                            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Corporate Guarantee                 |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Mortgage Guarantee                  |
#      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Stock and Book Debts                |

      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Ready Property                      |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Builder Property Under Construction |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Plot + Self Construction            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Construction On Land                |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Consumer Durable                    |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Consumer Vehicle                    |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Commercial Vehicle                  |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Commercial Equipment                |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Tractor                             |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Implements and Attachments          |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Insurance                           |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Agricultural Land                   |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Kisan Vikas Patra                   |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Fixed Deposit                       |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | National Saving Certificate         |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Ornament                            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Corporate Guarantee                 |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Mortgage Guarantee                  |
#      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Stock and Book Debts                |

    # PQM-18_CAS-109708, #PQM-03_CAS-109708, #PQM-04_CAS_109708, #PQM-05_CAS-109708, #PQM-06_CAS-109708
  Scenario Outline: ACAUTOCAS-21231: Collateral Delinking of <CollateralSubType> after Confirming on confirm message popup box at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on delete button of Secondary Collateral of "<CollateralSubType>"
    When user clicks on "Confirm" of confirmation message popup box
    Then "<CollateralSubType>" collateral should be delinked

    @DDE @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType                   |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Ready Property                      |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Builder Property Under Construction |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Plot + Self Construction            |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Construction On Land                |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Consumer Durable                    |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Consumer Vehicle                    |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Commercial Vehicle                  |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Tractor                             |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Commercial Equipment                |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Implements and Attachments          |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Insurance                           |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Agricultural Land                   |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Kisan Vikas Patra                   |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Fixed Deposit                       |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | National Saving Certificate         |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Ornament                            |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Corporate Guarantee                 |
      | PL_CAS_109708_Set1_01   | PL          | DDE              | Mortgage Guarantee                  |
#      | PL_CAS_109708_Set1_01  | PL          | DDE              | Stock and Book Debts                |
      | PL_CAS_109708_Set2_01   | PL          | DDE              | Consumer Vehicle                    |
      | PL_CAS_109708_Set14_01  | PL          | DDE              | Consumer Durable                    |


      | HL_CAS_109708_Set1_01   | HL          | DDE              | Ready Property                      |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Builder Property Under Construction |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Plot + Self Construction            |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Construction On Land                |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Consumer Durable                    |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Consumer Vehicle                    |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Commercial Vehicle                  |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Tractor                             |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Commercial Equipment                |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Implements and Attachments          |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Insurance                           |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Agricultural Land                   |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Kisan Vikas Patra                   |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Fixed Deposit                       |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | National Saving Certificate         |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Ornament                            |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Corporate Guarantee                 |
      | HL_CAS_109708_Set1_01   | HL          | DDE              | Mortgage Guarantee                  |
#      | HL_CAS_109708_Set1_01  | HL          | DDE              | Stock and Book Debts                |
      | HL_CAS_109708_Set2_01   | HL          | DDE              | Consumer Vehicle                    |
      | HL_CAS_109708_Set14_01  | HL          | DDE              | Consumer Durable                    |


      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Ready Property                      |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Builder Property Under Construction |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Plot + Self Construction            |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Construction On Land                |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Consumer Durable                    |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Consumer Vehicle                    |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Commercial Vehicle                  |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Tractor                             |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Commercial Equipment                |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Implements and Attachments          |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Insurance                           |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Agricultural Land                   |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Kisan Vikas Patra                   |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Fixed Deposit                       |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | National Saving Certificate         |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Ornament                            |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Corporate Guarantee                 |
      | MAL_CAS_109708_Set1_01  | MAL         | DDE              | Mortgage Guarantee                  |
#      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Stock and Book Debts                |
      | MAL_CAS_109708_Set2_01  | MAL         | DDE              | Consumer Vehicle                    |
      | MAL_CAS_109708_Set14_01 | MAL         | DDE              | Consumer Durable                    |



    @CreditApproval @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType                   |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Ready Property                      |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Builder Property Under Construction |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Plot + Self Construction            |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Construction On Land                |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Consumer Durable                    |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Consumer Vehicle                    |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Commercial Vehicle                  |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Tractor                             |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Commercial Equipment                |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Implements and Attachments          |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Insurance                           |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Agricultural Land                   |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Kisan Vikas Patra                   |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Fixed Deposit                       |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | National Saving Certificate         |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Ornament                            |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Corporate Guarantee                 |
      | PL_CAS_109708_Set1_02   | PL          | Credit Approval  | Mortgage Guarantee                  |
#      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Stock and Book Debts                |
      | PL_CAS_109708_Set2_02   | PL          | Credit Approval  | Consumer Vehicle                    |
      | PL_CAS_109708_Set14_02  | PL          | Credit Approval  | Consumer Durable                    |



      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Ready Property                      |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Builder Property Under Construction |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Plot + Self Construction            |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Construction On Land                |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Consumer Durable                    |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Consumer Vehicle                    |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Commercial Vehicle                  |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Tractor                             |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Commercial Equipment                |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Implements and Attachments          |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Insurance                           |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Agricultural Land                   |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Kisan Vikas Patra                   |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Fixed Deposit                       |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | National Saving Certificate         |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Ornament                            |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Corporate Guarantee                 |
      | HL_CAS_109708_Set1_02   | HL          | Credit Approval  | Mortgage Guarantee                  |
#      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Stock and Book Debts                |
      | HL_CAS_109708_Set2_02   | HL          | Credit Approval  | Consumer Vehicle                    |
      | HL_CAS_109708_Set14_02  | HL          | Credit Approval  | Consumer Durable                    |



      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Ready Property                      |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Builder Property Under Construction |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Plot + Self Construction            |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Construction On Land                |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Consumer Durable                    |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Consumer Vehicle                    |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Commercial Vehicle                  |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Tractor                             |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Commercial Equipment                |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Implements and Attachments          |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Insurance                           |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Agricultural Land                   |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Kisan Vikas Patra                   |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Fixed Deposit                       |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | National Saving Certificate         |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Ornament                            |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Corporate Guarantee                 |
      | MAL_CAS_109708_Set1_02  | MAL         | Credit Approval  | Mortgage Guarantee                  |
#      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Stock and Book Debts                |
      | MAL_CAS_109708_Set2_02  | MAL         | Credit Approval  | Consumer Vehicle                    |
      | MAL_CAS_109708_Set14_02 | MAL         | Credit Approval  | Consumer Durable                    |


    @Reconsideration @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType                   |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Ready Property                      |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Builder Property Under Construction |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Plot + Self Construction            |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Construction On Land                |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Consumer Durable                    |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Consumer Vehicle                    |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Commercial Vehicle                  |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Tractor                             |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Commercial Equipment                |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Implements and Attachments          |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Insurance                           |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Agricultural Land                   |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Kisan Vikas Patra                   |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Fixed Deposit                       |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | National Saving Certificate         |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Ornament                            |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Corporate Guarantee                 |
      | PL_CAS_109708_Set1_03   | PL          | Reconsideration  | Mortgage Guarantee                  |
#      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Stock and Book Debts                |
      | PL_CAS_109708_Set2_03   | PL          | Reconsideration  | Consumer Vehicle                    |
      | PL_CAS_109708_Set14_03  | PL          | Reconsideration  | Consumer Durable                    |



      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Ready Property                      |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Builder Property Under Construction |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Plot + Self Construction            |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Construction On Land                |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Consumer Durable                    |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Consumer Vehicle                    |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Commercial Vehicle                  |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Commercial Equipment                |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Tractor                             |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Implements and Attachments          |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Insurance                           |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Agricultural Land                   |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Kisan Vikas Patra                   |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Fixed Deposit                       |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | National Saving Certificate         |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Ornament                            |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Corporate Guarantee                 |
      | HL_CAS_109708_Set1_03   | HL          | Reconsideration  | Mortgage Guarantee                  |
#      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Stock and Book Debts                |
      | HL_CAS_109708_Set2_03   | HL          | Reconsideration  | Consumer Vehicle                    |
      | HL_CAS_109708_Set14_03  | HL          | Reconsideration  | Consumer Durable                    |



      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Ready Property                      |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Builder Property Under Construction |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Plot + Self Construction            |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Construction On Land                |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Consumer Durable                    |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Consumer Vehicle                    |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Commercial Vehicle                  |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Tractor                             |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Commercial Equipment                |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Implements and Attachments          |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Insurance                           |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Agricultural Land                   |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Kisan Vikas Patra                   |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Fixed Deposit                       |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | National Saving Certificate         |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Ornament                            |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Corporate Guarantee                 |
      | MAL_CAS_109708_Set1_03  | MAL         | Reconsideration  | Mortgage Guarantee                  |
#      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Stock and Book Debts                |
      | MAL_CAS_109708_Set2_03  | MAL         | Reconsideration  | Consumer Vehicle                    |
      | MAL_CAS_109708_Set14_03 | MAL         | Reconsideration  | Consumer Durable                    |


    @Recommendation @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType                   |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Ready Property                      |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Builder Property Under Construction |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Plot + Self Construction            |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Construction On Land                |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Consumer Durable                    |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Consumer Vehicle                    |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Commercial Vehicle                  |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Tractor                             |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Commercial Equipment                |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Implements and Attachments          |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Insurance                           |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Agricultural Land                   |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Kisan Vikas Patra                   |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Fixed Deposit                       |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | National Saving Certificate         |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Ornament                            |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Corporate Guarantee                 |
      | PL_CAS_109708_Set1_04   | PL          | Recommendation   | Mortgage Guarantee                  |
#      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Stock and Book Debts                |
      | PL_CAS_109708_Set2_04   | PL          | Recommendation   | Consumer Vehicle                    |
      | PL_CAS_109708_Set14_04  | PL          | Recommendation   | Consumer Durable                    |



      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Ready Property                      |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Builder Property Under Construction |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Plot + Self Construction            |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Construction On Land                |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Consumer Durable                    |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Consumer Vehicle                    |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Commercial Vehicle                  |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Tractor                             |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Commercial Equipment                |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Implements and Attachments          |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Insurance                           |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Agricultural Land                   |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Kisan Vikas Patra                   |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Fixed Deposit                       |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | National Saving Certificate         |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Ornament                            |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Corporate Guarantee                 |
      | HL_CAS_109708_Set1_04   | HL          | Recommendation   | Mortgage Guarantee                  |
#      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Stock and Book Debts                |
      | HL_CAS_109708_Set2_04   | HL          | Recommendation   | Consumer Vehicle                    |
      | HL_CAS_109708_Set14_04  | HL          | Recommendation   | Consumer Durable                    |



      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Ready Property                      |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Builder Property Under Construction |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Plot + Self Construction            |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Construction On Land                |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Consumer Durable                    |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Consumer Vehicle                    |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Commercial Vehicle                  |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Tractor                             |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Commercial Equipment                |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Implements and Attachments          |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Insurance                           |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Agricultural Land                   |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Kisan Vikas Patra                   |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Fixed Deposit                       |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | National Saving Certificate         |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Ornament                            |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Corporate Guarantee                 |
      | MAL_CAS_109708_Set1_04  | MAL         | Recommendation   | Mortgage Guarantee                  |
#      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Stock and Book Debts                |
      | MAL_CAS_109708_Set2_04  | MAL         | Recommendation   | Consumer Vehicle                    |
      | MAL_CAS_109708_Set14_04 | MAL         | Recommendation   | Consumer Durable                    |



    @Disbursal @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType                   |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Ready Property                      |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Builder Property Under Construction |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Plot + Self Construction            |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Construction On Land                |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Consumer Durable                    |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Consumer Vehicle                    |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Commercial Vehicle                  |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Tractor                             |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Commercial Equipment                |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Implements and Attachments          |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Insurance                           |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Agricultural Land                   |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Kisan Vikas Patra                   |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Fixed Deposit                       |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | National Saving Certificate         |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Ornament                            |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Corporate Guarantee                 |
      | PL_CAS_109708_Set1_05   | PL          | Disbursal        | Mortgage Guarantee                  |
#      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Stock and Book Debts                |
      | PL_CAS_109708_Set2_05   | PL          | Disbursal        | Consumer Vehicle                    |
      | PL_CAS_109708_Set14_05  | PL          | Disbursal        | Consumer Durable                    |


      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Ready Property                      |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Builder Property Under Construction |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Plot + Self Construction            |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Construction On Land                |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Consumer Durable                    |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Consumer Vehicle                    |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Commercial Vehicle                  |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Tractor                             |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Commercial Equipment                |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Implements and Attachments          |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Insurance                           |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Agricultural Land                   |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Kisan Vikas Patra                   |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Fixed Deposit                       |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | National Saving Certificate         |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Ornament                            |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Corporate Guarantee                 |
      | HL_CAS_109708_Set1_05   | HL          | Disbursal        | Mortgage Guarantee                  |
#      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Stock and Book Debts                |
      | HL_CAS_109708_Set2_05   | HL          | Disbursal        | Consumer Vehicle                    |
      | HL_CAS_109708_Set14_05  | HL          | Disbursal        | Consumer Durable                    |



      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Ready Property                      |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Builder Property Under Construction |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Plot + Self Construction            |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Construction On Land                |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Consumer Durable                    |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Consumer Vehicle                    |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Commercial Vehicle                  |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Commercial Equipment                |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Tractor                             |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Implements and Attachments          |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Insurance                           |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Agricultural Land                   |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Kisan Vikas Patra                   |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Fixed Deposit                       |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | National Saving Certificate         |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Ornament                            |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Corporate Guarantee                 |
      | MAL_CAS_109708_Set1_05  | MAL         | Disbursal        | Mortgage Guarantee                  |
#      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Stock and Book Debts                |
      | MAL_CAS_109708_Set2_05  | MAL         | Disbursal        | Consumer Vehicle                    |
      | MAL_CAS_109708_Set14_05 | MAL         | Disbursal        | Consumer Durable                    |

    # PQM-18_CAS-109708, #PQM-07_CAS-109708, #PQM-13_CAS-109708
  Scenario Outline: ACAUTOCAS-21225: Validate delinked collateral availability under application collateral linking in CMS at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user logout from CAS
    And user logged in "CMS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And navigates to Search Collateral Page in CMS
    And user enters Collateral Number in Search Collateral of "<CollateralSubType>"
    And clicks on search
    And user views the Collateral
    And navigates to Application Collateral Linking page
    When user searches the application in Application Collateral Linking page
    Then application should not be present in Application Collateral Linking grid

    @DDE @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set2_01  | PL          | DDE              | Consumer Vehicle  |
      | HL_CAS_109708_Set2_01  | HL          | DDE              | Consumer Vehicle  |
      | MAL_CAS_109708_Set2_01 | MAL         | DDE              | Consumer Vehicle  |
    @CreditApproval @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set2_02  | PL          | Credit Approval  | Consumer Vehicle  |
      | HL_CAS_109708_Set2_02  | HL          | Credit Approval  | Consumer Vehicle  |
      | MAL_CAS_109708_Set2_02 | MAL         | Credit Approval  | Consumer Vehicle  |
    @Reconsideration @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set2_03  | PL          | Reconsideration  | Consumer Vehicle  |
      | HL_CAS_109708_Set2_03  | HL          | Reconsideration  | Consumer Vehicle  |
      | MAL_CAS_109708_Set2_03 | MAL         | Reconsideration  | Consumer Vehicle  |
    @Recommendation @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set2_04  | PL          | Recommendation   | Consumer Vehicle  |
      | HL_CAS_109708_Set2_04  | HL          | Recommendation   | Consumer Vehicle  |
      | MAL_CAS_109708_Set2_04 | MAL         | Recommendation   | Consumer Vehicle  |

    @Disbursal @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set2_05  | PL          | Disbursal        | Consumer Vehicle  |
      | HL_CAS_109708_Set2_05  | HL          | Disbursal        | Consumer Vehicle  |
      | MAL_CAS_109708_Set2_05 | MAL         | Disbursal        | Consumer Vehicle  |

    # PQM-01_CAS-109708, # PQM-04_CAS-109708
  Scenario Outline: ACAUTOCAS-21209: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Collateral linking from Search Collateral at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_collateralSearch>" and row <Collateral_collateralSearch_rowNum>
    And user searches for an existing collateral
    When user enters parameters to search collateral
    And user enters Collateral Number in Search Collateral of "<CollateralSubType>"
    And clicks on search
    And user finds collateral matching the search criteria
    And user links the collateral with the application
    Then collateral should get linked with application with correct details

    @DDE @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum | RevisitCount |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Ready Property                      | collateral.xlsx | collateral_search           | 3100                               | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Builder Property Under Construction | collateral.xlsx | collateral_search           | 3101                               | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Plot + Self Construction            | collateral.xlsx | collateral_search           | 3102                               | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Construction On Land                | collateral.xlsx | collateral_search           | 3103                               | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Consumer Durable                    | collateral.xlsx | collateral_search           | 3104                               | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Consumer Vehicle                    | collateral.xlsx | collateral_search           | 3105                               | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Commercial Vehicle                  | collateral.xlsx | collateral_search           | 3106                               | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Tractor                             | collateral.xlsx | collateral_search           | 3107                               | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Commercial Equipment                | collateral.xlsx | collateral_search           | 3108                               | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Implements and Attachments          | collateral.xlsx | collateral_search           | 3109                               | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Insurance                           | collateral.xlsx | collateral_search           | 3110                               | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Agricultural Land                   | collateral.xlsx | collateral_search           | 3111                               | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Kisan Vikas Patra                   | collateral.xlsx | collateral_search           | 3112                               | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Fixed Deposit                       | collateral.xlsx | collateral_search           | 3113                               | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | National Saving Certificate         | collateral.xlsx | collateral_search           | 3114                               | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Ornament                            | collateral.xlsx | collateral_search           | 3115                               | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Corporate Guarantee                 | collateral.xlsx | collateral_search           | 3116                               | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Mortgage Guarantee                  | collateral.xlsx | collateral_search           | 3117                               | 1            |
#      | PL_CAS_109708_Set1_01  | PL          | DDE              | Stock and Book Debts                | collateral.xlsx | collateral_search           |3118                               | 1            |

      | HL_CAS_109708_Set1_01  | HL          | DDE              | Ready Property                      | collateral.xlsx | collateral_search           | 3100                               | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Builder Property Under Construction | collateral.xlsx | collateral_search           | 3101                               | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Plot + Self Construction            | collateral.xlsx | collateral_search           | 3102                               | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Construction On Land                | collateral.xlsx | collateral_search           | 3103                               | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Consumer Durable                    | collateral.xlsx | collateral_search           | 3104                               | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Consumer Vehicle                    | collateral.xlsx | collateral_search           | 3105                               | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Commercial Vehicle                  | collateral.xlsx | collateral_search           | 3106                               | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Tractor                             | collateral.xlsx | collateral_search           | 3107                               | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Commercial Equipment                | collateral.xlsx | collateral_search           | 3108                               | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Implements and Attachments          | collateral.xlsx | collateral_search           | 3109                               | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Insurance                           | collateral.xlsx | collateral_search           | 3110                               | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Agricultural Land                   | collateral.xlsx | collateral_search           | 3111                               | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Kisan Vikas Patra                   | collateral.xlsx | collateral_search           | 3112                               | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Fixed Deposit                       | collateral.xlsx | collateral_search           | 3113                               | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | National Saving Certificate         | collateral.xlsx | collateral_search           | 3114                               | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Ornament                            | collateral.xlsx | collateral_search           | 3115                               | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Corporate Guarantee                 | collateral.xlsx | collateral_search           | 3116                               | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Mortgage Guarantee                  | collateral.xlsx | collateral_search           | 3117                               | 1            |
#      | HL_CAS_109708_Set1_01  | HL          | DDE              | Stock and Book Debts                | collateral.xlsx | collateral_search           |3118                                | 1            |

      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Ready Property                      | collateral.xlsx | collateral_search           | 3100                               | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Builder Property Under Construction | collateral.xlsx | collateral_search           | 3101                               | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Plot + Self Construction            | collateral.xlsx | collateral_search           | 3102                               | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Construction On Land                | collateral.xlsx | collateral_search           | 3103                               | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Consumer Durable                    | collateral.xlsx | collateral_search           | 3104                               | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Consumer Vehicle                    | collateral.xlsx | collateral_search           | 3105                               | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Commercial Vehicle                  | collateral.xlsx | collateral_search           | 3106                               | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Tractor                             | collateral.xlsx | collateral_search           | 3107                               | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Commercial Equipment                | collateral.xlsx | collateral_search           | 3108                               | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Implements and Attachments          | collateral.xlsx | collateral_search           | 3109                               | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Insurance                           | collateral.xlsx | collateral_search           | 3110                               | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Agricultural Land                   | collateral.xlsx | collateral_search           | 3111                               | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Kisan Vikas Patra                   | collateral.xlsx | collateral_search           | 3112                               | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Fixed Deposit                       | collateral.xlsx | collateral_search           | 3113                               | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | National Saving Certificate         | collateral.xlsx | collateral_search           | 3114                               | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Ornament                            | collateral.xlsx | collateral_search           | 3115                               | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Corporate Guarantee                 | collateral.xlsx | collateral_search           | 3116                               | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Mortgage Guarantee                  | collateral.xlsx | collateral_search           | 3117                               | 1            |
#      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Stock and Book Debts                | collateral.xlsx | collateral_search           |3118                                | 1            |

    @CreditApproval @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum | RevisitCount |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Ready Property                      | collateral.xlsx | collateral_search           | 3100                               | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Builder Property Under Construction | collateral.xlsx | collateral_search           | 3101                               | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Plot + Self Construction            | collateral.xlsx | collateral_search           | 3102                               | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Construction On Land                | collateral.xlsx | collateral_search           | 3103                               | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Consumer Durable                    | collateral.xlsx | collateral_search           | 3104                               | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Consumer Vehicle                    | collateral.xlsx | collateral_search           | 3105                               | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Commercial Vehicle                  | collateral.xlsx | collateral_search           | 3106                               | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Tractor                             | collateral.xlsx | collateral_search           | 3107                               | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Commercial Equipment                | collateral.xlsx | collateral_search           | 3108                               | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Implements and Attachments          | collateral.xlsx | collateral_search           | 3109                               | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Insurance                           | collateral.xlsx | collateral_search           | 3110                               | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Agricultural Land                   | collateral.xlsx | collateral_search           | 3111                               | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Kisan Vikas Patra                   | collateral.xlsx | collateral_search           | 3112                               | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Fixed Deposit                       | collateral.xlsx | collateral_search           | 3113                               | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | National Saving Certificate         | collateral.xlsx | collateral_search           | 3114                               | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Ornament                            | collateral.xlsx | collateral_search           | 3115                               | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Corporate Guarantee                 | collateral.xlsx | collateral_search           | 3116                               | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Mortgage Guarantee                  | collateral.xlsx | collateral_search           | 3117                               | 1            |
#      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Stock and Book Debts                | collateral.xlsx | collateral_search           |3118                                | 1            |

      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Ready Property                      | collateral.xlsx | collateral_search           | 3100                               | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Builder Property Under Construction | collateral.xlsx | collateral_search           | 3101                               | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Plot + Self Construction            | collateral.xlsx | collateral_search           | 3102                               | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Construction On Land                | collateral.xlsx | collateral_search           | 3103                               | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Consumer Durable                    | collateral.xlsx | collateral_search           | 3104                               | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Consumer Vehicle                    | collateral.xlsx | collateral_search           | 3105                               | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Commercial Vehicle                  | collateral.xlsx | collateral_search           | 3106                               | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Tractor                             | collateral.xlsx | collateral_search           | 3107                               | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Commercial Equipment                | collateral.xlsx | collateral_search           | 3108                               | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Implements and Attachments          | collateral.xlsx | collateral_search           | 3109                               | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Insurance                           | collateral.xlsx | collateral_search           | 3110                               | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Agricultural Land                   | collateral.xlsx | collateral_search           | 3111                               | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Kisan Vikas Patra                   | collateral.xlsx | collateral_search           | 3112                               | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Fixed Deposit                       | collateral.xlsx | collateral_search           | 3113                               | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | National Saving Certificate         | collateral.xlsx | collateral_search           | 3114                               | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Ornament                            | collateral.xlsx | collateral_search           | 3115                               | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Corporate Guarantee                 | collateral.xlsx | collateral_search           | 3116                               | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Mortgage Guarantee                  | collateral.xlsx | collateral_search           | 3117                               | 1            |
#      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Stock and Book Debts                | collateral.xlsx | collateral_search           |3118                               | 1            |

      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Ready Property                      | collateral.xlsx | collateral_search           | 3100                               | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Builder Property Under Construction | collateral.xlsx | collateral_search           | 3101                               | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Plot + Self Construction            | collateral.xlsx | collateral_search           | 3102                               | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Construction On Land                | collateral.xlsx | collateral_search           | 3103                               | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Consumer Durable                    | collateral.xlsx | collateral_search           | 3104                               | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Consumer Vehicle                    | collateral.xlsx | collateral_search           | 3105                               | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Commercial Vehicle                  | collateral.xlsx | collateral_search           | 3106                               | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Tractor                             | collateral.xlsx | collateral_search           | 3107                               | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Commercial Equipment                | collateral.xlsx | collateral_search           | 3108                               | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Implements and Attachments          | collateral.xlsx | collateral_search           | 3109                               | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Insurance                           | collateral.xlsx | collateral_search           | 3110                               | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Agricultural Land                   | collateral.xlsx | collateral_search           | 3111                               | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Kisan Vikas Patra                   | collateral.xlsx | collateral_search           | 3112                               | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Fixed Deposit                       | collateral.xlsx | collateral_search           | 3113                               | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | National Saving Certificate         | collateral.xlsx | collateral_search           | 3114                               | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Ornament                            | collateral.xlsx | collateral_search           | 3115                               | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Corporate Guarantee                 | collateral.xlsx | collateral_search           | 3116                               | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Mortgage Guarantee                  | collateral.xlsx | collateral_search           | 3117                               | 1            |
#      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Stock and Book Debts                | collateral.xlsx | collateral_search           |3118                                | 1            |

    @Reconsideration @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum | RevisitCount |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Ready Property                      | collateral.xlsx | collateral_search           | 3100                               | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Builder Property Under Construction | collateral.xlsx | collateral_search           | 3101                               | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Plot + Self Construction            | collateral.xlsx | collateral_search           | 3102                               | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Construction On Land                | collateral.xlsx | collateral_search           | 3103                               | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Consumer Durable                    | collateral.xlsx | collateral_search           | 3104                               | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Consumer Vehicle                    | collateral.xlsx | collateral_search           | 3105                               | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Commercial Vehicle                  | collateral.xlsx | collateral_search           | 3106                               | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Tractor                             | collateral.xlsx | collateral_search           | 3107                               | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Commercial Equipment                | collateral.xlsx | collateral_search           | 3108                               | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Implements and Attachments          | collateral.xlsx | collateral_search           | 3109                               | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Insurance                           | collateral.xlsx | collateral_search           | 3110                               | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Agricultural Land                   | collateral.xlsx | collateral_search           | 3111                               | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Kisan Vikas Patra                   | collateral.xlsx | collateral_search           | 3112                               | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Fixed Deposit                       | collateral.xlsx | collateral_search           | 3113                               | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | National Saving Certificate         | collateral.xlsx | collateral_search           | 3114                               | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Ornament                            | collateral.xlsx | collateral_search           | 3115                               | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Corporate Guarantee                 | collateral.xlsx | collateral_search           | 3116                               | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Mortgage Guarantee                  | collateral.xlsx | collateral_search           | 3117                               | 1            |
#      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Stock and Book Debts                | collateral.xlsx | collateral_search           |3118                               | 1            |

      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Ready Property                      | collateral.xlsx | collateral_search           | 3100                               | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Builder Property Under Construction | collateral.xlsx | collateral_search           | 3101                               | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Plot + Self Construction            | collateral.xlsx | collateral_search           | 3102                               | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Construction On Land                | collateral.xlsx | collateral_search           | 3103                               | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Consumer Durable                    | collateral.xlsx | collateral_search           | 3104                               | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Consumer Vehicle                    | collateral.xlsx | collateral_search           | 3105                               | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Commercial Vehicle                  | collateral.xlsx | collateral_search           | 3106                               | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Tractor                             | collateral.xlsx | collateral_search           | 3107                               | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Commercial Equipment                | collateral.xlsx | collateral_search           | 3108                               | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Implements and Attachments          | collateral.xlsx | collateral_search           | 3109                               | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Insurance                           | collateral.xlsx | collateral_search           | 3110                               | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Agricultural Land                   | collateral.xlsx | collateral_search           | 3111                               | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Kisan Vikas Patra                   | collateral.xlsx | collateral_search           | 3112                               | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Fixed Deposit                       | collateral.xlsx | collateral_search           | 3113                               | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | National Saving Certificate         | collateral.xlsx | collateral_search           | 3114                               | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Ornament                            | collateral.xlsx | collateral_search           | 3115                               | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Corporate Guarantee                 | collateral.xlsx | collateral_search           | 3116                               | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Mortgage Guarantee                  | collateral.xlsx | collateral_search           | 3117                               | 1            |
#      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Stock and Book Debts                | collateral.xlsx | collateral_search           |3118                               | 1            |

      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Ready Property                      | collateral.xlsx | collateral_search           | 3100                               | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Builder Property Under Construction | collateral.xlsx | collateral_search           | 3101                               | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Plot + Self Construction            | collateral.xlsx | collateral_search           | 3102                               | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Construction On Land                | collateral.xlsx | collateral_search           | 3103                               | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Consumer Durable                    | collateral.xlsx | collateral_search           | 3104                               | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Consumer Vehicle                    | collateral.xlsx | collateral_search           | 3105                               | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Commercial Vehicle                  | collateral.xlsx | collateral_search           | 3106                               | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Tractor                             | collateral.xlsx | collateral_search           | 3107                               | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Commercial Equipment                | collateral.xlsx | collateral_search           | 3108                               | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Implements and Attachments          | collateral.xlsx | collateral_search           | 3109                               | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Insurance                           | collateral.xlsx | collateral_search           | 3110                               | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Agricultural Land                   | collateral.xlsx | collateral_search           | 3111                               | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Kisan Vikas Patra                   | collateral.xlsx | collateral_search           | 3112                               | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Fixed Deposit                       | collateral.xlsx | collateral_search           | 3113                               | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | National Saving Certificate         | collateral.xlsx | collateral_search           | 3114                               | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Ornament                            | collateral.xlsx | collateral_search           | 3115                               | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Corporate Guarantee                 | collateral.xlsx | collateral_search           | 3116                               | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Mortgage Guarantee                  | collateral.xlsx | collateral_search           | 3117                               | 1            |
#      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Stock and Book Debts                | collateral.xlsx | collateral_search           |3118                              | 1            |

    @Recommendation @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum | RevisitCount |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Ready Property                      | collateral.xlsx | collateral_search           | 3100                               | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Builder Property Under Construction | collateral.xlsx | collateral_search           | 3101                               | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Plot + Self Construction            | collateral.xlsx | collateral_search           | 3102                               | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Construction On Land                | collateral.xlsx | collateral_search           | 3103                               | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Consumer Durable                    | collateral.xlsx | collateral_search           | 3104                               | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Consumer Vehicle                    | collateral.xlsx | collateral_search           | 3105                               | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Commercial Vehicle                  | collateral.xlsx | collateral_search           | 3106                               | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Tractor                             | collateral.xlsx | collateral_search           | 3107                               | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Commercial Equipment                | collateral.xlsx | collateral_search           | 3108                               | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Implements and Attachments          | collateral.xlsx | collateral_search           | 3109                               | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Insurance                           | collateral.xlsx | collateral_search           | 3110                               | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Agricultural Land                   | collateral.xlsx | collateral_search           | 3111                               | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Kisan Vikas Patra                   | collateral.xlsx | collateral_search           | 3112                               | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Fixed Deposit                       | collateral.xlsx | collateral_search           | 3113                               | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | National Saving Certificate         | collateral.xlsx | collateral_search           | 3114                               | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Ornament                            | collateral.xlsx | collateral_search           | 3115                               | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Corporate Guarantee                 | collateral.xlsx | collateral_search           | 3116                               | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Mortgage Guarantee                  | collateral.xlsx | collateral_search           | 3117                               | 1            |
#      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Stock and Book Debts                | collateral.xlsx | collateral_search           |3118                               | 1            |

      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Ready Property                      | collateral.xlsx | collateral_search           | 3100                               | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Builder Property Under Construction | collateral.xlsx | collateral_search           | 3101                               | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Plot + Self Construction            | collateral.xlsx | collateral_search           | 3102                               | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Construction On Land                | collateral.xlsx | collateral_search           | 3103                               | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Consumer Durable                    | collateral.xlsx | collateral_search           | 3104                               | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Consumer Vehicle                    | collateral.xlsx | collateral_search           | 3105                               | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Commercial Vehicle                  | collateral.xlsx | collateral_search           | 3106                               | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Tractor                             | collateral.xlsx | collateral_search           | 3107                               | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Commercial Equipment                | collateral.xlsx | collateral_search           | 3108                               | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Implements and Attachments          | collateral.xlsx | collateral_search           | 3109                               | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Insurance                           | collateral.xlsx | collateral_search           | 3110                               | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Agricultural Land                   | collateral.xlsx | collateral_search           | 3111                               | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Kisan Vikas Patra                   | collateral.xlsx | collateral_search           | 3112                               | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Fixed Deposit                       | collateral.xlsx | collateral_search           | 3113                               | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | National Saving Certificate         | collateral.xlsx | collateral_search           | 3114                               | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Ornament                            | collateral.xlsx | collateral_search           | 3115                               | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Corporate Guarantee                 | collateral.xlsx | collateral_search           | 3116                               | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Mortgage Guarantee                  | collateral.xlsx | collateral_search           | 3117                               | 1            |
#      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Stock and Book Debts                | collateral.xlsx | collateral_search           |3118                               | 1            |

      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Ready Property                      | collateral.xlsx | collateral_search           | 3100                               | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Builder Property Under Construction | collateral.xlsx | collateral_search           | 3101                               | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Plot + Self Construction            | collateral.xlsx | collateral_search           | 3102                               | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Construction On Land                | collateral.xlsx | collateral_search           | 3103                               | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Consumer Durable                    | collateral.xlsx | collateral_search           | 3104                               | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Consumer Vehicle                    | collateral.xlsx | collateral_search           | 3105                               | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Commercial Vehicle                  | collateral.xlsx | collateral_search           | 3106                               | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Tractor                             | collateral.xlsx | collateral_search           | 3107                               | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Commercial Equipment                | collateral.xlsx | collateral_search           | 3108                               | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Implements and Attachments          | collateral.xlsx | collateral_search           | 3109                               | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Insurance                           | collateral.xlsx | collateral_search           | 3110                               | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Agricultural Land                   | collateral.xlsx | collateral_search           | 3111                               | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Kisan Vikas Patra                   | collateral.xlsx | collateral_search           | 3112                               | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Fixed Deposit                       | collateral.xlsx | collateral_search           | 3113                               | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | National Saving Certificate         | collateral.xlsx | collateral_search           | 3114                               | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Ornament                            | collateral.xlsx | collateral_search           | 3115                               | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Corporate Guarantee                 | collateral.xlsx | collateral_search           | 3116                               | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Mortgage Guarantee                  | collateral.xlsx | collateral_search           | 3117                               | 1            |
#      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Stock and Book Debts                | collateral.xlsx | collateral_search           | 3118                               | 1            |

    @Disbursal @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum | RevisitCount |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Ready Property                      | collateral.xlsx | collateral_search           | 3100                               | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Builder Property Under Construction | collateral.xlsx | collateral_search           | 3101                               | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Plot + Self Construction            | collateral.xlsx | collateral_search           | 3102                               | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Construction On Land                | collateral.xlsx | collateral_search           | 3103                               | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Consumer Durable                    | collateral.xlsx | collateral_search           | 3104                               | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Consumer Vehicle                    | collateral.xlsx | collateral_search           | 3105                               | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Commercial Vehicle                  | collateral.xlsx | collateral_search           | 3106                               | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Tractor                             | collateral.xlsx | collateral_search           | 3107                               | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Commercial Equipment                | collateral.xlsx | collateral_search           | 3108                               | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Implements and Attachments          | collateral.xlsx | collateral_search           | 3109                               | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Insurance                           | collateral.xlsx | collateral_search           | 3110                               | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Agricultural Land                   | collateral.xlsx | collateral_search           | 3111                               | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Kisan Vikas Patra                   | collateral.xlsx | collateral_search           | 3112                               | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Fixed Deposit                       | collateral.xlsx | collateral_search           | 3113                               | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | National Saving Certificate         | collateral.xlsx | collateral_search           | 3114                               | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Ornament                            | collateral.xlsx | collateral_search           | 3115                               | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Corporate Guarantee                 | collateral.xlsx | collateral_search           | 3116                               | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Mortgage Guarantee                  | collateral.xlsx | collateral_search           | 3117                               | 1            |
#      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Stock and Book Debts                | collateral.xlsx | collateral_search           |3118                               | 1            |

      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Ready Property                      | collateral.xlsx | collateral_search           | 3100                               | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Builder Property Under Construction | collateral.xlsx | collateral_search           | 3101                               | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Plot + Self Construction            | collateral.xlsx | collateral_search           | 3102                               | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Construction On Land                | collateral.xlsx | collateral_search           | 3103                               | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Consumer Durable                    | collateral.xlsx | collateral_search           | 3104                               | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Consumer Vehicle                    | collateral.xlsx | collateral_search           | 3105                               | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Commercial Vehicle                  | collateral.xlsx | collateral_search           | 3106                               | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Tractor                             | collateral.xlsx | collateral_search           | 3107                               | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Commercial Equipment                | collateral.xlsx | collateral_search           | 3108                               | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Implements and Attachments          | collateral.xlsx | collateral_search           | 3109                               | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Insurance                           | collateral.xlsx | collateral_search           | 3110                               | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Agricultural Land                   | collateral.xlsx | collateral_search           | 3111                               | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Kisan Vikas Patra                   | collateral.xlsx | collateral_search           | 3112                               | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Fixed Deposit                       | collateral.xlsx | collateral_search           | 3113                               | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | National Saving Certificate         | collateral.xlsx | collateral_search           | 3114                               | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Ornament                            | collateral.xlsx | collateral_search           | 3115                               | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Corporate Guarantee                 | collateral.xlsx | collateral_search           | 3116                               | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Mortgage Guarantee                  | collateral.xlsx | collateral_search           | 3117                               | 1            |
#      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Stock and Book Debts                | collateral.xlsx | collateral_search           |3118                               | 1            |

      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Ready Property                      | collateral.xlsx | collateral_search           | 3100                               | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Builder Property Under Construction | collateral.xlsx | collateral_search           | 3101                               | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Plot + Self Construction            | collateral.xlsx | collateral_search           | 3102                               | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Construction On Land                | collateral.xlsx | collateral_search           | 3103                               | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Consumer Durable                    | collateral.xlsx | collateral_search           | 3104                               | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Consumer Vehicle                    | collateral.xlsx | collateral_search           | 3105                               | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Commercial Vehicle                  | collateral.xlsx | collateral_search           | 3106                               | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Tractor                             | collateral.xlsx | collateral_search           | 3107                               | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Commercial Equipment                | collateral.xlsx | collateral_search           | 3108                               | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Implements and Attachments          | collateral.xlsx | collateral_search           | 3109                               | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Insurance                           | collateral.xlsx | collateral_search           | 3110                               | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Agricultural Land                   | collateral.xlsx | collateral_search           | 3111                               | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Kisan Vikas Patra                   | collateral.xlsx | collateral_search           | 3112                               | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Fixed Deposit                       | collateral.xlsx | collateral_search           | 3113                               | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | National Saving Certificate         | collateral.xlsx | collateral_search           | 3114                               | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Ornament                            | collateral.xlsx | collateral_search           | 3115                               | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Corporate Guarantee                 | collateral.xlsx | collateral_search           | 3116                               | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Mortgage Guarantee                  | collateral.xlsx | collateral_search           | 3117                               | 1            |
#      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Stock and Book Debts                | collateral.xlsx | collateral_search           |3118                             | 1            |

    # PQM-01_CAS-109708
  Scenario Outline: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Mandatory Data validation of <CollateralSubType> collateral at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user edits linked collateral of "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_sheetName>" and row <Collateral_sheet_rowNum>
    Then mandatory fields value of collateral details of "<CollateralSubType>" should be same as filled earlier
    @DDE @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_sheetName        | Collateral_sheet_rowNum | RevisitCount |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Ready Property                      | collateral.xlsx | property_details            | 226                     | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Construction On Land                | collateral.xlsx | property_details            | 229                     | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Tractor                             | collateral.xlsx | asset_details               | 312                     | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Insurance                           | collateral.xlsx | insurance_details           | 600                     | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Ornament                            | collateral.xlsx | gold_details                | 2                       | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       | 1            |
#      | PL_CAS_109708_Set1_01  | PL          | DDE              | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      | 1            |

      | HL_CAS_109708_Set1_01  | HL          | DDE              | Ready Property                      | collateral.xlsx | property_details            | 226                     | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Construction On Land                | collateral.xlsx | property_details            | 229                     | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Tractor                             | collateral.xlsx | asset_details               | 312                     | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Insurance                           | collateral.xlsx | insurance_details           | 600                     | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Ornament                            | collateral.xlsx | gold_details                | 2                       | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       | 1            |
#      | HL_CAS_109708_Set1_01  | HL          | DDE              | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      | 1            |

      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Ready Property                      | collateral.xlsx | property_details            | 226                     | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Construction On Land                | collateral.xlsx | property_details            | 229                     | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Tractor                             | collateral.xlsx | asset_details               | 312                     | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Insurance                           | collateral.xlsx | insurance_details           | 600                     | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Ornament                            | collateral.xlsx | gold_details                | 2                       | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       | 1            |
#      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      | 1            |

    @CreditApproval @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_sheetName        | Collateral_sheet_rowNum | RevisitCount |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Ready Property                      | collateral.xlsx | property_details            | 226                     | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Construction On Land                | collateral.xlsx | property_details            | 229                     | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Tractor                             | collateral.xlsx | asset_details               | 312                     | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Insurance                           | collateral.xlsx | insurance_details           | 600                     | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Ornament                            | collateral.xlsx | gold_details                | 2                       | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       | 1            |
#      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      | 1            |

      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Ready Property                      | collateral.xlsx | property_details            | 226                     | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Construction On Land                | collateral.xlsx | property_details            | 229                     | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Tractor                             | collateral.xlsx | asset_details               | 312                     | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Insurance                           | collateral.xlsx | insurance_details           | 600                     | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Ornament                            | collateral.xlsx | gold_details                | 2                       | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       | 1            |
#      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      | 1            |

      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Ready Property                      | collateral.xlsx | property_details            | 226                     | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Construction On Land                | collateral.xlsx | property_details            | 229                     | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Tractor                             | collateral.xlsx | asset_details               | 312                     | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Insurance                           | collateral.xlsx | insurance_details           | 600                     | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Ornament                            | collateral.xlsx | gold_details                | 2                       | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       | 1            |
#      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      | 1            |

    @Reconsideration @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_sheetName        | Collateral_sheet_rowNum | RevisitCount |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Ready Property                      | collateral.xlsx | property_details            | 226                     | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Construction On Land                | collateral.xlsx | property_details            | 229                     | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Tractor                             | collateral.xlsx | asset_details               | 312                     | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Insurance                           | collateral.xlsx | insurance_details           | 600                     | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Ornament                            | collateral.xlsx | gold_details                | 2                       | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       | 1            |
#      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      | 1            |

      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Ready Property                      | collateral.xlsx | property_details            | 226                     | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Construction On Land                | collateral.xlsx | property_details            | 229                     | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Tractor                             | collateral.xlsx | asset_details               | 312                     | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Insurance                           | collateral.xlsx | insurance_details           | 600                     | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Ornament                            | collateral.xlsx | gold_details                | 2                       | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       | 1            |
#      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      | 1            |

      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Ready Property                      | collateral.xlsx | property_details            | 226                     | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Construction On Land                | collateral.xlsx | property_details            | 229                     | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Tractor                             | collateral.xlsx | asset_details               | 312                     | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Insurance                           | collateral.xlsx | insurance_details           | 600                     | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Ornament                            | collateral.xlsx | gold_details                | 2                       | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       | 1            |
#      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      | 1            |

    @Recommendation @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_sheetName        | Collateral_sheet_rowNum | RevisitCount |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Ready Property                      | collateral.xlsx | property_details            | 226                     | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Construction On Land                | collateral.xlsx | property_details            | 229                     | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Tractor                             | collateral.xlsx | asset_details               | 312                     | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Insurance                           | collateral.xlsx | insurance_details           | 600                     | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Ornament                            | collateral.xlsx | gold_details                | 2                       | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       | 1            |
#      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      | 1            |

      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Ready Property                      | collateral.xlsx | property_details            | 226                     | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Construction On Land                | collateral.xlsx | property_details            | 229                     | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Tractor                             | collateral.xlsx | asset_details               | 312                     | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Insurance                           | collateral.xlsx | insurance_details           | 600                     | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Ornament                            | collateral.xlsx | gold_details                | 2                       | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       | 1            |
#      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      | 1            |

      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Ready Property                      | collateral.xlsx | property_details            | 226                     | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Construction On Land                | collateral.xlsx | property_details            | 229                     | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Tractor                             | collateral.xlsx | asset_details               | 312                     | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Insurance                           | collateral.xlsx | insurance_details           | 600                     | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Ornament                            | collateral.xlsx | gold_details                | 2                       | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       | 1            |
#      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      | 1            |

    @Disbursal @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_sheetName        | Collateral_sheet_rowNum | RevisitCount |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Ready Property                      | collateral.xlsx | property_details            | 226                     | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Construction On Land                | collateral.xlsx | property_details            | 229                     | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Tractor                             | collateral.xlsx | asset_details               | 312                     | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Insurance                           | collateral.xlsx | insurance_details           | 600                     | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Ornament                            | collateral.xlsx | gold_details                | 2                       | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       | 1            |
#      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      | 1            |

      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Ready Property                      | collateral.xlsx | property_details            | 226                     | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Construction On Land                | collateral.xlsx | property_details            | 229                     | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Tractor                             | collateral.xlsx | asset_details               | 312                     | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Insurance                           | collateral.xlsx | insurance_details           | 600                     | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Ornament                            | collateral.xlsx | gold_details                | 2                       | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       | 1            |
#      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      | 1            |

      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Ready Property                      | collateral.xlsx | property_details            | 226                     | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Builder Property Under Construction | collateral.xlsx | property_details            | 227                     | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Plot + Self Construction            | collateral.xlsx | property_details            | 228                     | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Construction On Land                | collateral.xlsx | property_details            | 229                     | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Consumer Durable                    | collateral.xlsx | asset_details               | 309                     | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Consumer Vehicle                    | collateral.xlsx | asset_details               | 310                     | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Commercial Vehicle                  | collateral.xlsx | asset_details               | 311                     | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Tractor                             | collateral.xlsx | asset_details               | 312                     | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Commercial Equipment                | collateral.xlsx | asset_details               | 313                     | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Implements and Attachments          | collateral.xlsx | asset_details               | 314                     | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Insurance                           | collateral.xlsx | insurance_details           | 600                     | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Agricultural Land                   | collateral.xlsx | agriculture_details         | 17                      | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Kisan Vikas Patra                   | collateral.xlsx | kisan_vikas_patra           | 363                     | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Fixed Deposit                       | collateral.xlsx | fixed_deposit               | 393                     | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | National Saving Certificate         | collateral.xlsx | national_saving_certificate | 384                     | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Ornament                            | collateral.xlsx | gold_details                | 2                       | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Corporate Guarantee                 | collateral.xlsx | guarantee_details           | 0                       | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Mortgage Guarantee                  | collateral.xlsx | guarantee_details           | 1                       | 1            |
#      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Stock and Book Debts                | collateral.xlsx | stock_details               | 58                      | 1            |

    # PQM-02_CAS-109708
  Scenario Outline: ACAUTOCAS-21210: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Validation of save event should triggered after saving with correct collateral details at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user edits linked collateral of "<CollateralSubType>"
    When user saves the Collateral Details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then user gets a proper notification

    @DDE @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_default | Collateral_default_rowNum | RevisitCount |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Ready Property                      | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Builder Property Under Construction | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Plot + Self Construction            | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Construction On Land                | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Consumer Durable                    | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Consumer Vehicle                    | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Commercial Vehicle                  | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Tractor                             | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Commercial Equipment                | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Implements and Attachments          | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Insurance                           | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Agricultural Land                   | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Kisan Vikas Patra                   | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Fixed Deposit                       | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | National Saving Certificate         | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Ornament                            | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Corporate Guarantee                 | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Mortgage Guarantee                  | collateral.xlsx | default            | 840                       | 1            |
#      | PL_CAS_109708_Set1_01  | PL          | DDE              | Stock and Book Debts                | collateral.xlsx | default            | 840                       | 1            |

      | HL_CAS_109708_Set1_01  | HL          | DDE              | Ready Property                      | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Builder Property Under Construction | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Plot + Self Construction            | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Construction On Land                | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Consumer Durable                    | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Consumer Vehicle                    | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Commercial Vehicle                  | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Tractor                             | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Commercial Equipment                | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Implements and Attachments          | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Insurance                           | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Agricultural Land                   | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Kisan Vikas Patra                   | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Fixed Deposit                       | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | National Saving Certificate         | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Ornament                            | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Corporate Guarantee                 | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Mortgage Guarantee                  | collateral.xlsx | default            | 840                       | 1            |
#      | HL_CAS_109708_Set1_01  | HL          | DDE              | Stock and Book Debts                | collateral.xlsx | default            | 840                       | 1            |

      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Ready Property                      | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Builder Property Under Construction | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Plot + Self Construction            | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Construction On Land                | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Consumer Durable                    | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Consumer Vehicle                    | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Commercial Vehicle                  | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Tractor                             | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Commercial Equipment                | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Implements and Attachments          | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Insurance                           | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Agricultural Land                   | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Kisan Vikas Patra                   | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Fixed Deposit                       | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | National Saving Certificate         | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Ornament                            | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Corporate Guarantee                 | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Mortgage Guarantee                  | collateral.xlsx | default            | 840                       | 1            |
#      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Stock and Book Debts                | collateral.xlsx | default            | 840                       | 1            |

    @CreditApproval @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_default | Collateral_default_rowNum | RevisitCount |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Ready Property                      | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Builder Property Under Construction | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Plot + Self Construction            | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Construction On Land                | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Consumer Durable                    | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Consumer Vehicle                    | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Commercial Vehicle                  | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Tractor                             | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Commercial Equipment                | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Implements and Attachments          | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Insurance                           | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Agricultural Land                   | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Kisan Vikas Patra                   | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Fixed Deposit                       | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | National Saving Certificate         | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Ornament                            | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Corporate Guarantee                 | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Mortgage Guarantee                  | collateral.xlsx | default            | 840                       | 1            |
#      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Stock and Book Debts                | collateral.xlsx | default            | 840                       | 1            |

      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Ready Property                      | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Builder Property Under Construction | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Plot + Self Construction            | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Construction On Land                | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Consumer Durable                    | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Consumer Vehicle                    | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Commercial Vehicle                  | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Tractor                             | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Commercial Equipment                | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Implements and Attachments          | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Insurance                           | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Agricultural Land                   | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Kisan Vikas Patra                   | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Fixed Deposit                       | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | National Saving Certificate         | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Ornament                            | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Corporate Guarantee                 | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Mortgage Guarantee                  | collateral.xlsx | default            | 840                       | 1            |
#      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Stock and Book Debts                | collateral.xlsx | default            | 840                       | 1            |

      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Ready Property                      | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Builder Property Under Construction | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Plot + Self Construction            | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Construction On Land                | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Consumer Durable                    | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Consumer Vehicle                    | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Commercial Vehicle                  | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Tractor                             | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Commercial Equipment                | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Implements and Attachments          | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Insurance                           | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Agricultural Land                   | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Kisan Vikas Patra                   | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Fixed Deposit                       | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | National Saving Certificate         | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Ornament                            | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Corporate Guarantee                 | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Mortgage Guarantee                  | collateral.xlsx | default            | 840                       | 1            |
#      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Stock and Book Debts                | collateral.xlsx | default            | 840                       | 1            |

    @Reconsideration @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_default | Collateral_default_rowNum | RevisitCount |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Ready Property                      | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Builder Property Under Construction | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Plot + Self Construction            | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Construction On Land                | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Consumer Durable                    | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Consumer Vehicle                    | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Commercial Vehicle                  | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Tractor                             | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Commercial Equipment                | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Implements and Attachments          | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Insurance                           | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Agricultural Land                   | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Kisan Vikas Patra                   | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Fixed Deposit                       | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | National Saving Certificate         | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Ornament                            | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Corporate Guarantee                 | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Mortgage Guarantee                  | collateral.xlsx | default            | 840                       | 1            |
#      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Stock and Book Debts                | collateral.xlsx | default            | 840                       | 1            |

      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Ready Property                      | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Builder Property Under Construction | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Plot + Self Construction            | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Construction On Land                | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Consumer Durable                    | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Consumer Vehicle                    | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Commercial Vehicle                  | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Tractor                             | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Commercial Equipment                | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Implements and Attachments          | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Insurance                           | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Agricultural Land                   | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Kisan Vikas Patra                   | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Fixed Deposit                       | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | National Saving Certificate         | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Ornament                            | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Corporate Guarantee                 | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Mortgage Guarantee                  | collateral.xlsx | default            | 840                       | 1            |
#      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Stock and Book Debts                | collateral.xlsx | default            | 840                       | 1            |

      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Ready Property                      | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Builder Property Under Construction | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Plot + Self Construction            | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Construction On Land                | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Consumer Durable                    | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Consumer Vehicle                    | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Commercial Vehicle                  | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Tractor                             | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Commercial Equipment                | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Implements and Attachments          | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Insurance                           | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Agricultural Land                   | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Kisan Vikas Patra                   | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Fixed Deposit                       | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | National Saving Certificate         | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Ornament                            | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Corporate Guarantee                 | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Mortgage Guarantee                  | collateral.xlsx | default            | 840                       | 1            |
#      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Stock and Book Debts                | collateral.xlsx | default            | 840                       | 1            |

    @Recommendation @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_default | Collateral_default_rowNum | RevisitCount |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Ready Property                      | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Builder Property Under Construction | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Plot + Self Construction            | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Construction On Land                | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Consumer Durable                    | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Consumer Vehicle                    | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Commercial Vehicle                  | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Tractor                             | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Commercial Equipment                | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Implements and Attachments          | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Insurance                           | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Agricultural Land                   | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Kisan Vikas Patra                   | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Fixed Deposit                       | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | National Saving Certificate         | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Ornament                            | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Corporate Guarantee                 | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Mortgage Guarantee                  | collateral.xlsx | default            | 840                       | 1            |
#      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Stock and Book Debts                | collateral.xlsx | default            | 840                       | 1            |

      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Ready Property                      | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Builder Property Under Construction | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Plot + Self Construction            | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Construction On Land                | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Consumer Durable                    | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Consumer Vehicle                    | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Commercial Vehicle                  | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Tractor                             | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Commercial Equipment                | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Implements and Attachments          | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Insurance                           | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Agricultural Land                   | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Kisan Vikas Patra                   | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Fixed Deposit                       | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | National Saving Certificate         | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Ornament                            | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Corporate Guarantee                 | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Mortgage Guarantee                  | collateral.xlsx | default            | 840                       | 1            |
#      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Stock and Book Debts                | collateral.xlsx | default            | 840                       | 1            |

      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Ready Property                      | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Builder Property Under Construction | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Plot + Self Construction            | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Construction On Land                | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Consumer Durable                    | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Consumer Vehicle                    | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Commercial Vehicle                  | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Tractor                             | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Commercial Equipment                | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Implements and Attachments          | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Insurance                           | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Agricultural Land                   | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Kisan Vikas Patra                   | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Fixed Deposit                       | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | National Saving Certificate         | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Ornament                            | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Corporate Guarantee                 | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Mortgage Guarantee                  | collateral.xlsx | default            | 840                       | 1            |
#      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Stock and Book Debts                | collateral.xlsx | default            | 840                       | 1            |

    @Disbursal @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | CollateralWB    | Collateral_default | Collateral_default_rowNum | RevisitCount |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Ready Property                      | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Builder Property Under Construction | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Plot + Self Construction            | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Construction On Land                | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Consumer Durable                    | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Consumer Vehicle                    | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Commercial Vehicle                  | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Tractor                             | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Commercial Equipment                | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Implements and Attachments          | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Insurance                           | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Agricultural Land                   | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Kisan Vikas Patra                   | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Fixed Deposit                       | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | National Saving Certificate         | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Ornament                            | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Corporate Guarantee                 | collateral.xlsx | default            | 840                       | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Mortgage Guarantee                  | collateral.xlsx | default            | 840                       | 1            |
#      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Stock and Book Debts                | collateral.xlsx | default            | 840                       | 1            |

      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Ready Property                      | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Builder Property Under Construction | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Plot + Self Construction            | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Construction On Land                | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Consumer Durable                    | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Consumer Vehicle                    | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Commercial Vehicle                  | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Tractor                             | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Commercial Equipment                | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Implements and Attachments          | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Insurance                           | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Agricultural Land                   | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Kisan Vikas Patra                   | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Fixed Deposit                       | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | National Saving Certificate         | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Ornament                            | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Corporate Guarantee                 | collateral.xlsx | default            | 840                       | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Mortgage Guarantee                  | collateral.xlsx | default            | 840                       | 1            |
#      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Stock and Book Debts                | collateral.xlsx | default            | 840                       | 1            |

      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Ready Property                      | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Builder Property Under Construction | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Plot + Self Construction            | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Construction On Land                | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Consumer Durable                    | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Consumer Vehicle                    | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Commercial Vehicle                  | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Tractor                             | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Commercial Equipment                | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Implements and Attachments          | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Insurance                           | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Agricultural Land                   | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Kisan Vikas Patra                   | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Fixed Deposit                       | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | National Saving Certificate         | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Ornament                            | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Corporate Guarantee                 | collateral.xlsx | default            | 840                       | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Mortgage Guarantee                  | collateral.xlsx | default            | 840                       | 1            |
#      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Stock and Book Debts                | collateral.xlsx | default            | 840                       | 1            |

    # PQM-02_CAS-109708
  Scenario Outline: ACAUTOCAS-21211: Validation of save event should triggered after saving with missing mandatory collateral details of <CollateralSubType> at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user edits linked collateral of "<CollateralSubType>"
    When user clears mandatory fields not used for duplicates
    And user saves the Collateral Details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then user should get a error message
    @DDE @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralWB    | Collateral_default | Collateral_default_rowNum | CollateralSubType |
      | PL_CAS_109708_Set13_01  | PL          | DDE              | collateral.xlsx | default            | 841                       | Consumer Vehicle  |
      | HL_CAS_109708_Set13_01  | HL          | DDE              | collateral.xlsx | default            | 841                       | Consumer Vehicle  |
      | MAL_CAS_109708_Set13_01 | MAL         | DDE              | collateral.xlsx | default            | 841                       | Consumer Vehicle  |

    @CreditApproval @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralWB    | Collateral_default | Collateral_default_rowNum | CollateralSubType |
      | PL_CAS_109708_Set13_02  | PL          | Credit Approval  | collateral.xlsx | default            | 841                       | Consumer Vehicle  |
      | HL_CAS_109708_Set13_02  | HL          | Credit Approval  | collateral.xlsx | default            | 841                       | Consumer Vehicle  |
      | MAL_CAS_109708_Set13_02 | MAL         | Credit Approval  | collateral.xlsx | default            | 841                       | Consumer Vehicle  |

    @Reconsideration @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralWB    | Collateral_default | Collateral_default_rowNum | CollateralSubType |
      | PL_CAS_109708_Set13_03  | PL          | Reconsideration  | collateral.xlsx | default            | 841                       | Consumer Vehicle  |
      | HL_CAS_109708_Set13_03  | HL          | Reconsideration  | collateral.xlsx | default            | 841                       | Consumer Vehicle  |
      | MAL_CAS_109708_Set13_03 | MAL         | Reconsideration  | collateral.xlsx | default            | 841                       | Consumer Vehicle  |

    @Recommendation @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralWB    | Collateral_default | Collateral_default_rowNum | CollateralSubType |
      | PL_CAS_109708_Set13_04  | PL          | Recommendation   | collateral.xlsx | default            | 841                       | Consumer Vehicle  |
      | HL_CAS_109708_Set13_04  | HL          | Recommendation   | collateral.xlsx | default            | 841                       | Consumer Vehicle  |
      | MAL_CAS_109708_Set13_04 | MAL         | Recommendation   | collateral.xlsx | default            | 841                       | Consumer Vehicle  |

    @Disbursal @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralWB    | Collateral_default | Collateral_default_rowNum | CollateralSubType |
      | PL_CAS_109708_Set13_05  | PL          | Disbursal        | collateral.xlsx | default            | 841                       | Consumer Vehicle  |
      | HL_CAS_109708_Set13_05  | HL          | Disbursal        | collateral.xlsx | default            | 841                       | Consumer Vehicle  |
      | MAL_CAS_109708_Set13_05 | MAL         | Disbursal        | collateral.xlsx | default            | 841                       | Consumer Vehicle  |

    # PQM-04_CAS-109708
  Scenario Outline: ACAUTOCAS-21212: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Delinking of Secondary Collateral after Search at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user delinks the Secondary collateral of "<CollateralSubType>"
    Then "<CollateralSubType>" collateral should be delinked

    @DDE @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | RevisitCount |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Ready Property                      | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Builder Property Under Construction | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Plot + Self Construction            | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Construction On Land                | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Consumer Durable                    | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Consumer Vehicle                    | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Commercial Vehicle                  | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Tractor                             | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Commercial Equipment                | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Implements and Attachments          | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Insurance                           | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Agricultural Land                   | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Kisan Vikas Patra                   | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Fixed Deposit                       | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | National Saving Certificate         | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Ornament                            | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Corporate Guarantee                 | 1            |
      | PL_CAS_109708_Set1_01  | PL          | DDE              | Mortgage Guarantee                  | 1            |
#      | PL_CAS_109708_Set1_01  | PL          | DDE              | Stock and Book Debts                | 1            |

      | HL_CAS_109708_Set1_01  | HL          | DDE              | Ready Property                      | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Builder Property Under Construction | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Plot + Self Construction            | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Construction On Land                | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Consumer Durable                    | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Consumer Vehicle                    | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Commercial Vehicle                  | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Tractor                             | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Commercial Equipment                | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Implements and Attachments          | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Insurance                           | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Agricultural Land                   | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Kisan Vikas Patra                   | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Fixed Deposit                       | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | National Saving Certificate         | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Ornament                            | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Corporate Guarantee                 | 1            |
      | HL_CAS_109708_Set1_01  | HL          | DDE              | Mortgage Guarantee                  | 1            |
#      | HL_CAS_109708_Set1_01  | HL          | DDE              | Stock and Book Debts                | 1            |

      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Ready Property                      | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Builder Property Under Construction | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Plot + Self Construction            | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Construction On Land                | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Consumer Durable                    | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Consumer Vehicle                    | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Commercial Vehicle                  | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Tractor                             | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Commercial Equipment                | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Implements and Attachments          | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Insurance                           | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Agricultural Land                   | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Kisan Vikas Patra                   | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Fixed Deposit                       | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | National Saving Certificate         | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Ornament                            | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Corporate Guarantee                 | 1            |
      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Mortgage Guarantee                  | 1            |
#      | MAL_CAS_109708_Set1_01 | MAL         | DDE              | Stock and Book Debts                | 1            |

    @CreditApproval @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | RevisitCount |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Ready Property                      | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Builder Property Under Construction | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Plot + Self Construction            | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Construction On Land                | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Consumer Durable                    | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Consumer Vehicle                    | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Commercial Vehicle                  | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Tractor                             | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Commercial Equipment                | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Implements and Attachments          | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Insurance                           | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Agricultural Land                   | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Kisan Vikas Patra                   | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Fixed Deposit                       | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | National Saving Certificate         | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Ornament                            | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Corporate Guarantee                 | 1            |
      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Mortgage Guarantee                  | 1            |
#      | PL_CAS_109708_Set1_02  | PL          | Credit Approval  | Stock and Book Debts                | 1            |

      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Ready Property                      | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Builder Property Under Construction | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Plot + Self Construction            | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Construction On Land                | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Consumer Durable                    | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Consumer Vehicle                    | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Commercial Vehicle                  | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Tractor                             | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Commercial Equipment                | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Implements and Attachments          | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Insurance                           | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Agricultural Land                   | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Kisan Vikas Patra                   | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Fixed Deposit                       | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | National Saving Certificate         | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Ornament                            | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Corporate Guarantee                 | 1            |
      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Mortgage Guarantee                  | 1            |
#      | HL_CAS_109708_Set1_02  | HL          | Credit Approval  | Stock and Book Debts                | 1            |

      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Ready Property                      | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Builder Property Under Construction | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Plot + Self Construction            | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Construction On Land                | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Consumer Durable                    | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Consumer Vehicle                    | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Commercial Vehicle                  | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Tractor                             | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Commercial Equipment                | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Implements and Attachments          | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Insurance                           | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Agricultural Land                   | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Kisan Vikas Patra                   | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Fixed Deposit                       | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | National Saving Certificate         | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Ornament                            | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Corporate Guarantee                 | 1            |
      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Mortgage Guarantee                  | 1            |
#      | MAL_CAS_109708_Set1_02 | MAL         | Credit Approval  | Stock and Book Debts                | 1            |

    @Reconsideration @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | RevisitCount |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Ready Property                      | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Builder Property Under Construction | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Plot + Self Construction            | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Construction On Land                | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Consumer Durable                    | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Consumer Vehicle                    | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Commercial Vehicle                  | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Tractor                             | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Commercial Equipment                | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Implements and Attachments          | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Insurance                           | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Agricultural Land                   | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Kisan Vikas Patra                   | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Fixed Deposit                       | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | National Saving Certificate         | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Ornament                            | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Corporate Guarantee                 | 1            |
      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Mortgage Guarantee                  | 1            |
#      | PL_CAS_109708_Set1_03  | PL          | Reconsideration  | Stock and Book Debts                | 1            |

      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Ready Property                      | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Builder Property Under Construction | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Plot + Self Construction            | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Construction On Land                | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Consumer Durable                    | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Consumer Vehicle                    | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Commercial Vehicle                  | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Tractor                             | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Commercial Equipment                | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Implements and Attachments          | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Insurance                           | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Agricultural Land                   | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Kisan Vikas Patra                   | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Fixed Deposit                       | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | National Saving Certificate         | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Ornament                            | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Corporate Guarantee                 | 1            |
      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Mortgage Guarantee                  | 1            |
#      | HL_CAS_109708_Set1_03  | HL          | Reconsideration  | Stock and Book Debts                | 1            |

      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Ready Property                      | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Builder Property Under Construction | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Plot + Self Construction            | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Construction On Land                | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Consumer Durable                    | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Consumer Vehicle                    | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Commercial Vehicle                  | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Tractor                             | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Commercial Equipment                | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Implements and Attachments          | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Insurance                           | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Agricultural Land                   | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Kisan Vikas Patra                   | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Fixed Deposit                       | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | National Saving Certificate         | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Ornament                            | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Corporate Guarantee                 | 1            |
      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Mortgage Guarantee                  | 1            |
#      | MAL_CAS_109708_Set1_03 | MAL         | Reconsideration  | Stock and Book Debts                | 1            |

    @Recommendation @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | RevisitCount |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Ready Property                      | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Builder Property Under Construction | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Plot + Self Construction            | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Construction On Land                | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Consumer Durable                    | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Consumer Vehicle                    | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Commercial Vehicle                  | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Tractor                             | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Commercial Equipment                | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Implements and Attachments          | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Insurance                           | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Agricultural Land                   | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Kisan Vikas Patra                   | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Fixed Deposit                       | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | National Saving Certificate         | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Ornament                            | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Corporate Guarantee                 | 1            |
      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Mortgage Guarantee                  | 1            |
#      | PL_CAS_109708_Set1_04  | PL          | Recommendation   | Stock and Book Debts                | 1            |

      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Ready Property                      | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Builder Property Under Construction | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Plot + Self Construction            | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Construction On Land                | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Consumer Durable                    | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Consumer Vehicle                    | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Commercial Vehicle                  | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Tractor                             | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Commercial Equipment                | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Implements and Attachments          | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Insurance                           | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Agricultural Land                   | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Kisan Vikas Patra                   | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Fixed Deposit                       | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | National Saving Certificate         | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Ornament                            | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Corporate Guarantee                 | 1            |
      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Mortgage Guarantee                  | 1            |
#      | HL_CAS_109708_Set1_04  | HL          | Recommendation   | Stock and Book Debts                | 1            |

      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Ready Property                      | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Builder Property Under Construction | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Plot + Self Construction            | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Construction On Land                | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Consumer Durable                    | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Consumer Vehicle                    | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Commercial Vehicle                  | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Tractor                             | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Commercial Equipment                | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Implements and Attachments          | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Insurance                           | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Agricultural Land                   | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Kisan Vikas Patra                   | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Fixed Deposit                       | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | National Saving Certificate         | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Ornament                            | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Corporate Guarantee                 | 1            |
      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Mortgage Guarantee                  | 1            |
#      | MAL_CAS_109708_Set1_04 | MAL         | Recommendation   | Stock and Book Debts                | 1            |

    @Disbursal @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType                   | RevisitCount |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Ready Property                      | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Builder Property Under Construction | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Plot + Self Construction            | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Construction On Land                | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Consumer Durable                    | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Consumer Vehicle                    | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Commercial Vehicle                  | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Tractor                             | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Commercial Equipment                | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Implements and Attachments          | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Insurance                           | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Agricultural Land                   | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Kisan Vikas Patra                   | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Fixed Deposit                       | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | National Saving Certificate         | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Ornament                            | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Corporate Guarantee                 | 1            |
      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Mortgage Guarantee                  | 1            |
#      | PL_CAS_109708_Set1_05  | PL          | Disbursal        | Stock and Book Debts                | 1            |

      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Ready Property                      | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Builder Property Under Construction | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Plot + Self Construction            | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Construction On Land                | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Consumer Durable                    | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Consumer Vehicle                    | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Commercial Vehicle                  | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Tractor                             | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Commercial Equipment                | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Implements and Attachments          | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Insurance                           | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Agricultural Land                   | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Kisan Vikas Patra                   | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Fixed Deposit                       | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | National Saving Certificate         | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Ornament                            | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Corporate Guarantee                 | 1            |
      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Mortgage Guarantee                  | 1            |
#      | HL_CAS_109708_Set1_05  | HL          | Disbursal        | Stock and Book Debts                | 1            |

      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Ready Property                      | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Builder Property Under Construction | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Plot + Self Construction            | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Construction On Land                | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Consumer Durable                    | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Consumer Vehicle                    | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Commercial Vehicle                  | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Tractor                             | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Commercial Equipment                | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Implements and Attachments          | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Insurance                           | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Agricultural Land                   | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Kisan Vikas Patra                   | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Fixed Deposit                       | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | National Saving Certificate         | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Ornament                            | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Corporate Guarantee                 | 1            |
      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Mortgage Guarantee                  | 1            |
#      | MAL_CAS_109708_Set1_05 | MAL         | Disbursal        | Stock and Book Debts                | 1            |

    # PQM-04_CAS-109708
  @DBConfig-1
  Scenario Outline: Addition of Secondary Collateral whose CMS id not generated at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_sheetName>" and row <Collateral_sheet_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    When user saves the collateral data
    Then "<CollateralSubType>" Collateral should be saved without CMS Id

    @DDE @Release
    Examples:
      | LogicalID              | ProductType | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set3_01  | PL          | collateral.xlsx | asset_details        | 59                      | DDE              | Tractor           |
      | HL_CAS_109708_Set3_01  | HL          | collateral.xlsx | asset_details        | 59                      | DDE              | Tractor           |
      | MAL_CAS_109708_Set3_01 | MAL         | collateral.xlsx | asset_details        | 59                      | DDE              | Tractor           |

    @CreditApproval @Release
    Examples:
      | LogicalID              | ProductType | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set3_02  | PL          | collateral.xlsx | asset_details        | 59                      | Credit Approval  | Tractor           |
      | HL_CAS_109708_Set3_02  | HL          | collateral.xlsx | asset_details        | 59                      | Credit Approval  | Tractor           |
      | MAL_CAS_109708_Set3_02 | MAL         | collateral.xlsx | asset_details        | 59                      | Credit Approval  | Tractor           |

    @Reconsideration @Release
    Examples:
      | LogicalID              | ProductType | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set3_03  | PL          | collateral.xlsx | asset_details        | 59                      | Reconsideration  | Tractor           |
      | HL_CAS_109708_Set3_03  | HL          | collateral.xlsx | asset_details        | 59                      | Reconsideration  | Tractor           |
      | MAL_CAS_109708_Set3_03 | MAL         | collateral.xlsx | asset_details        | 59                      | Reconsideration  | Tractor           |

    @Recommendation @Release
    Examples:
      | LogicalID              | ProductType | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set3_04  | PL          | collateral.xlsx | asset_details        | 59                      | Recommendation   | Tractor           |
      | HL_CAS_109708_Set3_04  | HL          | collateral.xlsx | asset_details        | 59                      | Recommendation   | Tractor           |
      | MAL_CAS_109708_Set3_04 | MAL         | collateral.xlsx | asset_details        | 59                      | Recommendation   | Tractor           |

    @Disbursal @Release
    Examples:
      | LogicalID              | ProductType | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set3_05  | PL          | collateral.xlsx | asset_details        | 59                      | Disbursal        | Tractor           |
      | HL_CAS_109708_Set3_05  | HL          | collateral.xlsx | asset_details        | 59                      | Disbursal        | Tractor           |
      | MAL_CAS_109708_Set3_05 | MAL         | collateral.xlsx | asset_details        | 59                      | Disbursal        | Tractor           |

    # PQM-04_CAS-109708
  @DBConfig-1
  Scenario Outline: Delinking of Secondary Collateral <CollateralSubType> whose CMS id not generated at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user delinks the Secondary collateral of "<CollateralSubType>"
    Then user should be able to delink the saved collateral whose CMS Id is not generated

    @DDE @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set3_01  | PL          | DDE              | Tractor           |
      | HL_CAS_109708_Set3_01  | HL          | DDE              | Tractor           |
      | MAL_CAS_109708_Set3_01 | MAL         | DDE              | Tractor           |

    @CreditApproval @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set3_02  | PL          | Credit Approval  | Tractor           |
      | HL_CAS_109708_Set3_02  | HL          | Credit Approval  | Tractor           |
      | MAL_CAS_109708_Set3_02 | MAL         | Credit Approval  | Tractor           |

    @Reconsideration @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set3_03  | PL          | Reconsideration  | Tractor           |
      | HL_CAS_109708_Set3_03  | HL          | Reconsideration  | Tractor           |
      | MAL_CAS_109708_Set3_03 | MAL         | Reconsideration  | Tractor           |

    @Recommendation @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set3_04  | PL          | Recommendation   | Tractor           |
      | HL_CAS_109708_Set3_04  | HL          | Recommendation   | Tractor           |
      | MAL_CAS_109708_Set3_04 | MAL         | Recommendation   | Tractor           |
    @Disbursal @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set3_05  | PL          | Disbursal        | Tractor           |
      | HL_CAS_109708_Set3_05  | HL          | Disbursal        | Tractor           |
      | MAL_CAS_109708_Set3_05 | MAL         | Disbursal        | Tractor           |

    # PQM-04_CAS-109708, # PQM-05_CAS-109708
  Scenario Outline: Delinking Primary Collateral at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user opens "<TabName>" section at "<ApplicationStage>" stage
    When user delinks the mapped Primary Collateral on "<TabName>"
    Then primary collateral should be delinked
    @LeadDetails
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TabName          |
      | HL_CAS_109708_Set4_06  | HL          | Lead Details     | Property Details |
      | MAL_CAS_109708_Set4_06 | MAL         | Lead Details     | Asset Details    |

    @DDE @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TabName          |
      | HL_CAS_109708_Set4_01  | HL          | DDE              | Property Details |
      | MAL_CAS_109708_Set4_01 | MAL         | DDE              | Asset Details    |

    @CreditApproval @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TabName          |
      | HL_CAS_109708_Set4_02  | HL          | Credit Approval  | Property Details |
      | MAL_CAS_109708_Set4_02 | MAL         | Credit Approval  | Asset Details    |
    @Reconsideration @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TabName          |
      | HL_CAS_109708_Set4_03  | HL          | Reconsideration  | Property Details |
      | MAL_CAS_109708_Set4_03 | MAL         | Reconsideration  | Asset Details    |
    @Recommendation @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TabName          |
      | HL_CAS_109708_Set4_04  | HL          | Recommendation   | Property Details |
      | MAL_CAS_109708_Set4_04 | MAL         | Recommendation   | Asset Details    |

    # PQM-04_CAS-109708
  Scenario Outline: ACAUTOCAS-21214: Delinking of Primary Collateral after linking primary collateral from Search option at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Search Collateral page for Primary Collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_collateralSearch>" and row <Collateral_collateralSearch_rowNum>
    And user enters parameters to search collateral
    And clicks on search
    And user finds collateral matching the search criteria
    And user links the collateral with the application
    When user delinks the mapped Primary Collateral on "<TabName>"
    Then primary collateral should be delinked

    @DDE @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum | TabName          |
      | HL_CAS_109708_Set4_01  | HL          | DDE              | collateral.xlsx | collateral_search           | 3124                               | Property Details |
      | MAL_CAS_109708_Set4_01 | MAL         | DDE              | collateral.xlsx | collateral_search           | 3119                               | Asset Details    |

    @CreditApproval @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum | TabName          |
      | HL_CAS_109708_Set4_02  | HL          | Credit Approval  | collateral.xlsx | collateral_search           | 3124                               | Property Details |
      | MAL_CAS_109708_Set4_02 | MAL         | Credit Approval  | collateral.xlsx | collateral_search           | 3119                               | Asset Details    |

    @Reconsideration @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum | TabName          |
      | HL_CAS_109708_Set4_03  | HL          | Reconsideration  | collateral.xlsx | collateral_search           | 3124                               | Property Details |
      | MAL_CAS_109708_Set4_03 | MAL         | Reconsideration  | collateral.xlsx | collateral_search           | 3119                               | Asset Details    |

    @Recommendation @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum | TabName          |
      | HL_CAS_109708_Set4_04  | HL          | Recommendation   | collateral.xlsx | collateral_search           | 3124                               | Property Details |
      | MAL_CAS_109708_Set4_04 | MAL         | Recommendation   | collateral.xlsx | collateral_search           | 3119                               | Asset Details    |

    # PQM-04_CAS-109708
  Scenario Outline: ACAUTOCAS-21215: Delinking of Consumer Vehicle Primary Collateral after Creation at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user opens "<TabName>" section at "<ApplicationStage>" stage
    And user delinks the mapped Primary Collateral on "<TabName>"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_home>" and row <AssetDetails_home_rowNum>
    And user fills asset details with asset type as "<AssetType>"
    And user fills Engine Number and Chassis Number
    And user checks for the duplicates
    And user saves asset details home page
    When user delinks the mapped Primary Collateral on "<TabName>"
    Then primary collateral should be delinked

    @DDE @Release
    Examples:
      | LogicalID               | AssetType | AssetDetailsWB     | AssetDetails_home | AssetDetails_home_rowNum | ProductType | ApplicationStage | TabName       |
      | MAL_CAS_109708_Set12_01 | New Asset | asset_details.xlsx | home              | 89                       | MAL         | DDE              | Asset Details |
    @CreditApproval @Release
    Examples:
      | LogicalID               | AssetType | AssetDetailsWB     | AssetDetails_home | AssetDetails_home_rowNum | ProductType | ApplicationStage | TabName       |
      | MAL_CAS_109708_Set12_02 | New Asset | asset_details.xlsx | home              | 89                       | MAL         | Credit Approval  | Asset Details |
    @Reconsideration @Release
    Examples:
      | LogicalID               | AssetType | AssetDetailsWB     | AssetDetails_home | AssetDetails_home_rowNum | ProductType | ApplicationStage | TabName       |
      | MAL_CAS_109708_Set12_03 | New Asset | asset_details.xlsx | home              | 89                       | MAL         | Reconsideration  | Asset Details |
    @Recommendation @Release
    Examples:
      | LogicalID               | AssetType | AssetDetailsWB     | AssetDetails_home | AssetDetails_home_rowNum | ProductType | ApplicationStage | TabName       |
      | MAL_CAS_109708_Set12_04 | New Asset | asset_details.xlsx | home              | 89                       | MAL         | Recommendation   | Asset Details |

    #PQM-05_CAS-109708
  @CreditApproval @Release
  Scenario Outline: ACAUTOCAS-21216: Additional Back button validation on delinking Primary Collateral at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user opens "<TabName>" section at "<ApplicationStage>" stage
    When user delinks the mapped Primary Collateral on "<TabName>"
    Then Additional Back button should not be visible
    Examples:
      | LogicalID              | TabName          | ProductType | ApplicationStage |
      | HL_CAS_109708_Set5_02  | Property Details | HL          | Credit Approval  |
      | MAL_CAS_109708_Set5_02 | Asset Details    | MAL         | Credit Approval  |

# PQM-07_CAS-109708
  Scenario Outline: ACAUTOCAS-21217: Validate <CollateralSubType> Collateral delinking for Lien pending for approval at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user edits linked collateral of "<CollateralSubType>"
    And user opened lien details tab
    And user open Lien Details accordion
    And user reads data from the excel file "<LienDetailsWB>" under sheet "<LienDetails_sheetName>" and row <LienDetails_sheet_rowNum>
    And user fills mandatory lien details
    And user save & request for approval the lien
    And user is on home page of "<ApplicationStage>"
    And user open collateral page of "<ApplicationStage>" stage
    When user clicks on delete button of Secondary Collateral of "<CollateralSubType>"
    And user clicks on Confirm button of confirmation message popup box
    Then user should get an error notification message

    @DDE @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | LienDetailsWB     | LienDetails_sheetName | LienDetails_sheet_rowNum | CollateralSubType    |
      | PL_CAS_109708_Set6_01  | PL          | DDE              | lien_details.xlsx | lien_details          | 71                       | Commercial Equipment |
      | HL_CAS_109708_Set6_01  | HL          | DDE              | lien_details.xlsx | lien_details          | 71                       | Commercial Equipment |
      | MAL_CAS_109708_Set6_01 | MAL         | DDE              | lien_details.xlsx | lien_details          | 71                       | Commercial Equipment |
    @CreditApproval @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | LienDetailsWB     | LienDetails_sheetName | LienDetails_sheet_rowNum | CollateralSubType    |
      | PL_CAS_109708_Set6_02  | PL          | Credit Approval  | lien_details.xlsx | lien_details          | 71                       | Commercial Equipment |
      | HL_CAS_109708_Set6_02  | HL          | Credit Approval  | lien_details.xlsx | lien_details          | 71                       | Commercial Equipment |
      | MAL_CAS_109708_Set6_02 | MAL         | Credit Approval  | lien_details.xlsx | lien_details          | 71                       | Commercial Equipment |
    @Reconsideration @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | LienDetailsWB     | LienDetails_sheetName | LienDetails_sheet_rowNum | CollateralSubType    |
      | PL_CAS_109708_Set6_03  | PL          | Reconsideration  | lien_details.xlsx | lien_details          | 71                       | Commercial Equipment |
      | HL_CAS_109708_Set6_03  | HL          | Reconsideration  | lien_details.xlsx | lien_details          | 71                       | Commercial Equipment |
      | MAL_CAS_109708_Set6_03 | MAL         | Reconsideration  | lien_details.xlsx | lien_details          | 71                       | Commercial Equipment |
    @Recommendation @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | LienDetailsWB     | LienDetails_sheetName | LienDetails_sheet_rowNum | CollateralSubType    |
      | PL_CAS_109708_Set6_04  | PL          | Recommendation   | lien_details.xlsx | lien_details          | 71                       | Commercial Equipment |
      | HL_CAS_109708_Set6_04  | HL          | Recommendation   | lien_details.xlsx | lien_details          | 71                       | Commercial Equipment |
      | MAL_CAS_109708_Set6_04 | MAL         | Recommendation   | lien_details.xlsx | lien_details          | 71                       | Commercial Equipment |
    @Disbursal @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | LienDetailsWB     | LienDetails_sheetName | LienDetails_sheet_rowNum | CollateralSubType    |
      | PL_CAS_109708_Set6_05  | PL          | Disbursal        | lien_details.xlsx | lien_details          | 71                       | Commercial Equipment |
      | HL_CAS_109708_Set6_05  | HL          | Disbursal        | lien_details.xlsx | lien_details          | 71                       | Commercial Equipment |
      | MAL_CAS_109708_Set6_05 | MAL         | Disbursal        | lien_details.xlsx | lien_details          | 71                       | Commercial Equipment |

    # PQM-07_CAS-109708
  Scenario Outline: ACAUTOCAS-21218: Delinking of Lien on delinking of Secondary Collateral at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigates to lien author screen
    And user opens the "<CollateralSubType>" collateral in lien author screen
    And user reads data from the excel file "<LienDetailsWB>" under sheet "<LienDetails_sheetName>" and row <LienDetails_sheet_rowNum>
    And user fills decision section of lien details
    And user approve the lien
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user clicks on delete button of Secondary Collateral of "<CollateralSubType>"
    And user clicks on "Confirm" of confirmation message popup box
    And user logout from CAS
    And user logged in "CMS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user views "<CollateralSubType>" Collateral from Search Collateral Page in CMS
    And user opens lien details tab
    And user open Lien Details accordion
    Then application should not be linked in Lien Details accordion
    @DDE @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | LienDetailsWB     | LienDetails_sheetName | LienDetails_sheet_rowNum | CollateralSubType    |
      | PL_CAS_109708_Set6_01  | PL          | DDE              | lien_details.xlsx | lien_details          | 72                       | Commercial Equipment |
      | HL_CAS_109708_Set6_01  | HL          | DDE              | lien_details.xlsx | lien_details          | 72                       | Commercial Equipment |
      | MAL_CAS_109708_Set6_01 | MAL         | DDE              | lien_details.xlsx | lien_details          | 72                       | Commercial Equipment |
    @CreditApproval @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | LienDetailsWB     | LienDetails_sheetName | LienDetails_sheet_rowNum | CollateralSubType    |
      | PL_CAS_109708_Set6_02  | PL          | Credit Approval  | lien_details.xlsx | lien_details          | 72                       | Commercial Equipment |
      | HL_CAS_109708_Set6_02  | HL          | Credit Approval  | lien_details.xlsx | lien_details          | 72                       | Commercial Equipment |
      | MAL_CAS_109708_Set6_02 | MAL         | Credit Approval  | lien_details.xlsx | lien_details          | 72                       | Commercial Equipment |
    @Reconsideration @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | LienDetailsWB     | LienDetails_sheetName | LienDetails_sheet_rowNum | CollateralSubType    |
      | PL_CAS_109708_Set6_03  | PL          | Reconsideration  | lien_details.xlsx | lien_details          | 72                       | Commercial Equipment |
      | HL_CAS_109708_Set6_03  | HL          | Reconsideration  | lien_details.xlsx | lien_details          | 72                       | Commercial Equipment |
      | MAL_CAS_109708_Set6_03 | MAL         | Reconsideration  | lien_details.xlsx | lien_details          | 72                       | Commercial Equipment |
    @Recommendation @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | LienDetailsWB     | LienDetails_sheetName | LienDetails_sheet_rowNum | CollateralSubType    |
      | PL_CAS_109708_Set6_04  | PL          | Recommendation   | lien_details.xlsx | lien_details          | 72                       | Commercial Equipment |
      | HL_CAS_109708_Set6_04  | HL          | Recommendation   | lien_details.xlsx | lien_details          | 72                       | Commercial Equipment |
      | MAL_CAS_109708_Set6_04 | MAL         | Recommendation   | lien_details.xlsx | lien_details          | 72                       | Commercial Equipment |
    @Disbursal @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | LienDetailsWB     | LienDetails_sheetName | LienDetails_sheet_rowNum | CollateralSubType    |
      | PL_CAS_109708_Set6_05  | PL          | Disbursal        | lien_details.xlsx | lien_details          | 72                       | Commercial Equipment |
      | HL_CAS_109708_Set6_05  | HL          | Disbursal        | lien_details.xlsx | lien_details          | 72                       | Commercial Equipment |
      | MAL_CAS_109708_Set6_05 | MAL         | Disbursal        | lien_details.xlsx | lien_details          | 72                       | Commercial Equipment |

    #PQM-08_CAS-109708
  Scenario Outline: Check opening of <TabName> page at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" from application grid
    When user opens "<TabName>" section at "<ApplicationStage>" stage
    And user stores the Collateral Id of Primary Collateral
    Then "<TabName>" page should be open
    @DDE @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TabName          |
      | HL_CAS_109708_Set7_01  | HL          | DDE              | Property Details |
      | MAL_CAS_109708_Set7_01 | MAL         | DDE              | Asset Details    |

    @CreditApproval @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TabName          |
      | HL_CAS_109708_Set7_02  | HL          | Credit Approval  | Property Details |
      | MAL_CAS_109708_Set7_02 | MAL         | Credit Approval  | Asset Details    |

    @Reconsideration @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TabName          |
      | HL_CAS_109708_Set7_03  | HL          | Reconsideration  | Property Details |
      | MAL_CAS_109708_Set7_03 | MAL         | Reconsideration  | Asset Details    |

    @Recommendation @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TabName          |
      | HL_CAS_109708_Set7_04  | HL          | Recommendation   | Property Details |
      | MAL_CAS_109708_Set7_04 | MAL         | Recommendation   | Asset Details    |

    #PQM-08_CAS-109708
  Scenario Outline: ACAUTOCAS-21219: Validation of Loan Amount on adding Insurance Details of <TypeOfCollateral> Collateral at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user is on home page of "<ApplicationStage>"
    And user navigates to Repayment Parameter at "<ApplicationStage>"
    And user stores the Application Amount at "<ApplicationStage>"
    And user reads data from the excel file "<RepaymentParametersWB>" under sheet "<RepaymentParameters_insuranceDetails>" and row <RepaymentParameters_insuranceDetails_rowNum>
    And user fills the insurance details
    When user saves repayment parameters
    Then Loan amount should update as per Premium Amount
    @DDE @Release
    @LoggedBug-ACAUTOCAS-23056
    Examples:
      | LogicalID             | ProductType | ApplicationStage | TypeOfCollateral | RepaymentParametersWB     | RepaymentParameters_insuranceDetails | RepaymentParameters_insuranceDetails_rowNum |
      | PL_CAS_109708_Set8_01 | PL          | DDE              | Secondary        | repayment_parameters.xlsx | insurance_details                    | 119                                         |

    @DDE @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TypeOfCollateral | RepaymentParametersWB     | RepaymentParameters_insuranceDetails | RepaymentParameters_insuranceDetails_rowNum |
      | HL_CAS_109708_Set7_01  | HL          | DDE              | Primary          | repayment_parameters.xlsx | insurance_details                    | 119                                         |
      | HL_CAS_109708_Set8_01  | HL          | DDE              | Secondary        | repayment_parameters.xlsx | insurance_details                    | 119                                         |
      | MAL_CAS_109708_Set7_01 | MAL         | DDE              | Primary          | repayment_parameters.xlsx | insurance_details                    | 119                                         |
      | MAL_CAS_109708_Set8_01 | MAL         | DDE              | Secondary        | repayment_parameters.xlsx | insurance_details                    | 119                                         |

    @CreditApproval @Release
    @LoggedBug-ACAUTOCAS-23056
    Examples:
      | LogicalID             | ProductType | ApplicationStage | TypeOfCollateral | RepaymentParametersWB     | RepaymentParameters_insuranceDetails | RepaymentParameters_insuranceDetails_rowNum |
      | PL_CAS_109708_Set8_02 | PL          | Credit Approval  | Secondary        | repayment_parameters.xlsx | insurance_details                    | 119                                         |

    @CreditApproval @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TypeOfCollateral | RepaymentParametersWB     | RepaymentParameters_insuranceDetails | RepaymentParameters_insuranceDetails_rowNum |
      | HL_CAS_109708_Set7_02  | HL          | Credit Approval  | Primary          | repayment_parameters.xlsx | insurance_details                    | 119                                         |
      | HL_CAS_109708_Set8_02  | HL          | Credit Approval  | Secondary        | repayment_parameters.xlsx | insurance_details                    | 119                                         |
      | MAL_CAS_109708_Set7_02 | MAL         | Credit Approval  | Primary          | repayment_parameters.xlsx | insurance_details                    | 119                                         |
      | MAL_CAS_109708_Set8_02 | MAL         | Credit Approval  | Secondary        | repayment_parameters.xlsx | insurance_details                    | 119                                         |

    @Reconsideration @Release
    @LoggedBug-ACAUTOCAS-23056
    Examples:
      | LogicalID             | ProductType | ApplicationStage | TypeOfCollateral | RepaymentParametersWB     | RepaymentParameters_insuranceDetails | RepaymentParameters_insuranceDetails_rowNum |
      | PL_CAS_109708_Set8_03 | PL          | Reconsideration  | Secondary        | repayment_parameters.xlsx | insurance_details                    | 119                                         |

    @Reconsideration @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TypeOfCollateral | RepaymentParametersWB     | RepaymentParameters_insuranceDetails | RepaymentParameters_insuranceDetails_rowNum |
      | HL_CAS_109708_Set7_03  | HL          | Reconsideration  | Primary          | repayment_parameters.xlsx | insurance_details                    | 119                                         |
      | HL_CAS_109708_Set8_03  | HL          | Reconsideration  | Secondary        | repayment_parameters.xlsx | insurance_details                    | 119                                         |
      | MAL_CAS_109708_Set7_03 | MAL         | Reconsideration  | Primary          | repayment_parameters.xlsx | insurance_details                    | 119                                         |
      | MAL_CAS_109708_Set8_03 | MAL         | Reconsideration  | Secondary        | repayment_parameters.xlsx | insurance_details                    | 119                                         |

    @Recommendation @Release
    @LoggedBug-ACAUTOCAS-23056
    Examples:
      | LogicalID             | ProductType | ApplicationStage | TypeOfCollateral | RepaymentParametersWB     | RepaymentParameters_insuranceDetails | RepaymentParameters_insuranceDetails_rowNum |
      | PL_CAS_109708_Set8_04 | PL          | Recommendation   | Secondary        | repayment_parameters.xlsx | insurance_details                    | 119                                         |

    @Recommendation @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TypeOfCollateral | RepaymentParametersWB     | RepaymentParameters_insuranceDetails | RepaymentParameters_insuranceDetails_rowNum |
      | HL_CAS_109708_Set7_04  | HL          | Recommendation   | Primary          | repayment_parameters.xlsx | insurance_details                    | 119                                         |
      | HL_CAS_109708_Set8_04  | HL          | Recommendation   | Secondary        | repayment_parameters.xlsx | insurance_details                    | 119                                         |
      | MAL_CAS_109708_Set7_04 | MAL         | Recommendation   | Primary          | repayment_parameters.xlsx | insurance_details                    | 119                                         |
      | MAL_CAS_109708_Set8_04 | MAL         | Recommendation   | Secondary        | repayment_parameters.xlsx | insurance_details                    | 119                                         |

    @Disbursal @Release
    @LoggedBug-ACAUTOCAS-23056
    Examples:
      | LogicalID             | ProductType | ApplicationStage | TypeOfCollateral | RepaymentParametersWB     | RepaymentParameters_insuranceDetails | RepaymentParameters_insuranceDetails_rowNum |
      | PL_CAS_109708_Set8_05 | PL          | Disbursal        | Secondary        | repayment_parameters.xlsx | insurance_details                    | 119                                         |

    @Disbursal @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TypeOfCollateral | RepaymentParametersWB     | RepaymentParameters_insuranceDetails | RepaymentParameters_insuranceDetails_rowNum |
      | HL_CAS_109708_Set8_05  | HL          | Disbursal        | Secondary        | repayment_parameters.xlsx | insurance_details                    | 119                                         |
      | MAL_CAS_109708_Set8_05 | MAL         | Disbursal        | Secondary        | repayment_parameters.xlsx | insurance_details                    | 119                                         |

    #PQM-08_CAS-109708
  Scenario Outline: Validation of Repayment Schedule on adding Insurance Details of <TypeOfCollateral> Collateral at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user view repayment schedule
    Then check Repayment Schedule should update as per Premium Amount
    @DDE @Release
    @LoggedBug-ACAUTOCAS-23056
    Examples:
      | LogicalID             | ProductType | ApplicationStage | TypeOfCollateral |
      | PL_CAS_109708_Set8_01 | PL          | DDE              | Secondary        |

    @DDE @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TypeOfCollateral |
      | HL_CAS_109708_Set7_01  | HL          | DDE              | Primary          |
      | HL_CAS_109708_Set8_01  | HL          | DDE              | Secondary        |
      | MAL_CAS_109708_Set7_01 | MAL         | DDE              | Primary          |
      | MAL_CAS_109708_Set8_01 | MAL         | DDE              | Secondary        |

    @CreditApproval @Release
    @LoggedBug-ACAUTOCAS-23056
    Examples:
      | LogicalID             | ProductType | ApplicationStage | TypeOfCollateral |
      | PL_CAS_109708_Set8_02 | PL          | Credit Approval  | Secondary        |

    @CreditApproval @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TypeOfCollateral |
      | HL_CAS_109708_Set7_02  | HL          | Credit Approval  | Primary          |
      | HL_CAS_109708_Set8_02  | HL          | Credit Approval  | Secondary        |
      | MAL_CAS_109708_Set7_02 | MAL         | Credit Approval  | Primary          |
      | MAL_CAS_109708_Set8_02 | MAL         | Credit Approval  | Secondary        |

    @Reconsideration @Release
    @LoggedBug-ACAUTOCAS-23056
    Examples:
      | LogicalID             | ProductType | ApplicationStage | TypeOfCollateral |
      | PL_CAS_109708_Set8_03 | PL          | Reconsideration  | Secondary        |

    @Reconsideration @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TypeOfCollateral |
      | HL_CAS_109708_Set7_03  | HL          | Reconsideration  | Primary          |
      | HL_CAS_109708_Set8_03  | HL          | Reconsideration  | Secondary        |
      | MAL_CAS_109708_Set7_03 | MAL         | Reconsideration  | Primary          |
      | MAL_CAS_109708_Set8_03 | MAL         | Reconsideration  | Secondary        |

    @Recommendation @Release
    @LoggedBug-ACAUTOCAS-23056
    Examples:
      | LogicalID             | ProductType | ApplicationStage | TypeOfCollateral |
      | PL_CAS_109708_Set8_04 | PL          | Recommendation   | Secondary        |

    @Recommendation @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TypeOfCollateral |
      | HL_CAS_109708_Set7_04  | HL          | Recommendation   | Primary          |
      | HL_CAS_109708_Set8_04  | HL          | Recommendation   | Secondary        |
      | MAL_CAS_109708_Set7_04 | MAL         | Recommendation   | Primary          |
      | MAL_CAS_109708_Set8_04 | MAL         | Recommendation   | Secondary        |

    @Disbursal @Release
    @LoggedBug-CAS-243124
    Examples:
      | LogicalID             | ProductType | ApplicationStage | TypeOfCollateral |
      | PL_CAS_109708_Set8_05 | PL          | Disbursal        | Secondary        |

    @Disbursal @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TypeOfCollateral |
      | HL_CAS_109708_Set8_05  | HL          | Disbursal        | Secondary        |
      | MAL_CAS_109708_Set8_05 | ML          | Disbursal        | Secondary        |

    #PQM-08_CAS-109708
  Scenario Outline: Check of Primary Collateral Insurance Details on delinking of Primary Collateral at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user is on home page of "<ApplicationStage>"
    And user opens "<TabName>" section at "<ApplicationStage>" stage
    When user delinks the mapped Primary Collateral on "<TabName>"
    And user is on home page of "<ApplicationStage>"
    And user navigates to Repayment Parameter at "<ApplicationStage>"
    Then Insurance Details of collateral should not be present

    @DDE @Release
    Examples:
      | LogicalID              | ProductType | TabName          | ApplicationStage |
      | HL_CAS_109708_Set7_01  | HL          | Property Details | DDE              |
      | MAL_CAS_109708_Set7_01 | MAL         | Asset Details    | DDE              |

    @CreditApproval @Release
    Examples:
      | LogicalID              | ProductType | TabName          | ApplicationStage |
      | HL_CAS_109708_Set7_02  | HL          | Property Details | Credit Approval  |
      | MAL_CAS_109708_Set7_02 | MAL         | Asset Details    | Credit Approval  |

    @Reconsideration @Release
    Examples:
      | LogicalID              | ProductType | TabName          | ApplicationStage |
      | HL_CAS_109708_Set7_03  | HL          | Property Details | Reconsideration  |
      | MAL_CAS_109708_Set7_03 | MAL         | Asset Details    | Reconsideration  |

    @Recommendation @Release
    Examples:
      | LogicalID              | ProductType | TabName          | ApplicationStage |
      | HL_CAS_109708_Set7_04  | HL          | Property Details | Recommendation   |
      | MAL_CAS_109708_Set7_04 | MAL         | Asset Details    | Recommendation   |

    #PQM-08_CAS-109708
  Scenario Outline: Check of Secondary Collateral Insurance Details on delinking of Secondary Collateral at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user is on home page of "<ApplicationStage>"
    And user opens Collateral Page on "<ApplicationStage>" stage
    When user clicks on delete button of Secondary Collateral of "<CollateralSubType>"
    And user clicks on "Confirm" of confirmation message popup box
    And user is on home page of "<ApplicationStage>"
    And user navigates to Repayment Parameter at "<ApplicationStage>"
    Then Insurance Details of collateral should not be present
    @DDE @Release
    @LoggedBug-ACAUTOCAS-23056
    Examples:
      | LogicalID             | ProductType | ApplicationStage | CollateralSubType          |
      | PL_CAS_109708_Set8_01 | PL          | DDE              | Implements and Attachments |

    @DDE @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType          |
      | HL_CAS_109708_Set8_01  | HL          | DDE              | Implements and Attachments |
      | MAL_CAS_109708_Set8_01 | MAL         | DDE              | Implements and Attachments |

    @CreditApproval @Release
    @LoggedBug-ACAUTOCAS-23056
    Examples:
      | LogicalID             | ProductType | ApplicationStage | CollateralSubType          |
      | PL_CAS_109708_Set8_02 | PL          | Credit Approval  | Implements and Attachments |

    @CreditApproval @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType          |
      | HL_CAS_109708_Set8_02  | HL          | Credit Approval  | Implements and Attachments |
      | MAL_CAS_109708_Set8_02 | MAL         | Credit Approval  | Implements and Attachments |

    @Reconsideration @Release
    @LoggedBug-ACAUTOCAS-23056
    Examples:
      | LogicalID             | ProductType | ApplicationStage | CollateralSubType          |
      | PL_CAS_109708_Set8_03 | PL          | Reconsideration  | Implements and Attachments |

    @Reconsideration @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType          |
      | HL_CAS_109708_Set8_03  | HL          | Reconsideration  | Implements and Attachments |
      | MAL_CAS_109708_Set8_03 | MAL         | Reconsideration  | Implements and Attachments |

    @Recommendation @Release
    @LoggedBug-ACAUTOCAS-23056
    Examples:
      | LogicalID             | ProductType | ApplicationStage | CollateralSubType          |
      | PL_CAS_109708_Set8_04 | PL          | Recommendation   | Implements and Attachments |

    @Recommendation @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType          |
      | HL_CAS_109708_Set8_04  | HL          | Recommendation   | Implements and Attachments |
      | MAL_CAS_109708_Set8_04 | MAL         | Recommendation   | Implements and Attachments |

    @Disbursal @Release
    @LoggedBug-ACAUTOCAS-23056
    Examples:
      | LogicalID             | ProductType | ApplicationStage | CollateralSubType          |
      | PL_CAS_109708_Set8_05 | PL          | Disbursal        | Implements and Attachments |

    @Disbursal @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType          |
      | HL_CAS_109708_Set8_05  | HL          | Disbursal        | Implements and Attachments |
      | MAL_CAS_109708_Set8_05 | MAL         | Disbursal        | Implements and Attachments |

    #PQM-08_CAS-109708
  Scenario Outline: ACAUTOCAS-21220: Loan Amount should be updated on delinking of <TypeOfCollateral> Collateral Insurance at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    Then Loan amount should be updated correctly
    @DDE @Release
    @LoggedBug-ACAUTOCAS-23056
    Examples:
      | LogicalID             | ProductType | ApplicationStage | TypeOfCollateral |
      | PL_CAS_109708_Set8_01 | PL          | DDE              | Secondary        |

    @DDE @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TypeOfCollateral |
      | HL_CAS_109708_Set7_01  | HL          | DDE              | Primary          |
      | HL_CAS_109708_Set8_01  | HL          | DDE              | Secondary        |
      | MAL_CAS_109708_Set7_01 | MAL         | DDE              | Primary          |
      | MAL_CAS_109708_Set8_01 | MAL         | DDE              | Secondary        |

    @CreditApproval @Release
    @LoggedBug-ACAUTOCAS-23056
    Examples:
      | LogicalID             | ProductType | ApplicationStage | TypeOfCollateral |
      | PL_CAS_109708_Set8_02 | PL          | Credit Approval  | Secondary        |

    @CreditApproval @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TypeOfCollateral |
      | HL_CAS_109708_Set7_02  | HL          | Credit Approval  | Primary          |
      | HL_CAS_109708_Set8_02  | HL          | Credit Approval  | Secondary        |
      | MAL_CAS_109708_Set7_02 | MAL         | Credit Approval  | Primary          |
      | MAL_CAS_109708_Set8_02 | MAL         | Credit Approval  | Secondary        |

    @Reconsideration @Release
    @LoggedBug-ACAUTOCAS-23056
    Examples:
      | LogicalID             | ProductType | ApplicationStage | TypeOfCollateral |
      | PL_CAS_109708_Set8_03 | PL          | Reconsideration  | Secondary        |

    @Reconsideration @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TypeOfCollateral |
      | HL_CAS_109708_Set7_03  | HL          | Reconsideration  | Primary          |
      | HL_CAS_109708_Set8_03  | HL          | Reconsideration  | Secondary        |
      | MAL_CAS_109708_Set7_03 | MAL         | Reconsideration  | Primary          |
      | MAL_CAS_109708_Set8_03 | MAL         | Reconsideration  | Secondary        |

    @Recommendation @Release
    @LoggedBug-ACAUTOCAS-23056
    Examples:
      | LogicalID             | ProductType | ApplicationStage | TypeOfCollateral |
      | PL_CAS_109708_Set8_04 | PL          | Recommendation   | Secondary        |

    @Recommendation @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TypeOfCollateral |
      | HL_CAS_109708_Set7_04  | HL          | Recommendation   | Primary          |
      | HL_CAS_109708_Set8_04  | HL          | Recommendation   | Secondary        |
      | MAL_CAS_109708_Set7_04 | MAL         | Recommendation   | Primary          |
      | MAL_CAS_109708_Set8_04 | MAL         | Recommendation   | Secondary        |

    @Disbursal @Release
    @LoggedBug-ACAUTOCAS-23056
    Examples:
      | LogicalID             | ProductType | ApplicationStage | TypeOfCollateral |
      | PL_CAS_109708_Set8_05 | PL          | Disbursal        | Secondary        |

    @Disbursal @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TypeOfCollateral |
      | HL_CAS_109708_Set8_05  | HL          | Disbursal        | Secondary        |
      | MAL_CAS_109708_Set8_05 | MAL         | Disbursal        | Secondary        |

    #PQM-08_CAS-109708
  Scenario Outline: ACAUTOCAS-21221: Repayment Schedule regenerated on delinking of <TypeOfCollateral> Collateral at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user view repayment schedule
    Then Amount financed should be updated correctly
    @DDE @Release
    @LoggedBug-ACAUTOCAS-23056
    Examples:
      | LogicalID             | ProductType | ApplicationStage | TypeOfCollateral |
      | PL_CAS_109708_Set8_01 | PL          | DDE              | Secondary        |

    @DDE @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TypeOfCollateral |
      | HL_CAS_109708_Set7_01  | HL          | DDE              | Primary          |
      | HL_CAS_109708_Set8_01  | HL          | DDE              | Secondary        |
      | MAL_CAS_109708_Set7_01 | MAL         | DDE              | Primary          |
      | MAL_CAS_109708_Set8_01 | MAL         | DDE              | Secondary        |

    @CreditApproval @Release
    @LoggedBug-ACAUTOCAS-23056
    Examples:
      | LogicalID             | ProductType | ApplicationStage | TypeOfCollateral |
      | PL_CAS_109708_Set8_02 | PL          | Credit Approval  | Secondary        |

    @CreditApproval @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TypeOfCollateral |
      | HL_CAS_109708_Set7_02  | HL          | Credit Approval  | Primary          |
      | HL_CAS_109708_Set8_02  | HL          | Credit Approval  | Secondary        |
      | MAL_CAS_109708_Set7_02 | MAL         | Credit Approval  | Primary          |
      | MAL_CAS_109708_Set8_02 | MAL         | Credit Approval  | Secondary        |

    @Reconsideration @Release
    @LoggedBug-ACAUTOCAS-23056
    Examples:
      | LogicalID             | ProductType | ApplicationStage | TypeOfCollateral |
      | PL_CAS_109708_Set8_03 | PL          | Reconsideration  | Secondary        |

    @Reconsideration @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TypeOfCollateral |
      | HL_CAS_109708_Set7_03  | HL          | Reconsideration  | Primary          |
      | HL_CAS_109708_Set8_03  | HL          | Reconsideration  | Secondary        |
      | MAL_CAS_109708_Set7_03 | MAL         | Reconsideration  | Primary          |
      | MAL_CAS_109708_Set8_03 | MAL         | Reconsideration  | Secondary        |

    @Recommendation @Release
    @LoggedBug-ACAUTOCAS-23056
    Examples:
      | LogicalID             | ProductType | ApplicationStage | TypeOfCollateral |
      | PL_CAS_109708_Set8_04 | PL          | Recommendation   | Secondary        |

    @Recommendation @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TypeOfCollateral |
      | HL_CAS_109708_Set7_04  | HL          | Recommendation   | Primary          |
      | HL_CAS_109708_Set8_04  | HL          | Recommendation   | Secondary        |
      | MAL_CAS_109708_Set7_04 | MAL         | Recommendation   | Primary          |
      | MAL_CAS_109708_Set8_04 | MAL         | Recommendation   | Secondary        |

    @Disbursal @Release
    @LoggedBug-ACAUTOCAS-23056
    Examples:
      | LogicalID             | ProductType | ApplicationStage | TypeOfCollateral |
      | PL_CAS_109708_Set8_05 | PL          | Disbursal        | Secondary        |

    @Disbursal @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | TypeOfCollateral |
      | HL_CAS_109708_Set8_05  | HL          | Disbursal        | Secondary        |
      | MAL_CAS_109708_Set8_05 | ML          | Disbursal        | Secondary        |

    #PQM-09_CAS-109708
  Scenario Outline: ACAUTOCAS-21223: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Activity should be maintained for delinking of <TypeOfCollateral> Collateral at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When refreshes Activity tab in Activity accordion
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then activity should be maintained for delinking of "<TypeOfCollateral>" Collateral

    @DDE @Release
    Examples:
      | LogicalID              | TypeOfCollateral | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType | ApplicationStage | RevisitCount |
      | HL_CAS_109708_Set4_01  | Primary          | collateral.xlsx | default            | 843                       | HL          | DDE              |              |
      | MAL_CAS_109708_Set4_01 | Primary          | collateral.xlsx | default            | 843                       | MAL         | DDE              |              |
      | PL_CAS_109708_Set1_01  | Secondary        | collateral.xlsx | default            | 844                       | PL          | DDE              | 1            |
      | HL_CAS_109708_Set1_01  | Secondary        | collateral.xlsx | default            | 844                       | HL          | DDE              | 1            |
      | MAL_CAS_109708_Set1_01 | Secondary        | collateral.xlsx | default            | 844                       | MAL         | DDE              | 1            |

    @CreditApproval @Release
    Examples:
      | LogicalID              | TypeOfCollateral | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType | ApplicationStage | RevisitCount |
      | HL_CAS_109708_Set4_02  | Primary          | collateral.xlsx | default            | 843                       | HL          | Credit Approval  |              |
      | MAL_CAS_109708_Set4_02 | Primary          | collateral.xlsx | default            | 843                       | MAL         | Credit Approval  |              |
      | PL_CAS_109708_Set1_02  | Secondary        | collateral.xlsx | default            | 844                       | PL          | Credit Approval  | 1            |
      | HL_CAS_109708_Set1_02  | Secondary        | collateral.xlsx | default            | 844                       | HL          | Credit Approval  | 1            |
      | MAL_CAS_109708_Set1_02 | Secondary        | collateral.xlsx | default            | 844                       | MAL         | Credit Approval  | 1            |

    @Reconsideration @Release
    Examples:
      | LogicalID              | TypeOfCollateral | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType | ApplicationStage | RevisitCount |
      | HL_CAS_109708_Set4_03  | Primary          | collateral.xlsx | default            | 843                       | HL          | Reconsideration  |              |
      | MAL_CAS_109708_Set4_03 | Primary          | collateral.xlsx | default            | 843                       | MAL         | Reconsideration  |              |
      | PL_CAS_109708_Set1_03  | Secondary        | collateral.xlsx | default            | 844                       | PL          | Reconsideration  | 1            |
      | HL_CAS_109708_Set1_03  | Secondary        | collateral.xlsx | default            | 844                       | HL          | Reconsideration  | 1            |
      | MAL_CAS_109708_Set1_03 | Secondary        | collateral.xlsx | default            | 844                       | MAL         | Reconsideration  | 1            |

    @Recommendation @Release
    Examples:
      | LogicalID              | TypeOfCollateral | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType | ApplicationStage | RevisitCount |
      | HL_CAS_109708_Set4_04  | Primary          | collateral.xlsx | default            | 843                       | HL          | Recommendation   |              |
      | MAL_CAS_109708_Set4_04 | Primary          | collateral.xlsx | default            | 843                       | MAL         | Recommendation   |              |
      | PL_CAS_109708_Set1_04  | Secondary        | collateral.xlsx | default            | 844                       | PL          | Recommendation   | 1            |
      | HL_CAS_109708_Set1_04  | Secondary        | collateral.xlsx | default            | 844                       | HL          | Recommendation   | 1            |
      | MAL_CAS_109708_Set1_04 | Secondary        | collateral.xlsx | default            | 844                       | MAL         | Recommendation   | 1            |

    @Disbursal @Release
    Examples:
      | LogicalID              | TypeOfCollateral | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType | ApplicationStage | RevisitCount |
      | PL_CAS_109708_Set1_05  | Secondary        | collateral.xlsx | default            | 844                       | PL          | Disbursal        | 1            |
      | HL_CAS_109708_Set1_05  | Secondary        | collateral.xlsx | default            | 844                       | HL          | Disbursal        | 1            |
      | MAL_CAS_109708_Set1_05 | Secondary        | collateral.xlsx | default            | 844                       | MAL         | Disbursal        | 1            |

    #PQM-10_CAS-109708
  Scenario Outline: ACAUTOCAS-21224: Validation to be provided on Move to next Stage that Primary Collateral should be created at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When click on move to next stage
    And user reads data from the excel file "<Workbook>" under sheet "<Workbook_home>" and row <Workbook_home_rowNum>
    Then user gets a error notification message

    @DDE @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | Workbook              | Workbook_home | Workbook_home_rowNum |
      | MAL_CAS_109708_Set4_01 | MAL         | DDE              | asset_details.xlsx    | home          | 86                   |
      | HL_CAS_109708_Set4_01  | HL          | DDE              | property_details.xlsx | home          | 144                  |

    @CreditApproval @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | Workbook              | Workbook_home | Workbook_home_rowNum |
      | MAL_CAS_109708_Set4_02 | MAL         | Credit Approval  | asset_details.xlsx    | home          | 86                   |
      | HL_CAS_109708_Set4_02  | HL          | Credit Approval  | property_details.xlsx | home          | 144                  |

    @Reconsideration @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | Workbook              | Workbook_home | Workbook_home_rowNum |
      | MAL_CAS_109708_Set4_03 | MAL         | Reconsideration  | asset_details.xlsx    | home          | 86                   |
      | HL_CAS_109708_Set4_03  | HL          | Reconsideration  | property_details.xlsx | home          | 144                  |

    @Recommendation @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | Workbook              | Workbook_home | Workbook_home_rowNum |
      | MAL_CAS_109708_Set4_04 | MAL         | Recommendation   | asset_details.xlsx    | home          | 86                   |
      | HL_CAS_109708_Set4_04  | HL          | Recommendation   | property_details.xlsx | home          | 144                  |

    #PQM-15_CAS-109708
  Scenario Outline: Deletion of CII task on deletion of <CollateralSubType> Secondary Collateral in CAS at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application at "COLLATERAL INVESTIGATION INITIATION" stage from application grid
    Then "<CollateralSubType>" collateral should not be present for Initiate Verification with Valuation
    @DDE @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set14_01  | PL          | DDE              | Consumer Durable  |
      | HL_CAS_109708_Set14_01  | HL          | DDE              | Consumer Durable  |
      | MAL_CAS_109708_Set14_01 | MAL         | DDE              | Consumer Durable  |

    @CreditApproval @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set14_02  | PL          | Credit Approval  | Consumer Durable  |
      | HL_CAS_109708_Set14_02  | HL          | Credit Approval  | Consumer Durable  |
      | MAL_CAS_109708_Set14_02 | MAL         | Credit Approval  | Consumer Durable  |

    @Reconsideration @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set14_03  | PL          | Reconsideration  | Consumer Durable  |
      | HL_CAS_109708_Set14_03  | HL          | Reconsideration  | Consumer Durable  |
      | MAL_CAS_109708_Set14_03 | MAL         | Reconsideration  | Consumer Durable  |

    @Recommendation @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set14_04  | PL          | Recommendation   | Consumer Durable  |
      | HL_CAS_109708_Set14_04  | HL          | Recommendation   | Consumer Durable  |
      | MAL_CAS_109708_Set14_04 | MAL         | Recommendation   | Consumer Durable  |

    @Disbursal @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set14_05  | PL          | Disbursal        | Consumer Durable  |
      | HL_CAS_109708_Set14_05  | HL          | Disbursal        | Consumer Durable  |
      | MAL_CAS_109708_Set14_05 | MAL         | Disbursal        | Consumer Durable  |

    #PQM-15_CAS-109708
  Scenario Outline: Deletion of CII task on deletion of Secondary Collateral in CMS at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user logout from CAS
    And user logged in "CMS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to collateral investigation initiation screen in CMS
    And user enters Collateral Number in Search Collateral of "<CollateralSubType>"
    And clicks on search
    When user clicks on plus icon of collateral found in CII in CMS
    And user reads data from the excel file "<CIIWB>" under sheet "<CII_home>" and row <CII_home_rowNum>
    Then user should get an error notification message
    @DDE @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType | CIIWB                                    | CII_home | CII_home_rowNum |
      | PL_CAS_109708_Set14_01  | PL          | DDE              | Consumer Durable  | collateral_investigation_initiation.xlsx | home     | 1               |
      | HL_CAS_109708_Set14_01  | HL          | DDE              | Consumer Durable  | collateral_investigation_initiation.xlsx | home     | 1               |
      | MAL_CAS_109708_Set14_01 | MAL         | DDE              | Consumer Durable  | collateral_investigation_initiation.xlsx | home     | 1               |

    @CreditApproval @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType | CIIWB                                    | CII_home | CII_home_rowNum |
      | PL_CAS_109708_Set14_02  | PL          | Credit Approval  | Consumer Durable  | collateral_investigation_initiation.xlsx | home     | 1               |
      | HL_CAS_109708_Set14_02  | HL          | Credit Approval  | Consumer Durable  | collateral_investigation_initiation.xlsx | home     | 1               |
      | MAL_CAS_109708_Set14_02 | MAL         | Credit Approval  | Consumer Durable  | collateral_investigation_initiation.xlsx | home     | 1               |

    @Reconsideration @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType | CIIWB                                    | CII_home | CII_home_rowNum |
      | PL_CAS_109708_Set14_03  | PL          | Reconsideration  | Consumer Durable  | collateral_investigation_initiation.xlsx | home     | 1               |
      | HL_CAS_109708_Set14_03  | HL          | Reconsideration  | Consumer Durable  | collateral_investigation_initiation.xlsx | home     | 1               |
      | MAL_CAS_109708_Set14_03 | MAL         | Reconsideration  | Consumer Durable  | collateral_investigation_initiation.xlsx | home     | 1               |

    @Recommendation @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType | CIIWB                                    | CII_home | CII_home_rowNum |
      | PL_CAS_109708_Set14_04  | PL          | Recommendation   | Consumer Durable  | collateral_investigation_initiation.xlsx | home     | 1               |
      | HL_CAS_109708_Set14_04  | HL          | Recommendation   | Consumer Durable  | collateral_investigation_initiation.xlsx | home     | 1               |
      | MAL_CAS_109708_Set14_04 | MAL         | Recommendation   | Consumer Durable  | collateral_investigation_initiation.xlsx | home     | 1               |

    @Disbursal @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType | CIIWB                                    | CII_home | CII_home_rowNum |
      | PL_CAS_109708_Set14_05  | PL          | Disbursal        | Consumer Durable  | collateral_investigation_initiation.xlsx | home     | 1               |
      | HL_CAS_109708_Set14_05  | HL          | Disbursal        | Consumer Durable  | collateral_investigation_initiation.xlsx | home     | 1               |
      | MAL_CAS_109708_Set14_05 | MAL         | Disbursal        | Consumer Durable  | collateral_investigation_initiation.xlsx | home     | 1               |

    #PQM-15_CAS-109708
  Scenario Outline: Validation of deletion of Secondary Collateral on initiated CII task at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "COLLATERAL INVESTIGATION INITIATION" stage from application grid
    And user click on Initiate Verification with Valuation of "<CollateralSubType>"
    And user reads data from the excel file "<CIIWB>" under sheet "<CII_CollateralInvestigation>" and row <CII_CollateralInvestigation_rowNum>
    And user fill verification of Collateral
    And user fill valuation of Collateral
    And user closes Collateral Investigation popup box
    And user saves and proceed Collateral Investigation
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user opens Collateral Page on "<ApplicationStage>" stage
    When user clicks on delete button of Secondary Collateral of "<CollateralSubType>"
    And user clicks on Confirm button of confirmation message popup box
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then user should get an error notification message
    @DDE @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType  | CollateralWB    | Collateral_default | Collateral_default_rowNum | CIIWB                                    | CII_CollateralInvestigation | CII_CollateralInvestigation_rowNum |
      | PL_CAS_109708_Set9_01  | PL          | DDE              | Commercial Vehicle | collateral.xlsx | default            | 853                       | collateral_investigation_initiation.xlsx | collateral_investigation    | 0                                  |
      | HL_CAS_109708_Set9_01  | HL          | DDE              | Commercial Vehicle | collateral.xlsx | default            | 853                       | collateral_investigation_initiation.xlsx | collateral_investigation    | 0                                  |
      | MAL_CAS_109708_Set9_01 | MAL         | DDE              | Commercial Vehicle | collateral.xlsx | default            | 853                       | collateral_investigation_initiation.xlsx | collateral_investigation    | 0                                  |

    @CreditApproval @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType  | CollateralWB    | Collateral_default | Collateral_default_rowNum | CIIWB                                    | CII_CollateralInvestigation | CII_CollateralInvestigation_rowNum |
      | PL_CAS_109708_Set9_02  | PL          | Credit Approval  | Commercial Vehicle | collateral.xlsx | default            | 853                       | collateral_investigation_initiation.xlsx | collateral_investigation    | 0                                  |
      | HL_CAS_109708_Set9_02  | HL          | Credit Approval  | Commercial Vehicle | collateral.xlsx | default            | 853                       | collateral_investigation_initiation.xlsx | collateral_investigation    | 0                                  |
      | MAL_CAS_109708_Set9_02 | MAL         | Credit Approval  | Commercial Vehicle | collateral.xlsx | default            | 853                       | collateral_investigation_initiation.xlsx | collateral_investigation    | 0                                  |

    @Reconsideration @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType  | CollateralWB    | Collateral_default | Collateral_default_rowNum | CIIWB                                    | CII_CollateralInvestigation | CII_CollateralInvestigation_rowNum |
      | PL_CAS_109708_Set9_03  | PL          | Reconsideration  | Commercial Vehicle | collateral.xlsx | default            | 853                       | collateral_investigation_initiation.xlsx | collateral_investigation    | 0                                  |
      | HL_CAS_109708_Set9_03  | HL          | Reconsideration  | Commercial Vehicle | collateral.xlsx | default            | 853                       | collateral_investigation_initiation.xlsx | collateral_investigation    | 0                                  |
      | MAL_CAS_109708_Set9_03 | MAL         | Reconsideration  | Commercial Vehicle | collateral.xlsx | default            | 853                       | collateral_investigation_initiation.xlsx | collateral_investigation    | 0                                  |

    @Recommendation @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType  | CollateralWB    | Collateral_default | Collateral_default_rowNum | CIIWB                                    | CII_CollateralInvestigation | CII_CollateralInvestigation_rowNum |
      | PL_CAS_109708_Set9_04  | PL          | Recommendation   | Commercial Vehicle | collateral.xlsx | default            | 853                       | collateral_investigation_initiation.xlsx | collateral_investigation    | 0                                  |
      | HL_CAS_109708_Set9_04  | HL          | Recommendation   | Commercial Vehicle | collateral.xlsx | default            | 853                       | collateral_investigation_initiation.xlsx | collateral_investigation    | 0                                  |
      | MAL_CAS_109708_Set9_04 | MAL         | Recommendation   | Commercial Vehicle | collateral.xlsx | default            | 853                       | collateral_investigation_initiation.xlsx | collateral_investigation    | 0                                  |

    @Disbursal @Release
    Examples:
      | LogicalID              | ProductType | ApplicationStage | CollateralSubType  | CollateralWB    | Collateral_default | Collateral_default_rowNum | CIIWB                                    | CII_CollateralInvestigation | CII_CollateralInvestigation_rowNum |
      | PL_CAS_109708_Set9_05  | PL          | Disbursal        | Commercial Vehicle | collateral.xlsx | default            | 853                       | collateral_investigation_initiation.xlsx | collateral_investigation    | 0                                  |
      | HL_CAS_109708_Set9_05  | HL          | Disbursal        | Commercial Vehicle | collateral.xlsx | default            | 853                       | collateral_investigation_initiation.xlsx | collateral_investigation    | 0                                  |
      | MAL_CAS_109708_Set9_05 | MAL         | Disbursal        | Commercial Vehicle | collateral.xlsx | default            | 853                       | collateral_investigation_initiation.xlsx | collateral_investigation    | 0                                  |

    #PQM-16_CAS-109708
  Scenario Outline: ACAUTOCAS-21226: Document should be available in ECM after delinking of Secondary Collateral at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 554
    And user selects document tab
    And user selects the document
    And user selects document status as "Received & Uploaded"
    And user submit the document
    And user switch back to previous window from Document to Collateral Page at "<ApplicationStage>"
    And user open collateral page of "<ApplicationStage>" stage
    When user delinks the Secondary collateral of "<CollateralSubType>"
    And user logout from CAS
    And user logged in "ECM" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Case Search of ECM
    And user search for an application in Case Search from context in ECM
    And user opens first task assigned in Case Search to application in ECM
    Then uploaded document should be present in ECM

    @DDE @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set10_01  | PL          | DDE              | Tractor           |
      | HL_CAS_109708_Set10_01  | HL          | DDE              | Tractor           |
      | MAL_CAS_109708_Set10_01 | MAL         | DDE              | Tractor           |

    @CreditApproval @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set10_02  | PL          | Credit Approval  | Tractor           |
      | HL_CAS_109708_Set10_02  | HL          | Credit Approval  | Tractor           |
      | MAL_CAS_109708_Set10_02 | MAL         | Credit Approval  | Tractor           |

    @Reconsideration @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set10_03  | PL          | Reconsideration  | Tractor           |
      | HL_CAS_109708_Set10_03  | HL          | Reconsideration  | Tractor           |
      | MAL_CAS_109708_Set10_03 | MAL         | Reconsideration  | Tractor           |

    @Recommendation @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set10_04  | PL          | Recommendation   | Tractor           |
      | HL_CAS_109708_Set10_04  | HL          | Recommendation   | Tractor           |
      | MAL_CAS_109708_Set10_04 | MAL         | Recommendation   | Tractor           |

    @Disbursal @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralSubType |
      | PL_CAS_109708_Set10_05  | PL          | Disbursal        | Tractor           |
      | HL_CAS_109708_Set10_05  | HL          | Disbursal        | Tractor           |
      | MAL_CAS_109708_Set10_05 | MAL         | Disbursal        | Tractor           |

    # PQM-17_CAS-109708
  Scenario Outline: ACAUTOCAS-21227: Updation of Collateral Value on Collateral Update of Consumer Durable Collateral at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user edits linked collateral of "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user enters Asset Cost value
    And user saves the Collateral Details
    And user edits linked collateral of "<CollateralSubType>"
    And user clicks on Collateral Update
    And user opened lien details tab
    Then Collateral value should be updated correctly

    @DDE @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralWB    | Collateral_default | Collateral_default_rowNum | CollateralSubType |
      | PL_CAS_109708_Set11_01  | PL          | DDE              | collateral.xlsx | default            | 842                       | Consumer Durable  |
      | HL_CAS_109708_Set11_01  | HL          | DDE              | collateral.xlsx | default            | 842                       | Consumer Durable  |
      | MAL_CAS_109708_Set11_01 | MAL         | DDE              | collateral.xlsx | default            | 842                       | Consumer Durable  |

    @CreditApproval @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralWB    | Collateral_default | Collateral_default_rowNum | CollateralSubType |
      | PL_CAS_109708_Set11_02  | PL          | Credit Approval  | collateral.xlsx | default            | 842                       | Consumer Durable  |
      | HL_CAS_109708_Set11_02  | HL          | Credit Approval  | collateral.xlsx | default            | 842                       | Consumer Durable  |
      | MAL_CAS_109708_Set11_02 | MAL         | Credit Approval  | collateral.xlsx | default            | 842                       | Consumer Durable  |

    @Reconsideration @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralWB    | Collateral_default | Collateral_default_rowNum | CollateralSubType |
      | PL_CAS_109708_Set11_03  | PL          | Reconsideration  | collateral.xlsx | default            | 842                       | Consumer Durable  |
      | HL_CAS_109708_Set11_03  | HL          | Reconsideration  | collateral.xlsx | default            | 842                       | Consumer Durable  |
      | MAL_CAS_109708_Set11_03 | MAL         | Reconsideration  | collateral.xlsx | default            | 842                       | Consumer Durable  |
    @Recommendation @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralWB    | Collateral_default | Collateral_default_rowNum | CollateralSubType |
      | PL_CAS_109708_Set11_04  | PL          | Recommendation   | collateral.xlsx | default            | 842                       | Consumer Durable  |
      | HL_CAS_109708_Set11_04  | HL          | Recommendation   | collateral.xlsx | default            | 842                       | Consumer Durable  |
      | MAL_CAS_109708_Set11_04 | MAL         | Recommendation   | collateral.xlsx | default            | 842                       | Consumer Durable  |
    @Disbursal @Release
    Examples:
      | LogicalID               | ProductType | ApplicationStage | CollateralWB    | Collateral_default | Collateral_default_rowNum | CollateralSubType |
      | PL_CAS_109708_Set11_05  | PL          | Disbursal        | collateral.xlsx | default            | 842                       | Consumer Durable  |
      | HL_CAS_109708_Set11_05  | HL          | Disbursal        | collateral.xlsx | default            | 842                       | Consumer Durable  |
      | MAL_CAS_109708_Set11_05 | MAL         | Disbursal        | collateral.xlsx | default            | 842                       | Consumer Durable  |

#    PQM-12_CAS-109708
  @NotImplemented
  Scenario Outline: Validation to be provided on Move to next Stage on Gold Loan withour adding Primary Collateral is at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" from application grid
    Then Tab to add Primary Collateral should not present
    Examples:
      | LogicalID        | ApplicationStage | ProductType |
      | GL_CAS_109708_01 | DDE              | GL          |
      | GL_CAS_109708_02 | Credit Approval  | GL          |
      | GL_CAS_109708_03 | Reconsideration  | GL          |
      | GL_CAS_109708_04 | Recommendation   | GL          |
      | GL_CAS_109708_05 | Disbursal        | GL          |

    #PQM-19_CAS-109708
  @NotImplemented
  Scenario Outline: Validation of VAP removal on <TypeOfCollateral> Collateral delinking at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens VAP Details
    And user reads data from the excel file "<VapWB>" under sheet "<Vap_vapDetails>" and row <Vap_vapDetails_rowNum>
    And user fills VAP details
    And user saves VAP details
    When "<TypeOfCollateral>" is delinked
    Then VAP Details should be removed
    @DDE
    Examples:
      | LogicalID              | ProductType | ApplicationStage | VapWB    | Vap_vapDetails | Vap_vapDetails_rowNum | TypeOfCollateral |
      | PL_CAS_109708_VAP1_01  | PL          | DDE              | vap.xlsx | vap_details    | 0                     | Secondary        |
      | HL_CAS_109708_VAP1_01  | HL          | DDE              | vap.xlsx | vap_details    | 0                     | Secondary        |
      | MAL_CAS_109708_VAP1_01 | MAL         | DDE              | vap.xlsx | vap_details    | 0                     | Secondary        |
      | HL_CAS_109708_VAP2_01  | HL          | DDE              | vap.xlsx | vap_details    | 0                     | Primary          |
      | MAL_CAS_109708_VAP2_01 | MAL         | DDE              | vap.xlsx | vap_details    | 0                     | Primary          |

    @CreditApproval
    Examples:
      | LogicalID              | ProductType | ApplicationStage | VapWB    | Vap_vapDetails | Vap_vapDetails_rowNum | TypeOfCollateral |
      | PL_CAS_109708_VAP1_02  | PL          | Credit Approval  | vap.xlsx | vap_details    | 0                     | Secondary        |
      | HL_CAS_109708_VAP1_02  | HL          | Credit Approval  | vap.xlsx | vap_details    | 0                     | Secondary        |
      | MAL_CAS_109708_VAP1_02 | MAL         | Credit Approval  | vap.xlsx | vap_details    | 0                     | Secondary        |
      | HL_CAS_109708_VAP2_02  | HL          | Credit Approval  | vap.xlsx | vap_details    | 0                     | Primary          |
      | MAL_CAS_109708_VAP2_02 | MAL         | Credit Approval  | vap.xlsx | vap_details    | 0                     | Primary          |

    @Reconsideration
    Examples:
      | LogicalID              | ProductType | ApplicationStage | VapWB    | Vap_vapDetails | Vap_vapDetails_rowNum | TypeOfCollateral |
      | PL_CAS_109708_VAP1_03  | PL          | Reconsideration  | vap.xlsx | vap_details    | 0                     | Secondary        |
      | HL_CAS_109708_VAP1_03  | HL          | Reconsideration  | vap.xlsx | vap_details    | 0                     | Secondary        |
      | MAL_CAS_109708_VAP1_03 | MAL         | Reconsideration  | vap.xlsx | vap_details    | 0                     | Secondary        |
      | HL_CAS_109708_VAP2_03  | HL          | Reconsideration  | vap.xlsx | vap_details    | 0                     | Primary          |
      | MAL_CAS_109708_VAP2_03 | MAL         | Reconsideration  | vap.xlsx | vap_details    | 0                     | Primary          |

    @Recommendation
    Examples:
      | LogicalID              | ProductType | ApplicationStage | VapWB    | Vap_vapDetails | Vap_vapDetails_rowNum | TypeOfCollateral |
      | PL_CAS_109708_VAP1_04  | PL          | Recommendation   | vap.xlsx | vap_details    | 0                     | Secondary        |
      | HL_CAS_109708_VAP1_04  | HL          | Recommendation   | vap.xlsx | vap_details    | 0                     | Secondary        |
      | MAL_CAS_109708_VAP1_04 | MAL         | Recommendation   | vap.xlsx | vap_details    | 0                     | Secondary        |
      | HL_CAS_109708_VAP2_04  | HL          | Recommendation   | vap.xlsx | vap_details    | 0                     | Primary          |
      | MAL_CAS_109708_VAP2_04 | MAL         | Recommendation   | vap.xlsx | vap_details    | 0                     | Primary          |

    @Disbursal
    Examples:
      | LogicalID              | ProductType | ApplicationStage | VapWB    | Vap_vapDetails | Vap_vapDetails_rowNum | TypeOfCollateral |
      | PL_CAS_109708_VAP1_05  | PL          | Disbursal        | vap.xlsx | vap_details    | 0                     | Secondary        |
      | HL_CAS_109708_VAP1_05  | HL          | Disbursal        | vap.xlsx | vap_details    | 0                     | Secondary        |
      | MAL_CAS_109708_VAP1_05 | MAL         | Disbursal        | vap.xlsx | vap_details    | 0                     | Secondary        |

   #PQM-14_CAS-109708
  @NotImplemented
  Scenario Outline: Validation of delink button not available for Primary collateral for Body Funded applications at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" from application grid
    Then delink button should not be available for Primary Collateral
    @DDE
    Examples:
      | LogicalID                   | ProductType | ApplicationStage |
      | CV_CAS_109708_BodyFunded_01 | CV          | DDE              |
    @CreditApproval
    Examples:
      | LogicalID                   | ProductType | ApplicationStage |
      | CV_CAS_109708_BodyFunded_02 | CV          | Credit Approval  |
    @Reconsideration
    Examples:
      | LogicalID                   | ProductType | ApplicationStage |
      | CV_CAS_109708_BodyFunded_03 | CV          | Reconsideration  |
    @Recommendation
    Examples:
      | LogicalID                   | ProductType | ApplicationStage |
      | CV_CAS_109708_BodyFunded_04 | CV          | Recommendation   |
@Epic-E2E
@AuthoredBy-anshika.gupta
@ImplementedBy-anshika.gupta
@Conventional
@Order
@E2EOrder
@Release
@OpenApplication

Feature: End to end work flow for All LOB Order Wise


  Scenario Outline: ACAUTOCAS-20918:[LogicalID-<LogicalID>][SendBack-<SendBack>] Open application at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application of "<ApplicationStage>" stage present in context from application grid
    Then application should open successfully at "<ApplicationStage>"

    @DDE
    Examples:
      | LogicalID | ApplicationStage | ProductType           |
      | PL00001   | DDE              | Personal Loan         |
      | HL00001   | DDE              | Home Loan             |
      | LAP00001  | DDE              | Loan Against Property |

    @Recommendation
    Examples:
      | LogicalID | ApplicationStage | ProductType             |
      | CC00002   | Recommendation   | Credit Card Application |
      | CC00003   | Recommendation   | Credit Card Application |

    @PostApproval
    Examples:
      | LogicalID     | ApplicationStage | ProductType           | SendBack |
      | JLG00001      | Post Approval    | Joint Liability Group |          |
      | SHG00001      | Post Approval    | Self Help Group       |          |
      | PL00001       | Post Approval    | Personal Loan         |          |
      | PL00002       | Post Approval    | Personal Loan         |          |
      | SB_AL00003    | Post Approval    | Auto Loan             |          |
      | MULF_BD_00001 | Post Approval    | Multi Facility        |          |

    @FacilityInitiation
    Examples:
      | LogicalID     | ProductType    | ApplicationStage    |
      | MULF_BD_00001 | Multi Facility | FACILITY_INITIATION |

    @Disbursal
    Examples:
      | LogicalID     | ApplicationStage | ProductType           |
      | JLG00001      | Disbursal        | Joint Liability Group |
      | SHG00001      | Disbursal        | Self Help Group       |
      | MULF_BD_00001 | Disbursal        | Multi Facility        |

    @DCCScheduling
    Examples:
      | LogicalID | ApplicationStage | ProductType           |
      | SHG00001  | DCC_SCHEDULING   | Self Help Group       |
      | JLG00001  | DCC_SCHEDULING   | Joint Liability Group |

    @CreditApproval
    Examples:
      | LogicalID  | ApplicationStage | ProductType | SendBack |
      | AL00002    | Credit Approval  | Auto Loan   |          |
      | SB_AL00004 | Credit Approval  | Auto Loan   | yes      |

  @Perishable
  Scenario Outline: Open stp created application at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user starts creating application of logical id "<LogicalID>"
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And set Application ID in the thread context
    Then application should open successfully at "<ApplicationStage>"

    @KYC
    Examples:
      | LogicalID | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL00003   | PL          | indiv         | KYC              |          |     |

    @CCDE
    Examples:
      | LogicalID     | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | CAS_256008_CC | CC          | indiv         | CCDE             |          |     |

    @Recommendation
    Examples:
      | LogicalID                            | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | Separate_Decisions_ALL_CHECKED       | Omni_Loan   | indiv         | Recommendation   |          |     |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Omni_Loan   | indiv         | Recommendation   |          |     |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Omni_Loan   | indiv         | Recommendation   |          |     |
      | Separate_Decisions_HL_PL_CHECKED     | Omni_Loan   | indiv         | Recommendation   |          |     |
      | Separate_Decisions_HL_MAL_CHECKED    | Omni_Loan   | indiv         | Recommendation   |          |     |
      | Separate_Decisions_HL_MAL_CHECKED    | Omni_Loan   | indiv         | Recommendation   |          |     |
      | Separate_Decisions_HL_CC_CHECKED     | Omni_Loan   | indiv         | Recommendation   |          |     |
      | Separate_Decisions_HL_CHECKED        | Omni_Loan   | indiv         | Recommendation   |          |     |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Omni_Loan   | indiv         | Recommendation   |          |     |
      | Separate_Decisions_PL_MAL_CHECKED    | Omni_Loan   | indiv         | Recommendation   |          |     |
      | Separate_Decisions_PL_CC_CHECKED     | Omni_Loan   | indiv         | Recommendation   |          |     |
      | Separate_Decisions_PL_CHECKED        | Omni_Loan   | indiv         | Recommendation   |          |     |
      | Separate_Decisions_MAL_CC_CHECKED    | Omni_Loan   | indiv         | Recommendation   |          |     |
      | Separate_Decisions_MAL_CHECKED       | Omni_Loan   | indiv         | Recommendation   |          |     |
      | Separate_Decisions_CC_CHECKED        | Omni_Loan   | indiv         | Recommendation   |          |     |
      | Separate_Decisions_NONE_CHECKED      | Omni_Loan   | indiv         | Recommendation   |          |     |


    @CreditApproval
    Examples:
      | LogicalID            | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | AL00005              | MAL         | indiv         | Credit Approval  |          |     |
      | CAS_247073_CRED_MA_1 | HL          | indiv         | CreditApproval   |          |     |
      | CAS_247073_CRED_DM_1 | HL          | indiv         | CreditApproval   |          |     |
      | CAS_247073_CRED_GM_1 | HL          | indiv         | CreditApproval   |          |     |
      | CAS_247073_CRED_MA_2 | PL          | indiv         | CreditApproval   |          |     |
      | CAS_247073_CRED_DM_2 | PL          | indiv         | CreditApproval   |          |     |
      | CAS_247073_CRED_GM_2 | PL          | indiv         | CreditApproval   |          |     |
      | CAS_247073_CRED_MA_3 | MAL         | indiv         | CreditApproval   |          |     |
      | CAS_247073_CRED_DM_3 | MAL         | indiv         | CreditApproval   |          |     |
      | CAS_247073_CRED_GM_3 | MAL         | indiv         | CreditApproval   |          |     |

    @Disbursal
    Examples:
      | LogicalID | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | HL00003   | HL          | indiv         | Disbursal        |          |     |

    @AppUpdateApproval
    Examples:
      | LogicalID           | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | CAS_247073_AUA_MA_1 | HL          | indiv         | Sent To Ops      |          |     |
      | CAS_247073_AUA_DM_1 | HL          | indiv         | Sent To Ops      |          |     |
      | CAS_247073_AUA_GM_1 | HL          | indiv         | Sent To Ops      |          |     |
      | CAS_247073_AUA_MA_2 | PL          | indiv         | Sent To Ops      |          |     |
      | CAS_247073_AUA_DM_2 | PL          | indiv         | Sent To Ops      |          |     |
      | CAS_247073_AUA_GM_2 | PL          | indiv         | Sent To Ops      |          |     |
      | CAS_247073_AUA_MA_3 | MAL         | indiv         | Sent To Ops      |          |     |
      | CAS_247073_AUA_DM_3 | MAL         | indiv         | Sent To Ops      |          |     |
      | CAS_247073_AUA_GM_3 | MAL         | indiv         | Sent To Ops      |          |     |

    @OtherConfig
    Examples:
      | LogicalID            | ProductType | ApplicationStage | Category | Key |
      | CAS_247073_CRED_GM_4 | LAP         | CreditApproval   |          |     |
      | CAS_247073_CRED_MA_4 | LAP         | CreditApproval   |          |     |
      | CAS_247073_CRED_DM_4 | LAP         | CreditApproval   |          |     |
      | CAS_247073_AUA_GM_4  | LAP         | Sent To Ops      |          |     |
      | CAS_247073_AUA_MA_4  | LAP         | Sent To Ops      |          |     |
      | CAS_247073_AUA_DM_4  | LAP         | Sent To Ops      |          |     |




@Epic-Charges
@PQMStory
@Order
@Release
@Perishable
@AuthoredBy-yash.sharma
@ImplementedBy-yash.sharma


#Story-CAS-60813,CAS-63366,CAS-75790
Feature: Validation of Contractual Charges


  @STP
    #PQM-01_CAS-60813#PQM-01_CAS-45598#PQM-02_CAS-45598#PQM-01_CAS-45599#PQM-02_CAS-45599
  Scenario Outline: ACAUTOCAS-20788: Pick STP application of <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user starts creating application of logical id "<LogicalID>"
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    Then set Application ID in the thread context
    @PickApplication @DDE
    Examples:
      | LogicalID                            | ProductType | ApplicantType | ApplicationStage | Category        | Key |
      | PL_CAS_60813_ContractualIndiv01      | PL          | indiv         | DDE              | Charges         |     |
      | MAL_CAS_60813_ContractualIndiv01     | MAL         | indiv         | DDE              | Charges         |     |
      | HL_CAS_60813_ContractualIndiv01      | HL          | indiv         | DDE              | Charges         |     |
      | PL_CAS_118696_PeriodicIndiv01        | PL          | indiv         | DDE              | periodiccharges |     |
      | MAL_CAS_118696_PeriodicIndiv01       | MAL         | indiv         | DDE              | periodiccharges |     |
      | HL_CAS_118696_PeriodicIndiv01        | HL          | indiv         | DDE              | periodiccharges |     |
      | PL_CAS_118696_PeriodicIndiv02        | PL          | indiv         | DDE              | periodiccharges |     |
      | MAL_CAS_118696_PeriodicIndiv02       | MAL         | indiv         | DDE              | periodiccharges |     |
      | HL_CAS_118696_PeriodicIndiv02        | HL          | indiv         | DDE              | periodiccharges |     |
      | PL_CAS_118696_PeriodicIndiv03        | PL          | indiv         | DDE              | periodiccharges |     |
      | MAL_CAS_118696_PeriodicIndiv03       | MAL         | indiv         | DDE              | periodiccharges |     |
      | HL_CAS_118696_PeriodicIndiv03        | HL          | indiv         | DDE              | periodiccharges |     |
      | PL_CAS_60813_ContractualIndiv03      | PL          | indiv         | DDE              | Charges         |     |
      | MAL_CAS_60813_ContractualIndiv03     | MAL         | indiv         | DDE              | Charges         |     |
      | HL_CAS_60813_ContractualIndiv03      | HL          | indiv         | DDE              | Charges         |     |
      | HL_CAS_71126_ChargePrioritization01  | HL          | indiv         | DDE              | Charges         |     |
      | PL_CAS_71126_ChargePrioritization01  | PL          | indiv         | DDE              | Charges         |     |
      | MAL_CAS_71126_ChargePrioritization01 | MAL         | indiv         | DDE              | Charges         |     |
      | HL_CAS_71126_ChargePrioritization02  | HL          | indiv         | DDE              | Charges         |     |
      | PL_CAS_71126_ChargePrioritization02  | PL          | indiv         | DDE              | Charges         |     |
      | MAL_CAS_71126_ChargePrioritization02 | MAL         | indiv         | DDE              | Charges         |     |
      | PL_CAS_45598_ExReceiptService_01     | PL          | indiv         | DDE              | allcharges      |     |
      | HL_CAS_45598_ExReceiptService_01     | HL          | indiv         | DDE              | allcharges      |     |
      | MAL_CAS_45598_ExReceiptService_01    | MAL         | indiv         | DDE              | allcharges      |     |


    @PickApplication @PostApproval
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv02  | PL          | indiv         | Post Approval    | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv02 | MAL         | indiv         | Post Approval    | Charges  |     |
      | HL_CAS_60813_ContractualIndiv02  | HL          | indiv         | Post Approval    | Charges  |     |
      | PL_CAS_60813_ContractualIndiv04  | PL          | indiv         | Post Approval    | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv04 | MAL         | indiv         | Post Approval    | Charges  |     |
      | HL_CAS_60813_ContractualIndiv04  | HL          | indiv         | Post Approval    | Charges  |     |

    @PickApplication @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category        | Key |
      | PL_CAS_60813_ContractualIndiv05   | PL          | indiv         | Disbursal        | Charges         |     |
      | MAL_CAS_60813_ContractualIndiv05  | MAL         | indiv         | Disbursal        | Charges         |     |
      | HL_CAS_60813_ContractualIndiv05   | HL          | indiv         | Disbursal        | Charges         |     |
      | MAL_CAS_75260_ChargesIndiv01      | MAL         | indiv         | Disbursal        | Charges         |     |
      | HL_CAS_75260_ChargesIndiv01       | HL          | indiv         | Disbursal        | Charges         |     |
      | PL_CAS_75260_ChargesIndiv01       | PL          | indiv         | Disbursal        | Charges         |     |
      | MAL_CAS_75260_ChargesIndiv02      | MAL         | indiv         | Disbursal        | Charges         |     |
      | MAL_CAS_75260_ChargesIndiv03      | MAL         | indiv         | Disbursal        | Charges         |     |
      | MAL_CAS_75260_ChargesIndiv04      | MAL         | indiv         | Disbursal        | Charges         |     |
      | MAL_CAS_75260_ChargesIndiv05      | MAL         | indiv         | Disbursal        | Charges         |     |
      | PL_CAS_118696_PeriodicIndiv03     | PL          | indiv         | Disbursal        | periodiccharges |     |
      | MAL_CAS_118696_PeriodicIndiv03    | MAL         | indiv         | Disbursal        | periodiccharges |     |
      | HL_CAS_118696_PeriodicIndiv03     | HL          | indiv         | Disbursal        | periodiccharges |     |
      | PL_CAS_118696_PeriodicIndiv04     | PL          | indiv         | Disbursal        | periodiccharges |     |
      | MAL_CAS_118696_PeriodicIndiv04    | MAL         | indiv         | Disbursal        | periodiccharges |     |
      | HL_CAS_118696_PeriodicIndiv04     | HL          | indiv         | Disbursal        | periodiccharges |     |
      | PL_CAS_45598_ExReceiptService_02  | PL          | indiv         | Disbursal        | allcharges      |     |
      | HL_CAS_45598_ExReceiptService_02  | HL          | indiv         | Disbursal        | allcharges      |     |
      | MAL_CAS_45598_ExReceiptService_02 | MAL         | indiv         | Disbursal        | allcharges      |     |


    #PQM-06_CAS-63366#PQM15_CAS-63366#PQM20_CAS-63366#PQM-03_CAS-45598
  Scenario Outline: ACAUTOCAS-20789:[LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Navigate to Charges Screen at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<disbursalWB>" under sheet "<disbursal_sheetName>" and row <disbursal_sheetName_rowNum>
    And user navigate to Charges section of "<ApplicationStage>" for "<ProductType>"
    Then user should be able to navigate at charges screen
    @ContractualCharge @DDE
    Examples:
      | LogicalID                            | ProductType | ApplicantType | ApplicationStage | Category   | Key | disbursalWB    | disbursal_sheetName | disbursal_sheetName_rowNum |
      | PL_CAS_60813_ContractualIndiv01      | PL          | indiv         | DDE              | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_60813_ContractualIndiv01     | MAL         | indiv         | DDE              | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_60813_ContractualIndiv01      | HL          | indiv         | DDE              | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | EDU_CAS_60813_ContractualIndiv01     | EDU         | indiv         | DDE              | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | CV_CAS_60813_ContractualIndiv01      | CV          | indiv         | DDE              | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
#      | SHG_CAS_60813_ContractualIndiv01 | SHG         | indiv         | DDE              | Charges  |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | AL_CAS_60813_ContractualIndiv01      | AL          | indiv         | DDE              | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | PL_CAS_118696_PeriodicIndiv01        | PL          | indiv         | DDE              |            |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_118696_PeriodicIndiv01       | MAL         | indiv         | DDE              |            |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_118696_PeriodicIndiv01        | HL          | indiv         | DDE              |            |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | PL_CAS_118696_PeriodicIndiv02        | PL          | indiv         | DDE              |            |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_118696_PeriodicIndiv02       | MAL         | indiv         | DDE              |            |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_118696_PeriodicIndiv02        | HL          | indiv         | DDE              |            |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | PL_CAS_118696_PeriodicIndiv03        | PL          | indiv         | DDE              |            |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_118696_PeriodicIndiv03       | MAL         | indiv         | DDE              |            |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_118696_PeriodicIndiv03        | HL          | indiv         | DDE              |            |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | PL_CAS_60813_ContractualIndiv03      | PL          | indiv         | DDE              | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_60813_ContractualIndiv03     | MAL         | indiv         | DDE              | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_60813_ContractualIndiv03      | HL          | indiv         | DDE              | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | EDU_CAS_60813_ContractualIndiv03     | EDU         | indiv         | DDE              | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | CV_CAS_60813_ContractualIndiv03      | CV          | indiv         | DDE              | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
#      | SHG_CAS_60813_ContractualIndiv03 | SHG         | indiv         | DDE              | Charges  |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | AL_CAS_60813_ContractualIndiv03      | AL          | indiv         | DDE              | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_71126_ChargePrioritization01  | HL          | indiv         | DDE              |            |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | PL_CAS_71126_ChargePrioritization01  | PL          | indiv         | DDE              |            |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_71126_ChargePrioritization01 | MAL         | indiv         | DDE              |            |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_71126_ChargePrioritization02  | HL          | indiv         | DDE              |            |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | PL_CAS_71126_ChargePrioritization02  | PL          | indiv         | DDE              |            |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_71126_ChargePrioritization02 | MAL         | indiv         | DDE              |            |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | PL_CAS_45598_ExReceiptService_01     | PL          | indiv         | DDE              | allcharges |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_45598_ExReceiptService_01     | HL          | indiv         | DDE              | allcharges |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_45598_ExReceiptService_01    | MAL         | indiv         | DDE              | allcharges |     | disbursal.xlsx | disbursal_entry     | 52                         |

    @ContractualCharge @CreditApproval
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key | disbursalWB    | disbursal_sheetName | disbursal_sheetName_rowNum |
      | PL_CAS_60813_ContractualIndiv01  | PL          | indiv         | Credit Approval  | Charges  |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_60813_ContractualIndiv01 | MAL         | indiv         | Credit Approval  | Charges  |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_60813_ContractualIndiv01  | HL          | indiv         | Credit Approval  | Charges  |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | EDU_CAS_60813_ContractualIndiv01 | EDU         | indiv         | Credit Approval  | Charges  |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | CV_CAS_60813_ContractualIndiv01  | CV          | indiv         | Credit Approval  | Charges  |     | disbursal.xlsx | disbursal_entry     | 52                         |
#      | SHG_CAS_60813_ContractualIndiv01 | SHG         | indiv         | Credit Approval  | Charges  |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | AL_CAS_60813_ContractualIndiv01  | AL          | indiv         | Credit Approval  | Charges  |     | disbursal.xlsx | disbursal_entry     | 52                         |


    @ContractualCharge @PostApproval
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category   | Key | disbursalWB    | disbursal_sheetName | disbursal_sheetName_rowNum |
      | PL_CAS_60813_ContractualIndiv01   | PL          | indiv         | Post Approval    | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_60813_ContractualIndiv01  | MAL         | indiv         | Post Approval    | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_60813_ContractualIndiv01   | HL          | indiv         | Post Approval    | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | EDU_CAS_60813_ContractualIndiv01  | EDU         | indiv         | Post Approval    | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | CV_CAS_60813_ContractualIndiv01   | CV          | indiv         | Post Approval    | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
#      | SHG_CAS_60813_ContractualIndiv01 | SHG         | indiv         | Post Approval    | Charges  |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | AL_CAS_60813_ContractualIndiv01   | AL          | indiv         | Post Approval    | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | PL_CAS_60813_ContractualIndiv02   | PL          | indiv         | Post Approval    | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_60813_ContractualIndiv02  | MAL         | indiv         | Post Approval    | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_60813_ContractualIndiv02   | HL          | indiv         | Post Approval    | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | EDU_CAS_60813_ContractualIndiv02  | EDU         | indiv         | Post Approval    | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | CV_CAS_60813_ContractualIndiv02   | CV          | indiv         | Post Approval    | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
#      | SHG_CAS_60813_ContractualIndiv02 | SHG         | indiv         | Post Approval    | Charges  |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | AL_CAS_60813_ContractualIndiv02   | AL          | indiv         | Post Approval    | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | PL_CAS_60813_ContractualIndiv04   | PL          | indiv         | Post Approval    | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_60813_ContractualIndiv04  | MAL         | indiv         | Post Approval    | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_60813_ContractualIndiv04   | HL          | indiv         | Post Approval    | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | EDU_CAS_60813_ContractualIndiv04  | EDU         | indiv         | Post Approval    | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | CV_CAS_60813_ContractualIndiv04   | CV          | indiv         | Post Approval    | a Charges  |     | disbursal.xlsx | disbursal_entry     | 52                         |
#      | SHG_CAS_60813_ContractualIndiv04 | SHG         | indiv         | Post Approval    | Charges  |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | AL_CAS_60813_ContractualIndiv04   | AL          | indiv         | Post Approval    | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Post Approval    | allcharges |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Post Approval    | allcharges |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Post Approval    | allcharges |     | disbursal.xlsx | disbursal_entry     | 52                         |

    @ContractualCharge @TrancheInitiation
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key | disbursalWB    | disbursal_sheetName | disbursal_sheetName_rowNum | RevisitCount |
      | EDU_CAS_60813_ContractualIndiv01 | EDU         | indiv         | Disbursal        | Charges  |     | disbursal.xlsx | disbursal_entry     | 52                         | 1            |
      | EDU_CAS_60813_ContractualIndiv02 | EDU         | indiv         | Disbursal        | Charges  |     | disbursal.xlsx | disbursal_entry     | 52                         | 1            |
      | EDU_CAS_60813_ContractualIndiv03 | EDU         | indiv         | Disbursal        | Charges  |     | disbursal.xlsx | disbursal_entry     | 52                         | 1            |
      | EDU_CAS_60813_ContractualIndiv04 | EDU         | indiv         | Disbursal        | Charges  |     | disbursal.xlsx | disbursal_entry     | 52                         | 1            |
      | EDU_CAS_60813_ContractualIndiv05 | EDU         | indiv         | Disbursal        | Charges  |     | disbursal.xlsx | disbursal_entry     | 52                         | 1            |

    @ContractualCharge @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category   | Key | disbursalWB    | disbursal_sheetName | disbursal_sheetName_rowNum |
      | PL_CAS_60813_ContractualIndiv01   | PL          | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_60813_ContractualIndiv01  | MAL         | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_60813_ContractualIndiv01   | HL          | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | CV_CAS_60813_ContractualIndiv01   | CV          | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
#      | SHG_CAS_60813_ContractualIndiv01 | SHG         | indiv         | Disbursal        | Charges  |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | AL_CAS_60813_ContractualIndiv01   | AL-MUL      | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | PL_CAS_60813_ContractualIndiv02   | PL          | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_60813_ContractualIndiv02  | MAL         | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_60813_ContractualIndiv02   | HL          | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | CV_CAS_60813_ContractualIndiv02   | CV          | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
#      | SHG_CAS_60813_ContractualIndiv02 | SHG         | indiv         | Disbursal        | Charges  |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | AL_CAS_60813_ContractualIndiv02   | AL-MUL      | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | PL_CAS_60813_ContractualIndiv03   | PL          | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_60813_ContractualIndiv03  | MAL         | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_60813_ContractualIndiv03   | HL          | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | CV_CAS_60813_ContractualIndiv03   | CV          | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | AL_CAS_60813_ContractualIndiv03   | AL-MUL      | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | PL_CAS_60813_ContractualIndiv04   | PL          | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_60813_ContractualIndiv04  | MAL         | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_60813_ContractualIndiv04   | HL          | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | CV_CAS_60813_ContractualIndiv04   | CV          | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
#      | SHG_CAS_60813_ContractualIndiv04 | SHG         | indiv         | Disbursal        | Charges  |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | AL_CAS_60813_ContractualIndiv04   | AL-MUL      | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | PL_CAS_60813_ContractualIndiv05   | PL          | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_60813_ContractualIndiv05  | MAL         | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_60813_ContractualIndiv05   | HL          | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | CV_CAS_60813_ContractualIndiv05   | CV          | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
#      | SHG_CAS_60813_ContractualIndiv05 | SHG         | indiv         | Disbursal        | Charges  |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | AL_CAS_60813_ContractualIndiv05   | AL-MUL      | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_75260_ChargesIndiv01      | MAL         | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_75260_ChargesIndiv01       | HL          | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | PL_CAS_75260_ChargesIndiv01       | PL          | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_75260_ChargesIndiv02      | MAL         | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_75260_ChargesIndiv03      | MAL         | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_75260_ChargesIndiv04      | MAL         | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 53                         |
      | MAL_CAS_75260_ChargesIndiv05      | MAL         | indiv         | Disbursal        | Charges    |     | disbursal.xlsx | disbursal_entry     | 53                         |
      | PL_CAS_118696_PeriodicIndiv03     | PL          | indiv         | Disbursal        |            |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_118696_PeriodicIndiv03    | MAL         | indiv         | Disbursal        |            |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_118696_PeriodicIndiv03     | HL          | indiv         | Disbursal        |            |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | PL_CAS_118696_PeriodicIndiv04     | PL          | indiv         | Disbursal        |            |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_118696_PeriodicIndiv04    | MAL         | indiv         | Disbursal        |            |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_118696_PeriodicIndiv04     | HL          | indiv         | Disbursal        |            |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        | allcharges |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        | allcharges |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        | allcharges |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | PL_CAS_45598_ExReceiptService_02  | PL          | indiv         | Disbursal        | allcharges |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_45598_ExReceiptService_02  | HL          | indiv         | Disbursal        | allcharges |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_45598_ExReceiptService_02 | MAL         | indiv         | Disbursal        | allcharges |     | disbursal.xlsx | disbursal_entry     | 52                         |

    #PQM-02_CAS-60813,04_CAS-75790,10_CAS-75790,14_CAS-75790,07_CAS-63366,16_CAS-63366,21_CAS-63366,21_CAS-63366

  Scenario Outline: ACAUTOCAS-20790:[LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Add contractual charges at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user add contractual charges at "<ApplicationStage>"
    And user reads data from the excel file "charges.xlsx" under sheet "contractual_charges" and row 0
    Then user should be able to add contractual charges
    @ContractualCharge @DDE @LoggedBug-CAS-244996
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | PL          | indiv         | DDE              | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv01 | MAL         | indiv         | DDE              | Charges  |     |
      | HL_CAS_60813_ContractualIndiv01  | HL          | indiv         | DDE              | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv01 | EDU         | indiv         | DDE              | Charges  |     |
      | CV_CAS_60813_ContractualIndiv01  | CV          | indiv         | DDE              | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv01 | SHG         | indiv         | DDE              | Charges  |     |
      | AL_CAS_60813_ContractualIndiv01  | AL          | indiv         | DDE              | Charges  |     |
      | PL_CAS_60813_ContractualIndiv03  | PL          | indiv         | DDE              | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv03 | MAL         | indiv         | DDE              | Charges  |     |
      | HL_CAS_60813_ContractualIndiv03  | HL          | indiv         | DDE              | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv03 | EDU         | indiv         | DDE              | Charges  |     |
      | CV_CAS_60813_ContractualIndiv03  | CV          | indiv         | DDE              | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv03 | SHG         | indiv         | DDE              | Charges  |     |
      | AL_CAS_60813_ContractualIndiv03  | AL          | indiv         | DDE              | Charges  |     |


    @ContractualCharge @PostApproval @LoggedBug-CAS-244996
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv02  | PL          | indiv         | Post Approval    | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv02 | MAL         | indiv         | Post Approval    | Charges  |     |
      | HL_CAS_60813_ContractualIndiv02  | HL          | indiv         | Post Approval    | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv02 | EDU         | indiv         | Post Approval    | Charges  |     |
      | CV_CAS_60813_ContractualIndiv02  | CV          | indiv         | Post Approval    | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv02 | SHG         | indiv         | Post Approval    | Charges  |     |
      | AL_CAS_60813_ContractualIndiv02  | AL          | indiv         | Post Approval    | Charges  |     |
      | PL_CAS_60813_ContractualIndiv04  | PL          | indiv         | Post Approval    | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv04 | MAL         | indiv         | Post Approval    | Charges  |     |
      | HL_CAS_60813_ContractualIndiv04  | HL          | indiv         | Post Approval    | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv04 | EDU         | indiv         | Post Approval    | Charges  |     |
      | CV_CAS_60813_ContractualIndiv04  | CV          | indiv         | Post Approval    | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv04 | SHG         | indiv         | Post Approval    | Charges  |     |
      | AL_CAS_60813_ContractualIndiv04  | AL          | indiv         | Post Approval    | Charges  |     |

    @ContractualCharge @TrancheInitiation
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key | RevisitCount |
      | EDU_CAS_60813_ContractualIndiv05 | EDU         | indiv         | Disbursal        | Charges  |     | 1            |

    @ContractualCharge @Disbursal @LoggedBug-CAS-244996
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv05  | PL          | indiv         | Disbursal        | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv05 | MAL         | indiv         | Disbursal        | Charges  |     |
      | HL_CAS_60813_ContractualIndiv05  | HL          | indiv         | Disbursal        | Charges  |     |
      | CV_CAS_60813_ContractualIndiv05  | CV          | indiv         | Disbursal        | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv05 | SHG         | indiv         | Disbursal        | Charges  |     |
      | AL_CAS_60813_ContractualIndiv05  | AL          | indiv         | Disbursal        | Charges  |     |

    #PQM-03_CAS-60813,06_CAS-60813,08_CAS-60813,05_CAS-75790,06_CAS-75790,11_CAS-75790,15_CAS-75790,08_CAS-63366

  Scenario Outline: ACAUTOCAS-20791:[LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Verify Contractual Charges in Grid at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "charges.xlsx" under sheet "contractual_charges" and row 0
    Then Contractual Charges should be visible in Grid
    @ContractualCharge @DDE
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | PL          | indiv         | DDE              | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv01 | MAL         | indiv         | DDE              | Charges  |     |
      | HL_CAS_60813_ContractualIndiv01  | HL          | indiv         | DDE              | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv01 | EDU         | indiv         | DDE              | Charges  |     |
      | CV_CAS_60813_ContractualIndiv01  | CV          | indiv         | DDE              | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv01 | SHG         | indiv         | DDE              | Charges  |     |
      | AL_CAS_60813_ContractualIndiv01  | AL          | indiv         | DDE              | Charges  |     |
      | PL_CAS_60813_ContractualIndiv03  | PL          | indiv         | DDE              | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv03 | MAL         | indiv         | DDE              | Charges  |     |
      | HL_CAS_60813_ContractualIndiv03  | HL          | indiv         | DDE              | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv03 | EDU         | indiv         | DDE              | Charges  |     |
      | CV_CAS_60813_ContractualIndiv03  | CV          | indiv         | DDE              | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv03 | SHG         | indiv         | DDE              | Charges  |     |
      | AL_CAS_60813_ContractualIndiv03  | AL          | indiv         | DDE              | Charges  |     |

    @ContractualCharge @CreditApproval
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | PL          | indiv         | Credit Approval  | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv01 | MAL         | indiv         | Credit Approval  | Charges  |     |
      | HL_CAS_60813_ContractualIndiv01  | HL          | indiv         | Credit Approval  | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv01 | EDU         | indiv         | Credit Approval  | Charges  |     |
      | CV_CAS_60813_ContractualIndiv01  | CV          | indiv         | Credit Approval  | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv01 | SHG         | indiv         | Credit Approval  | Charges  |     |
      | AL_CAS_60813_ContractualIndiv01  | AL          | indiv         | Credit Approval  | Charges  |     |


    @ContractualCharge @PostApproval
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | PL          | indiv         | Post Approval    | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv01 | MAL         | indiv         | Post Approval    | Charges  |     |
      | HL_CAS_60813_ContractualIndiv01  | HL          | indiv         | Post Approval    | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv01 | EDU         | indiv         | Post Approval    | Charges  |     |
      | CV_CAS_60813_ContractualIndiv01  | CV          | indiv         | Post Approval    | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv01 | SHG         | indiv         | Post Approval    | Charges  |     |
      | AL_CAS_60813_ContractualIndiv01  | AL          | indiv         | Post Approval    | Charges  |     |
      | PL_CAS_60813_ContractualIndiv02  | PL          | indiv         | Post Approval    | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv02 | MAL         | indiv         | Post Approval    | Charges  |     |
      | HL_CAS_60813_ContractualIndiv02  | HL          | indiv         | Post Approval    | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv02 | EDU         | indiv         | Post Approval    | Charges  |     |
      | CV_CAS_60813_ContractualIndiv02  | CV          | indiv         | Post Approval    | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv02 | SHG         | indiv         | Post Approval    | Charges  |     |
      | AL_CAS_60813_ContractualIndiv02  | AL          | indiv         | Post Approval    | Charges  |     |
      | PL_CAS_60813_ContractualIndiv04  | PL          | indiv         | Post Approval    | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv04 | MAL         | indiv         | Post Approval    | Charges  |     |
      | HL_CAS_60813_ContractualIndiv04  | HL          | indiv         | Post Approval    | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv04 | EDU         | indiv         | Post Approval    | Charges  |     |
      | CV_CAS_60813_ContractualIndiv04  | CV          | indiv         | Post Approval    | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv04 | SHG         | indiv         | Post Approval    | Charges  |     |
      | AL_CAS_60813_ContractualIndiv04  | AL          | indiv         | Post Approval    | Charges  |     |

    @ContractualCharge @TrancheInitiation
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key | RevisitCount |
      | EDU_CAS_60813_ContractualIndiv01 | EDU         | indiv         | Disbursal        | Charges  |     | 1            |
      | EDU_CAS_60813_ContractualIndiv02 | EDU         | indiv         | Disbursal        | Charges  |     | 1            |
      | EDU_CAS_60813_ContractualIndiv03 | EDU         | indiv         | Disbursal        | Charges  |     | 1            |
      | EDU_CAS_60813_ContractualIndiv05 | EDU         | indiv         | Disbursal        | Charges  |     | 1            |

    @ContractualCharge @Disbursal
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | PL          | indiv         | Disbursal        | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv01 | MAL         | indiv         | Disbursal        | Charges  |     |
      | HL_CAS_60813_ContractualIndiv01  | HL          | indiv         | Disbursal        | Charges  |     |
      | CV_CAS_60813_ContractualIndiv01  | CV          | indiv         | Disbursal        | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv01 | SHG         | indiv         | Disbursal        | Charges  |     |
      | AL_CAS_60813_ContractualIndiv01  | AL          | indiv         | Disbursal        | Charges  |     |
      | PL_CAS_60813_ContractualIndiv02  | PL          | indiv         | Disbursal        | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv02 | MAL         | indiv         | Disbursal        | Charges  |     |
      | HL_CAS_60813_ContractualIndiv02  | HL          | indiv         | Disbursal        | Charges  |     |
      | CV_CAS_60813_ContractualIndiv02  | CV          | indiv         | Disbursal        | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv02 | SHG         | indiv         | Disbursal        | Charges  |     |
      | AL_CAS_60813_ContractualIndiv02  | AL          | indiv         | Disbursal        | Charges  |     |
      | PL_CAS_60813_ContractualIndiv03  | PL          | indiv         | Disbursal        | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv03 | MAL         | indiv         | Disbursal        | Charges  |     |
      | HL_CAS_60813_ContractualIndiv03  | HL          | indiv         | Disbursal        | Charges  |     |
      | CV_CAS_60813_ContractualIndiv03  | CV          | indiv         | Disbursal        | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv03 | SHG         | indiv         | Disbursal        | Charges  |     |
      | AL_CAS_60813_ContractualIndiv03  | AL          | indiv         | Disbursal        | Charges  |     |
      | PL_CAS_60813_ContractualIndiv05  | PL          | indiv         | Disbursal        | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv05 | MAL         | indiv         | Disbursal        | Charges  |     |
      | HL_CAS_60813_ContractualIndiv05  | HL          | indiv         | Disbursal        | Charges  |     |
      | CV_CAS_60813_ContractualIndiv05  | CV          | indiv         | Disbursal        | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv05 | SHG         | indiv         | Disbursal        | Charges  |     |
      | AL_CAS_60813_ContractualIndiv05  | AL          | indiv         | Disbursal        | Charges  |     |


    #PQM-05_CAS-60813,09_CAS-75790,16_CAS-75790,26_CAS-75790,11_CAS-63366
  Scenario Outline: ACAUTOCAS-21160: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>]Validate the charges are Editable at <ApplicationStage> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    Then Contractual Charges Should be in Editable Mode
    @ContractualCharge @DDE
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | PL          | indiv         | DDE              | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv01 | MAL         | indiv         | DDE              | Charges  |     |
      | HL_CAS_60813_ContractualIndiv01  | HL          | indiv         | DDE              | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv01 | EDU         | indiv         | DDE              | Charges  |     |
      | CV_CAS_60813_ContractualIndiv01  | CV          | indiv         | DDE              | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv01 | SHG         | indiv         | DDE              | Charges  |     |
      | AL_CAS_60813_ContractualIndiv01  | AL          | indiv         | DDE              | Charges  |     |
      | PL_CAS_60813_ContractualIndiv03  | PL          | indiv         | DDE              | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv03 | MAL         | indiv         | DDE              | Charges  |     |
      | HL_CAS_60813_ContractualIndiv03  | HL          | indiv         | DDE              | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv03 | EDU         | indiv         | DDE              | Charges  |     |
      | CV_CAS_60813_ContractualIndiv03  | CV          | indiv         | DDE              | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv03 | SHG         | indiv         | DDE              | Charges  |     |
      | AL_CAS_60813_ContractualIndiv03  | AL          | indiv         | DDE              | Charges  |     |

    @ContractualCharge @CreditApproval
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | PL          | indiv         | Credit Approval  | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv01 | MAL         | indiv         | Credit Approval  | Charges  |     |
      | HL_CAS_60813_ContractualIndiv01  | HL          | indiv         | Credit Approval  | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv01 | EDU         | indiv         | Credit Approval  | Charges  |     |
      | CV_CAS_60813_ContractualIndiv01  | CV          | indiv         | Credit Approval  | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv01 | SHG         | indiv         | Credit Approval  | Charges  |     |
      | AL_CAS_60813_ContractualIndiv01  | AL          | indiv         | Credit Approval  | Charges  |     |


    @ContractualCharge @PostApproval
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | PL          | indiv         | Post Approval    | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv01 | MAL         | indiv         | Post Approval    | Charges  |     |
      | HL_CAS_60813_ContractualIndiv01  | HL          | indiv         | Post Approval    | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv01 | EDU         | indiv         | Post Approval    | Charges  |     |
      | CV_CAS_60813_ContractualIndiv01  | CV          | indiv         | Post Approval    | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv01 | SHG         | indiv         | Post Approval    | Charges  |     |
      | AL_CAS_60813_ContractualIndiv01  | AL          | indiv         | Post Approval    | Charges  |     |
      | PL_CAS_60813_ContractualIndiv04  | PL          | indiv         | Post Approval    | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv04 | MAL         | indiv         | Post Approval    | Charges  |     |
      | HL_CAS_60813_ContractualIndiv04  | HL          | indiv         | Post Approval    | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv04 | EDU         | indiv         | Post Approval    | Charges  |     |
      | CV_CAS_60813_ContractualIndiv04  | CV          | indiv         | Post Approval    | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv04 | SHG         | indiv         | Post Approval    | Charges  |     |
      | AL_CAS_60813_ContractualIndiv04  | AL          | indiv         | Post Approval    | Charges  |     |

    @ContractualCharge @TrancheInitiation
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key | RevisitCount |
      | EDU_CAS_60813_ContractualIndiv01 | EDU         | indiv         | Disbursal        | Charges  |     | 1            |
      | EDU_CAS_60813_ContractualIndiv02 | EDU         | indiv         | Disbursal        | Charges  |     | 1            |
      | EDU_CAS_60813_ContractualIndiv03 | EDU         | indiv         | Disbursal        | Charges  |     | 1            |
      | EDU_CAS_60813_ContractualIndiv04 | EDU         | indiv         | Disbursal        | Charges  |     | 1            |
      | EDU_CAS_60813_ContractualIndiv05 | EDU         | indiv         | Disbursal        | Charges  |     | 1            |

    @ContractualCharge @Disbursal
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | PL          | indiv         | Disbursal        | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv01 | MAL         | indiv         | Disbursal        | Charges  |     |
      | HL_CAS_60813_ContractualIndiv01  | HL          | indiv         | Disbursal        | Charges  |     |
      | CV_CAS_60813_ContractualIndiv01  | CV          | indiv         | Disbursal        | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv01 | SHG         | indiv         | Disbursal        | Charges  |     |
      | AL_CAS_60813_ContractualIndiv01  | AL          | indiv         | Disbursal        | Charges  |     |
      | PL_CAS_60813_ContractualIndiv02  | PL          | indiv         | Disbursal        | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv02 | MAL         | indiv         | Disbursal        | Charges  |     |
      | HL_CAS_60813_ContractualIndiv02  | HL          | indiv         | Disbursal        | Charges  |     |
      | CV_CAS_60813_ContractualIndiv02  | CV          | indiv         | Disbursal        | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv02 | SHG         | indiv         | Disbursal        | Charges  |     |
      | AL_CAS_60813_ContractualIndiv02  | AL          | indiv         | Disbursal        | Charges  |     |
      | PL_CAS_60813_ContractualIndiv03  | PL          | indiv         | Disbursal        | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv03 | MAL         | indiv         | Disbursal        | Charges  |     |
      | HL_CAS_60813_ContractualIndiv03  | HL          | indiv         | Disbursal        | Charges  |     |
      | CV_CAS_60813_ContractualIndiv03  | CV          | indiv         | Disbursal        | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv03 | SHG         | indiv         | Disbursal        | Charges  |     |
      | AL_CAS_60813_ContractualIndiv03  | AL          | indiv         | Disbursal        | Charges  |     |
      | PL_CAS_60813_ContractualIndiv04  | PL          | indiv         | Disbursal        | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv04 | MAL         | indiv         | Disbursal        | Charges  |     |
      | HL_CAS_60813_ContractualIndiv04  | HL          | indiv         | Disbursal        | Charges  |     |
      | CV_CAS_60813_ContractualIndiv04  | CV          | indiv         | Disbursal        | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv04 | SHG         | indiv         | Disbursal        | Charges  |     |
      | AL_CAS_60813_ContractualIndiv04  | AL          | indiv         | Disbursal        | Charges  |     |
      | PL_CAS_60813_ContractualIndiv05  | PL          | indiv         | Disbursal        | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv05 | MAL         | indiv         | Disbursal        | Charges  |     |
      | HL_CAS_60813_ContractualIndiv05  | HL          | indiv         | Disbursal        | Charges  |     |
      | CV_CAS_60813_ContractualIndiv05  | CV          | indiv         | Disbursal        | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv05 | SHG         | indiv         | Disbursal        | Charges  |     |
      | AL_CAS_60813_ContractualIndiv05  | AL          | indiv         | Disbursal        | Charges  |     |


    #PQM-10_CAS-63366
  Scenario Outline: ACAUTOCAS-21378:[LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Validate the Audit Trail not Visible at <ApplicationStage> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens the activity tab
    Then Audit Trail Should Not be Visible
    @ContractualCharge @DDE
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | PL          | indiv         | DDE              | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv01 | MAL         | indiv         | DDE              | Charges  |     |
      | HL_CAS_60813_ContractualIndiv01  | HL          | indiv         | DDE              | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv01 | EDU         | indiv         | DDE              | Charges  |     |
      | CV_CAS_60813_ContractualIndiv01  | CV          | indiv         | DDE              | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv01 | SHG         | indiv         | DDE              | Charges  |     |
      | AL_CAS_60813_ContractualIndiv01  | AL          | indiv         | DDE              | Charges  |     |
      | PL_CAS_60813_ContractualIndiv03  | PL          | indiv         | DDE              | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv03 | MAL         | indiv         | DDE              | Charges  |     |
      | HL_CAS_60813_ContractualIndiv03  | HL          | indiv         | DDE              | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv03 | EDU         | indiv         | DDE              | Charges  |     |
      | CV_CAS_60813_ContractualIndiv03  | CV          | indiv         | DDE              | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv03 | SHG         | indiv         | DDE              | Charges  |     |
      | AL_CAS_60813_ContractualIndiv03  | AL          | indiv         | DDE              | Charges  |     |

    @ContractualCharge @CreditApproval
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | PL          | indiv         | Credit Approval  | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv01 | MAL         | indiv         | Credit Approval  | Charges  |     |
      | HL_CAS_60813_ContractualIndiv01  | HL          | indiv         | Credit Approval  | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv01 | EDU         | indiv         | Credit Approval  | Charges  |     |
      | CV_CAS_60813_ContractualIndiv01  | CV          | indiv         | Credit Approval  | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv01 | SHG         | indiv         | Credit Approval  | Charges  |     |
      | AL_CAS_60813_ContractualIndiv01  | AL          | indiv         | Credit Approval  | Charges  |     |


    @ContractualCharge @PostApproval
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | PL          | indiv         | Post Approval    | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv01 | MAL         | indiv         | Post Approval    | Charges  |     |
      | HL_CAS_60813_ContractualIndiv01  | HL          | indiv         | Post Approval    | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv01 | EDU         | indiv         | Post Approval    | Charges  |     |
      | CV_CAS_60813_ContractualIndiv01  | CV          | indiv         | Post Approval    | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv01 | SHG         | indiv         | Post Approval    | Charges  |     |
      | AL_CAS_60813_ContractualIndiv01  | AL          | indiv         | Post Approval    | Charges  |     |
      | PL_CAS_60813_ContractualIndiv04  | PL          | indiv         | Post Approval    | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv04 | MAL         | indiv         | Post Approval    | Charges  |     |
      | HL_CAS_60813_ContractualIndiv04  | HL          | indiv         | Post Approval    | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv04 | EDU         | indiv         | Post Approval    | Charges  |     |
      | CV_CAS_60813_ContractualIndiv04  | CV          | indiv         | Post Approval    | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv04 | SHG         | indiv         | Post Approval    | Charges  |     |
      | AL_CAS_60813_ContractualIndiv04  | AL          | indiv         | Post Approval    | Charges  |     |

    @ContractualCharge @TrancheInitiation
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key | RevisitCount |
      | EDU_CAS_60813_ContractualIndiv01 | EDU         | indiv         | Disbursal        | Charges  |     | 1            |
      | EDU_CAS_60813_ContractualIndiv02 | EDU         | indiv         | Disbursal        | Charges  |     | 1            |
      | EDU_CAS_60813_ContractualIndiv03 | EDU         | indiv         | Disbursal        | Charges  |     | 1            |
      | EDU_CAS_60813_ContractualIndiv04 | EDU         | indiv         | Disbursal        | Charges  |     | 1            |
      | EDU_CAS_60813_ContractualIndiv05 | EDU         | indiv         | Disbursal        | Charges  |     | 1            |

    @ContractualCharge @Disbursal
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | PL          | indiv         | Disbursal        | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv01 | MAL         | indiv         | Disbursal        | Charges  |     |
      | HL_CAS_60813_ContractualIndiv01  | HL          | indiv         | Disbursal        | Charges  |     |
      | CV_CAS_60813_ContractualIndiv01  | CV          | indiv         | Disbursal        | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv01 | SHG         | indiv         | Disbursal        | Charges  |     |
      | AL_CAS_60813_ContractualIndiv01  | AL          | indiv         | Disbursal        | Charges  |     |
      | PL_CAS_60813_ContractualIndiv02  | PL          | indiv         | Disbursal        | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv02 | MAL         | indiv         | Disbursal        | Charges  |     |
      | HL_CAS_60813_ContractualIndiv02  | HL          | indiv         | Disbursal        | Charges  |     |
      | CV_CAS_60813_ContractualIndiv02  | CV          | indiv         | Disbursal        | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv02 | SHG         | indiv         | Disbursal        | Charges  |     |
      | AL_CAS_60813_ContractualIndiv02  | AL          | indiv         | Disbursal        | Charges  |     |
      | PL_CAS_60813_ContractualIndiv03  | PL          | indiv         | Disbursal        | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv03 | MAL         | indiv         | Disbursal        | Charges  |     |
      | HL_CAS_60813_ContractualIndiv03  | HL          | indiv         | Disbursal        | Charges  |     |
      | CV_CAS_60813_ContractualIndiv03  | CV          | indiv         | Disbursal        | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv03 | SHG         | indiv         | Disbursal        | Charges  |     |
      | AL_CAS_60813_ContractualIndiv03  | AL          | indiv         | Disbursal        | Charges  |     |
      | PL_CAS_60813_ContractualIndiv04  | PL          | indiv         | Disbursal        | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv04 | MAL         | indiv         | Disbursal        | Charges  |     |
      | HL_CAS_60813_ContractualIndiv04  | HL          | indiv         | Disbursal        | Charges  |     |
      | CV_CAS_60813_ContractualIndiv04  | CV          | indiv         | Disbursal        | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv04 | SHG         | indiv         | Disbursal        | Charges  |     |
      | AL_CAS_60813_ContractualIndiv04  | AL          | indiv         | Disbursal        | Charges  |     |
      | PL_CAS_60813_ContractualIndiv05  | PL          | indiv         | Disbursal        | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv05 | MAL         | indiv         | Disbursal        | Charges  |     |
      | HL_CAS_60813_ContractualIndiv05  | HL          | indiv         | Disbursal        | Charges  |     |
      | CV_CAS_60813_ContractualIndiv05  | CV          | indiv         | Disbursal        | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv05 | SHG         | indiv         | Disbursal        | Charges  |     |
      | AL_CAS_60813_ContractualIndiv05  | AL          | indiv         | Disbursal        | Charges  |     |


    #PQM-04_CAS-60813
  Scenario Outline: ACAUTOCAS-21161:[LogicalID-<LogicalID>][RevisitCount-<RevisitCount>]  Validate Contractual Charges in Enquiry Grid at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from enquiry screen
    And user navigate to Charges section of "<ApplicationStage>" in Enquiry Mode
    Then Charges section should be non editable
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 52
    And user navigate to Charges section of "<ApplicationStage>"
    @ContractualCharge @DDE
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | PL          | indiv         | DDE              | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv01 | MAL         | indiv         | DDE              | Charges  |     |
      | HL_CAS_60813_ContractualIndiv01  | HL          | indiv         | DDE              | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv01 | EDU         | indiv         | DDE              | Charges  |     |
      | CV_CAS_60813_ContractualIndiv01  | CV          | indiv         | DDE              | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv01 | SHG         | indiv         | DDE              | Charges  |     |
      | AL_CAS_60813_ContractualIndiv01  | AL          | indiv         | DDE              | Charges  |     |
      | PL_CAS_60813_ContractualIndiv03  | PL          | indiv         | DDE              | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv03 | MAL         | indiv         | DDE              | Charges  |     |
      | HL_CAS_60813_ContractualIndiv03  | HL          | indiv         | DDE              | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv03 | EDU         | indiv         | DDE              | Charges  |     |
      | CV_CAS_60813_ContractualIndiv03  | CV          | indiv         | DDE              | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv03 | SHG         | indiv         | DDE              | Charges  |     |
      | AL_CAS_60813_ContractualIndiv03  | AL          | indiv         | DDE              | Charges  |     |


    @ContractualCharge @PostApproval
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv02  | PL          | indiv         | Post Approval    | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv02 | MAL         | indiv         | Post Approval    | Charges  |     |
      | HL_CAS_60813_ContractualIndiv02  | HL          | indiv         | Post Approval    | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv02 | EDU         | indiv         | Post Approval    | Charges  |     |
      | CV_CAS_60813_ContractualIndiv02  | CV          | indiv         | Post Approval    | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv02 | SHG         | indiv         | Post Approval    | Charges  |     |
      | AL_CAS_60813_ContractualIndiv02  | AL          | indiv         | Post Approval    | Charges  |     |
      | AL_CAS_60813_ContractualIndiv04  | AL          | indiv         | Post Approval    | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv04 | EDU         | indiv         | Post Approval    | Charges  |     |

    @ContractualCharge @Disbursal
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv04  | PL          | indiv         | Disbursal        | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv04 | MAL         | indiv         | Disbursal        | Charges  |     |
      | HL_CAS_60813_ContractualIndiv04  | HL          | indiv         | Disbursal        | Charges  |     |
      | CV_CAS_60813_ContractualIndiv04  | CV          | indiv         | Disbursal        | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv04 | SHG         | indiv         | Disbursal        | Charges  |     |


  Scenario Outline: ACAUTOCAS-20792:[LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Open <ChargeNature> Charge Details at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens "<ChargeNature>" Charges
    Then "<ChargeNature>" Details should be opened successfully
    @ContractualCharge @DDE
    Examples:
      | LogicalID                        | ChargeNature | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | Slab Based   | PL          | indiv         | DDE              | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv01 | Slab Based   | MAL         | indiv         | DDE              | Charges  |     |
      | HL_CAS_60813_ContractualIndiv01  | Slab Based   | HL          | indiv         | DDE              | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv01 | Slab Based   | EDU         | indiv         | DDE              | Charges  |     |
      | CV_CAS_60813_ContractualIndiv01  | Slab Based   | CV          | indiv         | DDE              | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv01 | Slab Based   | SHG         | indiv         | DDE              | Charges  |     |
      | AL_CAS_60813_ContractualIndiv01  | Slab Based   | AL          | indiv         | DDE              | Charges  |     |
      | PL_CAS_60813_ContractualIndiv03  | Rate Based   | PL          | indiv         | DDE              | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv03 | Rate Based   | MAL         | indiv         | DDE              | Charges  |     |
      | HL_CAS_60813_ContractualIndiv03  | Rate Based   | HL          | indiv         | DDE              | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv03 | Rate Based   | EDU         | indiv         | DDE              | Charges  |     |
      | CV_CAS_60813_ContractualIndiv03  | Rate Based   | CV          | indiv         | DDE              | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv03 | Rate Based   | SHG         | indiv         | DDE              | Charges  |     |
      | AL_CAS_60813_ContractualIndiv03  | Rate Based   | AL          | indiv         | DDE              | Charges  |     |



    @ContractualCharge @PostApproval
    Examples:
      | LogicalID                        | ChargeNature | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv02  | Amount Based | PL          | indiv         | Post Approval    | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv02 | Amount Based | MAL         | indiv         | Post Approval    | Charges  |     |
      | HL_CAS_60813_ContractualIndiv02  | Amount Based | HL          | indiv         | Post Approval    | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv02 | Amount Based | EDU         | indiv         | Post Approval    | Charges  |     |
      | CV_CAS_60813_ContractualIndiv02  | Amount Based | CV          | indiv         | Post Approval    | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv02 | Amount Based | SHG         | indiv         | Post Approval    | Charges  |     |
      | AL_CAS_60813_ContractualIndiv02  | Amount Based | AL          | indiv         | Post Approval    | Charges  |     |
      | PL_CAS_60813_ContractualIndiv04  | Slab Based   | PL          | indiv         | Post Approval    | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv04 | Slab Based   | MAL         | indiv         | Post Approval    | Charges  |     |
      | HL_CAS_60813_ContractualIndiv04  | Slab Based   | HL          | indiv         | Post Approval    | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv04 | Slab Based   | EDU         | indiv         | Post Approval    | Charges  |     |
      | CV_CAS_60813_ContractualIndiv04  | Slab Based   | CV          | indiv         | Post Approval    | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv04 | Slab Based   | SHG         | indiv         | Post Approval    | Charges  |     |
      | AL_CAS_60813_ContractualIndiv04  | Slab Based   | AL          | indiv         | Post Approval    | Charges  |     |

    @ContractualCharge  @TrancheInitiation
    Examples:
      | LogicalID                        | ChargeNature | ProductType | ApplicantType | ApplicationStage | Category | Key | RevisitCount |
      | EDU_CAS_60813_ContractualIndiv02 | Rate Based   | EDU         | indiv         | Disbursal        | Charges  |     | 1            |
      | EDU_CAS_60813_ContractualIndiv03 | Amount Based | EDU         | indiv         | Disbursal        | Charges  |     | 1            |
      | EDU_CAS_60813_ContractualIndiv04 | Slab Based   | EDU         | indiv         | Disbursal        | Charges  |     | 1            |

    @ContractualCharge @Disbursal
    Examples:
      | LogicalID                        | ChargeNature | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv02  | Rate Based   | PL          | indiv         | Disbursal        | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv02 | Rate Based   | MAL         | indiv         | Disbursal        | Charges  |     |
      | HL_CAS_60813_ContractualIndiv02  | Rate Based   | HL          | indiv         | Disbursal        | Charges  |     |
      | CV_CAS_60813_ContractualIndiv02  | Rate Based   | CV          | indiv         | Disbursal        | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv02 | Rate Based   | SHG         | indiv         | Disbursal        | Charges  |     |
      | AL_CAS_60813_ContractualIndiv02  | Rate Based   | AL          | indiv         | Disbursal        | Charges  |     |
      | PL_CAS_60813_ContractualIndiv03  | Amount Based | PL          | indiv         | Disbursal        | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv03 | Amount Based | MAL         | indiv         | Disbursal        | Charges  |     |
      | HL_CAS_60813_ContractualIndiv03  | Amount Based | HL          | indiv         | Disbursal        | Charges  |     |
      | CV_CAS_60813_ContractualIndiv03  | Amount Based | CV          | indiv         | Disbursal        | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv03 | Amount Based | SHG         | indiv         | Disbursal        | Charges  |     |
      | AL_CAS_60813_ContractualIndiv03  | Amount Based | AL          | indiv         | Disbursal        | Charges  |     |
      | PL_CAS_60813_ContractualIndiv04  | Slab Based   | PL          | indiv         | Disbursal        | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv04 | Slab Based   | MAL         | indiv         | Disbursal        | Charges  |     |
      | HL_CAS_60813_ContractualIndiv04  | Slab Based   | HL          | indiv         | Disbursal        | Charges  |     |
      | CV_CAS_60813_ContractualIndiv04  | Slab Based   | CV          | indiv         | Disbursal        | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv04 | Slab Based   | SHG         | indiv         | Disbursal        | Charges  |     |
      | AL_CAS_60813_ContractualIndiv04  | Slab Based   | AL          | indiv         | Disbursal        | Charges  |     |

    #PQM-24_CAS-75790
  Scenario Outline: ACAUTOCAS-21379: Validate Delete Button in <ChargeNature> Modal at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    Then Delete Button should not be visible for default row
    @ContractualCharge @DDE
    Examples:
      | LogicalID                        | ChargeNature | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | Slab Based   | PL          | indiv         | DDE              | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv01 | Slab Based   | MAL         | indiv         | DDE              | Charges  |     |
      | HL_CAS_60813_ContractualIndiv01  | Slab Based   | HL          | indiv         | DDE              | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv01 | Slab Based   | EDU         | indiv         | DDE              | Charges  |     |
      | CV_CAS_60813_ContractualIndiv01  | Slab Based   | CV          | indiv         | DDE              | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv01 | Slab Based   | SHG         | indiv         | DDE              | Charges  |     |
      | AL_CAS_60813_ContractualIndiv01  | Slab Based   | AL          | indiv         | DDE              | Charges  |     |


    #PQM-07_CAS-75790
  Scenario Outline: ACAUTOCAS-20793: Check <Field> Behaviour under Slab Based Contractual Charges at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    Then "<Field>" in Slab Details grid should be editable
    @ContractualCharge @DDE
    Examples:
      | LogicalID                        | Field                  | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | Slab From              | PL          | indiv         | DDE              |          |     |
      | MAL_CAS_60813_ContractualIndiv01 | Slab From              | MAL         | indiv         | DDE              |          |     |
      | HL_CAS_60813_ContractualIndiv01  | Slab From              | HL          | indiv         | DDE              |          |     |
      | EDU_CAS_60813_ContractualIndiv01 | Slab From              | EDU         | indiv         | DDE              |          |     |
      | CV_CAS_60813_ContractualIndiv01  | Slab From              | CV          | indiv         | DDE              |          |     |
#      | SHG_CAS_60813_ContractualIndiv01 | Slab From              | SHG         | indiv         | DDE              |          |     |
      | AL_CAS_60813_ContractualIndiv01  | Slab From              | AL          | indiv         | DDE              |          |     |
      | PL_CAS_60813_ContractualIndiv01  | Slab To                | PL          | indiv         | DDE              |          |     |
      | MAL_CAS_60813_ContractualIndiv01 | Slab To                | MAL         | indiv         | DDE              |          |     |
      | HL_CAS_60813_ContractualIndiv01  | Slab To                | HL          | indiv         | DDE              |          |     |
      | EDU_CAS_60813_ContractualIndiv01 | Slab To                | EDU         | indiv         | DDE              |          |     |
      | CV_CAS_60813_ContractualIndiv01  | Slab To                | CV          | indiv         | DDE              |          |     |
#      | SHG_CAS_60813_ContractualIndiv01 | Slab To                | SHG         | indiv         | DDE              |          |     |
      | AL_CAS_60813_ContractualIndiv01  | Slab To                | AL          | indiv         | DDE              |          |     |
      | PL_CAS_60813_ContractualIndiv01  | Charge Definition Type | PL          | indiv         | DDE              |          |     |
      | MAL_CAS_60813_ContractualIndiv01 | Charge Definition Type | MAL         | indiv         | DDE              |          |     |
      | HL_CAS_60813_ContractualIndiv01  | Charge Definition Type | HL          | indiv         | DDE              |          |     |
      | EDU_CAS_60813_ContractualIndiv01 | Charge Definition Type | EDU         | indiv         | DDE              |          |     |
      | CV_CAS_60813_ContractualIndiv01  | Charge Definition Type | CV          | indiv         | DDE              |          |     |
#      | SHG_CAS_60813_ContractualIndiv01 | Charge Definition Type | SHG         | indiv         | DDE              |          |     |
      | AL_CAS_60813_ContractualIndiv01  | Charge Definition Type | AL          | indiv         | DDE              |          |     |
      | PL_CAS_60813_ContractualIndiv01  | Actual Rate            | PL          | indiv         | DDE              |          |     |
      | MAL_CAS_60813_ContractualIndiv01 | Actual Rate            | MAL         | indiv         | DDE              |          |     |
      | HL_CAS_60813_ContractualIndiv01  | Actual Rate            | HL          | indiv         | DDE              |          |     |
      | EDU_CAS_60813_ContractualIndiv01 | Actual Rate            | EDU         | indiv         | DDE              |          |     |
      | CV_CAS_60813_ContractualIndiv01  | Actual Rate            | CV          | indiv         | DDE              |          |     |
#      | SHG_CAS_60813_ContractualIndiv01 | Actual Rate            | SHG         | indiv         | DDE              |          |     |
      | AL_CAS_60813_ContractualIndiv01  | Actual Rate            | AL          | indiv         | DDE              |          |     |
      | PL_CAS_60813_ContractualIndiv01  | Differential Rate      | PL          | indiv         | DDE              |          |     |
      | MAL_CAS_60813_ContractualIndiv01 | Differential Rate      | MAL         | indiv         | DDE              |          |     |
      | HL_CAS_60813_ContractualIndiv01  | Differential Rate      | HL          | indiv         | DDE              |          |     |
      | EDU_CAS_60813_ContractualIndiv01 | Differential Rate      | EDU         | indiv         | DDE              |          |     |
      | CV_CAS_60813_ContractualIndiv01  | Differential Rate      | CV          | indiv         | DDE              |          |     |
#      | SHG_CAS_60813_ContractualIndiv01 | Differential Rate      | SHG         | indiv         | DDE              |          |     |
      | AL_CAS_60813_ContractualIndiv01  | Differential Rate      | AL          | indiv         | DDE              |          |     |
      | PL_CAS_60813_ContractualIndiv01  | Effective Rate         | PL          | indiv         | DDE              |          |     |
      | MAL_CAS_60813_ContractualIndiv01 | Effective Rate         | MAL         | indiv         | DDE              |          |     |
      | HL_CAS_60813_ContractualIndiv01  | Effective Rate         | HL          | indiv         | DDE              |          |     |
      | EDU_CAS_60813_ContractualIndiv01 | Effective Rate         | EDU         | indiv         | DDE              |          |     |
      | CV_CAS_60813_ContractualIndiv01  | Effective Rate         | CV          | indiv         | DDE              |          |     |
#      | SHG_CAS_60813_ContractualIndiv01 | Effective Rate         | SHG         | indiv         | DDE              |          |     |
      | AL_CAS_60813_ContractualIndiv01  | Effective Rate         | AL          | indiv         | DDE              |          |     |

    #PQM-07_CAS-60813

  Scenario Outline: ACAUTOCAS-20794:[LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Verify Charge ID and computation details stamped  for <chargeNature> at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "charges.xlsx" under sheet "contractual_charges" and row <rowNum>
    Then Charge ID and computation details should be present at transaction for "<chargeNature>"
    @ContractualCharge @DDE
    Examples:
      | LogicalID                        | ProductType | rowNum | chargeNature | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | PL          | 2      | Slab Based   | indiv         | DDE              | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv01 | MAL         | 2      | Slab Based   | indiv         | DDE              | Charges  |     |
      | HL_CAS_60813_ContractualIndiv01  | HL          | 2      | Slab Based   | indiv         | DDE              | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv01 | EDU         | 2      | Slab Based   | indiv         | DDE              | Charges  |     |
      | CV_CAS_60813_ContractualIndiv01  | CV          | 2      | Slab Based   | indiv         | DDE              | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv01 | SHG         | 2      | Slab Based   | indiv         | DDE              | Charges  |     |
      | AL_CAS_60813_ContractualIndiv01  | AL          | 2      | Slab Based   | indiv         | DDE              | Charges  |     |
      | PL_CAS_60813_ContractualIndiv03  | PL          | 0      | Rate Based   | indiv         | DDE              | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv03 | MAL         | 0      | Rate Based   | indiv         | DDE              | Charges  |     |
      | HL_CAS_60813_ContractualIndiv03  | HL          | 0      | Rate Based   | indiv         | DDE              | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv03 | EDU         | 0      | Rate Based   | indiv         | DDE              | Charges  |     |
      | CV_CAS_60813_ContractualIndiv03  | CV          | 0      | Rate Based   | indiv         | DDE              | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv03 | SHG         | 0      | Rate Based   | indiv         | DDE              | Charges  |     |
      | AL_CAS_60813_ContractualIndiv03  | AL          | 0      | Rate Based   | indiv         | DDE              | Charges  |     |



    @ContractualCharge @PostApproval
    Examples:
      | LogicalID                        | ProductType | rowNum | chargeNature | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv02  | PL          | 1      | Amount Based | indiv         | Post Approval    | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv02 | MAL         | 1      | Amount Based | indiv         | Post Approval    | Charges  |     |
      | HL_CAS_60813_ContractualIndiv02  | HL          | 1      | Amount Based | indiv         | Post Approval    | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv02 | EDU         | 1      | Amount Based | indiv         | Post Approval    | Charges  |     |
      | CV_CAS_60813_ContractualIndiv02  | CV          | 1      | Amount Based | indiv         | Post Approval    | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv02 | SHG         | 1      | Amount Based | indiv         | Post Approval    | Charges  |     |
      | AL_CAS_60813_ContractualIndiv02  | AL          | 1      | Amount Based | indiv         | Post Approval    | Charges  |     |

    @ContractualCharge  @TrancheInitiation
    Examples:
      | LogicalID                        | ProductType | rowNum | chargeNature | ApplicantType | ApplicationStage | Category | Key | RevisitCount |
      | EDU_CAS_60813_ContractualIndiv03 | EDU         | 1      | Amount Based | indiv         | Disbursal        | Charges  |     | 1            |
      | EDU_CAS_60813_ContractualIndiv02 | EDU         | 0      | Rate Based   | indiv         | Disbursal        | Charges  |     | 1            |

    @ContractualCharge @Disbursal
    Examples:
      | LogicalID                        | ProductType | rowNum | chargeNature | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv02  | PL          | 0      | Rate Based   | indiv         | Disbursal        | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv02 | MAL         | 0      | Rate Based   | indiv         | Disbursal        | Charges  |     |
      | HL_CAS_60813_ContractualIndiv02  | HL          | 0      | Rate Based   | indiv         | Disbursal        | Charges  |     |
      | CV_CAS_60813_ContractualIndiv02  | CV          | 0      | Rate Based   | indiv         | Disbursal        | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv02 | SHG         | 0      | Rate Based   | indiv         | Disbursal        | Charges  |     |
      | AL_CAS_60813_ContractualIndiv02  | AL          | 0      | Rate Based   | indiv         | Disbursal        | Charges  |     |
      | PL_CAS_60813_ContractualIndiv03  | PL          | 1      | Amount Based | indiv         | Disbursal        | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv03 | MAL         | 1      | Amount Based | indiv         | Disbursal        | Charges  |     |
      | HL_CAS_60813_ContractualIndiv03  | HL          | 1      | Amount Based | indiv         | Disbursal        | Charges  |     |
      | CV_CAS_60813_ContractualIndiv03  | CV          | 1      | Amount Based | indiv         | Disbursal        | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv03 | SHG         | 1      | Amount Based | indiv         | Disbursal        | Charges  |     |
      | AL_CAS_60813_ContractualIndiv03  | AL          | 1      | Amount Based | indiv         | Disbursal        | Charges  |     |

    #PQM-08_CAS-75790
  Scenario Outline: ACAUTOCAS-20795: Check <Field> Default Values under Slab Based Contractual Charges at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "charges.xlsx" under sheet "contractual_charges" and row <rowNum>
    Then "<Field>" in Slab Details should come with Default Values
    @ContractualCharge @DDE
    Examples:
      | LogicalID                        | Field                  | rowNum | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | Slab From              | 2      | PL          | indiv         | DDE              |          |     |
      | MAL_CAS_60813_ContractualIndiv01 | Slab From              | 2      | MAL         | indiv         | DDE              |          |     |
      | HL_CAS_60813_ContractualIndiv01  | Slab From              | 2      | HL          | indiv         | DDE              |          |     |
      | EDU_CAS_60813_ContractualIndiv01 | Slab From              | 2      | EDU         | indiv         | DDE              |          |     |
      | CV_CAS_60813_ContractualIndiv01  | Slab From              | 2      | CV          | indiv         | DDE              |          |     |
#      | SHG_CAS_60813_ContractualIndiv01 | Slab From              | 2      | SHG         | indiv         | DDE              |          |     |
      | AL_CAS_60813_ContractualIndiv01  | Slab From              | 2      | AL          | indiv         | DDE              |          |     |
      | PL_CAS_60813_ContractualIndiv01  | Slab To                | 2      | PL          | indiv         | DDE              |          |     |
      | MAL_CAS_60813_ContractualIndiv01 | Slab To                | 2      | MAL         | indiv         | DDE              |          |     |
      | HL_CAS_60813_ContractualIndiv01  | Slab To                | 2      | HL          | indiv         | DDE              |          |     |
      | EDU_CAS_60813_ContractualIndiv01 | Slab To                | 2      | EDU         | indiv         | DDE              |          |     |
      | CV_CAS_60813_ContractualIndiv01  | Slab To                | 2      | CV          | indiv         | DDE              |          |     |
#      | SHG_CAS_60813_ContractualIndiv01 | Slab To                | 2      | SHG         | indiv         | DDE              |          |     |
      | AL_CAS_60813_ContractualIndiv01  | Slab To                | 2      | AL          | indiv         | DDE              |          |     |
      | PL_CAS_60813_ContractualIndiv01  | Charge Definition Type | 2      | PL          | indiv         | DDE              |          |     |
      | MAL_CAS_60813_ContractualIndiv01 | Charge Definition Type | 2      | MAL         | indiv         | DDE              |          |     |
      | HL_CAS_60813_ContractualIndiv01  | Charge Definition Type | 2      | HL          | indiv         | DDE              |          |     |
      | EDU_CAS_60813_ContractualIndiv01 | Charge Definition Type | 2      | EDU         | indiv         | DDE              |          |     |
      | CV_CAS_60813_ContractualIndiv01  | Charge Definition Type | 2      | CV          | indiv         | DDE              |          |     |
#      | SHG_CAS_60813_ContractualIndiv01 | Charge Definition Type | 2      | SHG         | indiv         | DDE              |          |     |
      | AL_CAS_60813_ContractualIndiv01  | Charge Definition Type | 2      | AL          | indiv         | DDE              |          |     |
      | PL_CAS_60813_ContractualIndiv01  | Actual Rate            | 2      | PL          | indiv         | DDE              |          |     |
      | MAL_CAS_60813_ContractualIndiv01 | Actual Rate            | 2      | MAL         | indiv         | DDE              |          |     |
      | HL_CAS_60813_ContractualIndiv01  | Actual Rate            | 2      | HL          | indiv         | DDE              |          |     |
      | EDU_CAS_60813_ContractualIndiv01 | Actual Rate            | 2      | EDU         | indiv         | DDE              |          |     |
      | CV_CAS_60813_ContractualIndiv01  | Actual Rate            | 2      | CV          | indiv         | DDE              |          |     |
#      | SHG_CAS_60813_ContractualIndiv01 | Actual Rate            | 2      | SHG         | indiv         | DDE              |          |     |
      | AL_CAS_60813_ContractualIndiv01  | Actual Rate            | 2      | AL          | indiv         | DDE              |          |     |
      | PL_CAS_60813_ContractualIndiv01  | Differential Rate      | 2      | PL          | indiv         | DDE              |          |     |
      | MAL_CAS_60813_ContractualIndiv01 | Differential Rate      | 2      | MAL         | indiv         | DDE              |          |     |
      | HL_CAS_60813_ContractualIndiv01  | Differential Rate      | 2      | HL          | indiv         | DDE              |          |     |
      | EDU_CAS_60813_ContractualIndiv01 | Differential Rate      | 2      | EDU         | indiv         | DDE              |          |     |
      | CV_CAS_60813_ContractualIndiv01  | Differential Rate      | 2      | CV          | indiv         | DDE              |          |     |
#      | SHG_CAS_60813_ContractualIndiv01 | Differential Rate      | 2      | SHG         | indiv         | DDE              |          |     |
      | AL_CAS_60813_ContractualIndiv01  | Differential Rate      | 2      | AL          | indiv         | DDE              |          |     |
      | PL_CAS_60813_ContractualIndiv01  | Effective Rate         | 2      | PL          | indiv         | DDE              |          |     |
      | MAL_CAS_60813_ContractualIndiv01 | Effective Rate         | 2      | MAL         | indiv         | DDE              |          |     |
      | HL_CAS_60813_ContractualIndiv01  | Effective Rate         | 2      | HL          | indiv         | DDE              |          |     |
      | EDU_CAS_60813_ContractualIndiv01 | Effective Rate         | 2      | EDU         | indiv         | DDE              |          |     |
      | CV_CAS_60813_ContractualIndiv01  | Effective Rate         | 2      | CV          | indiv         | DDE              |          |     |
#      | SHG_CAS_60813_ContractualIndiv01 | Effective Rate         | 2      | SHG         | indiv         | DDE              |          |     |
      | AL_CAS_60813_ContractualIndiv01  | Effective Rate         | 2      | AL          | indiv         | DDE              |          |     |


    #PQM-09_CAS-60813,22_CAS-75790
  Scenario Outline: ACAUTOCAS-21162: Add another Slab in Slab Based Charges at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "charges.xlsx" under sheet "contractual_charges" and row 3
    And user add new slab in Slab Based Charges
    And user opens "<ChargeNature>" Charges
    Then New Row in the slab grid should be added
    @ContractualCharge @DDE
    Examples:
      | LogicalID                        | ChargeNature | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | Slab Based   | PL          | indiv         | DDE              |          |     |
      | MAL_CAS_60813_ContractualIndiv01 | Slab Based   | MAL         | indiv         | DDE              |          |     |
      | HL_CAS_60813_ContractualIndiv01  | Slab Based   | HL          | indiv         | DDE              |          |     |
      | EDU_CAS_60813_ContractualIndiv01 | Slab Based   | EDU         | indiv         | DDE              |          |     |
      | CV_CAS_60813_ContractualIndiv01  | Slab Based   | CV          | indiv         | DDE              |          |     |
#      | SHG_CAS_60813_ContractualIndiv01 | Slab Based   | SHG         | indiv         | DDE              |          |     |
      | AL_CAS_60813_ContractualIndiv01  | Slab Based   | AL          | indiv         | DDE              |          |     |

    @ContractualCharge @PostApproval
    Examples:
      | LogicalID                        | ChargeNature | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv04  | Slab Based   | PL          | indiv         | Post Approval    |          |     |
      | MAL_CAS_60813_ContractualIndiv04 | Slab Based   | MAL         | indiv         | Post Approval    |          |     |
      | HL_CAS_60813_ContractualIndiv04  | Slab Based   | HL          | indiv         | Post Approval    |          |     |
      | EDU_CAS_60813_ContractualIndiv04 | Slab Based   | EDU         | indiv         | Post Approval    |          |     |
      | CV_CAS_60813_ContractualIndiv04  | Slab Based   | CV          | indiv         | Post Approval    |          |     |
#      | SHG_CAS_60813_ContractualIndiv04 | Slab Based   | SHG         | indiv         | Post Approval    |          |     |
      | AL_CAS_60813_ContractualIndiv04  | Slab Based   | AL          | indiv         | Post Approval    |          |     |


    #PQM-09_CAS-60813
  Scenario Outline: ACAUTOCAS-21380:[LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Validate added Slab Based Charges at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "charges.xlsx" under sheet "contractual_charges" and row 3
    Then New Row in the slab grid should be added
    @ContractualCharge @TrancheInitiation
    Examples:
      | LogicalID                        | ChargeNature | ProductType | ApplicantType | ApplicationStage | Category | Key | RevisitCount |
      | EDU_CAS_60813_ContractualIndiv04 | Slab Based   | EDU         | indiv         | Disbursal        |          |     | 1            |

    @ContractualCharge @Disbursal
    Examples:
      | LogicalID                        | ChargeNature | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv04  | Slab Based   | PL          | indiv         | Disbursal        |          |     |
      | MAL_CAS_60813_ContractualIndiv04 | Slab Based   | MAL         | indiv         | Disbursal        |          |     |
      | HL_CAS_60813_ContractualIndiv04  | Slab Based   | HL          | indiv         | Disbursal        |          |     |
      | CV_CAS_60813_ContractualIndiv04  | Slab Based   | CV          | indiv         | Disbursal        |          |     |
#      | SHG_CAS_60813_ContractualIndiv04 | Slab Based   | SHG         | indiv         | Disbursal        |          |     |
      | AL_CAS_60813_ContractualIndiv04  | Slab Based   | AL          | indiv         | Disbursal        |          |     |


    #PQM-09_CAS-60813
  Scenario Outline: ACAUTOCAS-21163: Delete Added Slab in Slab Based Charges at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user deletes the added slab
    And user reads data from the excel file "charges.xlsx" under sheet "contractual_charges" and row 1
    Then New Row in the slab grid should be deleted
    @ContractualCharge @DDE
    Examples:
      | LogicalID                        | ChargeNature | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | Slab Based   | PL          | indiv         | DDE              |          |     |
      | MAL_CAS_60813_ContractualIndiv01 | Slab Based   | MAL         | indiv         | DDE              |          |     |
      | HL_CAS_60813_ContractualIndiv01  | Slab Based   | HL          | indiv         | DDE              |          |     |
      | EDU_CAS_60813_ContractualIndiv01 | Slab Based   | EDU         | indiv         | DDE              |          |     |
      | CV_CAS_60813_ContractualIndiv01  | Slab Based   | CV          | indiv         | DDE              |          |     |
#      | SHG_CAS_60813_ContractualIndiv01 | Slab Based   | SHG         | indiv         | DDE              |          |     |
      | AL_CAS_60813_ContractualIndiv01  | Slab Based   | AL          | indiv         | DDE              |          |     |


    #PQM-18_CAS-75790
  Scenario Outline: ACAUTOCAS-21164: Change Rate Based charge to Amount Based at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "charges.xlsx" under sheet "contractual_charges" and row 4
    And change Rate Based Charge to Amount Based
    Then Charge Should be Changed to "Amount Based"
    @ContractualCharge @DDE
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv03  | PL          | indiv         | Credit Approval  | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv03 | MAL         | indiv         | Credit Approval  | Charges  |     |
      | HL_CAS_60813_ContractualIndiv03  | HL          | indiv         | Credit Approval  | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv03 | EDU         | indiv         | Credit Approval  | Charges  |     |
      | CV_CAS_60813_ContractualIndiv03  | CV          | indiv         | Credit Approval  | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv03 | SHG         | indiv         | Credit Approval  | Charges  |     |
      | AL_CAS_60813_ContractualIndiv03  | AL          | indiv         | Credit Approval  | Charges  |     |


    #PQM-12_CAS-75790,
  Scenario Outline: ACAUTOCAS-21165: Change Amount Based to Rate Based  at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "charges.xlsx" under sheet "contractual_charges" and row 5
    And change Amount Based Charge to Rate Based
    Then Charge Should be Changed to "Rate Based"
    @ContractualCharge @PostApproval
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv02  | PL          | indiv         | Post Approval    | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv02 | MAL         | indiv         | Post Approval    | Charges  |     |
      | HL_CAS_60813_ContractualIndiv02  | HL          | indiv         | Post Approval    | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv02 | EDU         | indiv         | Post Approval    | Charges  |     |
      | CV_CAS_60813_ContractualIndiv02  | CV          | indiv         | Post Approval    | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv02 | SHG         | indiv         | Post Approval    | Charges  |     |
      | AL_CAS_60813_ContractualIndiv02  | AL          | indiv         | Post Approval    | Charges  |     |


  Scenario Outline: ACAUTOCAS-20796:[LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Close the modal of <ChargeNature> at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user close the "<ChargeNature>" Modal
    Then "<ChargeNature>" Details should be closed successfully
    @ContractualCharge @DDE
    Examples:
      | LogicalID                        | ChargeNature | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | Slab Based   | PL          | indiv         | DDE              |          |     |
      | MAL_CAS_60813_ContractualIndiv01 | Slab Based   | MAL         | indiv         | DDE              |          |     |
      | HL_CAS_60813_ContractualIndiv01  | Slab Based   | HL          | indiv         | DDE              |          |     |
      | EDU_CAS_60813_ContractualIndiv01 | Slab Based   | EDU         | indiv         | DDE              |          |     |
      | CV_CAS_60813_ContractualIndiv01  | Slab Based   | CV          | indiv         | DDE              |          |     |
#      | SHG_CAS_60813_ContractualIndiv01 | Slab Based   | SHG         | indiv         | DDE              |          |     |
      | AL_CAS_60813_ContractualIndiv01  | Slab Based   | AL          | indiv         | DDE              |          |     |


    @ContractualCharge @PostApproval
    Examples:
      | LogicalID                        | ChargeNature | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv04  | Slab Based   | PL          | indiv         | Post Approval    | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv04 | Slab Based   | MAL         | indiv         | Post Approval    | Charges  |     |
      | HL_CAS_60813_ContractualIndiv04  | Slab Based   | HL          | indiv         | Post Approval    | Charges  |     |
      | EDU_CAS_60813_ContractualIndiv04 | Slab Based   | EDU         | indiv         | Post Approval    | Charges  |     |
      | CV_CAS_60813_ContractualIndiv04  | Slab Based   | CV          | indiv         | Post Approval    | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv04 | Slab Based   | SHG         | indiv         | Post Approval    | Charges  |     |
      | AL_CAS_60813_ContractualIndiv04  | Slab Based   | AL          | indiv         | Post Approval    | Charges  |     |

    @ContractualCharge  @TrancheInitiation
    Examples:
      | LogicalID                        | ChargeNature | ProductType | ApplicantType | ApplicationStage | Category | Key | RevisitCount |
      | EDU_CAS_60813_ContractualIndiv03 | Amount Based | EDU         | indiv         | Disbursal        | Charges  |     | 1            |
      | EDU_CAS_60813_ContractualIndiv04 | Slab Based   | EDU         | indiv         | Disbursal        | Charges  |     | 1            |
      | EDU_CAS_60813_ContractualIndiv02 | Rate Based   | EDU         | indiv         | Disbursal        | Charges  |     | 1            |

    @ContractualCharge @Disbursal
    Examples:
      | LogicalID                        | ChargeNature | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv02  | Rate Based   | PL          | indiv         | Disbursal        | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv02 | Rate Based   | MAL         | indiv         | Disbursal        | Charges  |     |
      | HL_CAS_60813_ContractualIndiv02  | Rate Based   | HL          | indiv         | Disbursal        | Charges  |     |
      | CV_CAS_60813_ContractualIndiv02  | Rate Based   | CV          | indiv         | Disbursal        | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv02 | Rate Based   | SHG         | indiv         | Disbursal        | Charges  |     |
      | AL_CAS_60813_ContractualIndiv02  | Rate Based   | AL          | indiv         | Disbursal        | Charges  |     |
      | PL_CAS_60813_ContractualIndiv03  | Amount Based | PL          | indiv         | Disbursal        | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv03 | Amount Based | MAL         | indiv         | Disbursal        | Charges  |     |
      | HL_CAS_60813_ContractualIndiv03  | Amount Based | HL          | indiv         | Disbursal        | Charges  |     |
      | CV_CAS_60813_ContractualIndiv03  | Amount Based | CV          | indiv         | Disbursal        | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv03 | Amount Based | SHG         | indiv         | Disbursal        | Charges  |     |
      | AL_CAS_60813_ContractualIndiv03  | Amount Based | AL          | indiv         | Disbursal        | Charges  |     |
      | PL_CAS_60813_ContractualIndiv04  | Slab Based   | PL          | indiv         | Disbursal        | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv04 | Slab Based   | MAL         | indiv         | Disbursal        | Charges  |     |
      | HL_CAS_60813_ContractualIndiv04  | Slab Based   | HL          | indiv         | Disbursal        | Charges  |     |
      | CV_CAS_60813_ContractualIndiv04  | Slab Based   | CV          | indiv         | Disbursal        | Charges  |     |
#      | SHG_CAS_60813_ContractualIndiv04 | Slab Based   | SHG         | indiv         | Disbursal        | Charges  |     |
      | AL_CAS_60813_ContractualIndiv04  | Slab Based   | AL          | indiv         | Disbursal        | Charges  |     |


  Scenario Outline: ACAUTOCAS-20797: Move the Application to <finalStage> from <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user selects document tab
    And user submit the documents with wait
    And user switch and close next tab
    When user moves from "<ApplicationStage>" to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<finalStage>" for "<Category>" with "<Key>" stage
    Then Application should be sent to "<finalStage>"
    @ContractualCharge @DDE
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | finalStage      | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | PL          | indiv         | DDE              | Credit Approval | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv01 | MAL         | indiv         | DDE              | Credit Approval | Charges  |     |
      | HL_CAS_60813_ContractualIndiv01  | HL          | indiv         | DDE              | Credit Approval | Charges  |     |
      | PL_CAS_60813_ContractualIndiv03  | PL          | indiv         | DDE              | Disbursal       | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv03 | MAL         | indiv         | DDE              | Disbursal       | Charges  |     |
      | HL_CAS_60813_ContractualIndiv03  | HL          | indiv         | DDE              | Disbursal       | Charges  |     |

    @ContractualCharge @CreditApproval
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | finalStage    | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | PL          | indiv         | Credit Approval  | Post Approval | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv01 | MAL         | indiv         | Credit Approval  | Post Approval | Charges  |     |
      | HL_CAS_60813_ContractualIndiv01  | HL          | indiv         | Credit Approval  | Post Approval | Charges  |     |



    #PQM-13_CAS_75790,17_CAS-63366,22_CAS-63366
  Scenario Outline: ACAUTOCAS-21166: Move the Application to Disbursal from Post Approval for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user selects document tab
    And user submit the documents with wait
    When user clicks on Move to Next stage
    Then Application should be sent to "<finalStage>"
    @ContractualCharge @PostApproval
    Examples:
      | LogicalID                        | ProductType | ApplicantType | ApplicationStage | finalStage | Category | Key |
      | PL_CAS_60813_ContractualIndiv01  | PL          | indiv         | Post Approval    | Disbursal  | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv01 | MAL         | indiv         | Post Approval    | Disbursal  | Charges  |     |
      | HL_CAS_60813_ContractualIndiv01  | HL          | indiv         | Post Approval    | Disbursal  | Charges  |     |
      | PL_CAS_60813_ContractualIndiv02  | PL          | indiv         | Post Approval    | Disbursal  | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv02 | MAL         | indiv         | Post Approval    | Disbursal  | Charges  |     |
      | HL_CAS_60813_ContractualIndiv02  | HL          | indiv         | Post Approval    | Disbursal  | Charges  |     |
      | PL_CAS_60813_ContractualIndiv04  | PL          | indiv         | Post Approval    | Disbursal  | Charges  |     |
      | MAL_CAS_60813_ContractualIndiv04 | MAL         | indiv         | Post Approval    | Disbursal  | Charges  |     |
      | HL_CAS_60813_ContractualIndiv04  | HL          | indiv         | Post Approval    | Disbursal  | Charges  |     |


    #PQM-10_CAS-60813,13_CAS-63366,18_CAS-63366
  Scenario Outline: ACAUTOCAS-21381: Disbursal initiation at disbursal stage in case of Charges for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open repayment instrument details
    And user deletes all existing repayment instrument details
    And user save Repayment Instrument Detail Grid
    And user moves to main tab of "disbursal"
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 52
    And user clicks on add entry on disbursal page
    And user navigate to Charges section of "<ApplicationStage>"
    When user navigate to receipt section of "<ApplicationStage>"
    And user reads data from the excel file "charges.xlsx" under sheet "charge_code_defination" and row 24
    And user create new receipt at "<ApplicationStage>"
    And user clicks on Auto Allocate Button
    And user adjusts the charges from "CUSTOMER" at Disbursal
    And user navigates disbursal main screen
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row <chargeRowNum>
    And user fills disbursal Checklist
    And user opens payee details on disbursal
    And user selects payment mode as "Cheque"
    And user fills dealing bank in payee details
    And user saves the disbursal
    And user initiate disbursal
    Then Application should move to "<FinalStage>" Stage
    @ContractualCharge @Disbursal
    Examples:
      | LogicalID                       | ProductType | Category | Key | ApplicationStage | FinalStage       | chargeRowNum |
      | PL_CAS_60813_ContractualIndiv02 | PL          | Charges  |     | Disbursal        | Disbursal Author | 26           |
      | HL_CAS_60813_ContractualIndiv02 | HL          | Charges  |     | Disbursal        | Disbursal Author | 26           |
      | PL_CAS_60813_ContractualIndiv03 | PL          | Charges  |     | Disbursal        | Disbursal Author | 24           |
      | HL_CAS_60813_ContractualIndiv03 | HL          | Charges  |     | Disbursal        | Disbursal Author | 24           |
      | PL_CAS_60813_ContractualIndiv04 | PL          | Charges  |     | Disbursal        | Disbursal Author | 26           |
      | HL_CAS_60813_ContractualIndiv04 | HL          | Charges  |     | Disbursal        | Disbursal Author | 26           |
      | PL_CAS_60813_ContractualIndiv05 | PL          | Charges  |     | Disbursal        | Disbursal Author | 26           |
      | HL_CAS_60813_ContractualIndiv05 | HL          | Charges  |     | Disbursal        | Disbursal Author | 26           |



    #PQM-10_CAS-60813,19_CAS-75790
  Scenario Outline: ACAUTOCAS-21382: Disbursal initiation at disbursal stage in case of Charges handling Dealer and Manufacturer Charges  for MAL LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open repayment instrument details
    And user deletes all existing repayment instrument details
    And user save Repayment Instrument Detail Grid
    And user moves to main tab of "disbursal"
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row <disbursalRowNum>
    And user clicks on add entry on disbursal page
    And user navigate to Charges section of "<ApplicationStage>"
    And user waives dealer and manufacturer charges
    When user navigate to receipt section of "<ApplicationStage>"
    And user reads data from the excel file "charges.xlsx" under sheet "charge_code_defination" and row <chargeRowNum>
    And user create new receipt at "<ApplicationStage>"
    And user clicks on Auto Allocate Button
    And user adjusts the charges from "<BP_Type>" at Disbursal
    And user navigates disbursal main screen
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 49
    And user fills disbursal Checklist
    And user opens payee details on disbursal
    And user selects payment mode as "Cheque"
    And user fills dealing bank in payee details
    And user saves the disbursal
    And user initiate disbursal
    Then Application should move to "<FinalStage>" Stage
    @ContractualCharge @Disbursal
    Examples:
      | LogicalID                        | ProductType | ApplicantType | Category | Key | ApplicationStage | FinalStage       | disbursalRowNum | chargeRowNum | BP_Type         |
      | MAL_CAS_60813_ContractualIndiv02 | MAL         | indiv         | Charges  |     | Disbursal        | Disbursal Author | 52              | 27           | CUSTOMER        |
      | MAL_CAS_60813_ContractualIndiv03 | MAL         | indiv         | Charges  |     | Disbursal        | Disbursal Author | 52              | 27           | CUSTOMER        |
      | MAL_CAS_60813_ContractualIndiv04 | MAL         | indiv         | Charges  |     | Disbursal        | Disbursal Author | 52              | 27           | CUSTOMER        |
      | MAL_CAS_60813_ContractualIndiv05 | MAL         | indiv         | Charges  |     | Disbursal        | Disbursal Author | 52              | 27           | CUSTOMER        |
      | CV_CAS_60813_ContractualIndiv01  | CV          | indiv         | Charges  |     | Disbursal        | Disbursal Author | 70              | 25           | Dealer/Supplier |
      | CV_CAS_60813_ContractualIndiv02  | CV          | indiv         | Charges  |     | Disbursal        | Disbursal Author | 70              | 25           | Dealer/Supplier |
      | CV_CAS_60813_ContractualIndiv03  | CV          | indiv         | Charges  |     | Disbursal        | Disbursal Author | 70              | 25           | Dealer/Supplier |
      | CV_CAS_60813_ContractualIndiv04  | CV          | indiv         | Charges  |     | Disbursal        | Disbursal Author | 70              | 25           | Dealer/Supplier |
      | CV_CAS_60813_ContractualIndiv05  | CV          | indiv         | Charges  |     | Disbursal        | Disbursal Author | 70              | 25           | Dealer/Supplier |


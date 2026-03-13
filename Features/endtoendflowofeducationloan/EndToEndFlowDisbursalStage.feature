@Epic-E2E
@Conventional
@Order
@E2EOrder
@Release
  #FeatureID-ACAUTOCAS-17204
Feature: End to end work flow for All LOB Order Wise


############################################## STAGE 12: DISBURSAL ################################################################################################################################

#--------------------------------------------- DISBURSAL MAKER ----------------------------------------------------------------------------------------
  @AuthoredBy-harshita.nayak
    @ImplementedBy-harshita.nayak
  Scenario Outline: ACAUTOCAS-21253: Generate <reportType> report at Disbursal stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Disbursal" stage present in context from application grid
    When user open "<reportType>" reports for disbursal
    Then user verify "<reportType>" report
    @Disbursal
    Examples:
      | LogicalID | ProductType             | reportType                |
      | CV00002   | Commercial Vehicle Loan | Generate Sanction Letter  |
      | CV00002   | Commercial Vehicle Loan | Generate Disbursal Report |
      | CV00003   | Commercial Vehicle Loan | Generate Sanction Letter  |
      | CV00003   | Commercial Vehicle Loan | Generate Disbursal Report |
      | CV00004   | Commercial Vehicle Loan | Generate Sanction Letter  |
      | CV00004   | Commercial Vehicle Loan | Generate Disbursal Report |
      | PL00001   | Personal Loan           | Generate Sanction Letter  |
      | PL00001   | Personal Loan           | Generate Disbursal Report |
      | HL00001   | Home Loan               | Generate Sanction Letter  |
      | HL00001   | Home Loan               | Generate Disbursal Report |
      | PL00002   | Personal Loan           | Generate Sanction Letter  |
      | PL00002   | Personal Loan           | Generate Disbursal Report |
      | AL00002   | Auto Loan               | Generate Sanction Letter  |
      | AL00002   | Auto Loan               | Generate Disbursal Report |
      | AL00002   | Auto Loan               | Generate Delivery Report  |
      | MULF_BD_00001 | Multi Facility    | Generate Disbursal Report |
      | MULF_BD_00001 | Multi Facility    | Generate Sanction Letter  |

  @AuthoredBy-harshita.nayak
    @ImplementedBy-harshita.nayak
  Scenario Outline: ACAUTOCAS-21395:Generate Delivery report for multiple tranches at Disbursal stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Disbursal" stage present in context from application grid
    When user opens application tranche "<Tranche>" at disbursal stage
    And user open "<reportType>" reports for disbursal
    Then user should able to verify "<reportType>" for multiple tranches
    @Disbursal
    Examples:
      | LogicalID | ProductType             | reportType               | Tranche |
      | CV00004   | Commercial Vehicle Loan | Generate Delivery Report | 1       |
      | CV00004   | Commercial Vehicle Loan | Generate Delivery Report | 2       |

  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19854: Save Operation Checklist at disbursal stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Disbursal" stage present in context from application grid
    And user moves to main tab of "disbursal"
    And user reads data from the excel file "<DisbursalWB>" under sheet "<DisbursalSheet>" and row <Disbursal_rowNum>
    When user navigates to operation checklist
    And user fills operation checklist at disbursal stage
    And user submits operation checklist
    Then operation checklist should be saved successfully

    @Disbursal
    Examples:
      | LogicalID | ProductType           | DisbursalWB    | DisbursalSheet  | Disbursal_rowNum |
      | SHG00001  | Self Help Group       | disbursal.xlsx | disbursal_entry | 49               |
      | JLG00001  | Joint Liability Group | disbursal.xlsx | disbursal_entry | 49               |

  @AuthoredBy-akash.bansal
    @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-21254: Save the repayment instrument details for <Repayment_Instrument> repayment instrument with existing applicant type as <Applicant_Type> at disbursal stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Disbursal" stage present in context from application grid
    And user executes query to update application creation date from Database
    And user reads data from the excel file "<DisbursalWB>" under sheet "<Disbursal_RepaymentInstrumentSheet>" and row <Disbursal_RepaymentInstrumentSheet_rowNum>
    When user open repayment instrument details for existing customer
    And user selects repayment instrument type as "<Repayment_Instrument>"
    And user selects applicant as "<Applicant_Type>"
    And user open repayment instrument fields to add details
    And user selects the mode of instrument
    And user fills "<Repayment_Instrument>" repayment instrument details
    And user save repayment instrument mandate
    And user save Repayment Instrument Detail Grid
    Then repayment instrument details should be saved successfully
    @Disbursal
    Examples:
      | LogicalID | ProductType           | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Repayment_Instrument | Applicant_Type    |
      | JLG00001  | Joint Liability Group | disbursal.xlsx | repayment_instrument               | 562                                       | Post Dated Cheque    | Primary Applicant |
      | JLG00001  | Joint Liability Group | disbursal.xlsx | repayment_instrument               | 563                                       | Post Dated Cheque    | Primary Applicant |
      | JLG00001  | Joint Liability Group | disbursal.xlsx | repayment_instrument               | 564                                       | Post Dated Cheque    | Primary Applicant |
      | JLG00001  | Joint Liability Group | disbursal.xlsx | repayment_instrument               | 565                                       | Post Dated Cheque    | Primary Applicant |
      | JLG00001  | Joint Liability Group | disbursal.xlsx | repayment_instrument               | 566                                       | Post Dated Cheque    | Primary Applicant |
      | SHG00001  | Self Help Group       | disbursal.xlsx | repayment_instrument               | 555                                       | Post Dated Cheque    | Primary Applicant |
      | SHG00001  | Self Help Group       | disbursal.xlsx | repayment_instrument               | 556                                       | Post Dated Cheque    | Primary Applicant |
      | SHG00001  | Self Help Group       | disbursal.xlsx | repayment_instrument               | 557                                       | Post Dated Cheque    | Primary Applicant |
      | SHG00001  | Self Help Group       | disbursal.xlsx | repayment_instrument               | 558                                       | Post Dated Cheque    | Primary Applicant |
      | SHG00001  | Self Help Group       | disbursal.xlsx | repayment_instrument               | 559                                       | Post Dated Cheque    | Primary Applicant |
      | SHG00001  | Self Help Group       | disbursal.xlsx | repayment_instrument               | 560                                       | Post Dated Cheque    | Primary Applicant |
      | SHG00001  | Self Help Group       | disbursal.xlsx | repayment_instrument               | 561                                       | Post Dated Cheque    | Primary Applicant |

  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-20910: Verify requested assets in asset details section at disbursal stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Disbursal" stage present in context from application grid
    When user open asset details tab at disbursal stage
    Then user should be able to verify assets requested in asset details section
    @Disbursal
    Examples:
      | LogicalID | ProductType          |
      | CEQ00001  | Commercial Equipment |

  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19854: Save Operation Checklist at disbursal stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Disbursal" stage present in context from application grid
    And user moves to main tab of "disbursal"
    And user reads data from the excel file "<DisbursalWB>" under sheet "<DisbursalSheet>" and row <Disbursal_rowNum>
    When user navigates to operation checklist
    And user fills operation checklist at disbursal stage
    And user submits operation checklist
    Then operation checklist should be saved successfully

    @Disbursal
    Examples:
      | LogicalID | ProductType             | DisbursalWB    | DisbursalSheet  | Disbursal_rowNum |
      | AL00001   | Auto Loan               | disbursal.xlsx | disbursal_entry | 49               |
      | CEQ00001  | Commercial Equipment    | disbursal.xlsx | disbursal_entry | 49               |
      | CV00002   | Commercial Vehicle Loan | disbursal.xlsx | disbursal_entry | 49               |
      | CV00004   | Commercial Vehicle Loan | disbursal.xlsx | disbursal_entry | 49               |

    @Disbursal @PQMStory
    Examples:
      | LogicalID                       | ProductType             | DisbursalWB    | DisbursalSheet  | Disbursal_rowNum |
      | CV00CAS_88943_01                | Commercial Vehicle Loan | disbursal.xlsx | disbursal_entry | 49               |
      | CV00CAS_88946_01                | Commercial Vehicle Loan | disbursal.xlsx | disbursal_entry | 49               |
      | CV00CAS_206825_01               | Commercial Vehicle Loan | disbursal.xlsx | disbursal_entry | 49               |
      | AL_CAS_60813_ContractualIndiv01 | Auto Loan               | disbursal.xlsx | disbursal_entry | 49               |
      | AL_CAS_60813_ContractualIndiv02 | Auto Loan               | disbursal.xlsx | disbursal_entry | 49               |
      | AL_CAS_60813_ContractualIndiv03 | Auto Loan               | disbursal.xlsx | disbursal_entry | 49               |
      | AL_CAS_60813_ContractualIndiv04 | Auto Loan               | disbursal.xlsx | disbursal_entry | 49               |
      | AL_CAS_60813_ContractualIndiv05 | Auto Loan               | disbursal.xlsx | disbursal_entry | 49               |


  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-21256: Save the repayment instrument details for <Repayment_Instrument> repayment instrument with applicant type as <Applicant_Type> at disbursal stage for <ProductType> multi asset LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Disbursal" stage present in context from application grid
    When user opens application tranche "<Tranche>" at disbursal stage
    And user moves to repayment instrument tab
    And user reads data from the excel file "<DisbursalWB>" under sheet "<Disbursal_RepaymentInstrumentSheet>" and row <Disbursal_RepaymentInstrumentSheet_rowNum>
    And user selects repayment instrument type as "<Repayment_Instrument>"
    And user selects applicant as "<Applicant_Type>"
    And user open repayment instrument fields to add details
    And user selects the mode of instrument
    And user fills "<Repayment_Instrument>" repayment instrument details
    And user save repayment instrument mandate
    And user save Repayment Instrument Detail Grid
    Then repayment instrument details should be saved successfully for "<ProductType>" multi asset
    @Disbursal
    Examples:
      | LogicalID | ProductType             | Tranche | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Repayment_Instrument | Applicant_Type |
      | CEQ00001  | Commercial Equipment    | 1       | disbursal.xlsx | repayment_instrument               | 504                                       | Auto Debit           | Manufacturer   |
      | CV00002   | Commercial Vehicle Loan | 1       | disbursal.xlsx | repayment_instrument               | 551                                       | Post Dated Cheque    | Dealer         |
#      | CV00004   | Commercial Vehicle Loan | disbursal.xlsx | repayment_instrument               | 542                                       | Auto Debit           | Manufacturer   |

  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-21396: Validate delete operation in repayment instrument details at <ApplicationStage> of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user open repayment instrument details
    When user deletes all existing repayment instrument details
    And user save Repayment Instrument Detail Grid
    Then repayment instrument details should be deleted
    @Disbursal
    Examples:
      | LogicalID | ProductType | ApplicationStage |
      | HL00001   | Home Loan   | Disbursal        |


  @AuthoredBy-harshita.nayak
    @ImplementedBy-harshita.nayak
  Scenario Outline: ACAUTOCAS-19844:Save the repayment instrument details for <Repayment_Instrument> repayment instrument with applicant type as <Applicant_Type> at disbursal stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Disbursal" stage present in context from application grid
    When user open repayment instrument details
    And user reads data from the excel file "<DisbursalWB>" under sheet "<Disbursal_RepaymentInstrumentSheet>" and row <Disbursal_RepaymentInstrumentSheet_rowNum>
    And user selects repayment instrument type as "<Repayment_Instrument>"
    And user selects applicant as "<Applicant_Type>"
    And user open repayment instrument fields to add details
    And user selects the mode of instrument
    And user fills "<Repayment_Instrument>" repayment instrument details
    And user save repayment instrument mandate
    And user save Repayment Instrument Detail Grid
    Then repayment instrument details should be saved successfully
    @Disbursal
    Examples:
      | LogicalID | ProductType           | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Repayment_Instrument        | Applicant_Type    |
#      | CV00001   | Commercial Vehicle Loan | disbursal.xlsx | repayment_instrument               | 465                                       | Electronic Clearence System | Manufacturer      |
      | FE00001   | Farm Equipment        | disbursal.xlsx | repayment_instrument               | 501                                       | Post Dated Cheque           | Primary Applicant |
      | KCC00001  | Kisan Credit Card     | disbursal.xlsx | repayment_instrument               | 502                                       | Auto Debit                  | Primary Applicant |
      | GL00001   | Gold Loan             | disbursal.xlsx | repayment_instrument               | 503                                       | Auto Debit                  | Primary Applicant |
      | MHF00001  | Micro Housing Finance | disbursal.xlsx | repayment_instrument               | 502                                       | Auto Debit                  | Builder Company   |
      | AGRL00001 | Agriculture Loan      | disbursal.xlsx | repayment_instrument               | 490                                       | Post Dated Cheque           | Primary Applicant |
#      | SHG00001  | Self Help Group         | disbursal.xlsx | repayment_instrument               | 513                                       | National Automated Clearing House | Primary Applicant |
#      | JLG00001  | Joint Liability Group   | disbursal.xlsx | repayment_instrument               | 513                                       | National Automated Clearing House | Primary Applicant |
      | PL00001   | Personal Loan         | disbursal.xlsx | repayment_instrument               | 552                                       | Electronic Clearence System | Primary Applicant |
      | HL00001   | Home Loan             | disbursal.xlsx | repayment_instrument               | 553                                       | Post Dated Cheque           | Builder Company   |
      | LAP00001  | Loan Against Property | disbursal.xlsx | repayment_instrument               | 553                                       | Post Dated Cheque           | Builder Company   |
      | PL00002   | Personal Loan         | disbursal.xlsx | repayment_instrument               | 567                                       | Electronic Clearence System | Primary Applicant |
     #     | AL00002   | Auto Loan             | disbursal.xlsx | repayment_instrument               | 568                                       | Auto Debit                  | Manufacturer      |
      | MHF00002  | Micro Housing Finance | disbursal.xlsx | repayment_instrument               | 593                                       | Auto Debit                  | Builder Company   |

  @AuthoredBy-harshita.nayak
    @ImplementedBy-harshita.nayak
  Scenario Outline: ACAUTOCAS-19845: Save the repayment parameters with Disbursal To as Manufacturer at disbursal stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Disbursal" stage present in context from application grid
    And user reads data from the excel file "<RepaymentParameters_WB>" under sheet "<RepaymentParameters_Sheet>" and row <RepaymentParameters_RowNum>
    When user open repayment parameters tab
    And user fills Disbursal To as Manufacturer
    And user save repayment parameters
    Then repayment parameters should be saved successfully
    @Disbursal
    Examples:
      | LogicalID | RepaymentParameters_WB    | RepaymentParameters_Sheet | RepaymentParameters_RowNum | ProductType             |
      | CV00001   | repayment_parameters.xlsx | repayment_parameters      | 2979                       | Commercial Vehicle Loan |
      | AL00002   | repayment_parameters.xlsx | repayment_parameters      | 2982                       | Auto Loan               |
      | CV00005   | repayment_parameters.xlsx | repayment_parameters      | 2979                       | Commercial Vehicle Loan |


  @AuthoredBy-harshita.nayak
    @ImplementedBy-harshita.nayak
  Scenario Outline: ACAUTOCAS-19846: Save the asset details at disbursal stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Disbursal" stage present in context from application grid
    When user open asset details tab at disbursal stage
    And user save asset details at disbursal stage
    Then asset details page should be save successfully

    @Disbursal
    Examples:
      | LogicalID | ProductType             |
      | CV00001   | Commercial Vehicle Loan |
      | CV00005   | Commercial Vehicle Loan |


  @ImplementedBy-ashutosh.kumar2
    @E2EConsumer
  Scenario Outline: ACAUTOCAS-19847: User capture the document at disbursal stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Disbursal" stage present in context from application grid
    And user selects document tab
    And user reads data from the excel file "<DocumentWB>" under sheet "<Document_home>" and row <Document_home_rowNum>
    And user selects the document
    And user selects document status as "<Status>"
    When user submit the document
    Then documents should be submitted successfully
    @Disbursal
    Examples:
      | ProductType      | LogicalID | DocumentWB    | Document_home | Document_home_rowNum | Status              |
      | Consumer Durable | CD00001   | document.xlsx | home          | 2                    | Received & Uploaded |
      | Consumer Durable | CD00001   | document.xlsx | home          | 1                    | Received & Uploaded |


  @ImplementedBy-ashutosh.kumar2
  Scenario Outline: ACAUTOCAS-19848: User navigate to ECM Screen at Credit Approval Stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logout from CAS
    And user logged in "ECM" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Case Search of ECM
    And user search for an application in Case Search from context in ECM
    When user opens first task assigned in Case Search to application in ECM
    And user group the document by "primary applicant" in ecm
    And user reads data from the excel file "<DocumentWB>" under sheet "<Document_home>" and row <Document_home_rowNum>
    Then uploaded document should be present in ECM
    @Disbursal
    Examples:
      | LogicalID | ProductType      | DocumentWB    | Document_home | Document_home_rowNum |
      | CD00001   | Consumer Durable | document.xlsx | home          | 2                    |
      | CD00001   | Consumer Durable | document.xlsx | home          | 1                    |


  @AuthoredBy-vipin.kishor
    @ImplementedBy-vipin.kishor
  Scenario Outline:Save Deviation details at disbursal stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Disbursal" stage present in context from application grid
    And user navigates to deviation tab
    When user save deviation details
    Then deviation should be saved successfully
    @Disbursal
    Examples:
      | LogicalID | ProductType |
      | OL00001   | Omni Loan   |

  @AuthoredBy-harshita.nayak
    @ImplementedBy-harshita.nayak
  Scenario Outline: ACAUTOCAS-21397:Navigation of repayment parameters details for "<Tranche>" for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Disbursal" stage present in context from application grid
    When user opens application tranche "<Tranche>" at disbursal stage
    Then user should be navigated to the main page of repayment parameter details

    @Disbursal
    Examples:
      | LogicalID | ProductType             | Tranche |
      | CV00004   | Commercial Vehicle Loan | 1       |
      | OL00001   | Omni Loan               | 2       |

    @MultipleDisbursal
    Examples:
      | LogicalID | ProductType             | Tranche |
      | CV00004   | Commercial Vehicle Loan | 2       |
      | OL00001   | Omni Loan               | 1       |
      | OL00001   | Omni Loan               | 3       |

  @ImplementedBy-ashutosh.kumar2
    @E2EConsumer
  Scenario Outline: ACAUTOCAS-19849: user fill the disbursal checklist at disbursal stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Disbursal" stage present in context from application grid
    When user moves to main tab of "disbursal"
    And user reads data from the excel file "<DisbursalWB>" under sheet "<DisbursalSheet>" and row <Disbursal_rowNum>
    And user fill disbursal Checklist
    And user submit the disbursal checklist
    Then disbursal checklist saved successfully

    @Disbursal
    Examples:
      | LogicalID     | DisbursalWB    | DisbursalSheet  | Disbursal_rowNum | ProductType      |
      | CD00001       | disbursal.xlsx | disbursal_entry | 49               | Consumer Durable |
      | AGRL00001     | disbursal.xlsx | disbursal_entry | 50               | Agriculture Loan |
      | MULF_BD_00001 | disbursal.xlsx | disbursal_entry | 50               | Multi Facility   |

  @ImplementedBy-ashutosh.kumar2
    @E2EConsumer
  Scenario Outline: ACAUTOCAS-19850: user fill the payee details at disbursal stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Disbursal" stage present in context from application grid
    When user navigates disbursal main screen
    And user opens payee details on disbursal
    And user reads data from the excel file "<DisbursalWB>" under sheet "<DisbursalSheet>" and row <Disbursal_rowNum>
    And user fill the business partner type as "Primary Applicant"
    And user selects payment mode as "Cheque"
    And user fills dealing bank in payee details
    And user saves the disbursal
    Then disbursal entries saved successfully
    @Disbursal
    Examples:
      | LogicalID | ProductType      | DisbursalWB    | DisbursalSheet  | Disbursal_rowNum |
      | CD00001   | Consumer Durable | disbursal.xlsx | disbursal_entry | 49               |

  Scenario Outline: ACAUTOCAS-21398: Open application at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application of "<ApplicationStage>" stage present in context from application grid
    Then application should open successfully at "<ApplicationStage>"

    @Disbursal
    Examples:
      | LogicalID | ApplicationStage | ProductType      |
      | AGRL00001 | Disbursal        | Agriculture Loan |
    @MultipleDisbursal
    Examples:
      | LogicalID | ApplicationStage | ProductType      |
      | AGRL00001 | Disbursal        | Agriculture Loan |

  @ImplementedBy-rishabh.sachan
  Scenario Outline: ACAUTOCAS-20911: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] user fills mandatory fields and executes charge policy for <DisbursalType> disbursal at disbursal stage for <ProductType>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Disbursal" stage present in context from application grid
    And user moves to main tab of "disbursal"
    And user reads data from the excel file "<DisbursalWB>" under sheet "<DisbursalSheet>" and row <Disbursal_rowNum>
    And user adds entry on disbursal page
    And user fills mandatory field in "<DisbursalType>" disbursal entry on disbursal page for "<ProductType>"
    When user execute charge policy at disbursal stage
    Then charge policy executed at disbursal stage successfully
    @Disbursal
    Examples:
      | LogicalID     | ProductType      | DisbursalWB    | DisbursalSheet  | Disbursal_rowNum | DisbursalType | RevisitCount |
      | AGRL00001     | Agriculture Loan | disbursal.xlsx | disbursal_entry | 50               | Multiple      |              |
      | OL00001       | Omni Loan        | disbursal.xlsx | disbursal_entry | 50               | Single        |              |
      | MULF_BD_00001 | Multi Facility   | disbursal.xlsx | disbursal_entry | 50               | Single        |              |

    @MultipleDisbursal
    Examples:
      | LogicalID | ProductType      | DisbursalWB    | DisbursalSheet  | Disbursal_rowNum | DisbursalType | RevisitCount |
      | AGRL00001 | Agriculture Loan | disbursal.xlsx | disbursal_entry | 51               | Multiple      |              |
      | OL00001   | Omni Loan        | disbursal.xlsx | disbursal_entry | 50               | Single        |              |

  @ImplementedBy-rishabh.sachan
  Scenario Outline: ACAUTOCAS-20912: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] user fills payee details at disbursal stage for <ProductType>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Disbursal" stage present in context from application grid
    And user moves to main tab of "disbursal"
    And user reads data from the excel file "<DisbursalWB>" under sheet "<DisbursalSheet>" and row <Disbursal_rowNum>
    And user opens payee details on disbursal
    And user selects payment mode as "Cheque"
    And user fills dealing bank in payee details
    When user saves the disbursal
    Then disbursal entries saved successfully
    @Disbursal
    Examples:
      | LogicalID     | ProductType             | DisbursalWB    | DisbursalSheet  | Disbursal_rowNum | RevisitCount |
      | AGRL00001     | Agriculture Loan        | disbursal.xlsx | disbursal_entry | 50               |              |
      | CV00004       | Commercial Vehicle Loan | disbursal.xlsx | disbursal_entry | 50               |              |
      | OL00001       | Omni Loan               | disbursal.xlsx | disbursal_entry | 50               |              |
      | MULF_BD_00001 | Multi Facility          | disbursal.xlsx | disbursal_entry | 50               |              |

    @MultipleDisbursal
    Examples:
      | LogicalID | ProductType             | DisbursalWB    | DisbursalSheet  | Disbursal_rowNum | RevisitCount |
      | AGRL00001 | Agriculture Loan        | disbursal.xlsx | disbursal_entry | 51               |              |
      | CV00004   | Commercial Vehicle Loan | disbursal.xlsx | disbursal_entry | 50               |              |
      | OL00001   | Omni Loan               | disbursal.xlsx | disbursal_entry | 50               |              |


  @ImplementedBy-ashutosh.kumar2
  Scenario Outline: ACAUTOCAS-19851:[LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] user initiate the disbursal for <ProductType>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user initiate disbursal
    Then Application should move to "<FinalStage>" Stage

    @Disbursal
    Examples:
      | LogicalID     | ProductType             | FinalStage       | RevisitCount |
      | CD00001       | Consumer Durable        | Disbursal Author |              |
      | AGRL00001     | Agriculture Loan        | Disbursal Author |              |
      | CV00004       | Commercial Vehicle Loan | Disbursal Author |              |
      | OL00001       | Omni Loan               | Disbursal Author |              |
      | MULF_BD_00001 | Multi Facility          | Disbursal Author |              |

    @MultipleDisbursal
    Examples:
      | LogicalID | ProductType             | FinalStage       | RevisitCount |
      | AGRL00001 | Agriculture Loan        | Disbursal Author |              |
      | CV00004   | Commercial Vehicle Loan | Disbursal Author |              |

  @ImplementedBy-rishabh.garg
    @AuthoredBy-anshika.gupta
  #PQM-12_CAS-80399,#PQM-14_CAS-206364,#PQM-03_CAS-52837
  #Update configuration cases need restart server to run all these cases, hence not executed. for TC - PQM-14_CAS-206364
  Scenario Outline: ACAUTOCAS-19852:[LogicalID-<LogicalID>][SendBack-<SendBack>] Disbursal initiation at disbursal stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Disbursal" stage present in context from application grid
    When user moves to main tab of "disbursal"
    And user reads data from the excel file "<DisbursalWB>" under sheet "<DisbursalSheet>" and row <Disbursal_rowNum>
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
      | LogicalID  | DisbursalWB    | DisbursalSheet  | Disbursal_rowNum | ProductType             | FinalStage       | PaymentMode              | SendBack |
      | EDU00001   | disbursal.xlsx | disbursal_entry | 49               | Education Loan          | Disbursal Author | Cheque                   |          |
      | CV00001    | disbursal.xlsx | disbursal_entry | 49               | Commercial Vehicle Loan | Disbursal Author | Cheque                   |          |
      | FE00001    | disbursal.xlsx | disbursal_entry | 49               | Farm Equipment          | Disbursal Author | Cheque                   |          |
      | KCC00001   | disbursal.xlsx | disbursal_entry | 49               | Kisan Credit Card       | Disbursal Author | Cheque                   |          |
      | GL00001    | disbursal.xlsx | disbursal_entry | 49               | Gold Loan               | Disbursal Author | Cheque                   |          |
      | MHF00001   | disbursal.xlsx | disbursal_entry | 49               | Micro Housing Finance   | VALUATION        | Cheque                   |          |
#      |           | disbursal.xlsx | disbursal_entry | 50               | Consumer Durable        | Cheque                 ||
      | PL00001    | disbursal.xlsx | disbursal_entry | 49               | Personal Loan           | Disbursal Author | Cheque                   |          |
      | HL00001    | disbursal.xlsx | disbursal_entry | 59               | Home Loan               | VALUATION        | Electronic Fund Transfer |          |
      | LAP00001   | disbursal.xlsx | disbursal_entry | 49               | Loan Against Property   | Disbursal        | Cheque                   |          |
      | PL00002    | disbursal.xlsx | disbursal_entry | 69               | Personal Loan           | Disbursal Author | Cheque                   |          |
      | AL00002    | disbursal.xlsx | disbursal_entry | 49               | Auto Loan               | Disbursal Author | Cheque                   |          |
      | SB_AL00003 | disbursal.xlsx | disbursal_entry | 49               | Auto Loan               | Disbursal Author | Cheque                   |          |
      | SB_AL00004 | disbursal.xlsx | disbursal_entry | 49               | Auto Loan               | Disbursal Author | Cheque                   | yes      |
      | EDU00004   | disbursal.xlsx | disbursal_entry | 49               | Education Loan          | Disbursal Author | Cheque                   |          |
      | CV00003    | disbursal.xlsx | disbursal_entry | 49               | Commercial Vehicle Loan | Disbursal Author | Cheque                   |          |
      | MHF00002   | disbursal.xlsx | disbursal_entry | 49               | Micro Housing Finance   | VALUATION        | Cheque                   |          |
      | CV00005    | disbursal.xlsx | disbursal_entry | 49               | Commercial Vehicle Loan | Disbursal Author | Cheque                   |          |

    @Disbursal
    @PQMStory
    Examples:
      | LogicalID                              | ProductType           | FinalStage       | DisbursalWB    | DisbursalSheet  | Disbursal_rowNum | PaymentMode |
      | HL00CAS_25508_AutoDebit_App0           | Home Loan             | VALUATION        | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_25508_AutoDebit_App1           | Home Loan             | VALUATION        | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_25508_AutoDebit_App2           | Home Loan             | VALUATION        | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_25508_AutoDebit_App3           | Home Loan             | VALUATION        | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | MAL00CAS_25508_AutoDebit_App4          | Consumer Vehicle Loan | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | MAL00CAS_25508_AutoDebit_App5          | Consumer Vehicle Loan | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | MAL00CAS_25508_Ecs_App0                | Consumer Vehicle Loan | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_25508_Ecs_App1                 | Home Loan             | VALUATION        | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_25508_Ecs_App2                 | Home Loan             | VALUATION        | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | MAL00CAS_25508_Ecs_App3                | Consumer Vehicle Loan | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | MAL00CAS_25508_Ecs_App4                | Consumer Vehicle Loan | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | MAL00CAS_25508_Ecs_App5                | Consumer Vehicle Loan | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | PL00CAS_25508_Nach_App0                | Personal Loan         | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | MAL00CAS_25508_Nach_App1               | Consumer Vehicle Loan | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_25508_Nach_App2                | Home Loan             | VALUATION        | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_25508_Nach_App3                | Home Loan             | VALUATION        | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | MAL00CAS_25508_Nach_App4               | Consumer Vehicle Loan | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_25508_Pdc_App0                 | Home Loan             | VALUATION        | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_25508_Pdc_App1                 | Home Loan             | VALUATION        | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | MAL00CAS_25508_Pdc_App2                | Consumer Vehicle Loan | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | MAL00CAS_25508_Pdc_App3                | Consumer Vehicle Loan | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_25508_Cash_App0                | Home Loan             | VALUATION        | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_25508_Coupon_App0              | Home Loan             | VALUATION        | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_25508_Das_App0                 | Home Loan             | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | MAL00CAS_25508_Otc_App0                | Consumer Vehicle Loan | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | MAL00CAS_25508_Escrow_App0             | Consumer Vehicle Loan | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_25508_Others_App0              | Home Loan             | VALUATION        | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_25508_Others_App1              | Home Loan             | VALUATION        | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | MAL00CAS_25508_Others_App2             | Consumer Vehicle Loan | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_25508_Others_App3              | Home Loan             | VALUATION        | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | MAL00CAS_25508_Others_App4             | Consumer Vehicle Loan | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_25508_Others_App5              | Home Loan             | VALUATION        | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_112500_Others_App0             | Home Loan             | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | PL00CAS_112500_Others_App1             | Personal Loan         | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | MAL00CAS_112500_Others_App2            | Consumer Vehicle Loan | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | PL00CAS_112500_Others_App3             | Personal Loan         | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_112500_Others_App4             | Home Loan             | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | MAL00CAS_112500_Others_App5            | Consumer Vehicle Loan | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | PL00CAS_206825_Nach_App0               | Personal Loan         | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_206825_Nach_App0               | Home Loan             | VALUATION        | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | MAL00CAS_206825_Nach_App0              | Consumer Vehicle Loan | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | PL00CAS_52837_01                       | Personal Loan         | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_52837_01                       | Home Loan             | VALUATION        | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | MAL00CAS_52837_01                      | Consumer Vehicle Loan | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | PL_CAS_49521_MG_16III                  | Personal Loan         | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | PL00CAS_101659_Pdc_Custodian_LMS_App0  | Personal Loan         | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_101659_Pdc_Custodian_LMS_App0  | Home Loan             | VALUATION        | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | MAL00CAS_101659_Pdc_Custodian_LMS_App0 | Consumer Vehicle Loan | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | PL00CAS_206364_Nach_Physical           | Personal Loan         | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_206364_Nach_Physical           | Home Loan             | VALUATION        | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | MAL00CAS_206364_Nach_Physical          | Consumer Vehicle Loan | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_80399_Default_NACH_02          | Home Loan             | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | MAL0CAS_80399_Default_AD_02            | Consumer Vehicle Loan | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | PL00CAS_206364_Nach_cf_Physical        | Personal Loan         | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_206364_Nach_cf_Physical        | Home Loan             | VALUATION        | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | MAL00CAS_206364_Nach_cf_Physical       | Consumer Vehicle Loan | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |

  @ImplementedBy-manish.yadav2
  #PQM-03_CAS-52837
  Scenario Outline: ACAUTOCAS-20913: complete valuation at disbursal for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<InitialStage>" stage present in context from application grid
    When user save proceed the valuation
    Then Application should move to "<FinalStage>" Stage
    @Disbursal
    Examples:
      | LogicalID | ProductType           | InitialStage | FinalStage       |
      | MHF00001  | Micro Housing Finance | Disbursal    | Disbursal Author |
      | HL00001   | Home Loan             | Disbursal    | Disbursal Author |
      | MHF00002  | Micro Housing Finance | Disbursal    | Disbursal Author |
    @Disbursal
    @PQMStory
    Examples:
      | LogicalID                    | ProductType | InitialStage | FinalStage       |
      | HL00CAS_25508_AutoDebit_App0 | Home Loan   | Disbursal    | Disbursal Author |
      | HL00CAS_25508_AutoDebit_App1 | Home Loan   | Disbursal    | Disbursal Author |
      | HL00CAS_25508_AutoDebit_App2 | Home Loan   | Disbursal    | Disbursal Author |
      | HL00CAS_25508_AutoDebit_App3 | Home Loan   | Disbursal    | Disbursal Author |
      | HL00CAS_25508_Ecs_App1       | Home Loan   | Disbursal    | Disbursal Author |
      | HL00CAS_25508_Ecs_App2       | Home Loan   | Disbursal    | Disbursal Author |
      | HL00CAS_25508_Nach_App2      | Home Loan   | Disbursal    | Disbursal Author |
      | HL00CAS_25508_Nach_App3      | Home Loan   | Disbursal    | Disbursal Author |
      | HL00CAS_25508_Pdc_App0       | Home Loan   | Disbursal    | Disbursal Author |
      | HL00CAS_25508_Pdc_App1       | Home Loan   | Disbursal    | Disbursal Author |
      | HL00CAS_25508_Cash_App0      | Home Loan   | Disbursal    | Disbursal Author |
      | HL00CAS_25508_Coupon_App0    | Home Loan   | Disbursal    | Disbursal Author |
      | HL00CAS_25508_Others_App0    | Home Loan   | Disbursal    | Disbursal Author |
      | HL00CAS_25508_Others_App1    | Home Loan   | Disbursal    | Disbursal Author |
      | HL00CAS_25508_Others_App3    | Home Loan   | Disbursal    | Disbursal Author |
      | HL00CAS_25508_Others_App5    | Home Loan   | Disbursal    | Disbursal Author |
      | HL00CAS_206825_Nach_App0     | Home Loan   | Disbursal    | Disbursal Author |
      | HL00CAS_52837_01             | Home Loan   | Disbursal    | Disbursal Author |
      | HL00CAS_206364_Nach_Physical | Home Loan   | Disbursal    | Disbursal Author |

  @ImplementedBy-rishabh.garg
    @AuthoredBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19853: Initiate <TrancheNo> Tranche from disbursal stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Disbursal" stage present in context from application grid
    When user moves to main tab of "disbursal"
    And user reads data from the excel file "<DisbursalWB>" under sheet "<DisbursalSheet>" and row <Disbursal_rowNum>
    And user fills disbursal date
    And user opens payee details on disbursal
    And user selects payment mode as "Cheque"
    And user fills dealing bank in payee details
    And user saves the disbursal
    And user initiate disbursal
    Then Application should move to "Disbursal Author" Stage using "<ViewSearch>" service
    @Disbursal
    Examples:
      | LogicalID | TrancheNo | DisbursalWB    | DisbursalSheet  | Disbursal_rowNum | ProductType    | ViewSearch |
      | EDU00002  | second    | disbursal.xlsx | disbursal_entry | 49               | Education Loan | View       |

    @PQMStory @Disbursal
    Examples:
      | LogicalID                        | TrancheNo | DisbursalWB    | DisbursalSheet  | Disbursal_rowNum | ProductType    | ViewSearch |
      | EDU_CAS_60813_ContractualIndiv01 | second    | disbursal.xlsx | disbursal_entry | 49               | Education Loan | View       |
      | EDU_CAS_60813_ContractualIndiv02 | second    | disbursal.xlsx | disbursal_entry | 49               | Education Loan | View       |
      | EDU_CAS_60813_ContractualIndiv03 | second    | disbursal.xlsx | disbursal_entry | 49               | Education Loan | View       |
      | EDU_CAS_60813_ContractualIndiv04 | second    | disbursal.xlsx | disbursal_entry | 49               | Education Loan | View       |
      | EDU_CAS_60813_ContractualIndiv05 | second    | disbursal.xlsx | disbursal_entry | 49               | Education Loan | View       |


  @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-21255: Fill the payee details at disbursal stage for existing customer for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Disbursal" stage present in context from application grid
    When user navigates to disbursal main screen
    And user reads data from the excel file "<DisbursalWB>" under sheet "<DisbursalSheet>" and row <Disbursal_rowNum>
    And user navigate to disbursal entry for existing customer
    And user fills disbursal entry on disbursal page
    And user clicks on add to list the payee details
    Then disbursal entries should be added to list successfully
    @Disbursal
    Examples:
      | LogicalID | ProductType           | DisbursalWB    | DisbursalSheet  | Disbursal_rowNum |
      | JLG00001  | Joint Liability Group | disbursal.xlsx | disbursal_entry | 54               |
      | JLG00001  | Joint Liability Group | disbursal.xlsx | disbursal_entry | 55               |
      | JLG00001  | Joint Liability Group | disbursal.xlsx | disbursal_entry | 56               |
      | JLG00001  | Joint Liability Group | disbursal.xlsx | disbursal_entry | 57               |
      | JLG00001  | Joint Liability Group | disbursal.xlsx | disbursal_entry | 58               |
      | SHG00001  | Self Help Group       | disbursal.xlsx | disbursal_entry | 61               |
      | SHG00001  | Self Help Group       | disbursal.xlsx | disbursal_entry | 62               |
      | SHG00001  | Self Help Group       | disbursal.xlsx | disbursal_entry | 63               |
      | SHG00001  | Self Help Group       | disbursal.xlsx | disbursal_entry | 64               |
      | SHG00001  | Self Help Group       | disbursal.xlsx | disbursal_entry | 65               |
      | SHG00001  | Self Help Group       | disbursal.xlsx | disbursal_entry | 66               |
      | SHG00001  | Self Help Group       | disbursal.xlsx | disbursal_entry | 67               |

#  @AuthoredBy-anshika.gupta
#  @ImplementedBy-anshika.gupta
#  Scenario Outline: Update repayment parameters for <ProductType> multi asset LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "Disbursal" stage present in context from application grid
#    When user opens application tranche "<Tranche>" at disbursal stage
#    And user open repayment@ parameters tab
#    And user reads data from the excel file "<RepaymentParameters_WB>" under sheet "<RepaymentParameters_Sheet>" and row <RepaymentParameters_RowNum>
#    And user updates repayment parameter details
#    And user save repayment parameters
#    Then repayment parameters should be updated successfully for "<ProductType>" multi asset
#    @Disbursal
#    Examples:
#      | LogicalID | RepaymentParameters_WB             | RepaymentParameters_Sheet | RepaymentParameters_RowNum | ProductType          | Tranche |
#      | CEQ00001  | repayment_parameters_end_flow.xlsx | repayment_parameters      | 10                         | Commercial Equipment | 1       |
#      | CEQ00001  | repayment_parameters_end_flow.xlsx | repayment_parameters      | 10                         | Commercial Equipment | 2       |



  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19855: Initiate disbursal for all tranches at disbursal stage for <ProductType> for multi asset LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Disbursal" stage present in context from application grid
    And user reads data from the excel file "<DisbursalWB>" under sheet "<DisbursalSheet>" and row <Disbursal_rowNum>
    When user fills disbursal details for all tranches for "<ProductType>"
    And user initiate disbursal for all tranches
    Then Application should move to "Disbursal Author" Stage

    @Disbursal
    Examples:
      | LogicalID | ProductType             | DisbursalWB    | DisbursalSheet  | Disbursal_rowNum |
      | AL00001   | Auto Loan               | disbursal.xlsx | disbursal_entry | 49               |
      | CEQ00001  | Commercial Equipment    | disbursal.xlsx | disbursal_entry | 49               |
      | CV00002   | Commercial Vehicle Loan | disbursal.xlsx | disbursal_entry | 49               |
      | OL00001   | Omni Loan               | disbursal.xlsx | disbursal_entry | 50               |

    @Disbursal @PQMStory
    Examples:
      | LogicalID         | ProductType             | DisbursalWB    | DisbursalSheet  | Disbursal_rowNum |
      | CV00CAS_88943_01  | Commercial Vehicle Loan | disbursal.xlsx | disbursal_entry | 49               |
      | CV00CAS_88946_01  | Commercial Vehicle Loan | disbursal.xlsx | disbursal_entry | 49               |
      | CV00CAS_206825_01 | Commercial Vehicle Loan | disbursal.xlsx | disbursal_entry | 49               |


  @AuthoredBy-yash.sharma
    @ImplementedBy-yash.sharma
  Scenario Outline: Initiate disbursal for all tranches at disbursal stage waiving charges for <ProductType> for multi asset LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<DisbursalWB>" under sheet "<DisbursalSheet>" and row <Disbursal_rowNum>
    When user fills disbursal details for all tranches for "<ProductType>" along with waiving off charges
    And user initiate disbursal for all tranches
    Then Application should move to "Disbursal Author" Stage
    @Disbursal @PQMStory
    Examples:
      | LogicalID                       | ProductType | DisbursalWB    | DisbursalSheet  | Disbursal_rowNum |
      | AL_CAS_60813_ContractualIndiv01 | Auto Loan   | disbursal.xlsx | disbursal_entry | 49               |
      | AL_CAS_60813_ContractualIndiv02 | Auto Loan   | disbursal.xlsx | disbursal_entry | 49               |
      | AL_CAS_60813_ContractualIndiv03 | Auto Loan   | disbursal.xlsx | disbursal_entry | 49               |
      | AL_CAS_60813_ContractualIndiv04 | Auto Loan   | disbursal.xlsx | disbursal_entry | 49               |
      | AL_CAS_60813_ContractualIndiv05 | Auto Loan   | disbursal.xlsx | disbursal_entry | 49               |


  @AuthoredBy-akash.bansal
    @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-21257: Initiate disbursal for all tranches at disbursal stage for <ProductType> for LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Disbursal" stage present in context from application grid
    And user navigates to disbursal main screen
    And user reads data from the excel file "<DisbursalWB>" under sheet "<DisbursalSheet>" and row <Disbursal_rowNum>
    When user initiate disbursal for all tranches
    Then Application should move to "Disbursal Author" Stage

    @Disbursal
    Examples:
      | LogicalID | ProductType           | DisbursalWB    | DisbursalSheet  | Disbursal_rowNum |
      | JLG00001  | Joint Liability Group | disbursal.xlsx | disbursal_entry | 49               |
      | SHG00001  | Self Help Group       | disbursal.xlsx | disbursal_entry | 49               |

################################################ DCC_SCHEDULING ##################################################################################

  @AuthoredBy-tanya
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-21399: Check disbursal details are in view mode for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "DCC_SCHEDULING" stage present in context from application grid
    And user navigates to Disbursal Details Tab
    When user navigates to "<DisbursalTab>" of first tranche
    Then "<DisbursalTab>" should be in the view mode

    @DCCScheduling
    Examples:
      | LogicalID | ProductType           | DisbursalTab                 |
      | SHG00001  | Self Help Group       | Repayment Parameters         |
      | SHG00001  | Self Help Group       | Repayment Instrument Details |
      | SHG00001  | Self Help Group       | Disbursal Details            |
      | JLG00001  | Joint Liability Group | Repayment Parameters         |
      | JLG00001  | Joint Liability Group | Repayment Instrument Details |
      | JLG00001  | Joint Liability Group | Disbursal Details            |

  #PQM-23_CAS-206364
  #check activity to error in Loan booking.
  Scenario Outline: [LogicalID-<LogicalID>][SendBack-<SendBack>] Disbursal should not be initiated as mandate id not received for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Disbursal" stage present in context from application grid
    And user moves to main tab of "disbursal"
    And user reads data from the excel file "<DisbursalWB>" under sheet "<DisbursalSheet>" and row <Disbursal_rowNum>
    And user clicks on add entry on disbursal page
    And user fills mandatory field in disbursal entry on disbursal page for "<ProductType>"
    And user fills disbursal Checklist
    And user opens payee details on disbursal
    And user selects payment mode as "<PaymentMode>"
    And user fills payment details of "<PaymentMode>"
    When Click on disbursal initiate without "Authorization Success"
    Then Disbursal should not be initiated with validation come for "mandate id not received"

    @Disbursal
    @PQMStory
    Examples:
      | LogicalID                      | ProductType           | FinalStage       | DisbursalWB    | DisbursalSheet  | Disbursal_rowNum | PaymentMode |
      | PL00CAS_206364_Nach_MandateId  | Personal Loan         | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL00CAS_206364_Nach_MandateId  | Home Loan             | VALUATION        | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | MAL00CAS_206364_Nach_MandateId | Consumer Vehicle Loan | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |

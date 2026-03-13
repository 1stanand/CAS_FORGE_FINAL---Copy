@Epic-E2E
@Conventional
@E2EOrder
@Release
@PostApproval
@Order
  #FeatureID-ACAUTOCAS-17204
Feature: End to end work flow for All LOB Order Wise

######################################## STAGE 9: POST APPROVAL #############################################################################################################################


#------------------------------------------------ ASSET REQUESTED TAB --------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------
  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19866: Verify collateral details on asset requested page at post approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Post Approval" stage present in context from application grid
    And user navigates to Loan Details Tab
    When user navigates to asset requested page at "Post Approval" stage
    And user views the multiple asset details
    And user opens Collateral Details section
    Then collateral details should be generated
    Examples:
      | LogicalID | ProductType |
      | AL00001   | Auto Loan   |

  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19867: Validate count of generated collaterals in collateral details on asset requested page for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Post Approval" stage present in context from application grid
#    And user navigates to Loan Details Tab
    When user navigates to asset requested page at "Post Approval" stage
    And user views the multiple asset details
    And user stores the quantity of asset requested in context
    And user opens Collateral Details section
    Then count of collaterals generated should match with the quantity of asset requested

    Examples:
      | LogicalID | ProductType |
      | AL00001   | Auto Loan   |


#------------------------------------------------ COLLATERAL TAB --------------------------------------------------------------------------------------------------------------
  @AuthoredBy-anshika.gupta
    @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-19868: Save collateral at post approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Post Approval" stage present in context from application grid
    When user opens Collateral Page for adding new collateral for "Post Approval"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_sheetName>" and row <Collateral_sheet_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    Then collateral details should be saved successfully

    Examples:
      | LogicalID | CollSubType                 | CollateralWB    | Collateral_sheetName        | Collateral_sheet_rowNum | ProductType |
      | AL00001   | National Saving Certificate | collateral.xlsx | national_saving_certificate | 383                     | Auto Loan   |

    @PQMStory
    Examples:
      | LogicalID                       | CollSubType                 | CollateralWB    | Collateral_sheetName        | Collateral_sheet_rowNum | ProductType |
      | AL_CAS_60813_ContractualIndiv01 | National Saving Certificate | collateral.xlsx | national_saving_certificate | 383                     | Auto Loan   |
      | AL_CAS_60813_ContractualIndiv02 | National Saving Certificate | collateral.xlsx | national_saving_certificate | 383                     | Auto Loan   |
      | AL_CAS_60813_ContractualIndiv03 | National Saving Certificate | collateral.xlsx | national_saving_certificate | 383                     | Auto Loan   |
      | AL_CAS_60813_ContractualIndiv04 | National Saving Certificate | collateral.xlsx | national_saving_certificate | 383                     | Auto Loan   |
      | AL_CAS_60813_ContractualIndiv05 | National Saving Certificate | collateral.xlsx | national_saving_certificate | 383                     | Auto Loan   |

  @AuthoredBy-harshita.nayak
    @ImplementedBy-harshita.nayak
  Scenario Outline: ACAUTOCAS-19869: Validate sanction letter download at Post Approval stage for a <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Post Approval" stage present in context from application grid
    When user click on sanction letter
#    Then Sanction letter should be generate successfully
    Then Sanction letter should be generate successfully for "<ProductType>"
    Examples:
      | LogicalID | ProductType             |
      | CV00001   | Commercial Vehicle Loan |
      | CV00003   | Commercial Vehicle Loan |
      | CV00005   | Commercial Vehicle Loan |

  @AuthoredBy-harshita.nayak
    @ImplementedBy-harshita.nayak
  Scenario Outline: Generate <reportType> report at Post Approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Post Approval" stage present in context from application grid
    When user open "<reportType>" reports for disbursal
    Then user verify "<reportType>" report
    Examples:
      | LogicalID | ProductType             | reportType               |
      | CV00002   | Commercial Vehicle Loan | Generate Delivery Report |
      | CV00003   | Commercial Vehicle Loan | Generate Delivery Report |
      | CV00005   | Commercial Vehicle Loan | Generate Delivery Report |

    @PQMStory
    Examples:
      | LogicalID         | ProductType             | reportType               |
      | CV00CAS_88943_01  | Commercial Vehicle Loan | Generate Delivery Report |
      | CV00CAS_88943_02  | Commercial Vehicle Loan | Generate Delivery Report |
      | CV00CAS_88946_01  | Commercial Vehicle Loan | Generate Delivery Report |
      | CV00CAS_206825_01 | Commercial Vehicle Loan | Generate Delivery Report |
      | CV00CAS_80273_01  | Commercial Vehicle Loan | Generate Delivery Report |
      | CV00CAS_90456_01  | Commercial Vehicle Loan | Generate Delivery Report |
      | CV00CAS_90456_02  | Commercial Vehicle Loan | Generate Delivery Report |


  @AuthoredBy-rishabh.sachan
    @ImplementedBy-rishabh.sachan
  Scenario Outline: ACAUTOCAS-19870: Validate sanction letter generation under customer communication history at Post Approval stage for a <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Post Approval" stage present in context from application grid
    And user click on the customer communication history section
    When user click on sanction letter under customer communication history section
#    Then Sanction letter should be generate successfully
    Then Sanction letter should be generate successfully for "<ProductType>"
    Examples:
      | LogicalID | ProductType             |
      | FE00001   | Farm Equipment          |
      | KCC00001  | Kisan Credit Card       |
      | CEQ00001  | Commercial Equipment    |
      | MHF00001  | Micro Housing Finance   |
      | AGRL00001 | Agriculture Loan        |
      | HL00001   | Home Loan               |
      | CV00002   | Commercial Vehicle Loan |
      | LAP00001  | Loan Against Property   |
      | KCC00002  | Kisan Credit Card       |
      | CV00004   | Commercial Vehicle Loan |
      | HL00001   | Home Loan               |
      | AL00003   | Auto Loan               |
      | AL00002   | Auto Loan               |
      | OL00001   | Omni Loan               |
      | MHF00002  | Micro Housing Finance   |

    @PQMStory
    Examples:
      | LogicalID         | ProductType             |
      | CV00CAS_88943_01  | Commercial Vehicle Loan |
      | CV00CAS_88943_02  | Commercial Vehicle Loan |
      | CV00CAS_88946_01  | Commercial Vehicle Loan |
      | CV00CAS_206825_01 | Commercial Vehicle Loan |
      | CV00CAS_80273_01  | Commercial Vehicle Loan |
      | CV00CAS_90456_01  | Commercial Vehicle Loan |
      | CV00CAS_90456_02  | Commercial Vehicle Loan |

#  @AuthoredBy-anshika.gupta
#    @ImplementedBy-anshika.gupta
#  Scenario Outline: Save the repayment instrument details for <Repayment_Instrument> repayment instrument with applicant type as <Applicant_Type> at post approval stage for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "Post Approval" stage present in context from application grid
#    When user open repayment instrument details
#    And user reads data from the excel file "<DisbursalWB>" under sheet "<Disbursal_RepaymentInstrumentSheet>" and row <Disbursal_RepaymentInstrumentSheet_rowNum>
#    And user selects repayment instrument type as "<Repayment_Instrument>"
#    And user selects applicant as "<Applicant_Type>"
#    And user open repayment instrument fields to add details
#    And user selects the mode of instrument
#    And user fills "<Repayment_Instrument>" repayment instrument details
#    And user save repayment instrument mandate
#    And user save Repayment Instrument Detail Grid
#    Then repayment instrument details should be saved successfully
#    Examples:
#      | LogicalID | ProductType          | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Repayment_Instrument | Applicant_Type |
#      | CEQ00001  | Commercial Equipment | disbursal.xlsx | repayment_instrument               | 504                                       | Auto Debit           | Manufacturer   |

  @AuthoredBy-harshita.nayak
    @ImplementedBy-harshita.nayak
  Scenario Outline: ACAUTOCAS-19871:Submit the document with <Status> status at Post Approval stage for a <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Post Approval" stage present in context from application grid
    And user selects document tab
    And user reads data from the excel file "<DocumentWB>" under sheet "<Document_home>" and row <Document_home_rowNum>
    And user selects the document
    And user selects document status as "<Status>"
    When user submit the document
    Then documents should be submitted successfully

    Examples:
      | LogicalID | ProductType             | DocumentWB    | Document_home | Document_home_rowNum | Status              |
      | CV00001   | Commercial Vehicle Loan | document.xlsx | home          | 360                  | Received & Uploaded |
      | CV00001   | Commercial Vehicle Loan | document.xlsx | home          | 414                  | Received & Uploaded |
      | CV00001   | Commercial Vehicle Loan | document.xlsx | home          | 361                  | Received            |
      | CV00001   | Commercial Vehicle Loan | document.xlsx | home          | 368                  | Received            |
      | CV00001   | Commercial Vehicle Loan | document.xlsx | home          | 415                  | Received & Uploaded |
      | FE00001   | Farm Equipment          | document.xlsx | home          | 511                  | Received & Uploaded |
      | FE00001   | Farm Equipment          | document.xlsx | home          | 512                  | Received & Uploaded |
      | KCC00001  | Kisan Credit Card       | document.xlsx | home          | 515                  | Received & Uploaded |
      | MHF00001  | Micro Housing Finance   | document.xlsx | home          | 515                  | Received & Uploaded |
      | CEQ00001  | Commercial Equipment    | document.xlsx | home          | 533                  | Received & Uploaded |
      | AGRL00001 | Agriculture Loan        | document.xlsx | home          | 511                  | Received & Uploaded |
      | AGRL00001 | Agriculture Loan        | document.xlsx | home          | 512                  | Received & Uploaded |
      | JLG00001  | Joint Liability Group   | document.xlsx | home          | 555                  | Received & Uploaded |
      | JLG00001  | Joint Liability Group   | document.xlsx | home          | 556                  | Received & Uploaded |
      | JLG00001  | Joint Liability Group   | document.xlsx | home          | 557                  | Received & Uploaded |
      | JLG00001  | Joint Liability Group   | document.xlsx | home          | 558                  | Received & Uploaded |
      | JLG00001  | Joint Liability Group   | document.xlsx | home          | 559                  | Received & Uploaded |
      | JLG00001  | Joint Liability Group   | document.xlsx | home          | 560                  | Received & Uploaded |
      | SHG00001  | Self Help Group         | document.xlsx | home          | 546                  | Received & Uploaded |
      | SHG00001  | Self Help Group         | document.xlsx | home          | 547                  | Received            |
      | SHG00001  | Self Help Group         | document.xlsx | home          | 548                  | Received            |
      | SHG00001  | Self Help Group         | document.xlsx | home          | 549                  | Received            |
      | SHG00001  | Self Help Group         | document.xlsx | home          | 550                  | Received            |
      | SHG00001  | Self Help Group         | document.xlsx | home          | 551                  | Received            |
      | SHG00001  | Self Help Group         | document.xlsx | home          | 552                  | Received            |
      | SHG00001  | Self Help Group         | document.xlsx | home          | 553                  | Received            |
      | CV00003   | Commercial Vehicle Loan | document.xlsx | home          | 361                  | Received            |
      | CV00003   | Commercial Vehicle Loan | document.xlsx | home          | 368                  | Received            |
      | CV00004   | Commercial Vehicle Loan | document.xlsx | home          | 360                  | Received & Uploaded |
      | CV00004   | Commercial Vehicle Loan | document.xlsx | home          | 414                  | Received & Uploaded |
      | CV00004   | Commercial Vehicle Loan | document.xlsx | home          | 361                  | Received            |
      | CV00004   | Commercial Vehicle Loan | document.xlsx | home          | 368                  | Received            |
      | CV00004   | Commercial Vehicle Loan | document.xlsx | home          | 415                  | Received & Uploaded |
      | CV00002   | Commercial Vehicle Loan | document.xlsx | home          | 542                  | Received & Uploaded |
      | KCC00002  | Kisan Credit Card       | document.xlsx | home          | 515                  | Received & Uploaded |
      | PL00001   | Personal Loan           | document.xlsx | home          | 544                  | Received & Uploaded |
      | HL00001   | Home Loan               | document.xlsx | home          | 542                  | Received & Uploaded |
      | LAP00001  | Loan Against Property   | document.xlsx | home          | 515                  | Received & Uploaded |
      | PL00002   | Personal Loan           | document.xlsx | home          | 544                  | Received & Uploaded |
      | AL00003   | Auto Loan               | document.xlsx | home          | 517                  | Received & Uploaded |
      | OL00001   | Omni Loan               | document.xlsx | home          | 368                  | Received & Uploaded |
      | AL00002   | Auto Loan               | document.xlsx | home          | 545                  | Received & Uploaded |
      | MHF00002  | Micro Housing Finance   | document.xlsx | home          | 515                  | Received & Uploaded |

    @PQMStory
    Examples:
      | LogicalID                       | ProductType             | DocumentWB    | Document_home | Document_home_rowNum | Status              |
      | CV00CAS_88943_01                | Commercial Vehicle Loan | document.xlsx | home          | 542                  | Received & Uploaded |
      | CV00CAS_88943_02                | Commercial Vehicle Loan | document.xlsx | home          | 542                  | Received & Uploaded |
      | CV00CAS_88946_01                | Commercial Vehicle Loan | document.xlsx | home          | 542                  | Received & Uploaded |
      | CV00CAS_206825_01               | Commercial Vehicle Loan | document.xlsx | home          | 542                  | Received & Uploaded |
      | CV00CAS_80273_01                | Commercial Vehicle Loan | document.xlsx | home          | 542                  | Received & Uploaded |
      | CV00CAS_90456_01                | Commercial Vehicle Loan | document.xlsx | home          | 542                  | Received & Uploaded |
      | CV00CAS_90456_02                | Commercial Vehicle Loan | document.xlsx | home          | 542                  | Received & Uploaded |
      | CV_CAS_60813_ContractualIndiv01 | Commercial Vehicle Loan | document.xlsx | home          | 542                  | Received & Uploaded |
      | CV_CAS_60813_ContractualIndiv02 | Commercial Vehicle Loan | document.xlsx | home          | 542                  | Received & Uploaded |
      | CV_CAS_60813_ContractualIndiv03 | Commercial Vehicle Loan | document.xlsx | home          | 542                  | Received & Uploaded |
      | CV_CAS_60813_ContractualIndiv04 | Commercial Vehicle Loan | document.xlsx | home          | 542                  | Received & Uploaded |
      | CV_CAS_60813_ContractualIndiv05 | Commercial Vehicle Loan | document.xlsx | home          | 542                  | Received & Uploaded |

  @AuthoredBy-rishabh.garg
    @ImplementedBy-rishabh.garg
  Scenario Outline: [LogicalID-<LogicalID>] Chasis Body Mapping at Post Approval stage for a <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Post Approval" stage present in context from application grid
    And user selects chassis body mapping tab
    When user map body with chassis
    And user saves chassis body mapping
    Then chassis body mapping should be saved successfully

    Examples:
      | LogicalID | ProductType             |
      | CV00002   | Commercial Vehicle Loan |

    @PQMStory
    Examples:
      | LogicalID         | ProductType             |
      | CV00CAS_88943_01  | Commercial Vehicle Loan |
      | CV00CAS_88943_02  | Commercial Vehicle Loan |
      | CV00CAS_88946_01  | Commercial Vehicle Loan |
      | CV00CAS_206825_01 | Commercial Vehicle Loan |
      | CV00CAS_80273_01  | Commercial Vehicle Loan |
      | CV00CAS_90456_01  | Commercial Vehicle Loan |
      | CV00CAS_90456_02  | Commercial Vehicle Loan |

################################################ ECM- CASE SEARCH ##################################################################################

  @ImplementedBy-akash.bansal
    @AuthoredBy-akash.bansal
  Scenario Outline: ACAUTOCAS-19922: Check uploaded document present in ECM for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user logout from CAS
    And user logged in "ECM" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Case Search of ECM
    And user search for an application in Case Search from context in ECM
    When user opens first task assigned in Case Search to application in ECM
    And user reads data from the excel file "<DocumentWB>" under sheet "<Document_home>" and row <Document_home_rowNum>
    Then uploaded document should be present in ECM
    Examples:
      | LogicalID     | ProductType           | DocumentWB    | Document_home | Document_home_rowNum |
      | JLG00001      | Joint Liability Group | document.xlsx | home          | 512                  |
      | SHG00001      | Self Help Group       | document.xlsx | home          | 546                  |
      | MULF_BD_00001 | Multi Facility        | document.xlsx | home          | 546                  |

################################################ SPECIAL CONDITION ##################################################################################

  @DevTrack
  @GA-9.0
  @AuthoredBy-ankit.yadav
  @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>] validate data of special condition present condition tab for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Post Approval" stage present in context from application grid
    When user is on conditions tab
    And special condition section should be visible in condition
    And user reads data from the excel file "<CreditApproval_WB>" under sheet "<CreditApproval_Sheet>" and row <CreditApproval_RowNum>
    And user validate special condition on condition page
    Then special condition should be saved successfully
    Examples:
      | LogicalID     | CreditApproval_WB    | CreditApproval_Sheet | CreditApproval_RowNum | ProductType           |
      | MULF_BD_00001 | credit_approval.xlsx | special_conditions   | 2                     | Multi Facility        |
      | MULF_BD_00001 | credit_approval.xlsx | special_conditions   | 3                     | Multi Facility        |

################################################ REFERENCES ##################################################################################

  @DevTrack
  @GA-9.0
  @AuthoredBy-ankit.yadav
  @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>] Add References at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user validate References Details with fields
    Then references details validated successfully
    Examples:
      | LogicalID     | ProductType    | ApplicationStage | ReferencesWB    | References_home | References_home_Row |
      | MULF_BD_00001 | Multi Facility | Post Approval    | references.xlsx | home            | 0                   |

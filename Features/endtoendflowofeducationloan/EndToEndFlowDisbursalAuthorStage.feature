@Epic-E2E
@AuthoredBy-anshika.gupta
@Conventional
@Order
@E2EOrder
@Release
  #FeatureID-ACAUTOCAS-17204
Feature: End to end work flow for All LOB Order Wise

############################################## STAGE 12: DISBURSAL ################################################################################################################################

#------------------------------------------- DISBURSAL AUTHOR ---------------------------------------------------------------------------------------------------------

  @ImplementedBy-rishabh.garg
  #PQM-27_CAS-55220,#PQM-12_CAS-80399,#PQM-20_CAS-206364,#PQM-03_CAS-52837
  Scenario Outline: ACAUTOCAS-19803: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>]  Approve the disbursal of <ProductType> at disbursal author stage LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    When user navigate to disbursal author Screen
    And user opens an application present in context from disbursal author grid
    And Author accepts the disbursal application on disbursal author page
    Then Application should move to "<ApplicationStage>" Stage using "<ViewSearch>" service
    @DisbursalAuthor
    Examples:
      | LogicalID  | ProductType             | ApplicationStage   | ViewSearch | RevisitCount |
      | EDU00001   | Education Loan          | SEND_TO_OPTS       | Search     |              |
      | EDU00002   | Education Loan          | Tranche Initiation | View       |              |
      | CV00001    | Commercial Vehicle Loan | SEND_TO_OPTS       | Search     |              |
      | FE00001    | Farm Equipment          | SEND_TO_OPTS       | Search     |              |
      | KCC00001   | Kisan Credit Card       | SEND_TO_OPTS       | Search     |              |
      | CD00001    | Consumer Durable        | SEND_TO_OPTS       | Search     |              |
      | GL00001    | Gold Loan               | SEND_TO_OPTS       | Search     |              |
      | MHF00001   | Micro Housing Finance   | SEND_TO_OPTS       | Search     |              |
      | AGRL00001  | Agriculture Loan        | Disbursal          | Search     |              |
      | CV00003    | Commercial Vehicle Loan | SEND_TO_OPTS       | Search     |              |
      | PL00001    | Personal Loan           | SEND_TO_OPTS       | Search     |              |
      | HL00001    | Home  Loan              | SEND_TO_OPTS       | Search     |              |
      | LAP00001   | Loan Against Property   | SEND_TO_OPTS       | Search     |              |
      | PL00002    | Personal Loan           | SEND_TO_OPTS       | Search     |              |
      | OL00001    | Omni Loan               | SEND_TO_OPTS       | Search     |              |
      | EDU00004   | Education Loan          | SEND_TO_OPTS       | Search     |              |
      | AL00002    | Auto Loan               | SEND_TO_OPTS       | Search     |              |
      | SB_AL00003 | Auto Loan               | SEND_TO_OPTS       | Search     |              |
      | SB_AL00004 | Auto Loan               | SEND_TO_OPTS       | Search     |              |
      | MHF00002   | Micro Housing Finance   | SEND_TO_OPTS       | Search     |              |
      | CV00005    | Commercial Vehicle Loan | SEND_TO_OPTS       | Search     |              |

    @PQMStory @DisbursalAuthor
    Examples:
      | LogicalID                        | ProductType             | ApplicationStage   | ViewSearch | RevisitCount |
      | EDU_CAS_60813_ContractualIndiv01 | Education Loan          | Tranche Initiation | View       |              |
      | EDU_CAS_60813_ContractualIndiv02 | Education Loan          | Tranche Initiation | View       |              |
      | EDU_CAS_60813_ContractualIndiv03 | Education Loan          | Tranche Initiation | View       |              |
      | EDU_CAS_60813_ContractualIndiv04 | Education Loan          | Tranche Initiation | View       |              |
      | EDU_CAS_60813_ContractualIndiv05 | Education Loan          | Tranche Initiation | View       |              |
      | CV_CAS_60813_ContractualIndiv01  | Commercial Vehicle Loan | SEND_TO_OPTS       | Search     |              |
      | CV_CAS_60813_ContractualIndiv02  | Commercial Vehicle Loan | SEND_TO_OPTS       | Search     |              |
      | CV_CAS_60813_ContractualIndiv03  | Commercial Vehicle Loan | SEND_TO_OPTS       | Search     |              |
      | CV_CAS_60813_ContractualIndiv04  | Commercial Vehicle Loan | SEND_TO_OPTS       | Search     |              |
      | CV_CAS_60813_ContractualIndiv05  | Commercial Vehicle Loan | SEND_TO_OPTS       | Search     |              |


    @MultipleDisbursal
    Examples:
      | LogicalID | ProductType      | ApplicationStage | ViewSearch | RevisitCount |
      | AGRL00001 | Agriculture Loan | SEND_TO_OPTS     | Search     | 1            |

    @DisbursalAuthor
    @PQMStory
    Examples:
      | LogicalID                              | ProductType           | ApplicationStage | ViewSearch |
      | HL00CAS_25508_AutoDebit_App0           | Home Loan             | SEND_TO_OPTS     | Search     |
      | HL00CAS_25508_AutoDebit_App1           | Home Loan             | SEND_TO_OPTS     | Search     |
      | HL00CAS_25508_AutoDebit_App2           | Home Loan             | SEND_TO_OPTS     | Search     |
      | HL00CAS_25508_AutoDebit_App3           | Home Loan             | SEND_TO_OPTS     | Search     |
      | MAL00CAS_25508_AutoDebit_App4          | Consumer Vehicle Loan | SEND_TO_OPTS     | Search     |
      | MAL00CAS_25508_AutoDebit_App5          | Consumer Vehicle Loan | SEND_TO_OPTS     | Search     |
      | MAL00CAS_25508_Ecs_App0                | Consumer Vehicle Loan | SEND_TO_OPTS     | Search     |
      | HL00CAS_25508_Ecs_App1                 | Home Loan             | SEND_TO_OPTS     | Search     |
      | HL00CAS_25508_Ecs_App2                 | Home Loan             | SEND_TO_OPTS     | Search     |
      | MAL00CAS_25508_Ecs_App3                | Consumer Vehicle Loan | SEND_TO_OPTS     | Search     |
      | MAL00CAS_25508_Ecs_App4                | Consumer Vehicle Loan | SEND_TO_OPTS     | Search     |
      | MAL00CAS_25508_Ecs_App5                | Consumer Vehicle Loan | SEND_TO_OPTS     | Search     |
      | MAL00CAS_25508_Nach_App1               | Consumer Vehicle Loan | SEND_TO_OPTS     | Search     |
      | HL00CAS_25508_Nach_App2                | Home Loan             | SEND_TO_OPTS     | Search     |
      | HL00CAS_25508_Nach_App3                | Home Loan             | SEND_TO_OPTS     | Search     |
      | MAL00CAS_25508_Nach_App4               | Consumer Vehicle Loan | SEND_TO_OPTS     | Search     |
      | HL00CAS_25508_Pdc_App0                 | Home Loan             | SEND_TO_OPTS     | Search     |
      | HL00CAS_25508_Pdc_App1                 | Home Loan             | SEND_TO_OPTS     | Search     |
      | MAL00CAS_25508_Pdc_App2                | Consumer Vehicle Loan | SEND_TO_OPTS     | Search     |
      | MAL00CAS_25508_Pdc_App3                | Consumer Vehicle Loan | SEND_TO_OPTS     | Search     |
      | HL00CAS_25508_Cash_App0                | Home Loan             | SEND_TO_OPTS     | Search     |
      | HL00CAS_25508_Coupon_App0              | Home Loan             | SEND_TO_OPTS     | Search     |
      | MAL00CAS_25508_Otc_App0                | Consumer Vehicle Loan | SEND_TO_OPTS     | Search     |
      | MAL00CAS_25508_Escrow_App0             | Consumer Vehicle Loan | SEND_TO_OPTS     | Search     |
      | HL00CAS_25508_Others_App0              | Home Loan             | SEND_TO_OPTS     | Search     |
      | HL00CAS_25508_Others_App1              | Home Loan             | SEND_TO_OPTS     | Search     |
      | MAL00CAS_25508_Others_App2             | Consumer Vehicle Loan | SEND_TO_OPTS     | Search     |
      | HL00CAS_25508_Others_App3              | Home Loan             | SEND_TO_OPTS     | Search     |
      | MAL00CAS_25508_Others_App4             | Consumer Vehicle Loan | SEND_TO_OPTS     | Search     |
      | HL00CAS_25508_Others_App5              | Home Loan             | SEND_TO_OPTS     | Search     |
      | HL00CAS_112500_Others_App0             | Home Loan             | SEND_TO_OPTS     | Search     |
      | PL00CAS_112500_Others_App1             | Personal Loan         | SEND_TO_OPTS     | Search     |
      | MAL00CAS_112500_Others_App2            | Consumer Vehicle Loan | SEND_TO_OPTS     | Search     |
      | PL00CAS_112500_Others_App3             | Personal Loan         | SEND_TO_OPTS     | Search     |
      | HL00CAS_112500_Others_App4             | Home Loan             | SEND_TO_OPTS     | Search     |
      | MAL00CAS_112500_Others_App5            | Consumer Vehicle Loan | SEND_TO_OPTS     | Search     |
      | PL_CAS_60813_ContractualIndiv03        | Personal Loan         | SEND_TO_OPTS     | Search     |
      | MAL_CAS_60813_ContractualIndiv03       | Auto Loan             | SEND_TO_OPTS     | Search     |
      | HL_CAS_60813_ContractualIndiv03        | Home Loan             | SEND_TO_OPTS     | Search     |
      | PL_CAS_60813_ContractualIndiv04        | Personal Loan         | SEND_TO_OPTS     | Search     |
      | MAL_CAS_60813_ContractualIndiv04       | Auto Loan             | SEND_TO_OPTS     | Search     |
      | HL_CAS_60813_ContractualIndiv04        | Home Loan             | SEND_TO_OPTS     | Search     |
      | PL_CAS_60813_ContractualIndiv05        | Personal Loan         | SEND_TO_OPTS     | Search     |
      | MAL_CAS_60813_ContractualIndiv05       | Auto Loan             | SEND_TO_OPTS     | Search     |
      | HL_CAS_60813_ContractualIndiv05        | Home Loan             | SEND_TO_OPTS     | Search     |
      | PL00CAS_206825_Nach_App0               | Personal Loan         | SEND_TO_OPTS     | Search     |
      | HL00CAS_206825_Nach_App0               | Home Loan             | SEND_TO_OPTS     | Search     |
      | MAL00CAS_206825_Nach_App0              | Consumer Vehicle Loan | SEND_TO_OPTS     | Search     |
      | PL_CAS_71126_ChargePrioritization02    | Personal Loan         | SEND_TO_OPTS     | Search     |
      | HL_CAS_71126_ChargePrioritization02    | Home Loan             | SEND_TO_OPTS     | Search     |
      | MAL_CAS_71126_ChargePrioritization02   | Auto Loan             | SEND_TO_OPTS     | Search     |
      | PL00CAS_52837_01                       | Personal Loan         | SEND_TO_OPTS     | Search     |
      | HL00CAS_52837_01                       | Home Loan             | SEND_TO_OPTS     | Search     |
      | MAL00CAS_52837_01                      | Consumer Vehicle Loan | SEND_TO_OPTS     | Search     |
      | PL00CAS_52837_02                       | Personal Loan         | SEND_TO_OPTS     | Search     |
      | HL00CAS_52837_02                       | Home Loan             | SEND_TO_OPTS     | Search     |
      | MAL00CAS_52837_02                      | Consumer Vehicle Loan | SEND_TO_OPTS     | Search     |
      | PL00CAS_52837_03                       | Personal Loan         | SEND_TO_OPTS     | Search     |
      | HL00CAS_52837_03                       | Home Loan             | SEND_TO_OPTS     | Search     |
      | MAL00CAS_52837_03                      | Consumer Vehicle Loan | SEND_TO_OPTS     | Search     |
      | PL00CAS_101659_Pdc_Custodian_LMS_App0  | Personal Loan         | SEND_TO_OPTS     | Search     |
      | HL00CAS_101659_Pdc_Custodian_LMS_App0  | Home Loan             | SEND_TO_OPTS     | Search     |
      | MAL00CAS_101659_Pdc_Custodian_LMS_App0 | Consumer Vehicle Loan | SEND_TO_OPTS     | Search     |
      | PL_CAS_49521_MG_16III                  | Personal Loan         | SEND_TO_OPTS     | Search     |
      | PL00CAS_206364_Nach_Physical           | Personal Loan         | SEND_TO_OPTS     | Search     |
      | HL00CAS_206364_Nach_Physical           | Home Loan             | SEND_TO_OPTS     | Search     |
      | MAL00CAS_206364_Nach_Physical          | Consumer Vehicle Loan | SEND_TO_OPTS     | Search     |
      | HL00CAS_80399_Default_NACH_02          | Home Loan             | SEND_TO_OPTS     | Search     |
      | MAL0CAS_80399_Default_AD_02            | Consumer Vehicle Loan | SEND_TO_OPTS     | Search     |
      | PL00CAS_206364_Nach_cf_Physical        | Personal Loan         | SEND_TO_OPTS     | Search     |
      | HL00CAS_206364_Nach_cf_Physical        | Home Loan             | SEND_TO_OPTS     | Search     |
      | MAL00CAS_206364_Nach_cf_Physical       | Consumer Vehicle Loan | SEND_TO_OPTS     | Search     |

    @DisbursalAuthor
    @PQMStory
    @LoggedBug-CAS-240475
    Examples:
      | LogicalID                        | ProductType   | ApplicationStage | ViewSearch |
      | PL_CAS_60813_ContractualIndiv02  | Personal Loan | SEND_TO_OPTS     | Search     |
      | MAL_CAS_60813_ContractualIndiv02 | Auto Loan     | SEND_TO_OPTS     | Search     |
      | HL_CAS_60813_ContractualIndiv02  | Home Loan     | SEND_TO_OPTS     | Search     |

    @DisbursalAuthor
    @PQMStory
    @LoggedBug-CAS-239183
    Examples:
      | LogicalID                      | ProductType | ApplicationStage | ViewSearch |
      | PL_CAS_118696_PeriodicIndiv04  | PL          | SEND_TO_OPTS     | Search     |
      | MAL_CAS_118696_PeriodicIndiv04 | MAL         | SEND_TO_OPTS     | Search     |
      | HL_CAS_118696_PeriodicIndiv04  | HL          | SEND_TO_OPTS     | Search     |

  @ImplementedBy-ankit.yadav
  #PQM-27_CAS-55220
  Scenario Outline: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>]  Approve the disbursal of <ProductType> at disbursal author stage LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Application should move to "<ApplicationStage>" Stage using "Search" service
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user open repayment instrument details
    When user clicks on view details button in repayment instrument details
    And "<InstrumentType>" mandate details modal should open at "<ApplicationStage>"
    And user check fetch mandate link in application with error in repayment instrument details
    Then Repayment instrument details should come in edit mode with fetch mandate link also in editable mode
    @DisbursalAuthor
    @PQMStory
    Examples:
      | LogicalID         | ProductType           | ApplicationStage | ViewSearch | InstrumentType                    |
      | PL00CAS_52837_04  | Personal Loan         | Disbursal        | Search     | Electronic Clearence System       |
      | HL00CAS_52837_04  | Home Loan             | Disbursal        | Search     | Electronic Clearence System       |
      | MAL00CAS_52837_04 | Consumer Vehicle Loan | Disbursal        | Search     | Electronic Clearence System       |
      | PL00CAS_52837_05  | Personal Loan         | Disbursal        | Search     | National Automated Clearing House |
      | HL00CAS_52837_05  | Home Loan             | Disbursal        | Search     | National Automated Clearing House |
      | MAL00CAS_52837_05 | Consumer Vehicle Loan | Disbursal        | Search     | National Automated Clearing House |
      | PL00CAS_52837_06  | Personal Loan         | Disbursal        | Search     | Auto Debit                        |
      | HL00CAS_52837_06  | Home Loan             | Disbursal        | Search     | Auto Debit                        |
      | MAL00CAS_52837_06 | Consumer Vehicle Loan | Disbursal        | Search     | Auto Debit                        |

  @ImplementedBy-ankit.yadav
#PQM-16_CAS-206364,#PQM-19_CAS-206364
  #whether LMS is not responding or LMS is down, user not able author the application, after author sent back to disbursal and at disbursal, application show error in activity and at initiated place.
  Scenario Outline: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] After Approve the disbursal application move to disbursal because of LMS is not responding of <ProductType> at disbursal author stage LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Application should move to "<ApplicationStage>" Stage using "Search" service
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When user check the error at disbursal stage for sent to LMS
    Then Repayment instrument details with "<Status>" sent to LMS error status
    @DisbursalAuthor
    @PQMStory
    Examples:
      | LogicalID                        | ProductType           | ApplicationStage | ViewSearch | InstrumentType                    | Status                                      |
      | PL00CAS_206364_Nach_cf_Physical  | Personal Loan         | Disbursal        | Search     | National Automated Clearing House | Initiated - Acknowledgement Number Received |
      | HL00CAS_206364_Nach_cf_Physical  | Home Loan             | Disbursal        | Search     | National Automated Clearing House | Initiated - Acknowledgement Number Received |
      | MAL00CAS_206364_Nach_cf_Physical | Consumer Vehicle Loan | Disbursal        | Search     | National Automated Clearing House | Initiated - Acknowledgement Number Received |
      | PL00CAS_206364_Nach_cf_Physical  | Personal Loan         | Disbursal        | Search     | National Automated Clearing House | Authorization Success                       |
      | HL00CAS_206364_Nach_cf_Physical  | Home Loan             | Disbursal        | Search     | National Automated Clearing House | Authorization Success                       |
      | MAL00CAS_206364_Nach_cf_Physical | Consumer Vehicle Loan | Disbursal        | Search     | National Automated Clearing House | Authorization Success                       |

  @ImplementedBy-ankit.yadav
  #PQM-18_CAS-206364,#PQM-21_CAS-206364
  #whether LMS is not responding, user not able author the application, after author sent back to disbursal and at disbursal, application show error in activity and at initiated place.
  Scenario Outline: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] After Approve the disbursal application move to disbursal because of LMS is not responding of <ProductType> at disbursal author stage LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Application should move to "<ApplicationStage>" Stage using "Search" service
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When user check the error at disbursal stage for sent to LMS
    Then Scheduler must try only as per configuration maintained for retry
    @DisbursalAuthor
    @PQMStory
    Examples:
      | LogicalID                        | ProductType           | ApplicationStage | ViewSearch | InstrumentType                    | Status                                      |
      | PL00CAS_206364_Nach_cf_Physical  | Personal Loan         | Disbursal        | Search     | National Automated Clearing House | Initiated - Acknowledgement Number Received |
      | HL00CAS_206364_Nach_cf_Physical  | Home Loan             | Disbursal        | Search     | National Automated Clearing House | Initiated - Acknowledgement Number Received |
      | MAL00CAS_206364_Nach_cf_Physical | Consumer Vehicle Loan | Disbursal        | Search     | National Automated Clearing House | Initiated - Acknowledgement Number Received |
      | PL00CAS_206364_Nach_cf_Physical  | Personal Loan         | Disbursal        | Search     | National Automated Clearing House | Authorization Success                       |
      | HL00CAS_206364_Nach_cf_Physical  | Home Loan             | Disbursal        | Search     | National Automated Clearing House | Authorization Success                       |
      | MAL00CAS_206364_Nach_cf_Physical | Consumer Vehicle Loan | Disbursal        | Search     | National Automated Clearing House | Authorization Success                       |

  @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19804:  [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>]  Approve the disbursal of multiple tranches of <ProductType> for multi asset at disbursal author stage LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user logout from CAS
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    When user navigate to disbursal author Screen
    And user opens an application present in context from disbursal author grid
    And Author accepts the disbursal of multiple application tranches on disbursal author page
    Then Application should move to "<ApplicationStage>" Stage

    @DisbursalAuthor
    Examples:
      | LogicalID | ProductType             | ApplicationStage | RevisitCount |
      | AL00001   | Auto Loan               | SEND_TO_OPTS     |              |
      | CEQ00001  | Commercial Equipment    | SEND_TO_OPTS     |              |
      | CV00002   | Commercial Vehicle Loan | SEND_TO_OPTS     |              |
      | JLG00001  | Joint Liability Group   | DCC_SCHEDULING   |              |
      | SHG00001  | Self Help Group         | DCC_SCHEDULING   |              |
      | CV00004   | Commercial Vehicle Loan | Disbursal        |              |

    @DisbursalAuthor @PQMStory
    Examples:
      | LogicalID                       | ProductType             | ApplicationStage | RevisitCount |
      | CV00CAS_88943_01                | Commercial Vehicle Loan | SEND_TO_OPTS     |              |
      | CV00CAS_88946_01                | Commercial Vehicle Loan | SEND_TO_OPTS     |              |
      | CV00CAS_206825_01               | Commercial Vehicle Loan | SEND_TO_OPTS     |              |
      | AL_CAS_60813_ContractualIndiv01 | Auto Loan               | SEND_TO_OPTS     |              |
      | AL_CAS_60813_ContractualIndiv02 | Auto Loan               | SEND_TO_OPTS     |              |
      | AL_CAS_60813_ContractualIndiv03 | Auto Loan               | SEND_TO_OPTS     |              |
      | AL_CAS_60813_ContractualIndiv04 | Auto Loan               | SEND_TO_OPTS     |              |
      | AL_CAS_60813_ContractualIndiv05 | Auto Loan               | SEND_TO_OPTS     |              |


    @MultipleDisbursal
    Examples:
      | LogicalID | ProductType             | ApplicationStage | RevisitCount |
      | CV00004   | Commercial Vehicle Loan | SEND_TO_OPTS     | 1            |


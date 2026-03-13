@Epic-E2E
@AuthoredBy-anshika.gupta
@Order
@Conventional
@E2EOrder
@Release
@MoveToNext
  #FeatureID-ACAUTOCAS-17204
Feature: End to end work flow for All LOB Order Wise


  @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-19901:[LogicalID-<LogicalID>][SendBack-<SendBack>] Move application to <FinalStage> stage from <InitialStage> stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Lead details" stage present in context from application grid
    When user clicks on move to next stage
    Then Application should move to "<FinalStage>" Stage using "<ViewSearch>" service
    @LeadDetails
    Examples:
      | LogicalID  | ProductType             | InitialStage | FinalStage       | ViewSearch | SendBack |
      | EDU00001   | Education Loan          | Lead details | Login Acceptance | Search     |          |
      | EDU00002   | Education Loan          | Lead details | Login Acceptance | Search     |          |
      | EDU00003   | Education Loan          | Lead details | Login Acceptance | Search     |          |
      | EDU00004   | Education Loan          | Lead details | Login Acceptance | Search     |          |
      | AL00001    | Auto Loan               | Lead details | Login Acceptance | Search     |          |
      | CV00001    | Commercial Vehicle Loan | Lead details | Login Acceptance | Search     |          |
      | FE00001    | Farm Equipment          | Lead details | Login Acceptance | Search     |          |
      | MHF00001   | Micro Housing Finance   | Lead details | Login Acceptance | Search     |          |
      | KCC00001   | Kisan Credit Card       | Lead details | Login Acceptance | Search     |          |
      | CEQ00001   | Commercial Equipment    | Lead details | Login Acceptance | Search     |          |
      | AGRL00001  | Agriculture Loan        | Lead details | Login Acceptance | Search     |          |
      | PL00001    | Personal Loan           | Lead details | Login Acceptance | Search     |          |
      | HL00001    | Home Loan               | Lead details | Login Acceptance | Search     |          |
      | CV00003    | Commercial Vehicle Loan | Lead details | Login Acceptance | Search     |          |
      | CV00004    | Commercial Vehicle Loan | Lead details | Login Acceptance | Search     |          |
      | LAP00001   | Loan Against Property   | Lead details | Login Acceptance | Search     |          |
      | CV00002    | Commercial Vehicle Loan | Lead details | Login Acceptance | Search     |          |
      | KCC00002   | Kisan Credit Card       | Lead details | Login Acceptance | Search     |          |
      | PL00002    | Personal Loan           | Lead details | Login Acceptance | Search     |          |
      | AL00002    | Auto Loan               | Lead details | Login Acceptance | Search     |          |
      | SB_AL00001 | Auto Loan               | Lead details | Login Acceptance | Search     |          |
      | SB_AL00002 | Auto Loan               | Lead details | Login Acceptance | Search     |          |
      | SB_AL00003 | Auto Loan               | Lead details | Login Acceptance | Search     |          |
      | SB_AL00004 | Auto Loan               | Lead details | Login Acceptance | Search     |          |
      | OL00001    | Omni Loan               | Lead details | Login Acceptance | Search     |          |
      | MHF00002   | Micro Housing Finance   | Lead details | Login Acceptance | Search     |          |
      | CV00005    | Commercial Vehicle Loan | Lead details | Login Acceptance | Search     |          |


    @PQMStory @LeadDetails
    Examples:
      | LogicalID                        | ProductType             | InitialStage | FinalStage       | ViewSearch |
      | EDU_CAS_60813_ContractualIndiv01 | Education Loan          | Lead details | Login Acceptance | Search     |
      | EDU_CAS_60813_ContractualIndiv02 | Education Loan          | Lead details | Login Acceptance | Search     |
      | EDU_CAS_60813_ContractualIndiv03 | Education Loan          | Lead details | Login Acceptance | Search     |
      | EDU_CAS_60813_ContractualIndiv04 | Education Loan          | Lead details | Login Acceptance | Search     |
      | EDU_CAS_60813_ContractualIndiv05 | Education Loan          | Lead details | Login Acceptance | Search     |
      | CV00CAS_88943_01                 | Commercial Vehicle Loan | Lead details | Login Acceptance | Search     |
      | CV00CAS_88943_02                 | Commercial Vehicle Loan | Lead details | Login Acceptance | Search     |
      | CV00CAS_88946_01                 | Commercial Vehicle Loan | Lead details | Login Acceptance | Search     |
      | CV00CAS_206825_01                | Commercial Vehicle Loan | Lead details | Login Acceptance | Search     |
      | CV00CAS_80273_01                 | Commercial Vehicle Loan | Lead details | Login Acceptance | Search     |
      | CV00CAS_90456_01                 | Commercial Vehicle Loan | Lead details | Login Acceptance | Search     |
      | CV00CAS_90456_02                 | Commercial Vehicle Loan | Lead details | Login Acceptance | Search     |
      | AL_CAS_60813_ContractualIndiv01  | Auto Loan               | Lead details | Login Acceptance | Search     |
      | AL_CAS_60813_ContractualIndiv02  | Auto Loan               | Lead details | Login Acceptance | Search     |
      | AL_CAS_60813_ContractualIndiv03  | Auto Loan               | Lead details | Login Acceptance | Search     |
      | AL_CAS_60813_ContractualIndiv04  | Auto Loan               | Lead details | Login Acceptance | Search     |
      | AL_CAS_60813_ContractualIndiv05  | Auto Loan               | Lead details | Login Acceptance | Search     |
      | CV_CAS_60813_ContractualIndiv01  | Commercial Vehicle Loan | Lead details | Login Acceptance | Search     |
      | CV_CAS_60813_ContractualIndiv02  | Commercial Vehicle Loan | Lead details | Login Acceptance | Search     |
      | CV_CAS_60813_ContractualIndiv03  | Commercial Vehicle Loan | Lead details | Login Acceptance | Search     |
      | CV_CAS_60813_ContractualIndiv04  | Commercial Vehicle Loan | Lead details | Login Acceptance | Search     |
      | CV_CAS_60813_ContractualIndiv05  | Commercial Vehicle Loan | Lead details | Login Acceptance | Search     |


    @CCDE
    Examples:
      | LogicalID          | ProductType             | InitialStage | FinalStage | ViewSearch |
      | CC00002            | Credit Card Application | CCDE         | KYC        | Search     |
      | CC00003            | Credit Card Application | CCDE         | KYC        | Search     |
      | CAS_262309_CC00002 | Credit Card Application | CCDE         | KYC        | Search     |



    @LoginAcceptance
    Examples:
      | LogicalID  | ProductType             | InitialStage     | FinalStage  | ViewSearch | SendBack |
      | EDU00001   | Education Loan          | Login Acceptance | KYC         | Search     |          |
      | EDU00002   | Education Loan          | Login Acceptance | KYC         | Search     |          |
      | EDU00003   | Education Loan          | Login Acceptance | SALES QUEUE | Search     |          |
      | AL00001    | Auto Loan               | Login Acceptance | KYC         | Search     |          |
      | CV00001    | Commercial Vehicle Loan | Login Acceptance | KYC         | Search     |          |
      | FE00001    | Farm Equipment          | Login Acceptance | KYC         | Search     |          |
      | MHF00001   | Micro Housing Finance   | Login Acceptance | KYC         | Search     |          |
      | KCC00001   | Kisan Credit Card       | Login Acceptance | KYC         | Search     |          |
      | CEQ00001   | Commercial Equipment    | Login Acceptance | KYC         | Search     |          |
      | AGRL00001  | Agriculture Loan        | Login Acceptance | KYC         | Search     |          |
      | PL00001    | Personal Loan           | Login Acceptance | KYC         | Search     |          |
      | HL00001    | Home Loan               | Login Acceptance | KYC         | Search     |          |
      | CV00003    | Commercial Vehicle Loan | Login Acceptance | KYC         | Search     |          |
      | CV00004    | Commercial Vehicle Loan | Login Acceptance | KYC         | Search     |          |
      | LAP00001   | Loan Against Property   | Login Acceptance | KYC         | Search     |          |
      | CV00002    | Commercial Vehicle Loan | Login Acceptance | KYC         | Search     |          |
      | KCC00002   | Kisan Credit Card       | Login Acceptance | KYC         | Search     |          |
      | PL00002    | Personal Loan           | Login Acceptance | KYC         | Search     |          |
      | AL00002    | Auto Loan               | Login Acceptance | KYC         | Search     |          |
      | SB_AL00001 | Auto Loan               | Login Acceptance | KYC         | Search     |          |
      | SB_AL00002 | Auto Loan               | Login Acceptance | KYC         | Search     |          |
      | SB_AL00002 | Auto Loan               | Login Acceptance | KYC         | Search     | yes      |
      | SB_AL00003 | Auto Loan               | Login Acceptance | KYC         | Search     |          |
      | SB_AL00004 | Auto Loan               | Login Acceptance | KYC         | Search     |          |
      | EDU00004   | Education Loan          | Login Acceptance | KYC         | Search     |          |
      | OL00001    | Omni Loan               | Login Acceptance | KYC         | Search     |          |
      | MHF00002   | Micro Housing Finance   | Login Acceptance | KYC         | Search     |          |
      | CV00005    | Commercial Vehicle Loan | Login Acceptance | KYC         | Search     |          |

    @PQMStory @LoginAcceptance
    Examples:
      | LogicalID                        | ProductType             | InitialStage     | FinalStage | ViewSearch |
      | EDU_CAS_60813_ContractualIndiv01 | Education Loan          | Login Acceptance | KYC        | Search     |
      | EDU_CAS_60813_ContractualIndiv02 | Education Loan          | Login Acceptance | KYC        | Search     |
      | EDU_CAS_60813_ContractualIndiv03 | Education Loan          | Login Acceptance | KYC        | Search     |
      | EDU_CAS_60813_ContractualIndiv04 | Education Loan          | Login Acceptance | KYC        | Search     |
      | EDU_CAS_60813_ContractualIndiv05 | Education Loan          | Login Acceptance | KYC        | Search     |
      | CV00CAS_88943_01                 | Commercial Vehicle Loan | Login Acceptance | KYC        | Search     |
      | CV00CAS_88943_02                 | Commercial Vehicle Loan | Login Acceptance | KYC        | Search     |
      | CV00CAS_88946_01                 | Commercial Vehicle Loan | Login Acceptance | KYC        | Search     |
      | CV00CAS_206825_01                | Commercial Vehicle Loan | Login Acceptance | KYC        | Search     |
      | CV00CAS_80273_01                 | Commercial Vehicle Loan | Login Acceptance | KYC        | Search     |
      | CV00CAS_90456_01                 | Commercial Vehicle Loan | Login Acceptance | KYC        | Search     |
      | CV00CAS_90456_02                 | Commercial Vehicle Loan | Login Acceptance | KYC        | Search     |
      | AL_CAS_60813_ContractualIndiv01  | Auto Loan               | Login Acceptance | KYC        | Search     |
      | AL_CAS_60813_ContractualIndiv02  | Auto Loan               | Login Acceptance | KYC        | Search     |
      | AL_CAS_60813_ContractualIndiv03  | Auto Loan               | Login Acceptance | KYC        | Search     |
      | AL_CAS_60813_ContractualIndiv04  | Auto Loan               | Login Acceptance | KYC        | Search     |
      | AL_CAS_60813_ContractualIndiv05  | Auto Loan               | Login Acceptance | KYC        | Search     |
      | CV_CAS_60813_ContractualIndiv01  | Commercial Vehicle Loan | Login Acceptance | KYC        | Search     |
      | CV_CAS_60813_ContractualIndiv02  | Commercial Vehicle Loan | Login Acceptance | KYC        | Search     |
      | CV_CAS_60813_ContractualIndiv03  | Commercial Vehicle Loan | Login Acceptance | KYC        | Search     |
      | CV_CAS_60813_ContractualIndiv04  | Commercial Vehicle Loan | Login Acceptance | KYC        | Search     |
      | CV_CAS_60813_ContractualIndiv05  | Commercial Vehicle Loan | Login Acceptance | KYC        | Search     |


    @KYC
    Examples:
      | LogicalID  | ProductType             | InitialStage | FinalStage             | ViewSearch | SendBack |
      | EDU00001   | Education Loan          | KYC          | CREDIT_BUREAU_REFERRAL | Search     |          |
      | EDU00002   | Education Loan          | KYC          | CREDIT_BUREAU_REFERRAL | Search     |          |
      | AL00001    | Auto Loan               | KYC          | DDE                    | Search     |          |
      | CV00001    | Commercial Vehicle Loan | KYC          | DDE                    | Search     |          |
      | FE00001    | Farm Equipment          | KYC          | DDE                    | Search     |          |
      | MHF00001   | Micro Housing Finance   | KYC          | DDE                    | Search     |          |
      | KCC00001   | Kisan Credit Card       | KYC          | CREDIT_BUREAU_REFERRAL | Search     |          |
      | CEQ00001   | Commercial Equipment    | KYC          | DDE                    | Search     |          |
      | CC00001    | Credit Card Application | KYC          | Recommendation         | Search     |          |
      | AGRL00001  | Agriculture Loan        | KYC          | CREDIT_BUREAU_REFERRAL | Search     |          |
      | PL00001    | Personal Loan           | KYC          | CREDIT_BUREAU_REFERRAL | Search     |          |
      | HL00001    | Home Loan               | KYC          | DDE                    | Search     |          |
      | CV00003    | Commercial Vehicle Loan | KYC          | DDE                    | Search     |          |
      | CV00004    | Commercial Vehicle Loan | KYC          | DDE                    | Search     |          |
      | LAP00001   | Loan Against Property   | KYC          | DDE                    | Search     |          |
      | CV00002    | Commercial Vehicle Loan | KYC          | DDE                    | Search     |          |
      | KCC00002   | Kisan Credit Card       | KYC          | CREDIT_BUREAU_REFERRAL | Search     |          |
      | PL00002    | Personal Loan           | KYC          | CREDIT_BUREAU_REFERRAL | Search     |          |
      | AL00002    | Auto Loan               | KYC          | DDE                    | Search     |          |
      | CC00002    | Credit Card Application | KYC          | Recommendation         | Search     |          |
      | SB_AL00002 | Auto Loan               | KYC          | DDE                    | Search     |          |
      | SB_AL00002 | Auto Loan               | KYC          | DDE                    | Search     | yes      |
      | SB_AL00003 | Auto Loan               | KYC          | DDE                    | Search     |          |
      | SB_AL00004 | Auto Loan               | KYC          | DDE                    | Search     |          |
      | EDU00004   | Education Loan          | KYC          | CREDIT_BUREAU_REFERRAL | Search     |          |
      | CC00003    | Credit Card Application | KYC          | Recommendation         | Search     |          |
      | OL00001    | Omni Loan               | KYC          | DDE                    | Search     |          |
      | MHF00002   | Micro Housing Finance   | KYC          | DDE                    | Search     |          |
      | CV00005    | Commercial Vehicle Loan | KYC          | DDE                    | Search     |          |

    @PQMStory @KYC
    Examples:
      | LogicalID                        | ProductType             | InitialStage | FinalStage             | ViewSearch |
      | EDU_CAS_60813_ContractualIndiv01 | Education Loan          | KYC          | CREDIT_BUREAU_REFERRAL | Search     |
      | EDU_CAS_60813_ContractualIndiv02 | Education Loan          | KYC          | CREDIT_BUREAU_REFERRAL | Search     |
      | EDU_CAS_60813_ContractualIndiv03 | Education Loan          | KYC          | CREDIT_BUREAU_REFERRAL | Search     |
      | EDU_CAS_60813_ContractualIndiv04 | Education Loan          | KYC          | CREDIT_BUREAU_REFERRAL | Search     |
      | EDU_CAS_60813_ContractualIndiv05 | Education Loan          | KYC          | CREDIT_BUREAU_REFERRAL | Search     |
      | CV00CAS_88943_01                 | Commercial Vehicle Loan | KYC          | DDE                    | Search     |
      | CV00CAS_88943_02                 | Commercial Vehicle Loan | KYC          | DDE                    | Search     |
      | CV00CAS_88946_01                 | Commercial Vehicle Loan | KYC          | DDE                    | Search     |
      | CV00CAS_206825_01                | Commercial Vehicle Loan | KYC          | DDE                    | Search     |
      | CV00CAS_80273_01                 | Commercial Vehicle Loan | KYC          | DDE                    | Search     |
      | CV00CAS_90456_01                 | Commercial Vehicle Loan | KYC          | DDE                    | Search     |
      | CV00CAS_90456_02                 | Commercial Vehicle Loan | KYC          | DDE                    | Search     |
      | AL_CAS_60813_ContractualIndiv01  | Auto Loan               | KYC          | DDE                    | Search     |
      | AL_CAS_60813_ContractualIndiv02  | Auto Loan               | KYC          | DDE                    | Search     |
      | AL_CAS_60813_ContractualIndiv03  | Auto Loan               | KYC          | DDE                    | Search     |
      | AL_CAS_60813_ContractualIndiv04  | Auto Loan               | KYC          | DDE                    | Search     |
      | AL_CAS_60813_ContractualIndiv05  | Auto Loan               | KYC          | DDE                    | Search     |
      | CV_CAS_60813_ContractualIndiv01  | Commercial Vehicle Loan | KYC          | DDE                    | Search     |
      | CV_CAS_60813_ContractualIndiv02  | Commercial Vehicle Loan | KYC          | DDE                    | Search     |
      | CV_CAS_60813_ContractualIndiv03  | Commercial Vehicle Loan | KYC          | DDE                    | Search     |
      | CV_CAS_60813_ContractualIndiv04  | Commercial Vehicle Loan | KYC          | DDE                    | Search     |
      | CV_CAS_60813_ContractualIndiv05  | Commercial Vehicle Loan | KYC          | DDE                    | Search     |


    @CreditBureauReferral
    Examples:
      | LogicalID | ProductType       | InitialStage           | FinalStage | ViewSearch |
      | EDU00001  | Education Loan    | CREDIT_BUREAU_REFERRAL | DDE        | Search     |
      | EDU00002  | Education Loan    | CREDIT_BUREAU_REFERRAL | DDE        | Search     |
      | KCC00001  | Kisan Credit Card | CREDIT_BUREAU_REFERRAL | DDE        | Search     |
      | AGRL00001 | Agriculture Loan  | CREDIT_BUREAU_REFERRAL | DDE        | Search     |
      | PL00001   | Personal Loan     | CREDIT_BUREAU_REFERRAL | DDE        | Search     |
      | KCC00002  | Kisan Credit Card | CREDIT_BUREAU_REFERRAL | DDE        | Search     |
      | PL00002   | Personal Loan     | CREDIT_BUREAU_REFERRAL | DDE        | Search     |
      | EDU00004  | Education Loan    | CREDIT_BUREAU_REFERRAL | DDE        | Search     |

    @PQMStory @CreditBureauReferral
    Examples:
      | LogicalID                        | ProductType    | InitialStage           | FinalStage | ViewSearch |
      | EDU_CAS_60813_ContractualIndiv01 | Education Loan | CREDIT_BUREAU_REFERRAL | DDE        | Search     |
      | EDU_CAS_60813_ContractualIndiv02 | Education Loan | CREDIT_BUREAU_REFERRAL | DDE        | Search     |
      | EDU_CAS_60813_ContractualIndiv03 | Education Loan | CREDIT_BUREAU_REFERRAL | DDE        | Search     |
      | EDU_CAS_60813_ContractualIndiv04 | Education Loan | CREDIT_BUREAU_REFERRAL | DDE        | Search     |
      | EDU_CAS_60813_ContractualIndiv05 | Education Loan | CREDIT_BUREAU_REFERRAL | DDE        | Search     |

    @DDE
    Examples:
      | LogicalID  | ProductType                | InitialStage | FinalStage      | ViewSearch | SendBack |
      | EDU00001   | Education Loan             | DDE          | Recommendation  | Search     |          |
      | EDU00002   | Education Loan             | DDE          | Recommendation  | Search     |          |
      | AL00001    | Auto Loan                  | DDE          | Recommendation  | Search     |          |
      | CV00001    | Commercial Vehicle Loan    | DDE          | Credit Approval | Search     |          |
      | FE00001    | Farm Equipment             | DDE          | Credit Approval | Search     |          |
      | KCC00001   | Kisan Credit Card          | DDE          | Recommendation  | Search     |          |
      | GL00001    | Gold Loan                  | DDE          | Gold Valuation  | Search     |          |
      | CEQ00001   | Commercial Equipment       | DDE          | Credit Approval | Search     |          |
      | MHF00001   | Micro Housing Finance      | DDE          | Credit Approval | Search     |          |
      | AGRL00001  | Agriculture Loan           | DDE          | Recommendation  | Search     |          |
      | PL00001    | Personal Loan              | DDE          | Recommendation  | Search     |          |
      | HL00001    | Home Loan                  | DDE          | Recommendation  | Search     |          |
      | CV00003    | Commercial Vehicle Loan    | DDE          | Credit Approval | Search     |          |
      | CV00004    | Commercial Vehicle Loan    | DDE          | Credit Approval | Search     |          |
      | CV00002    | Commercial Vehicle Loan    | DDE          | Credit Approval | Search     |          |
      | KCC00002   | Kisan Credit Card          | DDE          | Recommendation  | Search     |          |
      | LAP00001   | Loan Against Property      | DDE          | Credit Approval | Search     |          |
      | PL00002    | Personal Loan              | DDE          | Recommendation  | Search     |          |
      | AL00002    | Auto Loan                  | DDE          | Recommendation  | Search     |          |
      | SB_AL00003 | Auto Loan                  | DDE          | Recommendation  | Search     |          |
      | SB_AL00004 | Auto Loan                  | DDE          | Recommendation  | Search     |          |
      | EDU00004   | Education Loan             | DDE          | Recommendation  | Search     |          |
      | OL00001    | Omni Loan                  | DDE          | Recommendation  | Search     |          |
      | MHF00002   | Micro Housing Finance      | DDE          | Credit Approval | Search     |          |
      | CV00005    | Commercial Vehicle Loan    | DDE          | Credit Approval | Search     |          |
      | FAS00001   | Finance Against Securities | DDE          | DDE_QC          | Search     |          |

    @PQMStory @DDE
    Examples:
      | LogicalID                        | ProductType             | InitialStage | FinalStage      | ViewSearch |
      | EDU_CAS_60813_ContractualIndiv01 | Education Loan          | DDE          | Recommendation  | Search     |
      | EDU_CAS_60813_ContractualIndiv02 | Education Loan          | DDE          | Recommendation  | Search     |
      | EDU_CAS_60813_ContractualIndiv03 | Education Loan          | DDE          | Recommendation  | Search     |
      | EDU_CAS_60813_ContractualIndiv04 | Education Loan          | DDE          | Recommendation  | Search     |
      | EDU_CAS_60813_ContractualIndiv05 | Education Loan          | DDE          | Recommendation  | Search     |
      | CV00CAS_88943_01                 | Commercial Vehicle Loan | DDE          | Credit Approval | Search     |
      | CV00CAS_88943_02                 | Commercial Vehicle Loan | DDE          | Credit Approval | Search     |
      | CV00CAS_88946_01                 | Commercial Vehicle Loan | DDE          | Credit Approval | Search     |
      | CV00CAS_206825_01                | Commercial Vehicle Loan | DDE          | Credit Approval | Search     |
      | CV00CAS_80273_01                 | Commercial Vehicle Loan | DDE          | Credit Approval | Search     |
      | CV00CAS_90456_01                 | Commercial Vehicle Loan | DDE          | Credit Approval | Search     |
      | CV00CAS_90456_02                 | Commercial Vehicle Loan | DDE          | Credit Approval | Search     |
      | AL_CAS_60813_ContractualIndiv01  | Auto Loan               | DDE          | Recommendation  | Search     |
      | AL_CAS_60813_ContractualIndiv02  | Auto Loan               | DDE          | Recommendation  | Search     |
      | AL_CAS_60813_ContractualIndiv03  | Auto Loan               | DDE          | Recommendation  | Search     |
      | AL_CAS_60813_ContractualIndiv04  | Auto Loan               | DDE          | Recommendation  | Search     |
      | AL_CAS_60813_ContractualIndiv05  | Auto Loan               | DDE          | Recommendation  | Search     |
      | CV_CAS_60813_ContractualIndiv01  | Commercial Vehicle Loan | DDE          | Credit Approval | Search     |
      | CV_CAS_60813_ContractualIndiv02  | Commercial Vehicle Loan | DDE          | Credit Approval | Search     |
      | CV_CAS_60813_ContractualIndiv03  | Commercial Vehicle Loan | DDE          | Credit Approval | Search     |
      | CV_CAS_60813_ContractualIndiv04  | Commercial Vehicle Loan | DDE          | Credit Approval | Search     |
      | CV_CAS_60813_ContractualIndiv05  | Commercial Vehicle Loan | DDE          | Credit Approval | Search     |

    @DDE
    Examples:
      | LogicalID     | ProductType    | InitialStage | FinalStage | ViewSearch | SendBack |
      | MULF_BD_00001 | Multi Facility | DDE          | DDE_QC     | Search     |          |

    @GoldValuation
    Examples:
      | LogicalID | ProductType | InitialStage   | FinalStage      |
      | GL00001   | Gold Loan   | Gold Valuation | Credit Approval |

    @FII
    Examples:
      | LogicalID     | ProductType                | InitialStage | FinalStage      | ViewSearch |
      | EDU00001      | Education Loan             | FII          | FIV             | Search     |
      | EDU00002      | Education Loan             | FII          | FIV             | Search     |
      | AL00001       | Auto Loan                  | FII          | FIV             | Search     |
      | CV00001       | Commercial Vehicle Loan    | FII          | FIV             | Search     |
      | KCC00001      | Kisan Credit Card          | FII          | FIV             | Search     |
      | GL00001       | Gold Loan                  | FII          | FIV             | Search     |
      | CEQ00001      | Commercial Equipment       | FII          | FIV             | Search     |
      | CC00001       | Credit Card Application    | FII          | FIV             | Search     |
      | AGRL00001     | Agriculture Loan           | FII          | FIV             | Search     |
      | CV00003       | Commercial Vehicle Loan    | FII          | FIV             | Search     |
      | CV00004       | Commercial Vehicle Loan    | FII          | FIV             | Search     |
      | PL00001       | Personal Loan              | FII          | FIV             | Search     |
      | CV00002       | Commercial Vehicle Loan    | FII          | FIV             | Search     |
      | KCC00002      | Kisan Credit Card          | FII          | FIV             | Search     |
      | HL00001       | Home Loan                  | FII          | FIV             | Search     |
      | LAP00001      | Loan Against Property      | FII          | FIV             | Search     |
      | PL00002       | Personal Loan              | FII          | FIV             | Search     |
      | AL00002       | Auto Loan                  | FII          | FIV             | Search     |
      | CC00002       | Credit Card Application    | FII          | FIV             | Search     |
      | CC00003       | Credit Card Application    | FII          | FIV             | Search     |
      | OL00001       | Omni Loan                  | FII          | FIV             | Search     |
      | CV00005       | Commercial Vehicle Loan    | FII          | FIV             | Search     |
      | FAS00001      | Finance Against Securities | FII          | FIV             | Search     |
      | MULF_BD_00001 | Multi Facility             | FII          | Credit Approval | Search     |



    @PQMStory @FII
    Examples:
      | LogicalID                            | ProductType             | InitialStage | FinalStage      | ViewSearch |
      | EDU_CAS_60813_ContractualIndiv01     | Education Loan          | FII          | Credit Approval | Search     |
      | EDU_CAS_60813_ContractualIndiv02     | Education Loan          | FII          | Credit Approval | Search     |
      | EDU_CAS_60813_ContractualIndiv03     | Education Loan          | FII          | Credit Approval | Search     |
      | EDU_CAS_60813_ContractualIndiv04     | Education Loan          | FII          | Credit Approval | Search     |
      | EDU_CAS_60813_ContractualIndiv05     | Education Loan          | FII          | Credit Approval | Search     |
      | PL_CAS_60813_ContractualIndiv03      | Personal Loan           | FII          | Disbursal       | Search     |
      | MAL_CAS_60813_ContractualIndiv03     | Auto Loan               | FII          | Disbursal       | Search     |
      | HL_CAS_60813_ContractualIndiv03      | Home Loan               | FII          | Disbursal       | Search     |
      | CV00CAS_88943_01                     | Commercial Vehicle Loan | FII          | FIV             | Search     |
      | CV00CAS_88943_02                     | Commercial Vehicle Loan | FII          | FIV             | Search     |
      | CV00CAS_88946_01                     | Commercial Vehicle Loan | FII          | FIV             | Search     |
      | CV00CAS_206825_01                    | Commercial Vehicle Loan | FII          | FIV             | Search     |
      | CV00CAS_80273_01                     | Commercial Vehicle Loan | FII          | FIV             | Search     |
      | CV00CAS_90456_01                     | Commercial Vehicle Loan | FII          | FIV             | Search     |
      | CV00CAS_90456_02                     | Commercial Vehicle Loan | FII          | FIV             | Search     |
      | AL_CAS_60813_ContractualIndiv01      | Education Loan          | FII          | Credit Approval | Search     |
      | AL_CAS_60813_ContractualIndiv02      | Education Loan          | FII          | Credit Approval | Search     |
      | AL_CAS_60813_ContractualIndiv03      | Education Loan          | FII          | Credit Approval | Search     |
      | AL_CAS_60813_ContractualIndiv04      | Education Loan          | FII          | Credit Approval | Search     |
      | AL_CAS_60813_ContractualIndiv05      | Education Loan          | FII          | Credit Approval | Search     |
      | CV_CAS_60813_ContractualIndiv01      | Commercial Vehicle Loan | FII          | FIV             | Search     |
      | CV_CAS_60813_ContractualIndiv02      | Commercial Vehicle Loan | FII          | FIV             | Search     |
      | CV_CAS_60813_ContractualIndiv03      | Commercial Vehicle Loan | FII          | FIV             | Search     |
      | CV_CAS_60813_ContractualIndiv04      | Commercial Vehicle Loan | FII          | FIV             | Search     |
      | CV_CAS_60813_ContractualIndiv05      | Commercial Vehicle Loan | FII          | FIV             | Search     |
      | PL_CAS_71126_ChargePrioritization02  | Personal Loan           | FII          | Disbursal       | Search     |
      | MAL_CAS_71126_ChargePrioritization02 | Auto Loan               | FII          | Disbursal       | Search     |
      | HL_CAS_71126_ChargePrioritization02  | Home Loan               | FII          | Disbursal       | Search     |


    @DDEQC
    Examples:
      | LogicalID     | ProductType    | InitialStage | FinalStage      | ViewSearch | SendBack |
      | MULF_BD_00001 | Multi Facility | DDE_QC       | Credit Approval | Search     |          |

    @Recommendation
    Examples:
      | LogicalID          | ProductType             | InitialStage   | FinalStage      | ViewSearch | SendBack |
      | EDU00001           | Education Loan          | Recommendation | Credit Approval | Search     |          |
      | EDU00002           | Education Loan          | Recommendation | Credit Approval | Search     |          |
      | AL00001            | Auto Loan               | Recommendation | Credit Approval | Search     |          |
      | KCC00001           | Kisan Credit Card       | Recommendation | Credit Approval | Search     |          |
      | SHG00001           | Self Help Group         | Recommendation | Credit Approval | Search     |          |
      | CC00001            | Credit Card Application | Recommendation | Credit Approval | Search     |          |
      | AGRL00001          | Agriculture Loan        | Recommendation | Credit Approval | Search     |          |
      | PL00001            | Personal Loan           | Recommendation | Credit Approval | Search     |          |
      | HL00001            | Home Loan               | Recommendation | Credit Approval | Search     |          |
      | KCC00002           | Kisan Credit Card       | Recommendation | Credit Approval | Search     |          |
      | PL00002            | Personal Loan           | Recommendation | Credit Approval | Search     |          |
      | AL00002            | Auto Loan               | Recommendation | Credit Approval | Search     |          |
      | CC00002            | Credit Card Application | Recommendation | Credit Approval | Search     |          |
      | CAS_262309_CC00002 | Credit Card Application | Recommendation | Credit Approval | Search     |          |
      | CC00003            | Credit Card Application | Recommendation | Credit Approval | Search     |          |
      | EDU00004           | Education Loan          | Recommendation | Credit Approval | Search     |          |
      | OL00001            | Omni Loan               | Recommendation | Credit Approval | Search     |          |
      | SB_AL00003         | Auto Loan               | Recommendation | Credit Approval | Search     |          |
      | SB_AL00004         | Auto Loan               | Recommendation | Credit Approval | Search     |          |
      | SB_AL00003         | Auto Loan               | Recommendation | Credit Approval | Search     | yes      |


    @PQMStory @Recommendation
    Examples:
      | LogicalID                        | ProductType    | InitialStage   | FinalStage      | ViewSearch |
      | EDU_CAS_60813_ContractualIndiv01 | Education Loan | Recommendation | Credit Approval | Search     |
      | EDU_CAS_60813_ContractualIndiv02 | Education Loan | Recommendation | Credit Approval | Search     |
      | EDU_CAS_60813_ContractualIndiv03 | Education Loan | Recommendation | Credit Approval | Search     |
      | EDU_CAS_60813_ContractualIndiv04 | Education Loan | Recommendation | Credit Approval | Search     |
      | EDU_CAS_60813_ContractualIndiv05 | Education Loan | Recommendation | Credit Approval | Search     |
      | AL_CAS_60813_ContractualIndiv01  | Auto Loan      | Recommendation | Credit Approval | Search     |
      | AL_CAS_60813_ContractualIndiv02  | Auto Loan      | Recommendation | Credit Approval | Search     |
      | AL_CAS_60813_ContractualIndiv03  | Auto Loan      | Recommendation | Credit Approval | Search     |
      | AL_CAS_60813_ContractualIndiv04  | Auto Loan      | Recommendation | Credit Approval | Search     |
      | AL_CAS_60813_ContractualIndiv05  | Auto Loan      | Recommendation | Credit Approval | Search     |


    @CreditApproval
    Examples:
      | LogicalID          | ProductType             | InitialStage    | FinalStage       | ViewSearch | SendBack |
      | EDU00001           | Education Loan          | Credit Approval | Reconsideration  | Search     |          |
      | EDU00002           | Education Loan          | Credit Approval | Reconsideration  | Search     |          |
      | AL00001            | Auto Loan               | Credit Approval | Reconsideration  | Search     |          |
      | CV00001            | Commercial Vehicle Loan | Credit Approval | Reconsideration  | Search     |          |
      | FE00001            | Farm Equipment          | Credit Approval | Reconsideration  | Search     |          |
      | KCC00001           | Kisan Credit Card       | Credit Approval | Reconsideration  | Search     |          |
      | CV00002            | Commercial Vehicle Loan | Credit Approval | Reconsideration  | Search     |          |
      | GL00001            | Gold Loan               | Credit Approval | Disbursal        | Search     |          |
      | CD00001            | Consumer Durable        | Credit Approval | Asset_Validation | Search     |          |
      | CC00001            | Credit Card Application | Credit Approval | OPERATIONS CHECK | Search     |          |
      | CEQ00001           | Commercial Equipment    | Credit Approval | Reconsideration  | Search     |          |
      | MHF00001           | Micro Housing Finance   | Credit Approval | Reconsideration  | Search     |          |
      | AGRL00001          | Agriculture Loan        | Credit Approval | Reconsideration  | Search     |          |
      | JLG00001           | Joint Liability group   | Credit Approval | Post Approval    | Search     |          |
      | SHG00001           | Self Help Group         | Credit Approval | Post Approval    | Search     |          |
      | CV00003            | Commercial Vehicle Loan | Credit Approval | Reconsideration  | Search     |          |
      | CV00004            | Commercial Vehicle Loan | Credit Approval | Reconsideration  | Search     |          |
      | PL00001            | Personal Loan           | Credit Approval | Reconsideration  | Search     |          |
      | HL00001            | Home Loan               | Credit Approval | Reconsideration  | Search     |          |
      | KCC00002           | Kisan Credit Card       | Credit Approval | Reconsideration  | Search     |          |
      | LAP00001           | Loan Against Property   | Credit Approval | Reconsideration  | Search     |          |
      | PL00002            | Personal Loan           | Credit Approval | Reconsideration  | Search     |          |
      | AL00002            | Auto Loan               | Credit Approval | Reconsideration  | Search     |          |
      | SB_AL00003         | Auto Loan               | Credit Approval | Reconsideration  | Search     |          |
      | SB_AL00004         | Auto Loan               | Credit Approval | Reconsideration  | Search     |          |
      | CC00003            | Credit Card Application | Credit Approval | OPERATIONS CHECK | Search     |          |
      | CAS_262309_CC00002 | Credit Card Application | Credit Approval | OPERATIONS CHECK | Search     |          |
      | EDU00004           | Education Loan          | Credit Approval | Reconsideration  | Search     |          |
      | OL00001            | Omi Loan                | Credit Approval | Reconsideration  | Search     |          |
      | EDU00004           | Education Loan          | Credit Approval | Reconsideration  | Search     | yes      |
      | MHF00002           | Micro Housing Finance   | Credit Approval | ICD              | Search     |          |
      | CV00005            | Commercial Vehicle Loan | Credit Approval | Reconsideration  | Search     |          |
      | MULF_BD_00001      | Multi Facility          | Credit Approval | FDE              | Search     |          |

    @PQMStory @CreditApproval
    Examples:
      | LogicalID                        | ProductType             | InitialStage    | FinalStage      | ViewSearch |
      | EDU_CAS_60813_ContractualIndiv01 | Education Loan          | Credit Approval | Reconsideration | Search     |
      | EDU_CAS_60813_ContractualIndiv02 | Education Loan          | Credit Approval | Reconsideration | Search     |
      | EDU_CAS_60813_ContractualIndiv03 | Education Loan          | Credit Approval | Reconsideration | Search     |
      | EDU_CAS_60813_ContractualIndiv04 | Education Loan          | Credit Approval | Reconsideration | Search     |
      | EDU_CAS_60813_ContractualIndiv05 | Education Loan          | Credit Approval | Reconsideration | Search     |
      | CV00CAS_88943_01                 | Commercial Vehicle Loan | Credit Approval | Reconsideration | Search     |
      | CV00CAS_88943_02                 | Commercial Vehicle Loan | Credit Approval | Reconsideration | Search     |
      | CV00CAS_88946_01                 | Commercial Vehicle Loan | Credit Approval | Reconsideration | Search     |
      | CV00CAS_206825_01                | Commercial Vehicle Loan | Credit Approval | Reconsideration | Search     |
      | CV00CAS_80273_01                 | Commercial Vehicle Loan | Credit Approval | Reconsideration | Search     |
      | CV00CAS_90456_01                 | Commercial Vehicle Loan | Credit Approval | Reconsideration | Search     |
      | CV00CAS_90456_02                 | Commercial Vehicle Loan | Credit Approval | Reconsideration | Search     |
      | AL_CAS_60813_ContractualIndiv01  | Auto Loan               | Credit Approval | Reconsideration | Search     |
      | AL_CAS_60813_ContractualIndiv02  | Auto Loan               | Credit Approval | Reconsideration | Search     |
      | AL_CAS_60813_ContractualIndiv03  | Auto Loan               | Credit Approval | Reconsideration | Search     |
      | AL_CAS_60813_ContractualIndiv04  | Auto Loan               | Credit Approval | Reconsideration | Search     |
      | AL_CAS_60813_ContractualIndiv05  | Auto Loan               | Credit Approval | Reconsideration | Search     |
      | CV_CAS_60813_ContractualIndiv01  | Commercial Vehicle Loan | Credit Approval | Reconsideration | Search     |
      | CV_CAS_60813_ContractualIndiv02  | Commercial Vehicle Loan | Credit Approval | Reconsideration | Search     |
      | CV_CAS_60813_ContractualIndiv03  | Commercial Vehicle Loan | Credit Approval | Reconsideration | Search     |
      | CV_CAS_60813_ContractualIndiv04  | Commercial Vehicle Loan | Credit Approval | Reconsideration | Search     |
      | CV_CAS_60813_ContractualIndiv05  | Commercial Vehicle Loan | Credit Approval | Reconsideration | Search     |


    @ICD
    Examples:
      | LogicalID | ProductType           | InitialStage | FinalStage      | ViewSearch |
      | MHF00002  | Micro Housing Finance | ICD          | Credit Approval | Search     |

    @ICD @CreditApproval
    Examples:
      | LogicalID | ProductType           | InitialStage    | FinalStage      | ViewSearch |
      | MHF00002  | Micro Housing Finance | Credit Approval | Reconsideration | Search     |

    @FDE
    Examples:
      | LogicalID     | ProductType    | InitialStage | FinalStage    | ViewSearch | SendBack |
      | MULF_BD_00001 | Multi Facility | FDE          | Post Approval | Search     |          |

    @Reconsideration
    Examples:
      | LogicalID | ProductType             | InitialStage    | FinalStage    | ViewSearch |
      | CEQ00001  | Commercial Equipment    | Reconsideration | Post Approval | Search     |
      | CV00002   | Commercial Vehicle Loan | Reconsideration | Post Approval | Search     |
      | CV00003   | Commercial Vehicle Loan | Reconsideration | Post Approval | Search     |

    @Reconsideration @PQMStory
    Examples:
      | LogicalID         | ProductType             | InitialStage    | FinalStage    | ViewSearch |
      | CV00CAS_88943_01  | Commercial Vehicle Loan | Reconsideration | Post Approval | Search     |
      | CV00CAS_88943_02  | Commercial Vehicle Loan | Reconsideration | Post Approval | Search     |
      | CV00CAS_88946_01  | Commercial Vehicle Loan | Reconsideration | Post Approval | Search     |
      | CV00CAS_206825_01 | Commercial Vehicle Loan | Reconsideration | Post Approval | Search     |
      | CV00CAS_80273_01  | Commercial Vehicle Loan | Reconsideration | Post Approval | Search     |
      | CV00CAS_90456_01  | Commercial Vehicle Loan | Reconsideration | Post Approval | Search     |
      | CV00CAS_90456_02  | Commercial Vehicle Loan | Reconsideration | Post Approval | Search     |

    @OperationCheck
    Examples:
      | LogicalID          | ProductType             | InitialStage     | FinalStage             | ViewSearch |
      | CC00001            | Credit Card Application | OPERATIONS CHECK | Card Management System | Search     |
      | CC00003            | Credit Card Application | OPERATIONS CHECK | Card Management System | Search     |
      | CAS_262309_CC00002 | Credit Card Application | OPERATIONS CHECK | Card Management System | Search     |

    @PostApproval
    Examples:
      | LogicalID     | ProductType             | InitialStage  | FinalStage          | ViewSearch | SendBack |
      | AL00001       | Auto Loan               | Post Approval | Disbursal           | Search     |          |
      | CV00001       | Commercial Vehicle Loan | Post Approval | Disbursal           | Search     |          |
      | FE00001       | Farm Equipment          | Post Approval | Disbursal           | Search     |          |
      | KCC00001      | Kisan Credit Card       | Post Approval | Disbursal           | Search     |          |
      | CEQ00001      | Commercial Equipment    | Post Approval | Disbursal           | Search     |          |
      | MHF00001      | Micro Housing Finance   | Post Approval | Disbursal           | Search     |          |
      | AGRL00001     | Agriculture Loan        | Post Approval | Disbursal           | Search     |          |
      | CV00003       | Commercial Vehicle Loan | Post Approval | Disbursal           | Search     |          |
      | CV00004       | Commercial Vehicle Loan | Post Approval | Disbursal           | Search     |          |
      | CV00002       | Commercial Vehicle Loan | Post Approval | Disbursal           | Search     |          |
      | PL00001       | Personal Loan           | Post Approval | Disbursal           | Search     |          |
      | HL00001       | Home Loan               | Post Approval | Disbursal           | Search     |          |
      | LAP00001      | Loan Against Property   | Post Approval | Disbursal           | Search     |          |
      | PL00002       | Personal Loan           | Post Approval | Disbursal           | Search     |          |
      | AL00002       | Auto Loan               | Post Approval | Disbursal           | Search     |          |
      | SB_AL00003    | Auto Loan               | Post Approval | Disbursal           | Search     |          |
      | OL00001       | Omni Loan               | Post Approval | Disbursal           | Search     |          |
      | MHF00002      | Micro Housing Finance   | Post Approval | Disbursal           | Search     |          |
      | CV00005       | Commercial Vehicle Loan | Post Approval | Disbursal           | Search     |          |
      | MULF_BD_00001 | Multi Facility          | Post Approval | FACILITY_INITIATION | Search     |          |

    @PostApproval
    @PQMStory
    Examples:
      | LogicalID                                      | ProductType             | InitialStage  | FinalStage | ViewSearch |
      | HL00CAS_25508_AutoDebit_App0                   | Home Loan               | Post Approval | Disbursal  | Search     |
      | HL00CAS_25508_AutoDebit_App1                   | Home Loan               | Post Approval | Disbursal  | Search     |
      | HL00CAS_25508_AutoDebit_App2                   | Home Loan               | Post Approval | Disbursal  | Search     |
      | HL00CAS_25508_AutoDebit_App3                   | Home Loan               | Post Approval | Disbursal  | Search     |
      | MAL00CAS_25508_AutoDebit_App4                  | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | MAL00CAS_25508_AutoDebit_App5                  | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | MAL00CAS_25508_Ecs_App0                        | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | HL00CAS_25508_Ecs_App1                         | Home Loan               | Post Approval | Disbursal  | Search     |
      | HL00CAS_25508_Ecs_App2                         | Home Loan               | Post Approval | Disbursal  | Search     |
      | MAL00CAS_25508_Ecs_App3                        | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | MAL00CAS_25508_Ecs_App4                        | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | MAL00CAS_25508_Ecs_App5                        | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | PL00CAS_25508_Nach_App0                        | Personal Loan           | Post Approval | Disbursal  | Search     |
      | MAL00CAS_25508_Nach_App1                       | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | HL00CAS_25508_Nach_App2                        | Home Loan               | Post Approval | Disbursal  | Search     |
      | HL00CAS_25508_Nach_App3                        | Home Loan               | Post Approval | Disbursal  | Search     |
      | MAL00CAS_25508_Nach_App4                       | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | HL00CAS_25508_Pdc_App0                         | Home Loan               | Post Approval | Disbursal  | Search     |
      | HL00CAS_25508_Pdc_App1                         | Home Loan               | Post Approval | Disbursal  | Search     |
      | MAL00CAS_25508_Pdc_App2                        | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | MAL00CAS_25508_Pdc_App3                        | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | HL00CAS_25508_Cash_App0                        | Home Loan               | Post Approval | Disbursal  | Search     |
      | HL00CAS_25508_Coupon_App0                      | Home Loan               | Post Approval | Disbursal  | Search     |
      | HL00CAS_25508_Das_App0                         | Home Loan               | Post Approval | Disbursal  | Search     |
      | MAL00CAS_25508_Otc_App0                        | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | MAL00CAS_25508_Escrow_App0                     | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | HL00CAS_25508_Others_App0                      | Home Loan               | Post Approval | Disbursal  | Search     |
      | HL00CAS_25508_Others_App1                      | Home Loan               | Post Approval | Disbursal  | Search     |
      | MAL00CAS_25508_Others_App2                     | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | HL00CAS_25508_Others_App3                      | Home Loan               | Post Approval | Disbursal  | Search     |
      | MAL00CAS_25508_Others_App4                     | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | HL00CAS_25508_Others_App5                      | Home Loan               | Post Approval | Disbursal  | Search     |
      | PL00CAS_80290_Pdc_App1                         | Personal Loan           | Post Approval | Disbursal  | Search     |
      | HL00CAS_80290_Pdc_App2                         | Home Loan               | Post Approval | Disbursal  | Search     |
      | MAL00CAS_80290_Pdc_App3                        | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | PL00CAS_80342_Pdc_Cancel_App1                  | Personal Loan           | Post Approval | Disbursal  | Search     |
      | HL00CAS_80342_Pdc_Cancel_App2                  | Home Loan               | Post Approval | Disbursal  | Search     |
      | MAL00CAS_80342_Pdc_Cancel_App3                 | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | PL00CAS_80346_Security_Mandate_ECS_App1        | Personal Loan           | Post Approval | Disbursal  | Search     |
      | HL00CAS_80346_Security_Mandate_ECS_App2        | Home Loan               | Post Approval | Disbursal  | Search     |
      | MAL00CAS_80346_Security_Mandate_ECS_App3       | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | PL00CAS_80346_Security_Mandate_NACH_App1       | Personal Loan           | Post Approval | Disbursal  | Search     |
      | HL00CAS_80346_Security_Mandate_NACH_App2       | Home Loan               | Post Approval | Disbursal  | Search     |
      | MAL00CAS_80346_Security_Mandate_NACH_App3      | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | PL00CAS_80346_Security_Mandate_AutoDebit_App1  | Personal Loan           | Post Approval | Disbursal  | Search     |
      | HL00CAS_80346_Security_Mandate_AutoDebit_App2  | Home Loan               | Post Approval | Disbursal  | Search     |
      | MAL00CAS_80346_Security_Mandate_AutoDebit_App3 | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | PL00CAS_206825_Nach_App0                       | Personal Loan           | Post Approval | Disbursal  | Search     |
      | HL00CAS_206825_Nach_App0                       | Home Loan               | Post Approval | Disbursal  | Search     |
      | MAL00CAS_206825_Nach_App0                      | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | CV00CAS_88943_01                               | Commercial Vehicle Loan | Post Approval | Disbursal  | Search     |
      | CV00CAS_88943_02                               | Commercial Vehicle Loan | Post Approval | Disbursal  | Search     |
      | CV00CAS_88946_01                               | Commercial Vehicle Loan | Post Approval | Disbursal  | Search     |
      | CV00CAS_206825_01                              | Commercial Vehicle Loan | Post Approval | Disbursal  | Search     |
      | PL00CAS_80273_01                               | Personal Loan           | Post Approval | Disbursal  | Search     |
      | HL00CAS_80273_01                               | Home Loan               | Post Approval | Disbursal  | Search     |
      | MAL00CAS_80273_01                              | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | PL00CAS_80273_02                               | Personal Loan           | Post Approval | Disbursal  | Search     |
      | HL00CAS_80273_02                               | Home Loan               | Post Approval | Disbursal  | Search     |
      | MAL00CAS_80273_02                              | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | CV00CAS_80273_01                               | Commercial Vehicle Loan | Post Approval | Disbursal  | Search     |
      | CV00CAS_90456_01                               | Commercial Vehicle Loan | Post Approval | Disbursal  | Search     |
      | CV00CAS_90456_02                               | Commercial Vehicle Loan | Post Approval | Disbursal  | Search     |
      | AL_CAS_60813_ContractualIndiv01                | Auto Loan               | Post Approval | Disbursal  | Search     |
      | AL_CAS_60813_ContractualIndiv02                | Auto Loan               | Post Approval | Disbursal  | Search     |
      | AL_CAS_60813_ContractualIndiv03                | Auto Loan               | Post Approval | Disbursal  | Search     |
      | AL_CAS_60813_ContractualIndiv04                | Auto Loan               | Post Approval | Disbursal  | Search     |
      | AL_CAS_60813_ContractualIndiv05                | Auto Loan               | Post Approval | Disbursal  | Search     |
      | CV_CAS_60813_ContractualIndiv01                | Commercial Vehicle Loan | Post Approval | Disbursal  | Search     |
      | CV_CAS_60813_ContractualIndiv02                | Commercial Vehicle Loan | Post Approval | Disbursal  | Search     |
      | CV_CAS_60813_ContractualIndiv03                | Commercial Vehicle Loan | Post Approval | Disbursal  | Search     |
      | CV_CAS_60813_ContractualIndiv04                | Commercial Vehicle Loan | Post Approval | Disbursal  | Search     |
      | CV_CAS_60813_ContractualIndiv05                | Commercial Vehicle Loan | Post Approval | Disbursal  | Search     |
      | PL00CAS_101659_Custodian_App0                  | Personal Loan           | Post Approval | Disbursal  | Search     |
      | HL00CAS_101659_Custodian_App0                  | Home Loan               | Post Approval | Disbursal  | Search     |
      | MAL00CAS_101659_Custodian_App0                 | Commercial Vehicle Loan | Post Approval | Disbursal  | Search     |
      | PL00CAS_101659_Pdc_Custodian_LMS_App0          | Personal Loan           | Post Approval | Disbursal  | Search     |
      | HL00CAS_101659_Pdc_Custodian_LMS_App0          | Home Loan               | Post Approval | Disbursal  | Search     |
      | MAL00CAS_101659_Pdc_Custodian_LMS_App0         | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | PL00CAS_206364_Nach_Physical                   | Personal Loan           | Post Approval | Disbursal  | Search     |
      | HL00CAS_206364_Nach_Physical                   | Home Loan               | Post Approval | Disbursal  | Search     |
      | MAL00CAS_206364_Nach_Physical                  | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | PL00CAS_206364_Nach_cf_Physical                | Personal Loan           | Post Approval | Disbursal  | Search     |
      | HL00CAS_206364_Nach_cf_Physical                | Home Loan               | Post Approval | Disbursal  | Search     |
      | MAL00CAS_206364_Nach_cf_Physical               | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | PL00CAS_112123_01                              | Personal Loan           | Post Approval | Disbursal  | Search     |
      | HL00CAS_112123_01                              | Home Loan               | Post Approval | Disbursal  | Search     |
      | MAL00CAS_112123_01                             | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |
      | PL00CAS_112123_02                              | Personal Loan           | Post Approval | Disbursal  | Search     |
      | HL00CAS_112123_02                              | Home Loan               | Post Approval | Disbursal  | Search     |
      | MAL00CAS_112123_02                             | Consumer Vehicle Loan   | Post Approval | Disbursal  | Search     |

    @TrancheApproval
    Examples:
      | LogicalID | ProductType    | InitialStage     | FinalStage | ViewSearch |
      | EDU00002  | Education Loan | Tranche_Approval | Disbursal  | View       |

    @PQMStory @TrancheApproval
    Examples:
      | LogicalID                        | ProductType    | InitialStage     | FinalStage | ViewSearch |
      | EDU_CAS_60813_ContractualIndiv01 | Education Loan | Tranche_Approval | Disbursal  | View       |
      | EDU_CAS_60813_ContractualIndiv02 | Education Loan | Tranche_Approval | Disbursal  | View       |
      | EDU_CAS_60813_ContractualIndiv03 | Education Loan | Tranche_Approval | Disbursal  | View       |
      | EDU_CAS_60813_ContractualIndiv04 | Education Loan | Tranche_Approval | Disbursal  | View       |
      | EDU_CAS_60813_ContractualIndiv05 | Education Loan | Tranche_Approval | Disbursal  | View       |

    @AssetValidation
    Examples:
      | LogicalID | ProductType      | InitialStage     | FinalStage | ViewSearch |
      | CD00001   | Consumer Durable | Asset Validation | Disbursal  | Search     |

    @DCCExecution
    Examples:
      | LogicalID | ProductType           | InitialStage  | FinalStage   | ViewSearch |
      | JLG00001  | Joint Liability Group | DCC_EXECUTION | SEND TO OPTS | Search     |
      | SHG00001  | Self Help Group       | DCC_EXECUTION | SEND TO OPTS | Search     |


  @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-20924:[LogicalID-<LogicalID>][SendBack-<SendBack>] Move application to <FinalStage> stage from <InitialStage> stage after opening the application for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<InitialStage>" stage present in context from application grid
    When user clicks on move to next stage
    Then Application should move to "<FinalStage>" Stage using "<ViewSearch>" service
    @LeadDetails
    Examples:
      | LogicalID  | ProductType | InitialStage | FinalStage       | ViewSearch | SendBack |
      | SB_AL00001 | Auto Loan   | Lead details | Login Acceptance | Search     | yes      |
      | SB_AL00002 | Auto Loan   | Lead details | Login Acceptance | Search     | yes      |

    @CCDE
    Examples:
      | LogicalID | ProductType             | InitialStage | FinalStage | ViewSearch |
      | CC00001   | Credit Card Application | CCDE         | KYC        | Search     |
    @DDE
    Examples:
      | LogicalID  | ProductType           | InitialStage | FinalStage     | ViewSearch | SendBack |
      | JLG00001   | Joint Liability Group | DDE          | PSV            | Search     |          |
      | SHG00001   | Self Help Group       | DDE          | PSV            | Search     |          |
      | SB_AL00003 | Auto Loan             | DDE          | Recommendation | Search     | yes      |

    @CreditApproval
    Examples:
      | LogicalID  | ProductType | InitialStage    | FinalStage      | ViewSearch | SendBack |
      | SB_AL00004 | Auto Loan   | Credit Approval | Reconsideration | Search     | yes      |

    @Reconsideration
    Examples:
      | LogicalID  | ProductType             | InitialStage    | FinalStage    | ViewSearch | SendBack |
      | EDU00001   | Education Loan          | Reconsideration | Post Approval | Search     |          |
      | EDU00002   | Education Loan          | Reconsideration | Post Approval | Search     |          |
      | AL00001    | Auto Loan               | Reconsideration | Post Approval | Search     |          |
      | CV00001    | Commercial Vehicle Loan | Reconsideration | Post Approval | Search     |          |
      | FE00001    | Farm Equipment          | Reconsideration | Post Approval | Search     |          |
      | KCC00001   | Kisan Credit Card       | Reconsideration | Post Approval | Search     |          |
      | MHF00001   | Micro Housing Finance   | Reconsideration | Post Approval | Search     |          |
      | AGRL00001  | Agriculture Loan        | Reconsideration | Post Approval | Search     |          |
      | PL00001    | Personal Loan           | Reconsideration | Post Approval | Search     |          |
      | HL00001    | Home Loan               | Reconsideration | Post Approval | Search     |          |
      | KCC00002   | Kisan Credit Card       | Reconsideration | Post Approval | Search     |          |
      | LAP00001   | Loan Against Property   | Reconsideration | Post Approval | Search     |          |
      | CV00004    | Commercial Vehicle Loan | Reconsideration | Post Approval | Search     |          |
      | PL00002    | Personal Loan           | Reconsideration | Post Approval | Search     |          |
      | AL00002    | Auto Loan               | Reconsideration | Post Approval | Search     |          |
      | SB_AL00003 | Auto Loan               | Reconsideration | Post Approval | Search     |          |
      | SB_AL00004 | Auto Loan               | Reconsideration | Post Approval | Search     |          |
      | SB_AL00004 | Auto Loan               | Reconsideration | Post Approval | Search     | yes      |
      | EDU00004   | Education Loan          | Reconsideration | Post Approval | Search     |          |
      | EDU00004   | Education Loan          | Reconsideration | Post Approval | Search     | yes      |
      | OL00001    | Omni Loan               | Reconsideration | Post Approval | Search     |          |
      | MHF00002   | Micro Housing Finance   | Reconsideration | Post Approval | Search     |          |
      | CV00005    | Commercial Vehicle Loan | Reconsideration | Post Approval | Search     |          |

    @PQMStory @Reconsideration
    Examples:
      | LogicalID                        | ProductType             | InitialStage    | FinalStage    | ViewSearch |
      | EDU_CAS_60813_ContractualIndiv01 | Education Loan          | Reconsideration | Post Approval | Search     |
      | EDU_CAS_60813_ContractualIndiv02 | Education Loan          | Reconsideration | Post Approval | Search     |
      | EDU_CAS_60813_ContractualIndiv03 | Education Loan          | Reconsideration | Post Approval | Search     |
      | EDU_CAS_60813_ContractualIndiv04 | Education Loan          | Reconsideration | Post Approval | Search     |
      | EDU_CAS_60813_ContractualIndiv05 | Education Loan          | Reconsideration | Post Approval | Search     |
      | AL_CAS_60813_ContractualIndiv01  | Auto Loan               | Reconsideration | Post Approval | Search     |
      | AL_CAS_60813_ContractualIndiv02  | Auto Loan               | Reconsideration | Post Approval | Search     |
      | AL_CAS_60813_ContractualIndiv03  | Auto Loan               | Reconsideration | Post Approval | Search     |
      | AL_CAS_60813_ContractualIndiv04  | Auto Loan               | Reconsideration | Post Approval | Search     |
      | AL_CAS_60813_ContractualIndiv05  | Auto Loan               | Reconsideration | Post Approval | Search     |
      | CV_CAS_60813_ContractualIndiv01  | Commercial Vehicle Loan | Reconsideration | Post Approval | Search     |
      | CV_CAS_60813_ContractualIndiv02  | Commercial Vehicle Loan | Reconsideration | Post Approval | Search     |
      | CV_CAS_60813_ContractualIndiv03  | Commercial Vehicle Loan | Reconsideration | Post Approval | Search     |
      | CV_CAS_60813_ContractualIndiv04  | Commercial Vehicle Loan | Reconsideration | Post Approval | Search     |
      | CV_CAS_60813_ContractualIndiv05  | Commercial Vehicle Loan | Reconsideration | Post Approval | Search     |

    @PostApproval
    Examples:
      | LogicalID  | ProductType           | InitialStage  | FinalStage | ViewSearch | SendBack |
      | EDU00001   | Education Loan        | Post Approval | Disbursal  | Search     |          |
      | EDU00002   | Education Loan        | Post Approval | Disbursal  | Search     |          |
      | JLG00001   | Joint Liability Group | Post Approval | Disbursal  | Search     |          |
      | SHG00001   | Self Help Group       | Post Approval | Disbursal  | Search     |          |
      | EDU00004   | Education Loan        | Post Approval | Disbursal  | Search     |          |
      | SB_AL00004 | Auto Loan             | Post Approval | Disbursal  | Search     |          |
      | SB_AL00004 | Auto Loan             | Post Approval | Disbursal  | Search     | yes      |
      | EDU00004   | Education Loan        | Post Approval | Disbursal  | Search     | yes      |
    @PQMStory @PostApproval
    Examples:
      | LogicalID                        | ProductType    | InitialStage  | FinalStage | ViewSearch |
      | EDU_CAS_60813_ContractualIndiv01 | Education Loan | Post Approval | Disbursal  | Search     |
      | EDU_CAS_60813_ContractualIndiv02 | Education Loan | Post Approval | Disbursal  | Search     |
      | EDU_CAS_60813_ContractualIndiv03 | Education Loan | Post Approval | Disbursal  | Search     |
      | EDU_CAS_60813_ContractualIndiv04 | Education Loan | Post Approval | Disbursal  | Search     |
      | EDU_CAS_60813_ContractualIndiv05 | Education Loan | Post Approval | Disbursal  | Search     |

    @FacilityInitiation
    Examples:
      | LogicalID     | ProductType    | InitialStage        | FinalStage         | ViewSearch |
      | MULF_BD_00001 | Multi Facility | FACILITY_INITIATION | Tranche Initiation | Search     |

    @TrancheInitiation
    Examples:
      | LogicalID | ProductType    | InitialStage       | FinalStage   | ViewSearch |
      | EDU00002  | Education Loan | Tranche Initiation | SEND_TO_OPTS | View       |

    @PQMStory @TrancheInitiation
    Examples:
      | LogicalID                        | ProductType    | InitialStage       | FinalStage   | ViewSearch |
      | EDU_CAS_60813_ContractualIndiv01 | Education Loan | Tranche Initiation | SEND_TO_OPTS | View       |
      | EDU_CAS_60813_ContractualIndiv02 | Education Loan | Tranche Initiation | SEND_TO_OPTS | View       |
      | EDU_CAS_60813_ContractualIndiv03 | Education Loan | Tranche Initiation | SEND_TO_OPTS | View       |
      | EDU_CAS_60813_ContractualIndiv04 | Education Loan | Tranche Initiation | SEND_TO_OPTS | View       |
      | EDU_CAS_60813_ContractualIndiv05 | Education Loan | Tranche Initiation | SEND_TO_OPTS | View       |

    @Recommendation
    Examples:
      | LogicalID | ProductType           | InitialStage   | FinalStage      | ViewSearch |
      | CD00001   | Consumer Durable      | Recommendation | Credit Approval | Search     |
      | JLG00001  | Joint Liability Group | Recommendation | Credit Approval | Search     |

    @PreSanctionVisit
    Examples:
      | LogicalID | ProductType           | InitialStage       | FinalStage     | ViewSearch |
      | JLG00001  | Joint Liability Group | Pre Sanction Visit | Recommendation | Search     |
      | SHG00001  | Self Help Group       | Pre Sanction Visit | Recommendation | Search     |

  @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-21401: Move application to <FinalStage> stage from <InitialStage> stage after opening the application for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user opens an application of "<InitialStage>" stage present in context from application grid
    When user clicks on move to next stage
    Then Application should move to "<FinalStage>" Stage using "<ViewSearch>" service
    @DCCScheduling
    Examples:
      | LogicalID | ProductType           | InitialStage   | FinalStage    | ViewSearch |
      | JLG00001  | Joint Liability Group | DCC_SCHEDULING | DCC_EXECUTION | Search     |
      | SHG00001  | Self Help Group       | DCC_SCHEDULING | DCC_EXECUTION | Search     |

  @ImplementedBy-rishabh.sachan
  Scenario Outline: ACAUTOCAS-20925: Move application from <InitialStage> stage to check application not present at <Stages> stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on move to next stage
    Then application should not be present at "<Stages>" stage

    @FII
    Examples:
      | LogicalID | ProductType    | InitialStage | Stages  |
      | FE00001   | Farm Equipment | FII          | FII,FIV |

    @PostApproval
    Examples:
      | LogicalID | ProductType       | InitialStage  | Stages        |
      | KCC00002  | Kisan Credit Card | Post Approval | Post Approval |

    @AccountUpdation
    Examples:
      | LogicalID | ProductType           | InitialStage     | Stages           |
      | SHG00001  | Self Help Group       | Account Updation | Account Updation |
      | JLG00001  | Joint Liability Group | Account Updation | Account Updation |

  @ImplementedBy-manish.yadav2
   #PQM-05_CAS-52837
  Scenario Outline: ACAUTOCAS-21259: [LogicalID-<LogicalID>][SendBack-<SendBack>] Move application to <FinalStage> stage from <ApplicationStage> stage using update service for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user moves from "<ApplicationStage>" to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" for "<Category>" with "<Key>" stage
    Then Application should move to "<FinalStage>" Stage using "<ViewSearch>" service
    @DDE
    @PQMStory
    Examples:
      | LogicalID              | ProductType | ApplicationStage | ApplicantType | Key | Category | FinalStage    | ViewSearch | SendBack |
      | HL00CAS_25508_Das_App0 | HL          | DDE              | indiv         |     |          | Post Approval | Search     |          |
      | PL00CAS_52837_01       | PL          | DDE              | indiv         |     |          | Disbursal     | Search     | yes      |
      | HL00CAS_52837_01       | HL          | DDE              | indiv         |     |          | Disbursal     | Search     | yes      |
      | MAL00CAS_52837_01      | MAL         | DDE              | indiv         |     |          | Disbursal     | Search     | yes      |
      | PL00CAS_52837_02       | PL          | DDE              | indiv         |     |          | Disbursal     | Search     | yes      |
      | HL00CAS_52837_02       | HL          | DDE              | indiv         |     |          | Disbursal     | Search     | yes      |
      | MAL00CAS_52837_02      | MAL         | DDE              | indiv         |     |          | Disbursal     | Search     | yes      |
      | PL00CAS_52837_03       | PL          | DDE              | indiv         |     |          | Disbursal     | Search     | yes      |
      | HL00CAS_52837_03       | HL          | DDE              | indiv         |     |          | Disbursal     | Search     | yes      |
      | MAL00CAS_52837_03      | MAL         | DDE              | indiv         |     |          | Disbursal     | Search     | yes      |
    @PQMStory @PostApproval
    Examples:
      | LogicalID             | ProductType | ApplicationStage | ApplicantType | Key | Category | FinalStage | ViewSearch | SendBack |
      | PL_CAS_49521_MG_16III | PL          | Post Approval    | indiv         |     |          | Disbursal  | Search     |          |

#PQM-27-CAS-113104,25-CAS-113104
  @ImplementedBy-priyanshu.kashyap
  Scenario Outline: ACAUTOCAS-21259: Move application to <FinalStage> stage from <ApplicationStage> stage using update service for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user moves from "<ApplicationStage>" to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" for "<Category>" with "<Key>" stage
    Then Application should move to "<FinalStage>" Stage using "<ViewSearch>" service
    Examples:
      | LogicalID | ProductType | ApplicationStage | ApplicantType | Key | Category | FinalStage     | ViewSearch |
      |           | HL          | DDE              | indiv         |     |          | Recommendation | Search     |
      |           | PL          | DDE              | indiv         |     |          | Recommendation | Search     |
      |           | MAL         | DDE              | indiv         |     |          | Recommendation | Search     |
      |           | HL          | DDE              | indiv         |     |          | Recommendation | Search     |
      |           | PL          | DDE              | indiv         |     |          | Recommendation | Search     |
      |           | MAL         | DDE              | indiv         |     |          | Recommendation | Search     |
      |           | HL          | DDE              | indiv         |     |          | Recommendation | Search     |
      |           | PL          | DDE              | indiv         |     |          | Recommendation | Search     |
      |           | MAL         | DDE              | indiv         |     |          | Recommendation | Search     |
      |           | HL          | DDE              | indiv         |     |          | Disbursal      | Search     |
      |           | PL          | DDE              | indiv         |     |          | Disbursal      | Search     |
      |           | MAL         | DDE              | indiv         |     |          | Disbursal      | Search     |
      |           | HL          | DDE              | indiv         |     |          | Disbursal      | Search     |
      |           | PL          | DDE              | indiv         |     |          | Disbursal      | Search     |
      |           | MAL         | DDE              | indiv         |     |          | Disbursal      | Search     |
      |           | HL          | DDE              | indiv         |     |          | Disbursal      | Search     |
      |           | PL          | DDE              | indiv         |     |          | Disbursal      | Search     |
      |           | MAL         | DDE              | indiv         |     |          | Disbursal      | Search     |

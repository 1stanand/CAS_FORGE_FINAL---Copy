@Epic-E2E
@AuthoredBy-anshika.gupta
@Conventional
@E2EOrder
@Order
@Release
@SentToOps

  #FeatureID-ACAUTOCAS-17204
Feature: End to end work flow for All LOB Order Wise

##################################################### STAGE 13 : SENT TO OPS #####################################################################

  @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-19873: Validate visibility of all required tabs at sent to ops stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application present in context from sent to ops grid
    Then user should be able to open all required tabs at sent to ops stage
      | Applicant Information        |
      | Disbursal Details            |
      | Documents                    |
      | Conditions                   |
      | Repayment Parameters         |
      | Repayment Instrument Details |
      | FIC Details                  |
      | CIC Details                  |
      | Account Details              |
    Examples:
      | LogicalID | ProductType             |
      | EDU00001  | Education Loan          |
      | EDU00002  | Education Loan          |
      | CV00001   | Commercial Vehicle Loan |
      | CV00003   | Commercial Vehicle Loan |
      | EDU00004  | Education Loan          |
      | CV00005   | Commercial Vehicle Loan |

    @PQMStory
    Examples:
      | LogicalID         | ProductType    |
      | EDU_CAS_60813_ContractualIndiv01 | Education Loan |
      | EDU_CAS_60813_ContractualIndiv02 | Education Loan |
      | EDU_CAS_60813_ContractualIndiv03 | Education Loan |
      | EDU_CAS_60813_ContractualIndiv04 | Education Loan |
      | EDU_CAS_60813_ContractualIndiv05 | Education Loan |


  @AuthoredBy-richa.singh
    @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-19874: Validate data is in read only mode for all required tabs at sent to ops stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application present in context from sent to ops grid
    Then data should be in read only mode for all required tabs at sent to ops stage
      | Applicant Information        |
      | Disbursal Details            |
      | Documents                    |
      | Conditions                   |
      | Repayment Parameters         |
      | Repayment Instrument Details |
      | Account Details              |
    Examples:
      | LogicalID | ProductType           |
      | KCC00001  | Kisan Credit Card     |
      | FE00001   | Farm Equipment        |
      | CD00001   | Consumer Durable      |
      | MHF00001  | Micro Housing Finance |
      | AGRL00001 | Agriculture Loan      |
      | GL00001   | Gold Loan             |
      | PL00001   | Personal Loan         |
      | HL00001   | Home Loan             |
      | LAP00001  | Loan Against Property |
      | PL00002   | Personal Loan         |
      | OL00001   | Omni Loan             |
      | AL00002   | Auto Loan             |
      | MHF00002  | Micro Housing Finance |

  @ImplementedBy-ashutosh.kumar2
  Scenario Outline: ACAUTOCAS-21258: Validate data is in read only mode for all required tabs at sent to ops stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application present in context from sent to ops grid
    Then data should be in read only mode for all required tabs at sent to ops stage
      | Applicant Information        |
      | Documents                    |
      | Conditions                   |
      | Repayment Parameters         |
      | Repayment Instrument Details |
      | Account Details              |

    Examples:
      | LogicalID | ProductType       |
      | KCC00002  | Kisan Credit Card |


  @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-19875: Validate disbursal details report at Sent To Ops stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application present in context from sent to ops grid
    When user navigates to disbursal details tab at Sent To Ops stage
    Then Report should be validated successfully at disbursal Details
      | Actual Repayment Schedule |
      | Disbursal Report          |
      | CAM Report                |
    Examples:
      | LogicalID | ProductType    |
      | EDU00001  | Education Loan |
      | EDU00002  | Education Loan |
    @PQMStory
    Examples:
      | LogicalID         | ProductType    |
      | EDU_CAS_60813_ContractualIndiv01 | Education Loan |
      | EDU_CAS_60813_ContractualIndiv02 | Education Loan |
      | EDU_CAS_60813_ContractualIndiv03 | Education Loan |
      | EDU_CAS_60813_ContractualIndiv04 | Education Loan |
      | EDU_CAS_60813_ContractualIndiv05 | Education Loan |

  @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19876: Validate visibility of all required tabs at sent to ops stage for <ProductType> for multi asset LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application present in context from sent to ops grid
    Then user should be able to open all required tabs at sent to ops stage
      | Applicant Information        |
      | Disbursal Details            |
      | Documents                    |
      | Conditions                   |
      | Repayment Instrument Details |
      | FIC Details                  |
      | Account Details              |
    Examples:
      | LogicalID | ProductType |
      | AL00001   | Auto Loan   |
    @PQMStory
    Examples:
      | LogicalID                       | ProductType |
      | AL_CAS_60813_ContractualIndiv01 | Auto Loan   |
      | AL_CAS_60813_ContractualIndiv02 | Auto Loan   |
      | AL_CAS_60813_ContractualIndiv03 | Auto Loan   |
      | AL_CAS_60813_ContractualIndiv04 | Auto Loan   |
      | AL_CAS_60813_ContractualIndiv05 | Auto Loan   |

  @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-20917: Validate data is in read only mode for all tabs at sent to ops stage for <ProductType> multi asset LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application present in context from sent to ops grid
    Then data should be in read only mode for all required tabs at sent to ops stage
      | Applicant Information        |
      | Disbursal Details            |
      | Documents                    |
      | Conditions                   |
      | Repayment Instrument Details |
      | Account Details              |
      | FIC Details                  |
    Examples:
      | LogicalID | ProductType             |
      | CEQ00001  | Commercial Equipment    |
      | CV00002   | Commercial Vehicle Loan |
      | CV00004   | Commercial Vehicle Loan |

    @PQMStory
    Examples:
      | LogicalID         | ProductType             |
      | CV00CAS_88943_01  | Commercial Vehicle Loan |
      | CV00CAS_88946_01  | Commercial Vehicle Loan |
      | CV00CAS_206825_01 | Commercial Vehicle Loan |

  @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-21400: Validate data is in read only mode for all tabs at sent to ops stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application present in context from sent to ops grid
    Then data should be in read only mode for all required tabs at sent to ops stage
      | Applicant Information |
      | Disbursal Details     |
      | Conditions            |
      | DCC Questionnaire     |
    Examples:
      | LogicalID | ProductType           |
      | JLG00001  | Joint Liability Group |
      | SHG00001  | Self Help Group       |

  @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19877: Validate application tranches at Sent To Ops stage for <ProductType> for multi asset LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application present in context from sent to ops grid
    When user navigates to disbursal details tab at Sent To Ops stage
    Then all application tranches should be fully disbursed
    Examples:
      | LogicalID | ProductType             |
      | AL00001   | Auto Loan               |
      | CEQ00001  | Commercial Equipment    |
      | CV00002   | Commercial Vehicle Loan |

    @PQMStory
    Examples:
      | LogicalID                       | ProductType             |
      | CV00CAS_88943_01                | Commercial Vehicle Loan |
      | CV00CAS_88946_01                | Commercial Vehicle Loan |
      | CV00CAS_206825_01               | Commercial Vehicle Loan |
      | AL_CAS_60813_ContractualIndiv01 | Auto Loan               |
      | AL_CAS_60813_ContractualIndiv02 | Auto Loan               |
      | AL_CAS_60813_ContractualIndiv03 | Auto Loan               |
      | AL_CAS_60813_ContractualIndiv04 | Auto Loan               |
      | AL_CAS_60813_ContractualIndiv05 | Auto Loan               |



#  Scenario Outline: Validate applicant information details at Sent To Ops stage for <ProductType>
#    Given user opens an application present in context from sent to ops grid
#    When user navigates to applicant information tab at Sent To Ops stage
#    And user reviews application information details "<ProductType>"
#    Then applicant information details should be validated successfully
#
#    Examples:
#      | ProductType    |
#      | Education Loan |
#
#
#  Scenario Outline: Validate repayment parameters details at Sent To Ops stage for <ProductType>
#    Given user opens an application present in context from sent to ops grid
#    When user navigates to repayment parameters tab at Sent To Ops stage
#    And user reviews repayment parameters details for "<ProductType>"
#    Then repayment parameters details should be validated successfully
#    Examples:
#      | ProductType    |
#      | Education Loan |


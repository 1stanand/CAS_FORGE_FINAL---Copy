@Epic-E2E
@Conventional
@E2EOrder
@Release
@KYC
@Order
  #FeatureID-ACAUTOCAS-17204
Feature: End to end work flow for All LOB Order Wise


########################################### STAGE 3 : KYC ####################################################################################

  @AuthoredBy-richa.singh
    @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-19856: Re-initiate Applicant Information for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "KYC" stage present in context from application grid
    When user Re-initiate applicant information at kyc stage
    Then applicant information re-initiate successfully
    Examples:
      | LogicalID | ProductType             |
      | KCC00001  | Kisan Credit Card       |
      | FE00001   | Farm Equipment          |
      | CEQ00001  | Commercial Equipment    |
      | CC00001   | Credit Card Application |
      | AGRL00001 | Agriculture Loan        |
      | PL00001   | Personal Loan           |
      | HL00001   | Home Loan               |
      | CV00003   | Commercial Vehicle Loan |
      | CV00004   | Commercial Vehicle Loan |
      | CV00002   | Commercial Vehicle Loan |
      | KCC00002  | Kisan Credit Card       |
      | PL00002   | Personal Loan           |
      | AL00003   | Auto Loan               |
      | CC00002   | Credit Card Application |
      | CC00003   | Credit Card Application |
      | MHF00002  | Micro Housing Finance   |

    @PQMStory
    Examples:
      | LogicalID                       | ProductType             |
      | CV00CAS_88943_01                | Commercial Vehicle Loan |
      | CV00CAS_88943_02                | Commercial Vehicle Loan |
      | CV00CAS_88946_01                | Commercial Vehicle Loan |
      | CV00CAS_206825_01               | Commercial Vehicle Loan |
      | CV00CAS_80273_01                | Commercial Vehicle Loan |
      | CV00CAS_90456_01                | Commercial Vehicle Loan |
      | CV00CAS_90456_02                | Commercial Vehicle Loan |
      | AL_CAS_60813_ContractualIndiv01 | Auto Loan               |
      | AL_CAS_60813_ContractualIndiv02 | Auto Loan               |
      | AL_CAS_60813_ContractualIndiv03 | Auto Loan               |
      | AL_CAS_60813_ContractualIndiv04 | Auto Loan               |
      | AL_CAS_60813_ContractualIndiv05 | Auto Loan               |



   #decision - approve
  @AuthoredBy-anshika.gupta
    @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-19857: Save kyc check details of the application at KYC stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "KYC" stage present in context from application grid
    When user reads data from the excel file "<KYC_detailsWB>" under sheet "<KYC_details_sheet>" and row <KYC_details_rowNum>
    And user fills KYC checklist
    And user approve the KYC decision
    And user saves the kyc check details
    Then kyc check details should be saved successfully

    Examples:
      | LogicalID | KYC_detailsWB | KYC_details_sheet | KYC_details_rowNum | ProductType           |
      | EDU00001  | shares.xlsx   | reconsideration   | 0                  | Education Loan        |
      | EDU00002  | shares.xlsx   | reconsideration   | 0                  | Education Loan        |
      | AL00001   | shares.xlsx   | reconsideration   | 0                  | Auto Loan             |
      | FE00001   | shares.xlsx   | reconsideration   | 0                  | Farm Equipment        |
      | MHF00001  | shares.xlsx   | reconsideration   | 0                  | Micro Housing Finance |
      | AGRL00001 | shares.xlsx   | reconsideration   | 0                  | Agriculture Loan      |
      | PL00001   | shares.xlsx   | reconsideration   | 0                  | Personal Loan         |
      | HL00001   | shares.xlsx   | reconsideration   | 0                  | Home Loan             |
      | LAP00001  | shares.xlsx   | reconsideration   | 0                  | Loan Against Property |
      | PL00002   | shares.xlsx   | reconsideration   | 0                  | Personal Loan         |
      | OL00001   | shares.xlsx   | reconsideration   | 0                  | Omni Loan             |
      | AL00003   | shares.xlsx   | reconsideration   | 0                  | Auto Loan             |
      | AL00002   | shares.xlsx   | reconsideration   | 0                  | Auto Loan             |
      | CV00003   | shares.xlsx   | reconsideration   | 0                  | Commercial Vehicle Loan |
      | MHF00002  | shares.xlsx   | reconsideration   | 0                  | Micro Housing Finance |

    @PQMStory
    Examples:
      | LogicalID                        | KYC_detailsWB | KYC_details_sheet | KYC_details_rowNum | ProductType    |
      | EDU_CAS_60813_ContractualIndiv01 | shares.xlsx   | reconsideration   | 0                  | Education Loan |
      | EDU_CAS_60813_ContractualIndiv02 | shares.xlsx   | reconsideration   | 0                  | Education Loan |
      | EDU_CAS_60813_ContractualIndiv03 | shares.xlsx   | reconsideration   | 0                  | Education Loan |
      | EDU_CAS_60813_ContractualIndiv04 | shares.xlsx   | reconsideration   | 0                  | Education Loan |
      | EDU_CAS_60813_ContractualIndiv05 | shares.xlsx   | reconsideration   | 0                  | Education Loan |
      | AL_CAS_60813_ContractualIndiv01  | shares.xlsx   | reconsideration   | 0                  | Auto Loan      |
      | AL_CAS_60813_ContractualIndiv02  | shares.xlsx   | reconsideration   | 0                  | Auto Loan      |
      | AL_CAS_60813_ContractualIndiv03  | shares.xlsx   | reconsideration   | 0                  | Auto Loan      |
      | AL_CAS_60813_ContractualIndiv04  | shares.xlsx   | reconsideration   | 0                  | Auto Loan      |
      | AL_CAS_60813_ContractualIndiv05  | shares.xlsx   | reconsideration   | 0                  | Auto Loan      |


  @AuthoredBy-harshita.nayak
    @ImplementedBy-harshita.nayak
  Scenario Outline: ACAUTOCAS-19858: Save kyc check details for non individual application at KYC stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "KYC" stage present in context from application grid
    When user reads data from the excel file "<KYC_detailsWB>" under sheet "<KYC_details_sheet>" and row <KYC_details_rowNum>
    And user fills KYC checklist for customer
    And user fills KYC checklist for partner director
    And user fills KYC checklist for contact person
    And user approve the KYC decision
    And user saves the kyc check details
    Then kyc check details should be saved successfully

    Examples:
      | LogicalID | KYC_detailsWB | KYC_details_sheet | KYC_details_rowNum | ProductType             |
      | CV00001   | shares.xlsx   | reconsideration   | 0                  | Commercial Vehicle Loan |
      | CEQ00001  | shares.xlsx   | reconsideration   | 0                  | Commercial Equipment    |
      | CC00001   | shares.xlsx   | reconsideration   | 0                  | Credit Card Application |
      | CV00004   | shares.xlsx   | reconsideration   | 0                  | Commercial Vehicle Loan |
      | CV00002   | shares.xlsx   | reconsideration   | 0                  | Commercial Vehicle Loan |
      | CC00003   | shares.xlsx   | reconsideration   | 0                  | Credit Card Application |
      | CV00005   | shares.xlsx   | reconsideration   | 0                  | Commercial Vehicle Loan |

    @PQMStory
    Examples:
      | LogicalID                       | KYC_detailsWB | KYC_details_sheet | KYC_details_rowNum | ProductType             |
      | CV00CAS_88943_01                | shares.xlsx   | reconsideration   | 0                  | Commercial Vehicle Loan |
      | CV00CAS_88943_02                | shares.xlsx   | reconsideration   | 0                  | Commercial Vehicle Loan |
      | CV00CAS_88946_01                | shares.xlsx   | reconsideration   | 0                  | Commercial Vehicle Loan |
      | CV00CAS_206825_01               | shares.xlsx   | reconsideration   | 0                  | Commercial Vehicle Loan |
      | CV00CAS_80273_01                | shares.xlsx   | reconsideration   | 0                  | Commercial Vehicle Loan |
      | CV00CAS_90456_01                | shares.xlsx   | reconsideration   | 0                  | Commercial Vehicle Loan |
      | CV00CAS_90456_02                | shares.xlsx   | reconsideration   | 0                  | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv01 | shares.xlsx   | reconsideration   | 0                  | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv02 | shares.xlsx   | reconsideration   | 0                  | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv03 | shares.xlsx   | reconsideration   | 0                  | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv04 | shares.xlsx   | reconsideration   | 0                  | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv05 | shares.xlsx   | reconsideration   | 0                  | Commercial Vehicle Loan |

  @AuthoredBy-richa.singh
    @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-19859:[LogicalID-<LogicalID>][SendBack-<SendBack>] Save kyc check details for all individual application at KYC stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "KYC" stage present in context from application grid
    When user reads data from the excel file "<KYC_detailsWB>" under sheet "<KYC_details_sheet>" and row <KYC_details_rowNum>
    And user fills KYC checklist for customer
    And user approve the KYC decision
    And user saves the kyc check details
    Then kyc check details should be saved successfully
    Examples:
      | LogicalID  | KYC_detailsWB           | KYC_details_sheet | KYC_details_rowNum | ProductType             | SendBack |
      | KCC00001   | kyc_check_end_flow.xlsx | decision          | 0                  | Kisan Credit Card       |          |
      | KCC00002   | kyc_check_end_flow.xlsx | decision          | 0                  | Kisan Credit Card       |          |
      | CC00002    | kyc_check_end_flow.xlsx | decision          | 0                  | Credit Card Application |          |
      | SB_AL00001 | kyc_check_end_flow.xlsx | decision          | 0                  | Auto Loan               |          |
      | SB_AL00002 | kyc_check_end_flow.xlsx | decision          | 0                  | Auto Loan               |          |
      | SB_AL00002 | kyc_check_end_flow.xlsx | decision          | 0                  | Auto Loan               | yes      |
      | SB_AL00003 | kyc_check_end_flow.xlsx | decision          | 0                  | Auto Loan               |          |
      | SB_AL00004 | kyc_check_end_flow.xlsx | decision          | 0                  | Auto Loan               |          |


  @AuthoredBy-rishabh.sachan
  @ImplementedBy-rishabh.sachan
  Scenario Outline: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Fill kyc details and decision of the application at KYC stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "KYC" stage present in context from application grid
    When user reads data from the excel file "<KYC_detailsWB>" under sheet "<KYC_details_sheet>" and row <KYC_details_rowNum>
    And user fills KYC checklist
    And user fills the KYC decision
    Then kyc decision should be selected as "Reject"
    Examples:
      | LogicalID | KYC_detailsWB | KYC_details_sheet | KYC_details_rowNum | ProductType    | RevisitCount |
      | EDU00004  | shares.xlsx   | reconsideration   | 5                  | Education Loan |              |
      | PL00003   | shares.xlsx   | reconsideration   | 5                  | Personal Loan  |              |


  @AuthoredBy-rishabh.sachan
  @ImplementedBy-rishabh.sachan
  Scenario Outline: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Fill kyc decision more reasons of the application at KYC stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "KYC" stage present in context from application grid
    And user reads data from the excel file "<KYC_detailsWB>" under sheet "<KYC_details_sheet>" and row <KYC_details_rowNum>
    When user clicks on add more reason in kyc
    And user adds reason and description in kyc
    Then more decision reasons should be added in kyc
    Examples:
      | LogicalID | KYC_detailsWB | KYC_details_sheet | KYC_details_rowNum | ProductType    | Stage     | RevisitCount |
      | EDU00004  | shares.xlsx   | reconsideration   | 6                  | Education Loan | Rejection |              |
      | EDU00004  | shares.xlsx   | reconsideration   | 7                  | Education Loan | Rejection |              |

  @AuthoredBy-rishabh.sachan
  @ImplementedBy-rishabh.sachan
  Scenario Outline: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Save and confirm kyc decision rejection of the application at KYC stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "KYC" stage present in context from application grid
    When user saves the kyc check details
    And user confirms the reject kyc check decision
    Then Application should move to "<Stage>" Stage
    Examples:
      | LogicalID | ProductType    | Stage     | RevisitCount |
      | EDU00004  | Education Loan | Rejection |              |
      | PL00003   | Personal Loan  | Rejection |              |


  @AuthoredBy-rishabh.sachan
  @ImplementedBy-rishabh.sachan
  Scenario Outline: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Save kyc decision details of the application at KYC stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "KYC" stage present in context from application grid
    When user reads data from the excel file "<KYC_detailsWB>" under sheet "<KYC_details_sheet>" and row <KYC_details_rowNum>
    And user verify identification for KYC checklist
    And user fills the KYC decision
    And user saves the kyc check details
    Then kyc check details should be saved successfully
    @Reject
    Examples:
      | LogicalID | KYC_detailsWB | KYC_details_sheet | KYC_details_rowNum | ProductType    | RevisitCount |
      | EDU00004  | shares.xlsx   | reconsideration   | 0                  | Education Loan | 1            |

@Epic-E2E
@Conventional
@E2EOrder
@Order

  #FeatureID-ACAUTOCAS-17204
Feature: End to end work flow for All LOB Order Wise

######################################### STAGE 1 : LEAD DETAILS STAGE ##################################################################################################################


#------------------------------------------ DOCUMENT ------------------------------------------------------------------------------------------------

############################################ DOCUMENT TAB #######################################################################################################

  @ImplementedBy-rishabh.garg
    @AuthoredBy-anshika.gupta
    @Release
  Scenario Outline: ACAUTOCAS-19942: [LogicalID-<LogicalID>] Submit documents in Documents section at <ApplicationStage> stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user selects document tab
    And user reads data from the excel file "<DocumentWB>" under sheet "<Document_home>" and row <Document_home_rowNum>
    And user selects the document
    And user selects document status as "<Status>"
    When user submit the document
    Then documents should be submitted successfully
    @LeadDetails
    Examples:
      | LogicalID  | ProductType             | DocumentWB    | Document_home | Document_home_rowNum | Status              | ApplicationStage |
      | EDU00001   | Education Loan          | document.xlsx | home          | 504                  | Pending             | Lead details     |
      | EDU00002   | Education Loan          | document.xlsx | home          | 504                  | Pending             | Lead details     |
      | EDU00003   | Education Loan          | document.xlsx | home          | 504                  | Pending             | Lead details     |
      | EDU00004   | Education Loan          | document.xlsx | home          | 504                  | Pending             | Lead details     |
      | AL00001    | Auto Loan               | document.xlsx | home          | 504                  | Pending             | Lead details     |
      | CV00001    | Commercial Vehicle Loan | document.xlsx | home          | 464                  | Received & Uploaded | Lead details     |
      | KCC00001   | Kisan Credit Card       | document.xlsx | home          | 527                  | Deferred            | Lead details     |
      | KCC00001   | Kisan Credit Card       | document.xlsx | home          | 519                  | Received & Uploaded | Lead details     |
      | KCC00001   | Kisan Credit Card       | document.xlsx | home          | 520                  | Received & Uploaded | Lead details     |
      | KCC00001   | Kisan Credit Card       | document.xlsx | home          | 521                  | Received & Uploaded | Lead details     |
      | KCC00001   | Kisan Credit Card       | document.xlsx | home          | 522                  | Received & Uploaded | Lead details     |
      | KCC00001   | Kisan Credit Card       | document.xlsx | home          | 523                  | Received & Uploaded | Lead details     |
      | FE00001    | Farm Equipment          | document.xlsx | home          | 511                  | Pending             | Lead details     |
      | FE00001    | Farm Equipment          | document.xlsx | home          | 512                  | Pending             | Lead details     |
      | MHF00001   | Micro Housing Finance   | document.xlsx | home          | 512                  | Received & Uploaded | Lead details     |
      | MHF00001   | Micro Housing Finance   | document.xlsx | home          | 511                  | Received & Uploaded | Lead details     |
      | MHF00001   | Micro Housing Finance   | document.xlsx | home          | 514                  | Received & Uploaded | Lead details     |
      | MHF00001   | Micro Housing Finance   | document.xlsx | home          | 515                  | Received & Uploaded | Lead details     |
      | MHF00001   | Micro Housing Finance   | document.xlsx | home          | 516                  | Received & Uploaded | Lead details     |
      | MHF00001   | Micro Housing Finance   | document.xlsx | home          | 517                  | Received & Uploaded | Lead details     |
      | CEQ00001   | Commercial Equipment    | document.xlsx | home          | 524                  | Received & Uploaded | Lead details     |
      | CEQ00001   | Commercial Equipment    | document.xlsx | home          | 525                  | Pending             | Lead details     |
      | CEQ00001   | Commercial Equipment    | document.xlsx | home          | 526                  | Pending             | Lead details     |
      | AGRL00001  | Agriculture Loan        | document.xlsx | home          | 511                  | Deferred            | Lead details     |
      | AGRL00001  | Agriculture Loan        | document.xlsx | home          | 512                  | Deferred            | Lead details     |
      | HL00001    | Home Loan               | document.xlsx | home          | 540                  | Received & Uploaded | Lead details     |
      | HL00001    | Home Loan               | document.xlsx | home          | 541                  | Received & Uploaded | Lead details     |
      | PL00001    | Personal Loan           | document.xlsx | home          | 542                  | Received & Uploaded | Lead details     |
      | PL00001    | Personal Loan           | document.xlsx | home          | 543                  | Received & Uploaded | Lead details     |
      | CV00003    | Commercial Vehicle Loan | document.xlsx | home          | 464                  | Received & Uploaded | Lead details     |
      | CV00004    | Commercial Vehicle Loan | document.xlsx | home          | 524                  | Received & Uploaded | Lead details     |
      | CV00002    | Commercial Vehicle Loan | document.xlsx | home          | 464                  | Received & Uploaded | Lead details     |
      | KCC00002   | Kisan Credit Card       | document.xlsx | home          | 527                  | Deferred            | Lead details     |
      | KCC00002   | Kisan Credit Card       | document.xlsx | home          | 519                  | Received & Uploaded | Lead details     |
      | KCC00002   | Kisan Credit Card       | document.xlsx | home          | 520                  | Received & Uploaded | Lead details     |
      | KCC00002   | Kisan Credit Card       | document.xlsx | home          | 521                  | Received & Uploaded | Lead details     |
      | KCC00002   | Kisan Credit Card       | document.xlsx | home          | 522                  | Received & Uploaded | Lead details     |
      | KCC00002   | Kisan Credit Card       | document.xlsx | home          | 523                  | Received & Uploaded | Lead details     |
      | PL00002    | Personal Loan           | document.xlsx | home          | 542                  | Received & Uploaded | Lead details     |
      | PL00002    | Personal Loan           | document.xlsx | home          | 543                  | Received & Uploaded | Lead details     |
      | AL00003    | Auto Loan               | document.xlsx | home          | 512                  | Received & Uploaded | Lead details     |
      | AL00003    | Auto Loan               | document.xlsx | home          | 511                  | Received & Uploaded | Lead details     |
      | AL00003    | Auto Loan               | document.xlsx | home          | 514                  | Received & Uploaded | Lead details     |
      | AL00003    | Auto Loan               | document.xlsx | home          | 515                  | Received & Uploaded | Lead details     |
      | AL00002    | Auto Loan               | document.xlsx | home          | 561                  | Pending             | Lead details     |
      | SB_AL00001 | Auto Loan               | document.xlsx | home          | 504                  | Pending             | Lead details     |
      | SB_AL00002 | Auto Loan               | document.xlsx | home          | 504                  | Pending             | Lead details     |
      | SB_AL00003 | Auto Loan               | document.xlsx | home          | 504                  | Pending             | Lead details     |
      | SB_AL00004 | Auto Loan               | document.xlsx | home          | 504                  | Pending             | Lead details     |
      | MHF00002   | Micro Housing Finance   | document.xlsx | home          | 561                  | Pending             | Lead details     |
      | MHF00002   | Micro Housing Finance   | document.xlsx | home          | 563                  | Received & Uploaded | Lead details     |
      | MHF00002   | Micro Housing Finance   | document.xlsx | home          | 564                  | Received & Uploaded | Lead details     |
      | CV00005    | Commercial Vehicle Loan | document.xlsx | home          | 464                  | Received & Uploaded | Lead details     |

    @CCDE
    Examples:
      | LogicalID | ProductType             | DocumentWB    | Document_home | Document_home_rowNum | Status              | ApplicationStage |
      | CC00001   | Credit Card Application | document.xlsx | home          | 532                  | Pending             | CCDE             |
      | CC00002   | Credit Card Application | document.xlsx | home          | 540                  | Received & Uploaded | CCDE             |
      | CC00003   | Credit Card Application | document.xlsx | home          | 541                  | Received & Uploaded | CCDE             |
      | CC00003   | Credit Card Application | document.xlsx | home          | 536                  | Pending             | CCDE             |

    @PQMStory @LeadDetails
    Examples:
      | LogicalID                        | ProductType             | DocumentWB    | Document_home | Document_home_rowNum | Status              | ApplicationStage |
      | EDU_CAS_60813_ContractualIndiv01 | Education Loan          | document.xlsx | home          | 504                  | Pending             | Lead details     |
      | EDU_CAS_60813_ContractualIndiv02 | Education Loan          | document.xlsx | home          | 504                  | Pending             | Lead details     |
      | EDU_CAS_60813_ContractualIndiv03 | Education Loan          | document.xlsx | home          | 504                  | Pending             | Lead details     |
      | EDU_CAS_60813_ContractualIndiv04 | Education Loan          | document.xlsx | home          | 504                  | Pending             | Lead details     |
      | EDU_CAS_60813_ContractualIndiv05 | Education Loan          | document.xlsx | home          | 504                  | Pending             | Lead details     |
      | CV00CAS_88943_01                 | Commercial Vehicle Loan | document.xlsx | home          | 464                  | Received & Uploaded | Lead details     |
      | CV00CAS_88943_02                 | Commercial Vehicle Loan | document.xlsx | home          | 464                  | Received & Uploaded | Lead details     |
      | CV00CAS_88946_01                 | Commercial Vehicle Loan | document.xlsx | home          | 464                  | Received & Uploaded | Lead details     |
      | CV00CAS_206825_01                | Commercial Vehicle Loan | document.xlsx | home          | 464                  | Received & Uploaded | Lead details     |
      | CV00CAS_80273_01                 | Commercial Vehicle Loan | document.xlsx | home          | 464                  | Received & Uploaded | Lead details     |
      | CV00CAS_90456_01                 | Commercial Vehicle Loan | document.xlsx | home          | 464                  | Received & Uploaded | Lead details     |
      | CV00CAS_90456_02                 | Commercial Vehicle Loan | document.xlsx | home          | 464                  | Received & Uploaded | Lead details     |
      | AL_CAS_60813_ContractualIndiv01  | Auto Loan               | document.xlsx | home          | 504                  | Pending             | Lead details     |
      | AL_CAS_60813_ContractualIndiv02  | Auto Loan               | document.xlsx | home          | 504                  | Pending             | Lead details     |
      | AL_CAS_60813_ContractualIndiv03  | Auto Loan               | document.xlsx | home          | 504                  | Pending             | Lead details     |
      | AL_CAS_60813_ContractualIndiv04  | Auto Loan               | document.xlsx | home          | 504                  | Pending             | Lead details     |
      | AL_CAS_60813_ContractualIndiv05  | Auto Loan               | document.xlsx | home          | 504                  | Pending             | Lead details     |
      | CV_CAS_60813_ContractualIndiv01  | Commercial Vehicle Loan | document.xlsx | home          | 464                  | Received & Uploaded | Lead details     |
      | CV_CAS_60813_ContractualIndiv02  | Commercial Vehicle Loan | document.xlsx | home          | 464                  | Received & Uploaded | Lead details     |
      | CV_CAS_60813_ContractualIndiv03  | Commercial Vehicle Loan | document.xlsx | home          | 464                  | Received & Uploaded | Lead details     |
      | CV_CAS_60813_ContractualIndiv04  | Commercial Vehicle Loan | document.xlsx | home          | 464                  | Received & Uploaded | Lead details     |
      | CV_CAS_60813_ContractualIndiv05  | Commercial Vehicle Loan | document.xlsx | home          | 464                  | Received & Uploaded | Lead details     |

#---------------------------------------------------------------- CATTLE DETAILS ----------------------------------------------------------------------

###################################################################################################################################################

  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-20914: [LogicalID-<LogicalID>] Save cattle details at Lead Details stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Lead details" stage present in context from application grid
    And user reads data from the excel file "<CattleDetailsWB>" under sheet "<CattleDetails_sheet>" and row <CattleDetails_sheetRowNum>
    And user open cattle details tab
    And user add cattle details
    When user save cattle details
    Then cattle details should be saved successfully
    @LeadDetails
    Examples:
      | LogicalID | ProductType      | CattleDetailsWB              | CattleDetails_sheet | CattleDetails_sheetRowNum |
      | AGRL00001 | Agriculture Loan | cattle_details_end_flow.xlsx | cattle_details      | 0                         |
      | AGRL00001 | Agriculture Loan | cattle_details_end_flow.xlsx | cattle_details      | 1                         |


#---------------------------------------------------------------- LAND HOLDING SUMMARY ----------------------------------------------------------------------

###################################################################################################################################################

  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-20915: [LogicalID-<LogicalID>] Validate land holding summary data of <ApplicantType> at Lead Details stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Lead details" stage present in context from application grid
    When user open land holding summary tab
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_sheet>" and row <FinancialDetails_rowNum>
    Then land holding summary data of "<ApplicantType>" should be validated successfully
    @LeadDetails
    Examples:
      | LogicalID | ProductType      | FinancialDetailsWB              | FinancialDetails_sheet | FinancialDetails_rowNum | ApplicantType     |
      | AGRL00001 | Agriculture Loan | financial_details_end_flow.xlsx | asset_details          | 6                       | Primary Applicant |

#------------------------------------------ COLLATERAL ------------------------------------------------------------------------------------------------

############################################ COLLATERAL TAB #######################################################################################################


  @ImplementedBy-rishabh.sachan
    @AuthoredBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-19943: [LogicalID-<LogicalID>] Save Gold Collateral details for Farm Equipment at Lead Details stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "lead details" stage present in context from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "gold_details" and row 0
    When user fills gold collateral details
    And user saves the Collateral Details
    Then collateral details should be saved successfully
    @LeadDetails
    Examples:
      | LogicalID | ProductType    |
      | FE00001   | Farm Equipment |


  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Release
  Scenario Outline: ACAUTOCAS-20916: [LogicalID-<LogicalID>] Save collateral with collateral subType as <CollSubType> at Lead Details stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "lead details" stage present in context from application grid
    When user opens Collateral Page for adding new collateral for "lead details"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_sheetName>" and row <Collateral_sheet_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of Ready Property
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    Then collateral details should be saved successfully
    @LeadDetails
    Examples:
      | LogicalID | CollSubType    | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum | ProductType             |
      | CEQ00001  | Ready Property | collateral.xlsx | property_details     | 201                     | Commercial Equipment    |
      | CV00002   | Ready Property | collateral.xlsx | property_details     | 201                     | Commercial Vehicle Loan |

    @LeadDetails @PQMStory
    Examples:
      | LogicalID         | CollSubType    | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum | ProductType             |
      | CV00CAS_88943_01  | Ready Property | collateral.xlsx | property_details     | 201                     | Commercial Vehicle Loan |
      | CV00CAS_88943_02  | Ready Property | collateral.xlsx | property_details     | 201                     | Commercial Vehicle Loan |
      | CV00CAS_88946_01  | Ready Property | collateral.xlsx | property_details     | 201                     | Commercial Vehicle Loan |
      | CV00CAS_206825_01 | Ready Property | collateral.xlsx | property_details     | 201                     | Commercial Vehicle Loan |
      | CV00CAS_80273_01  | Ready Property | collateral.xlsx | property_details     | 201                     | Commercial Vehicle Loan |
      | CV00CAS_90456_01  | Ready Property | collateral.xlsx | property_details     | 201                     | Commercial Vehicle Loan |
      | CV00CAS_90456_02  | Ready Property | collateral.xlsx | property_details     | 201                     | Commercial Vehicle Loan |

#----------------------------------------- REFERENCES--------------------------------------------------------------------------------------------------------------

################################################# REFERENCES TAB ##################################################################################################

  @ImplementedBy-harshita.nayak
    @AuthoredBy-anshika.gupta
    @Release
  Scenario Outline: ACAUTOCAS-19944: [LogicalID-<LogicalID>] Add References Details with all fields at Lead Details stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "lead details" stage present in context from application grid
    When user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    And user add references details with "all" fields
    And user save references details
    Then references details should save successfully
    @LeadDetails
    Examples:
      | LogicalID | ProductType             | ReferencesWB    | References_home | References_home_Row |
      | CV00001   | Commercial Vehicle Loan | references.xlsx | home            | 19                  |
      | CV00003   | Commercial Vehicle Loan | references.xlsx | home            | 23                  |
      | CV00004   | Commercial Vehicle Loan | references.xlsx | home            | 22                  |
      | AL00002   | Auto Loan               | references.xlsx | home            | 23                  |
      | MHF00002  | Micro Housing Finance   | references.xlsx | home            | 26                  |
      | CV00005   | Commercial Vehicle Loan | references.xlsx | home            | 23                  |

    @CCDE
    Examples:
      | LogicalID | ProductType             | ReferencesWB    | References_home | References_home_Row |
      | CC00001   | Credit Card Application | references.xlsx | home            | 20                  |
      | CC00002   | Credit Card Application | references.xlsx | home            | 24                  |
      | CC00003   | Credit Card Application | references.xlsx | home            | 25                  |


#-------------------------------------------------- CROP DETAILS --------------------------------------------------------------------------

################################################## CROP DETAILS ############################################################################################
  @AuthoredBy-richa.singh
    @ImplementedBy-richa.singh
    @Release
  Scenario Outline: ACAUTOCAS-19945: [LogicalID-<LogicalID>] Add Crop Details with all fields at Lead Details stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "lead details" stage present in context from application grid
    When user open Crop Details tab
    And user reads data from the excel file "<CropDetailsWB>" under sheet "<CropDetails_home>" and row <CropDetails_home_Row>
    And user fills all fields of Crop Details
    And user click on done button in crop details
    Then crop details should be added successfully
    @LeadDetails
    Examples:
      | LogicalID | ProductType       | CropDetailsWB              | CropDetails_home | CropDetails_home_Row |
      | KCC00001  | Kisan Credit Card | crop_details_end_flow.xlsx | crop_details     | 0                    |
      | KCC00001  | Kisan Credit Card | crop_details_end_flow.xlsx | crop_details     | 1                    |

  @AuthoredBy-richa.singh
    @ImplementedBy-richa.singh
    @Release
  Scenario Outline: ACAUTOCAS-19946: [LogicalID-<LogicalID>] Add Summary in Crop Details with all fields at Lead Details stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "lead details" stage present in context from application grid
    And user reads data from the excel file "<CropDetailsWB>" under sheet "<CropDetails_home>" and row <CropDetails_home_Row>
    And user fills summary of crop details
    When user saves crop details
    Then crop details should save successfully
    @LeadDetails
    Examples:
      | LogicalID | ProductType       | CropDetailsWB              | CropDetails_home | CropDetails_home_Row |
      | KCC00001  | Kisan Credit Card | crop_details_end_flow.xlsx | crop_details     | 2                    |

    # ------------------------------------------------ PERSONAL DISCUSSION TAB----------------------------------------------------------------------
###################################################################################################################################################
  @ImplementedBy-kanika.mahal
    @AuthoredBy-kanika.mahal
    @Release
  Scenario Outline: ACAUTOCAS-19947: [LogicalID-<LogicalID>] Save personal discussion details at Lead Details stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Lead details" stage present in context from application grid
    And user opens personal discussion tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussionWB_sheet>" and row <PersonalDiscussionWB_sheet_rowNum>
    When user fill all details of personal discussion for micro housing finance
    And user saves personal discussion details for Micro Housing Finance
    Then personal discussion details should saved successfully
    @LeadDetails
    Examples:
      | LogicalID | ProductType           | PersonalDiscussionWB     | PersonalDiscussionWB_sheet | PersonalDiscussionWB_sheet_rowNum |
      | MHF00001  | Micro Housing Finance | personal_discussion.xlsx | pd_details                 | 5                                 |
      | MHF00002  | Micro Housing Finance | personal_discussion.xlsx | pd_details                 | 5                                 |

# ------------------------------------------------ PROPERTY VERIFICATION REPORT ----------------------------------------------------------------------
###################################################################################################################################################
  @ImplementedBy-kanika.mahal
    @AuthoredBy-kanika.mahal
    @Release
  Scenario Outline: ACAUTOCAS-19948: [LogicalID-<LogicalID>] Save property verification report details at Lead Details stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Lead details" stage present in context from application grid
    And user opens personal discussion tab
    And user navigates to property discussion report
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussionWB_sheet>" and row <PersonalDiscussionWB_sheet_rowNum>
    When user fill all details of property verification report for micro housing finance
    And user saves property verification report for Micro Housing Finance
    Then property verification report should saved successfully
    @LeadDetails
    Examples:
      | LogicalID | ProductType           | PersonalDiscussionWB     | PersonalDiscussionWB_sheet | PersonalDiscussionWB_sheet_rowNum |
      | MHF00001  | Micro Housing Finance | personal_discussion.xlsx | pd_details                 | 5                                 |
      | MHF00002  | Micro Housing Finance | personal_discussion.xlsx | pd_details                 | 5                                 |

# ------------------------------------------------ BUSINESS SETUP DETAILS ----------------------------------------------------------------------
###################################################################################################################################################
  @ImplementedBy-kanika.mahal
    @AuthoredBy-kanika.mahal
    @Release
  Scenario Outline: ACAUTOCAS-19948: [LogicalID-<LogicalID>] Save property verification report details at Lead Details stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "lead details" stage present in context from application grid
    And user opens personal discussion tab
    And user navigates to business setup details
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussionWB_sheet>" and row <PersonalDiscussionWB_sheet_rowNum>
    When user fill all details of business setup details for micro housing finance
    And user saves business verification report for Micro Housing Finance
    Then business verification report should saved successfully
    @LeadDetails
    Examples:
      | LogicalID | ProductType           | PersonalDiscussionWB     | PersonalDiscussionWB_sheet | PersonalDiscussionWB_sheet_rowNum |
      | MHF00001  | Micro Housing Finance | personal_discussion.xlsx | pd_details                 | 5                                 |
      | MHF00002  | Micro Housing Finance | personal_discussion.xlsx | pd_details                 | 5                                 |

#-------------------------------------------------- ACTIVITY --------------------------------------------------------------------------
  @Release
  Scenario Outline: [LogicalID-<LogicalID>][SendBack-<SendBack>] Check data in activity at <ApplicationStage> stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user opens activity section
    When user navigates to activity tab to check the data of activity section
    And user reads data from the excel file "<activityWB>" under sheet "<activity_activity>" and row <activity_activity_rowNo>
    Then data should be present in activity section
    @LeadDetails
    Examples:
      | LogicalID  | ProductType | ApplicationStage | SendBack | activityWB    | activity_activity | activity_activity_rowNo |
      | SB_AL00001 | Auto Loan   | lead details     | yes      | activity.xlsx | activity          | 0                       |
      | SB_AL00002 | Auto Loan   | lead details     | yes      | activity.xlsx | activity          | 1                       |
    @DDE
    Examples:
      | LogicalID  | ProductType | ApplicationStage | SendBack | activityWB    | activity_activity | activity_activity_rowNo |
      | SB_AL00003 | Auto Loan   | dde              | yes      | activity.xlsx | activity          | 2                       |
    @CreditApproval
    Examples:
      | LogicalID  | ProductType | ApplicationStage | SendBack | activityWB    | activity_activity | activity_activity_rowNo |
      | SB_AL00004 | Auto Loan   | credit approval  | yes      | activity.xlsx | activity          | 3                       |

 @ImplementedBy-richa.singh
   @Release
  Scenario Outline: [LogicalID-<LogicalID>][SendBack-<SendBack>] Check the In-Queue status in application search grid for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user open application grid of "<ApplicationStage>"
    When user searches application in Assigned application Grid
    Then user verify data of "<From>" stage "<To>" stage "<Reasons>" with "<Status>" in Return details
   @LeadDetails
   Examples:
     | LogicalID  | ProductType | SendBack | ApplicationStage | From | To           | Reasons  | Status   |
     | SB_AL00001 | Auto Loan   | yes      | lead details     | KYC  | lead details | SendBack | Returned |
     | SB_AL00002 | Auto Loan   | yes      | lead details     | DDE  | lead details | SendBack | Returned |
   @DDE
   Examples:
     | LogicalID  | ProductType | SendBack | ApplicationStage | From            | To  | Reasons  | Status   |
     | SB_AL00003 | Auto Loan   | yes      | dde              | Credit Approval | dde | SendBack | Returned |

   @CreditApproval
   Examples:
     | LogicalID  | ProductType | SendBack | ApplicationStage | From      | To              | Reasons  | Status   |
     | SB_AL00004 | Auto Loan   | yes      | credit approval  | DISBURSAL | Credit Approval | SendBack | Returned |


#-------------------------------------------------- SUMMARY ANALYSIS --------------------------------------------------------------------------

################################################## SUMMARY ANALYSIS ############################################################################################

  @NotImplemented
    @AuthoredBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19949: [LogicalID-<LogicalID>] Save Financial Summary on Summary Analysis page at Lead Details stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user opens an application of "Lead details" stage present in context from application grid
    When user opens Summary Analysis tab
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_sheet>" and row <SummaryAnalysis_rowNum>
    And user fills the financial details on financial summary page
    And user saves the financial summary
    Then financial summary should be saved successfully
    Examples:
      | ProductType | SummaryAnalysisWB     | SummaryAnalysis_sheet | SummaryAnalysis_rowNum |
      |             | summary_analysis.xlsx | financial_summary     | 0                      |


#-------------------------------------------------- DOMAIN CHECK --------------------------------------------------------------------------


###################################################### DOMAIN CHECK #############################################################################################

  @NotImplemented
    @AuthoredBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19950: [LogicalID-<LogicalID>] Verify the Domain check data at Lead Details stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user opens an application of "Lead details" stage present in context from application grid
    When user navigates to Domain check tab
    And user verifies the domain check details
    Then data should be visible in view only mode
    Examples:
      | ProductType |
      |             |


#------------------------------------------------- RELATED / CONTROLLING PERSON ----------------------------------------------------------------------

###################################################################################################################################################

  @NotImplemented
    @AuthoredBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19951: [LogicalID-<LogicalID>] Save related person details at Lead Details stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user opens an application of "Lead details" stage present in context from application grid
    When user navigates to related_controlling person tab
    And user reads data from the excel file "<RelatedPersonWB>" under sheet "<RelatedPerson_sheet>" and row <RelatedPerson_rowNum>
    And user fills all required fields on related_controlling person page
    And user fills family details on related_controlling person page
    And user fills identification details on related_controlling person page
    And user fills address details on related_controlling person page
    And user clicks on Done
    Then user should be able to save the related controlling person details with success "<message>"
    Examples:
      | ProductType | RelatedPersonWB     | RelatedPerson_sheet | RelatedPerson_rowNum | message                 |
      |             | related_person.xlsx | home                | 1                    | Data Saved Successfully |










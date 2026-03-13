@Epic-E2E
@Conventional
@E2EOrder
@Release
@LoanDetails
@Order
  #FeatureID-ACAUTOCAS-17204
Feature: End to end work flow for All LOB Order Wise

  #--------------------------------------------------LOAN DETAILS-----------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


################################################# SOURCING DETAILS TAB #########################################################################################################

  @AuthoredBy-vaishnavi.agrawal
    @ImplementedBy-vaishnavi.agrawal
  Scenario Outline: [LogicalID-<LogicalID>] Navigate to loan details tab for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When user navigates to Loan Details Tab
    Then application navigated to loan details tab successfully
    @ICD
    Examples:
      | LogicalID | ProductType           | ApplicationStage |
      | MHF00002  | Micro Housing Finance | ICD              |

    @DDE
    Examples:
      | LogicalID | ProductType           | ApplicationStage |
      | MHF00002  | Micro Housing Finance | DDE              |

  @AuthoredBy-anshika.gupta
    @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-19933: [LogicalID-<LogicalID>] Save sourcing details in loan details for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "lead details" stage present in context from application grid
    And user navigates to Loan Details Tab
    When user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_sheet>" and row <SourcingDetails_rowNum>
    And user fills "<Mandatory_All>" details on sourcing details screen
    And user saves the sourcing details
    Then sourcing details should saved successfully
    @LeadDetails
    Examples:
      | LogicalID  | SourcingDetailsWB              | SourcingDetails_sheet | SourcingDetails_rowNum | ProductType             | Mandatory_All |
      | EDU00001   | sourcing_details_end_flow.xlsx | home                  | 9                      | Education Loan          | mandatory     |
      | EDU00002   | sourcing_details_end_flow.xlsx | home                  | 11                     | Education Loan          | mandatory     |
      | EDU00003   | sourcing_details_end_flow.xlsx | home                  | 9                      | Education Loan          | mandatory     |
      | EDU00004   | sourcing_details_end_flow.xlsx | home                  | 9                      | Education Loan          | mandatory     |
      | AL00001    | sourcing_details_end_flow.xlsx | home                  | 10                     | Auto Loan               | mandatory     |
      | CV00001    | sourcing_details_end_flow.xlsx | home                  | 12                     | Commercial Vehicle Loan | mandatory     |
      | KCC00001   | sourcing_details_end_flow.xlsx | home                  | 13                     | Kisan Credit Card       | all           |
      | CEQ00001   | sourcing_details_end_flow.xlsx | home                  | 14                     | Commercial Equipment    | all           |
      | FE00001    | sourcing_details_end_flow.xlsx | home                  | 16                     | Farm Equipment          | all           |
      | MHF00001   | sourcing_details_end_flow.xlsx | home                  | 15                     | Micro Housing Finance   | all           |
      | AGRL00001  | sourcing_details_end_flow.xlsx | home                  | 24                     | Agriculture Loan        | all           |
      | PL00001    | sourcing_details_end_flow.xlsx | home                  | 27                     | Personal Loan           | all           |
      | HL00001    | sourcing_details_end_flow.xlsx | home                  | 28                     | Home Loan               | all           |
      | CV00004    | sourcing_details_end_flow.xlsx | home                  | 34                     | Commercial Vehicle Loan | mandatory     |
      | LAP00001   | sourcing_details_end_flow.xlsx | home                  | 30                     | Micro Housing Finance   | all           |
      | CV00002    | sourcing_details_end_flow.xlsx | home                  | 29                     | Commercial Vehicle Loan | all           |
      | KCC00002   | sourcing_details_end_flow.xlsx | home                  | 33                     | Kisan Credit Card       | all           |
      | CV00003    | sourcing_details_end_flow.xlsx | home                  | 32                     | Commercial Vehicle Loan | mandatory     |
      | PL00002    | sourcing_details_end_flow.xlsx | home                  | 36                     | Personal Loan           | all           |
      | AL00003    | sourcing_details_end_flow.xlsx | home                  | 38                     | Auto Loan               | all           |
      | AL00002    | sourcing_details_end_flow.xlsx | home                  | 35                     | Auto Loan               | mandatory     |
      | SB_AL00001 | sourcing_details_end_flow.xlsx | home                  | 10                     | Auto Loan               | mandatory     |
      | SB_AL00002 | sourcing_details_end_flow.xlsx | home                  | 10                     | Auto Loan               | mandatory     |
      | SB_AL00003 | sourcing_details_end_flow.xlsx | home                  | 45                     | Auto Loan               | mandatory     |
      | SB_AL00004 | sourcing_details_end_flow.xlsx | home                  | 45                     | Auto Loan               | mandatory     |
      | MHF00002   | sourcing_details_end_flow.xlsx | home                  | 42                     | Micro Housing Finance   | all           |
      | CV00005    | sourcing_details_end_flow.xlsx | home                  | 12                     | Commercial Vehicle Loan | mandatory     |

    @DDE
    Examples:
      | LogicalID | SourcingDetailsWB              | SourcingDetails_sheet | SourcingDetails_rowNum | ProductType             | Mandatory_All |
      | CV00002   | sourcing_details_end_flow.xlsx | home                  | 31                     | Commercial Vehicle Loan | update        |
      | MULF00001 | sourcing_details_end_flow.xlsx | home                  | 39                     | Multi Facility          | update        |

    @DDE
    Examples:
      | LogicalID     | SourcingDetailsWB              | SourcingDetails_sheet | SourcingDetails_rowNum | ProductType    | Mandatory_All |
      | MULF_BD_00001 | sourcing_details_end_flow.xlsx | home                  | 39                     | Multi Facility | update        |

    @DDE @PQMStory
    Examples:
      | LogicalID         | SourcingDetailsWB              | SourcingDetails_sheet | SourcingDetails_rowNum | ProductType             | Mandatory_All |
      | CV00CAS_88943_01  | sourcing_details_end_flow.xlsx | home                  | 31                     | Commercial Vehicle Loan | update        |
      | CV00CAS_88943_02  | sourcing_details_end_flow.xlsx | home                  | 31                     | Commercial Vehicle Loan | update        |
      | CV00CAS_88946_01  | sourcing_details_end_flow.xlsx | home                  | 31                     | Commercial Vehicle Loan | update        |
      | CV00CAS_206825_01 | sourcing_details_end_flow.xlsx | home                  | 31                     | Commercial Vehicle Loan | update        |
      | CV00CAS_80273_01  | sourcing_details_end_flow.xlsx | home                  | 31                     | Commercial Vehicle Loan | update        |
      | CV00CAS_90456_01  | sourcing_details_end_flow.xlsx | home                  | 31                     | Commercial Vehicle Loan | update        |
      | CV00CAS_90456_02  | sourcing_details_end_flow.xlsx | home                  | 31                     | Commercial Vehicle Loan | update        |

    @PQMStory @LeadDetails
    Examples:
      | LogicalID                        | SourcingDetailsWB              | SourcingDetails_sheet | SourcingDetails_rowNum | ProductType             | Mandatory_All |
      | EDU_CAS_60813_ContractualIndiv01 | sourcing_details_end_flow.xlsx | home                  | 40                     | Education Loan          | mandatory     |
      | EDU_CAS_60813_ContractualIndiv02 | sourcing_details_end_flow.xlsx | home                  | 40                     | Education Loan          | mandatory     |
      | EDU_CAS_60813_ContractualIndiv03 | sourcing_details_end_flow.xlsx | home                  | 40                     | Education Loan          | mandatory     |
      | EDU_CAS_60813_ContractualIndiv04 | sourcing_details_end_flow.xlsx | home                  | 40                     | Education Loan          | mandatory     |
      | EDU_CAS_60813_ContractualIndiv05 | sourcing_details_end_flow.xlsx | home                  | 40                     | Education Loan          | mandatory     |
      | CV00CAS_88943_01                 | sourcing_details_end_flow.xlsx | home                  | 29                     | Commercial Vehicle Loan | all           |
      | CV00CAS_88943_02                 | sourcing_details_end_flow.xlsx | home                  | 29                     | Commercial Vehicle Loan | all           |
      | CV00CAS_88946_01                 | sourcing_details_end_flow.xlsx | home                  | 29                     | Commercial Vehicle Loan | all           |
      | CV00CAS_206825_01                | sourcing_details_end_flow.xlsx | home                  | 29                     | Commercial Vehicle Loan | all           |
      | CV00CAS_80273_01                 | sourcing_details_end_flow.xlsx | home                  | 29                     | Commercial Vehicle Loan | all           |
      | CV00CAS_90456_01                 | sourcing_details_end_flow.xlsx | home                  | 29                     | Commercial Vehicle Loan | all           |
      | CV00CAS_90456_02                 | sourcing_details_end_flow.xlsx | home                  | 29                     | Commercial Vehicle Loan | all           |
      | AL_CAS_60813_ContractualIndiv01  | sourcing_details_end_flow.xlsx | home                  | 41                     | Auto Loan               | mandatory     |
      | AL_CAS_60813_ContractualIndiv02  | sourcing_details_end_flow.xlsx | home                  | 41                     | Auto Loan               | mandatory     |
      | AL_CAS_60813_ContractualIndiv03  | sourcing_details_end_flow.xlsx | home                  | 41                     | Auto Loan               | mandatory     |
      | AL_CAS_60813_ContractualIndiv04  | sourcing_details_end_flow.xlsx | home                  | 41                     | Auto Loan               | mandatory     |
      | AL_CAS_60813_ContractualIndiv05  | sourcing_details_end_flow.xlsx | home                  | 41                     | Auto Loan               | mandatory     |
      | CV_CAS_60813_ContractualIndiv01  | sourcing_details_end_flow.xlsx | home                  | 44                     | Commercial Vehicle Loan | mandatory     |
      | CV_CAS_60813_ContractualIndiv02  | sourcing_details_end_flow.xlsx | home                  | 44                     | Commercial Vehicle Loan | mandatory     |
      | CV_CAS_60813_ContractualIndiv03  | sourcing_details_end_flow.xlsx | home                  | 44                     | Commercial Vehicle Loan | mandatory     |
      | CV_CAS_60813_ContractualIndiv04  | sourcing_details_end_flow.xlsx | home                  | 44                     | Commercial Vehicle Loan | mandatory     |
      | CV_CAS_60813_ContractualIndiv05  | sourcing_details_end_flow.xlsx | home                  | 44                     | Commercial Vehicle Loan | mandatory     |

  @AuthoredBy-harshita.nayak
    @ImplementedBy-harshita.nayak
  Scenario Outline:Validate application number generation after proceeding with sourcing details of applicant of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user set application in context
    Then "Application Number" should be display at the top of customer details screen
    @LeadDetails
    Examples:
      | LogicalID | ProductType             |
      | CV00003   | Commercial Vehicle Loan |

#  @ImplementedBy-rishabh.garg
#    @AuthoredBy-anshika.gupta
#  Scenario Outline: ACAUTOCAS-19934: [LogicalID-<LogicalID>] Add promo code details in sourcing details for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "lead details" stage present in context from application grid
##    And user navigates to Loan Details Tab
#    When user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
#    And user clicks on the Promo Code Details accordion
#    And user enters a "valid" Promo Code Name in Promo Code details manually
#    And user saves the sourcing details
#    Then promo code should be added successfully in sourcing details
#    @LeadDetails
#    Examples:
#      | LogicalID | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | ProductType           |
#      | EDU00001  | sourcing_details.xlsx | home                 | 290                         | Education Loan        |
#      | EDU00002  | sourcing_details.xlsx | home                 | 290                         | Education Loan        |
#      | EDU00003  | sourcing_details.xlsx | home                 | 290                         | Education Loan        |
#      | EDU00004  | sourcing_details.xlsx | home                 | 290                         | Education Loan        |
#      | AL00001   | sourcing_details.xlsx | home                 | 290                         | Auto Loan             |
#      | KCC00001  | sourcing_details.xlsx | home                 | 290                         | Kisan Credit Card     |
#      | CEQ00001  | sourcing_details.xlsx | home                 | 291                         | Commercial Equipment  |
#      | MHF00001  | sourcing_details.xlsx | home                 | 290                         | Micro Housing Finance |

################################################ COURSE DETAILS TAB ##################################################################################

  @ImplementedBy-rishabh.garg
    @AuthoredBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19935: [LogicalID-<LogicalID>] Save Course Details in Loan Details section at Lead Details stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "lead details" stage present in context from application grid
    And user navigates to Loan Details Tab
    When user reads data from the excel file "<CourseDetailsWB>" under sheet "<CourseDetails_home>" and row <CourseDetails_home_rowNum>
    And user navigates to course details
    And user fills the required course details
    And user reads data from the excel file "<CourseDetailsWB>" under sheet "<CourseDetails_address>" and row <CourseDetails_address_rowNum>
    And user opens address details in course details page
    And user adds the address details in course details page
    And user reads data from the excel file "<CourseDetailsWB>" under sheet "<CourseDetails_bank_details>" and row <CourseDetails_bank_details_rowNum>
    And user opens bank account details in course details page
    And user fills the bank account details on course details page
    And user reads data from the excel file "<CourseDetailsWB>" under sheet "<CourseDetails_course_fee>" and row <CourseDetails_course_fee_rowNum>
    And user opens component wise course fee details in course details page
    And user fills component wise course fee details on course details page
    And user reads data from the excel file "<CourseDetailsWB>" under sheet "<CourseDetails_employment_potential>" and row <CourseDetails_employment_potential_rowNum>
    And user opens employment potential post course completion details in course details page
    And  user fills employment potential post course completion details on course details page
    And user reads data from the excel file "<CourseDetailsWB>" under sheet "<CourseDetails_education_histories>" and row <CourseDetails_education_histories_rowNum>
    And user opens education histories details in course details page
    And user fills education histories details on course details page
    And user reads data from the excel file "<CourseDetailsWB>" under sheet "<CourseDetails_disbursal_schedule_entry>" and row <CourseDetails_disbursal_schedule_entry_rowNum>
    And user opens tentative disbursal schedule entry in course details page
    And user fills <NoOfTranche> tentative disbursal schedule entry on course details page
      | course_details.xlsx | disbursal_schedule_entry | 0 |
      | course_details.xlsx | disbursal_schedule_entry | 1 |
    And user saves the course details
    Then course details should be saved successfully
    @LeadDetails
    Examples:
      | LogicalID | NoOfTranche | CourseDetailsWB     | CourseDetails_home | CourseDetails_home_rowNum | CourseDetails_address | CourseDetails_address_rowNum | CourseDetails_bank_details | CourseDetails_bank_details_rowNum | CourseDetails_course_fee | CourseDetails_course_fee_rowNum | CourseDetails_employment_potential | CourseDetails_employment_potential_rowNum | CourseDetails_education_histories | CourseDetails_education_histories_rowNum | CourseDetails_disbursal_schedule_entry | CourseDetails_disbursal_schedule_entry_rowNum | ProductType    |
      | EDU00001  | 1           | course_details.xlsx | home               | 0                         | address_details       | 0                            | bank_details               | 0                                 | course_fee               | 0                               | employment_potential               | 0                                         | education_histories               | 0                                        | disbursal_schedule_entry               | 0                                             | Education Loan |
      | EDU00002  | 2           | course_details.xlsx | home               | 0                         | address_details       | 0                            | bank_details               | 0                                 | course_fee               | 1                               | employment_potential               | 0                                         | education_histories               | 0                                        | disbursal_schedule_entry               | 0                                             | Education Loan |
      | EDU00003  | 1           | course_details.xlsx | home               | 0                         | address_details       | 0                            | bank_details               | 0                                 | course_fee               | 0                               | employment_potential               | 0                                         | education_histories               | 0                                        | disbursal_schedule_entry               | 0                                             | Education Loan |
      | EDU00004  | 1           | course_details.xlsx | home               | 0                         | address_details       | 0                            | bank_details               | 0                                 | course_fee               | 0                               | employment_potential               | 0                                         | education_histories               | 0                                        | disbursal_schedule_entry               | 0                                             | Education Loan |

    @PQMStory @LeadDetails
    Examples:
      | LogicalID                        | NoOfTranche | CourseDetailsWB     | CourseDetails_home | CourseDetails_home_rowNum | CourseDetails_address | CourseDetails_address_rowNum | CourseDetails_bank_details | CourseDetails_bank_details_rowNum | CourseDetails_course_fee | CourseDetails_course_fee_rowNum | CourseDetails_employment_potential | CourseDetails_employment_potential_rowNum | CourseDetails_education_histories | CourseDetails_education_histories_rowNum | CourseDetails_disbursal_schedule_entry | CourseDetails_disbursal_schedule_entry_rowNum | ProductType    |
      | EDU_CAS_60813_ContractualIndiv01 | 2           | course_details.xlsx | home               | 0                         | address_details       | 0                            | bank_details               | 0                                 | course_fee               | 1                               | employment_potential               | 0                                         | education_histories               | 0                                        | disbursal_schedule_entry               | 0                                             | Education Loan |
      | EDU_CAS_60813_ContractualIndiv02 | 2           | course_details.xlsx | home               | 0                         | address_details       | 0                            | bank_details               | 0                                 | course_fee               | 1                               | employment_potential               | 0                                         | education_histories               | 0                                        | disbursal_schedule_entry               | 0                                             | Education Loan |
      | EDU_CAS_60813_ContractualIndiv03 | 2           | course_details.xlsx | home               | 0                         | address_details       | 0                            | bank_details               | 0                                 | course_fee               | 1                               | employment_potential               | 0                                         | education_histories               | 0                                        | disbursal_schedule_entry               | 0                                             | Education Loan |
      | EDU_CAS_60813_ContractualIndiv04 | 2           | course_details.xlsx | home               | 0                         | address_details       | 0                            | bank_details               | 0                                 | course_fee               | 1                               | employment_potential               | 0                                         | education_histories               | 0                                        | disbursal_schedule_entry               | 0                                             | Education Loan |
      | EDU_CAS_60813_ContractualIndiv05 | 2           | course_details.xlsx | home               | 0                         | address_details       | 0                            | bank_details               | 0                                 | course_fee               | 1                               | employment_potential               | 0                                         | education_histories               | 0                                        | disbursal_schedule_entry               | 0                                             | Education Loan |

  @AuthoredBy-akash.bansal
    @ImplementedBy-akash.bansal
  Scenario Outline: Fill sourcing details in loan details for <ProductType> LogicalID <LogicalID> without save
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "DDE" stage present in context from application grid
    And user navigates to Loan Details Tab
    When user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_sheet>" and row <SourcingDetails_rowNum>
    And user fills "<Mandatory_All>" details on sourcing details screen
    Then sourcing details should be filled successfully
    @DDE
    Examples:
      | LogicalID | SourcingDetailsWB              | SourcingDetails_sheet | SourcingDetails_rowNum | ProductType                | Mandatory_All |
      | FAS00001  | sourcing_details_end_flow.xlsx | home                  | 46                     | Finance Against Securities | all           |

  @AuthoredBy-akash.bansal
    @ImplementedBy-akash.bansal
  Scenario Outline: Add Depository Participant Details as "<CustomerPledgeType>" in sourcing details in loan details for <ProductType> LogicalID <LogicalID> without save
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "DDE" stage present in context from application grid
#    And user navigates to Loan Details Tab
    When user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_sheet>" and row <SourcingDetails_rowNum>
    And user adds depository participant details as "<CustomerPledgeType>" on sourcing details screen
    Then depository participant details should be added successfully
    @DDE
    Examples:
      | LogicalID | CustomerPledgeType | SourcingDetailsWB              | SourcingDetails_sheet | SourcingDetails_rowNum | ProductType                |
      | FAS00001  | Pledgee            | sourcing_details_end_flow.xlsx | home                  | 46                     | Finance Against Securities |
      | FAS00001  | Pledgor            | sourcing_details_end_flow.xlsx | home                  | 47                     | Finance Against Securities |

  @AuthoredBy-akash.bansal
    @ImplementedBy-akash.bansal
  Scenario Outline: Save sourcing details in loan details for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user saves the sourcing details
    Then sourcing details should saved successfully
    @DDE
    Examples:
      | LogicalID | ProductType                |
      | FAS00001  | Finance Against Securities |

################################################ ASSET DETAILS TAB ##################################################################################

  @ImplementedBy-harshita.nayak
    @AuthoredBy-harshita.nayak
  Scenario Outline: ACAUTOCAS-19936: [LogicalID-<LogicalID>] Save Asset details for Commercial Vehicle at Lead Details stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "lead details" stage present in context from application grid
#    And user navigates to Loan Details Tab
    And user opens asset details tab
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 81
    When user fills asset details with "all" fields along with asset type as "New Asset"
    And user reads data from the excel file "asset_details.xlsx" under sheet "body_details" and row 0
    And user fills "all" body details
    And user save body details in asset details
    And user reads data from the excel file "asset_details.xlsx" under sheet "vehicle_details" and row 138
    And user fills "all" fields of vehicle details
    And user checks for the duplicates
    And user saves asset details home page
    Then asset details page should be save successfully
    @LeadDetails
    Examples:
      | LogicalID | ProductType             |
      | CV00001   | Commercial Vehicle Loan |
      | CV00004   | Commercial Vehicle Loan |
      | CV00005   | Commercial Vehicle Loan |



    @LeadDetails @PQMStory
    Examples:
      | LogicalID                       | ProductType             |
      | CV_CAS_60813_ContractualIndiv01 | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv02 | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv03 | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv04 | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv05 | Commercial Vehicle Loan |

  @ImplementedBy-kanika.mahal
    @AuthoredBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-19936: [LogicalID-<LogicalID>] Save Asset details for Commercial Vehicle at Lead Details stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "lead details" stage present in context from application grid
    And user navigates to Loan Details Tab
    And user opens asset details tab
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 89
    When user fills asset details with "all" fields along with asset type as "New Asset"
    And user reads data from the excel file "asset_details.xlsx" under sheet "vehicle_details" and row 138
    And user fills "all" fields of vehicle details
    And user reads data from the excel file "asset_details.xlsx" under sheet "accessories_details" and row 8
    And user click on accessory details tab
    And user fills fields of accessories details
    And user checks for the duplicates
    And user saves asset details home page
    Then asset details page should be save successfully
    @LeadDetails
    Examples:
      | LogicalID | ProductType |
      | AL00003   | Auto Loan   |

  @ImplementedBy-rishabh.sachan
    @AuthoredBy-rishabh.sachan
  Scenario Outline: ACAUTOCAS-19937: [LogicalID-<LogicalID>] Save Asset details for Farm Equipment at Lead Details stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "lead details" stage present in context from application grid
#    And user navigates to Loan Details Tab
    And user opens asset details tab
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 83
    When user fills asset details with "all" fields along with asset type as "New Asset"
    And user reads data from the excel file "asset_details.xlsx" under sheet "tractor_details" and row 0
    And user fills tractor details
    And user checks for the duplicates
    And user saves asset details home page
    Then asset details page should be save successfully
    @LeadDetails
    Examples:
      | LogicalID | ProductType    |
      | FE00001   | Farm Equipment |


  @ImplementedBy-rishabh.sachan
    @AuthoredBy-rishabh.sachan
  Scenario Outline: ACAUTOCAS-19938: [LogicalID-<LogicalID>] Save Insurance details of asset Tractor for Farm Equipment at Lead Details stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "lead details" stage present in context from application grid
#    And user navigates to Loan Details Tab
#    And user opens asset details tab
    And user opens insurance details tab to add insurance
    And user reads data from the excel file "asset_details.xlsx" under sheet "insurance_details" and row 105
    When user fills insurance details for asset
    And user saves the record for insurance
    Then insurance details should be added successfully
    @LeadDetails
    Examples:
      | LogicalID | ProductType    |
      | FE00001   | Farm Equipment |

  @ImplementedBy-vaishnavi.agrawal
    @AuthoredBy-vaishnavi.agrawal
  Scenario Outline: [LogicalID-<LogicalID>] Save Asset details for Auto Loan for Lease Type at Lead Details stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
   # And user opens an application of "lead details" stage present in context from application grid
   # And user navigates to Loan Details Tab
    And user opens asset details tab
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 87
    When user fills asset details with "all" fields along with asset type as "New Asset"
    And user reads data from the excel file "asset_details.xlsx" under sheet "other_component_to_be_funded" and row 8
    And user fills Others Components To Be Funded details
    And Others Components To Be Funded is saved
    And user reads data from the excel file "asset_details.xlsx" under sheet "vehicle_details" and row 140
    And user fills "all" fields of vehicle details
    And user checks for the duplicates
    And user saves asset details home page
    Then asset details page should be save successfully
    @LeadDetails
    Examples:
      | LogicalID | ProductType |
      | AL00002   | Auto Loan   |

  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-19937: [LogicalID-<LogicalID>] Save Asset details at Lead Details stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "lead details" stage present in context from application grid
    And user navigates to Loan Details Tab
    And user opens asset details tab
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 85
    When user fills asset details with "all" fields along with asset type as "New Asset"
    And user reads data from the excel file "asset_details.xlsx" under sheet "vehicle_details" and row 140
    And user fills vehicle details for asset type collateral
    And user checks for the duplicates
    And user saves asset details home page
    Then asset details page should be save successfully
    @LeadDetails
    Examples:
      | LogicalID  | ProductType |
      | SB_AL00003 | Auto Loan   |
      | SB_AL00004 | Auto Loan   |


################################################ ASSET REQUESTED TAB ##################################################################################

  @ImplementedBy-anshika.gupta
    @AuthoredBy-anshika.gupta
  #new asset
  Scenario Outline: ACAUTOCAS-19939: [LogicalID-<LogicalID>] Save Asset Requested details for multi Asset at Lead Details stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "lead details" stage present in context from application grid
#    And user navigates to Loan Details Tab
    And user navigates to asset requested page at "Lead Details" stage
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_sheet>" and row <Asset_Details_multi_asset_rowNum>
    When user fills asset requested "all" fields with "<AssetType>"
    And user save the asset requested data
    Then asset requested details should be saved successfully

    @LeadDetails
    Examples:
      | LogicalID | AssetDetailsWB     | AssetDetails_sheet  | AssetType | Asset_Details_multi_asset_rowNum | ProductType |
      | AL00001   | asset_details.xlsx | multi_asset_details | New Asset | 54                               | Auto Loan   |

    @PQMStory @LeadDetails
    Examples:
      | LogicalID                       | AssetDetailsWB     | AssetDetails_sheet  | AssetType | Asset_Details_multi_asset_rowNum | ProductType |
      | AL_CAS_60813_ContractualIndiv01 | asset_details.xlsx | multi_asset_details | New Asset | 54                               | Auto Loan   |
      | AL_CAS_60813_ContractualIndiv02 | asset_details.xlsx | multi_asset_details | New Asset | 54                               | Auto Loan   |
      | AL_CAS_60813_ContractualIndiv03 | asset_details.xlsx | multi_asset_details | New Asset | 54                               | Auto Loan   |
      | AL_CAS_60813_ContractualIndiv04 | asset_details.xlsx | multi_asset_details | New Asset | 54                               | Auto Loan   |
      | AL_CAS_60813_ContractualIndiv05 | asset_details.xlsx | multi_asset_details | New Asset | 54                               | Auto Loan   |


  @ImplementedBy-anshika.gupta
    @AuthoredBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19940: [LogicalID-<LogicalID>] Save Asset Requested details at Lead Details stage for <ProductType> multi asset LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "lead details" stage present in context from application grid
#    And user navigates to Loan Details Tab
    And user navigates to asset requested page at "Lead Details" stage
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_sheet>" and row <Asset_Details_multi_asset_rowNum>
    When user selects Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fills all asset requested details with asset type as "New Asset"
    And user save the asset requested data
    Then asset requested page should be save successfully
    @LeadDetails
    Examples:
      | LogicalID | AssetDetailsWB     | AssetDetails_sheet  | Asset_Details_multi_asset_rowNum | FundingFor | FinanceMode | ProductType          |
      | CEQ00001  | asset_details.xlsx | multi_asset_details | 56                               | FBV        | Purchase    | Commercial Equipment |

  @ImplementedBy-rishabh.garg
    @AuthoredBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-21260: [LogicalID-<LogicalID>] Save Asset Requested details at <ApplicationStage> stage for <ProductType> used multi asset LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "<ApplicationStage>" stage present in context from application grid
#    And user navigates to Loan Details Tab
    And user navigates to asset requested page at "<ApplicationStage>" stage
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_sheet>" and row <Asset_Details_multi_asset_rowNum>
    When user selects Funding For as "<FundingFor>"
    And user fills all asset requested details with asset type as "<AssetType>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "body_details" and row 1
    And user open multiple asset funding for body accordian
    And user fills body funding details
    And user save the asset requested data
    Then asset requested page should be save successfully
    @LeadDetails
    Examples:
      | LogicalID | ApplicationStage | AssetDetailsWB     | AssetDetails_sheet  | Asset_Details_multi_asset_rowNum | AssetType  | FundingFor | ProductType             |
      | CV00002   | Lead Details     | asset_details.xlsx | multi_asset_details | 59                               | Used Asset | Both       | Commercial Vehicle Loan |

    @DDE
    Examples:
      | LogicalID | ApplicationStage | AssetDetailsWB     | AssetDetails_sheet  | Asset_Details_multi_asset_rowNum | AssetType | FundingFor | ProductType             |
      | CV00002   | DDE              | asset_details.xlsx | multi_asset_details | 60                               | New Asset | Both       | Commercial Vehicle Loan |

    @DDE @PQMStory
    Examples:
      | LogicalID         | ApplicationStage | AssetDetailsWB     | AssetDetails_sheet  | Asset_Details_multi_asset_rowNum | AssetType | FundingFor | ProductType             |
      | CV00CAS_88943_01  | DDE              | asset_details.xlsx | multi_asset_details | 60                               | New Asset | Both       | Commercial Vehicle Loan |
      | CV00CAS_88943_02  | DDE              | asset_details.xlsx | multi_asset_details | 60                               | New Asset | Both       | Commercial Vehicle Loan |
      | CV00CAS_88946_01  | DDE              | asset_details.xlsx | multi_asset_details | 60                               | New Asset | Both       | Commercial Vehicle Loan |
      | CV00CAS_206825_01 | DDE              | asset_details.xlsx | multi_asset_details | 60                               | New Asset | Both       | Commercial Vehicle Loan |

    @LeadDetails @PQMStory
    Examples:
      | LogicalID         | ApplicationStage | AssetDetailsWB     | AssetDetails_sheet  | Asset_Details_multi_asset_rowNum | AssetType  | FundingFor | ProductType             |
      | CV00CAS_88943_01  | Lead Details     | asset_details.xlsx | multi_asset_details | 59                               | Used Asset | Both       | Commercial Vehicle Loan |
      | CV00CAS_88943_02  | Lead Details     | asset_details.xlsx | multi_asset_details | 59                               | Used Asset | Both       | Commercial Vehicle Loan |
      | CV00CAS_88946_01  | Lead Details     | asset_details.xlsx | multi_asset_details | 59                               | Used Asset | Both       | Commercial Vehicle Loan |
      | CV00CAS_206825_01 | Lead Details     | asset_details.xlsx | multi_asset_details | 59                               | Used Asset | Both       | Commercial Vehicle Loan |
      | CV00CAS_80273_01  | Lead Details     | asset_details.xlsx | multi_asset_details | 63                               | New Asset  | Both       | Commercial Vehicle Loan |
      | CV00CAS_90456_01  | Lead Details     | asset_details.xlsx | multi_asset_details | 63                               | New Asset  | Both       | Commercial Vehicle Loan |
      | CV00CAS_90456_02  | Lead Details     | asset_details.xlsx | multi_asset_details | 62                               | New Asset  | Both       | Commercial Vehicle Loan |

  @ImplementedBy-rishabh.garg
    @AuthoredBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-21261: [LogicalID-<LogicalID>] Generate Collateral details of Asset Requested details at <ApplicationStage> stage for <ProductType> used multi asset LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "lead details" stage present in context from application grid
#    And user navigates to Loan Details Tab
#    And user navigates to asset requested page at "Lead Details" stage
    And user edit the added asset requested details
    And user opens Collateral Details section
    When user generate all Collateral Details of multiple assets
    And user save the asset requested data
    And user reads data from the excel file "asset_details.xlsx" under sheet "body_details" and row 1
    Then asset requested page should be save successfully
    @LeadDetails
    Examples:
      | LogicalID | ProductType             |
      | CV00002   | Commercial Vehicle Loan |

    @LeadDetails @PQMStory
    Examples:
      | LogicalID         | ProductType             |
      | CV00CAS_88943_01  | Commercial Vehicle Loan |
      | CV00CAS_88943_02  | Commercial Vehicle Loan |
      | CV00CAS_88946_01  | Commercial Vehicle Loan |
      | CV00CAS_206825_01 | Commercial Vehicle Loan |

#--------------------------------------------------OMNI LOAN DETAILS----------------------------------------------------------------------
  @AuthoredBy-vipin.kishor
    @ImplementedBy-vipin.kishor
  Scenario Outline:Fill sourcing details in loan details for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "lead details" stage present in context from application grid
    And user navigates to Loan Details Tab
    When user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_sheet>" and row <SourcingDetails_rowNum>
    And user fills "<Mandatory_All>" details on sourcing details screen
    Then Omni product details accordion should be display
    @LeadDetails
    Examples:
      | LogicalID | SourcingDetailsWB              | SourcingDetails_sheet | SourcingDetails_rowNum | ProductType | Mandatory_All |
      | OL00001   | sourcing_details_end_flow.xlsx | home                  | 37                     | Omni Loan   | all           |

  @AuthoredBy-vipin.kishor
    @ImplementedBy-vipin.kishor
  Scenario Outline:Save <OmniProduct> details under omni product details in loan details for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "lead details" stage present in context from application grid
#    And user navigates to Loan Details Tab
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_sheet>" and row <SourcingDetails_rowNum>
    And user open Omni product details accordion
    And user fill "<OmniProduct>" details under omni product
    When user save the filled "<OmniProduct>" details under omni product
    Then "<OmniProduct>" should be saved successfully
    @LeadDetails
    Examples:
      | OmniProduct   | LogicalID | SourcingDetailsWB       | SourcingDetails_sheet | SourcingDetails_rowNum | ProductType |
      | Personal Loan | OL00001   | omni_loan_end_flow.xlsx | omni_product_details  | 0                      | Omni Loan   |
      | Home Loan1    | OL00001   | omni_loan_end_flow.xlsx | omni_product_details  | 1                      | Omni Loan   |
      | Home Loan2    | OL00001   | omni_loan_end_flow.xlsx | omni_product_details  | 2                      | Omni Loan   |

#  @AuthoredBy-vipin.kishor
#    @ImplementedBy-vipin.kishor
#  Scenario Outline:Save <OmniProduct> details under omni product details in loan details for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "lead details" stage present in context from application grid
##    And user navigates to Loan Details Tab
#    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_sheet>" and row <SourcingDetails_rowNum>
#    And user open Omni product details accordion
#    And user fills "<OmniProduct>" details under omni product
#    When user save the filled "<OmniProduct>" details under omni product
#    Then "<OmniProduct>" should be saved successfully
#    @LeadDetails
#    Examples:
#      | OmniProduct | LogicalID | SourcingDetailsWB       | SourcingDetails_sheet | SourcingDetails_rowNum | ProductType |
#      | Credit Card | OL00001   | omni_loan_end_flow.xlsx | omni_product_details  | 3                      | Omni Loan   |


  @AuthoredBy-vipin.kishor
    @ImplementedBy-vipin.kishor
  Scenario Outline:Save sourcing details details in loan details for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "lead details" stage present in context from application grid
#    And user navigates to Loan Details Tab
    And user saves the sourcing details
    Then sourcing details should saved successfully
    @LeadDetails
    Examples:
      | LogicalID | ProductType |
      | OL00001   | Omni Loan   |

  @DevTrack
  @GA-9.0
  @AuthoredBy-ankit.yadav
  @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>] Navigate to Charges Screen at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user navigate to Charges section of "<ApplicationStage>"
    Then user should be able to navigate at charges screen
    @DDE
    Examples:
      | LogicalID | ProductType    | ApplicationStage |
      | MULF00001 | Multi Facility | DDE              |

    @DDE
    Examples:
      | LogicalID     | ProductType    | ApplicationStage |
      | MULF_BD_00001 | Multi Facility | DDE              |


  @DevTrack
  @GA-9.0
  @AuthoredBy-ankit.yadav
  @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>] Save contactual charges with save next repayment parameters at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user apply the charges of "<ApplicationStage>"
    And user click on save next button from multi facility
    Then "Contractual charges saved successfully" should be executed successfully
    @DDE
    Examples:
      | LogicalID | ProductType    | ApplicationStage |
      | MULF00001 | Multi Facility | DDE              |

    @DDE
    Examples:
      | LogicalID     | ProductType    | ApplicationStage |
      | MULF_BD_00001 | Multi Facility | DDE              |

  @DevTrack
  @GA-9.0
  @AuthoredBy-ankit.yadav
  @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>] Add References at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    And user add references details with "<Var>" fields
    And user save references details
    Then references details should save successfully
    @DDE
    Examples:
      | LogicalID     | ProductType    | ApplicationStage | Var | ReferencesWB    | References_home | References_home_Row |
      | MULF_BD_00001 | Multi Facility | DDE              | all | references.xlsx | home            | 19                  |

#--------------------------------------Repayment Parameters for Facility-------------------------------------------------------

  @AuthoredBy-richa.singh
    @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-19907: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Capture repayment parameters on loan details tab at <ApplicationStage> stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "DDE" stage present in context from application grid
#    When user navigate to deal and facility details tab for "DDE"
#    When user opens facility details accordian
#    And user open facility of "BD" "1" product
    And user navigates to Repayment Parameter at "<ApplicationStage>"
    And user reads data from the excel file "<RepaymentParameters_WB>" under sheet "<RepaymentParameters_Sheet>" and row <RepaymentParameters_RowNum>
    And user enters fields of repayment parameters
    And user save repayment parameters
    Then repayment parameters should be saved successfully
    @Facility
    Examples:
      | LogicalID | RevisitCount | RepaymentParameters_WB             | RepaymentParameters_Sheet | RepaymentParameters_RowNum | ProductType    | ApplicationStage |
      | MULF00001 |              | repayment_parameters_end_flow.xlsx | repayment_parameters      | 21                         | Multi Facility | Facility         |

    @Facility
    Examples:
      | LogicalID     | RevisitCount | RepaymentParameters_WB             | RepaymentParameters_Sheet | RepaymentParameters_RowNum | ProductType    | ApplicationStage |
      | MULF_BD_00001 |              | repayment_parameters_end_flow.xlsx | repayment_parameters      | 21                         | Multi Facility | Facility         |

#--------------------------------------Charges for Multi Facility------------------------------------------------------------------------------

  @DevTrack
  @GA-9.0
  @AuthoredBy-ankit.yadav
  @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>] Add charges at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigate to charges at facility details
    When user apply the charges of "<ApplicationStage>"
    And charge policy should be executed successfully for that application
    And user collect the contractual charges for facility details
    And "Contractual Charge Policy Executed successfully." success message for executed contractual charges
    And user save the apply charges with contractual charges for facility
    Then "Contractual charges saved successfully" for facility charges details
    @Facility
    Examples:
      | LogicalID     | ProductType    | ApplicationStage | RevisitCount |
      | MULF_BD_00001 | Multi Facility | Facility         |              |

#------------------------------------------------- PROPERTY DETAILS Home----------------------------------------------------------------------

###################################################################################################################################################
  @ImplementedBy-kanika.mahal
    @AuthoredBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-19941: [LogicalID-<LogicalID>] Save property details at <ApplicationStage> stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "<ApplicationStage>" stage present in context from application grid
#    And user navigates to Loan Details Tab
    And user open property details tab
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetailsWB_Sheet>" and row <PropertyDetailsWB_Sheet_RowNo>
    And user fills property details page with "<Mandatory_All>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 24
    And user opens Builder Details section
    And user fills builder details page with "<Mandatory_All>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 28
    And user opens other details section
    And user fills other details page with "<Mandatory_All>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    And user open property address details accordion
    And user fills property address details page with "<Mandatory_All>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "property_&_registration_details" and row 0
    And user opens agreement details
    And user fills property registration details page with "<Mandatory_All>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user opens ownership accordion
    And user fills ownership details page with "<Mandatory_All>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 140
    And user fill summary details
    And user check for dedupe
    When user click on save and next property details
    Then property details home page saved successfully
    @LeadDetails
    Examples:
      | LogicalID | ProductType           | Mandatory_All | Application Type    | PropertyDetailsWB     | PropertyDetailsWB_Sheet | PropertyDetailsWB_Sheet_RowNo | ApplicationStage |
      | MHF00001  | Micro Housing Finance | all           | Property Identified | property_details.xlsx | home                    | 28                            |  Lead Details    |
      | HL00001   | Home Loan             | all           | Property Identified | property_details.xlsx | home                    | 145                           |  Lead Details    |
      | LAP00001  | Loan Against Property | all           | Property Identified | property_details.xlsx | home                    | 142                           |  Lead Details    |
      | OL00001   | Home Loan             | all           | Property Identified | property_details.xlsx | home                    | 146                           |  Lead Details    |
      | OL00001   | Home Loan             | all           | Property Identified | property_details.xlsx | home                    | 147                           |  Lead Details    |

    @ICD
    Examples:
      | LogicalID | ProductType           | Mandatory_All | Application Type        | PropertyDetailsWB     | PropertyDetailsWB_Sheet | PropertyDetailsWB_Sheet_RowNo | ApplicationStage |
      | MHF00002  | Micro Housing Finance | all           | Property Non-Identified | property_details.xlsx | home                    | 150                           | ICD              |

  @ImplementedBy-vaishnavi.agrawal
    @AuthoredBy-vaishnavi.agrawal
  Scenario Outline: ACAUTOCAS-20920: Capture property cost breakup at <ApplicationStage> stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
   # And user opens an application of "<ApplicationStage>" stage present in context from application grid
   # And user navigates to Loan Details Tab
    And user open property details tab
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetailsWB_sheet>" and row <PropertyDetailsWB_sheet_rowNum>
    When user capture property cost breakup
    And user capture source of fund
    And user saves the property details
    Then property details home page saved successfully
    @ICD
    Examples:
      | LogicalID | ProductType           | PropertyDetailsWB     | PropertyDetailsWB_sheet | PropertyDetailsWB_sheet_rowNum | ApplicationStage |
      | MHF00002  | Micro Housing Finance | property_details.xlsx | home                    | 151                            | ICD              |

    #------------------- Property Details for UnIdentified property -----------------------------#

  @ImplementedBy-vaishnavi.agrawal
    @AuthoredBy-vaishnavi.agrawal
  Scenario Outline:[LogicalID-<LogicalID>] Save property details at <ApplicationStage> stage for unidentified property <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "<ApplicationStage>" stage present in context from application grid
#    And user navigates to Loan Details Tab
    And user open property details tab
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetailsWB_Sheet>" and row <PropertyDetailsWB_Sheet_RowNo>
    And user fills property details page with "<Mandatory_All>" fields for "<Application Type>"
    When user click on save and next property details
    Then property details home page saved successfully
    @LeadDetails
    Examples:
      | LogicalID | ProductType           | ApplicationStage | Mandatory_All | Application Type        | PropertyDetailsWB     | PropertyDetailsWB_Sheet | PropertyDetailsWB_Sheet_RowNo |
      | MHF00002  | Micro Housing Finance | Lead Details     | all           | Property Non-Identified | property_details.xlsx | home                    | 148                           |

    @DDE
    Examples:
      | LogicalID | ProductType           | ApplicationStage | Mandatory_All | Application Type        | PropertyDetailsWB     | PropertyDetailsWB_Sheet | PropertyDetailsWB_Sheet_RowNo |
      | MHF00002  | Micro Housing Finance | DDE              | all           | Property Non-Identified | property_details.xlsx | home                    | 149                           |

      #------------------------------------------------- CERSAI DETAILS Home----------------------------------------------------------------------

###################################################################################################################################################
  @ImplementedBy-kanika.mahal
    @AuthoredBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-21262: Save CERSAI details at Lead Details stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "lead details" stage present in context from application grid
#    And user navigates to Loan Details Tab
    And user open property details tab
    And user navigates to property CERSAI page
    And user reads data from the excel file "<CERSAIDetailsWB>" under sheet "<CERSAIDetailsWB_Sheet>" and row <CERSAIDetailsWB_Sheet_RowNo>
    When user fills all fields in CERSAI section
    And user saves the CERSAI data
    Then CERSAI details saved successfully
    @LeadDetails
    Examples:
      | LogicalID | ProductType           | CERSAIDetailsWB | CERSAIDetailsWB_Sheet | CERSAIDetailsWB_Sheet_RowNo |
      | LAP00001  | Loan Against Property | collateral.xlsx | cersai_details        | 306                         |

      #------------------------------------------------- SECURITY DETAILS Home----------------------------------------------------------------------

###################################################################################################################################################
#  @ImplementedBy-kanika.mahal
#    @AuthoredBy-kanika.mahal
##    It is a logged bug , & considered as a blocker Hence commenting it for now
#Scenario Outline: ACAUTOCAS-21263:  Save Security details at Lead Details stage for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "lead details" stage present in context from application grid
##    And user navigates to Loan Details Tab
##    And user open property details tab
##    And user navigates to the CERSAI page
#    And user reads data from the excel file "<CERSAIDetailsWB>" under sheet "<CERSAIDetailsWB_Sheet>" and row <CERSAIDetailsWB_Sheet_RowNo>
#    When user fills all fields in section Security Interest section
#    And user saves the CERSAI data
#    Then CERSAI details saved successfully
#    @LeadDetails
#    Examples:
#      | LogicalID | ProductType           | CERSAIDetailsWB       | CERSAIDetailsWB_Sheet | CERSAIDetailsWB_Sheet_RowNo |
##      | LAP00001  | Loan Against Property | collateral.xlsx | cersai_details                  | 306                         |
#

    #------------------------------------------------- CCDE/Sourcing Details ----------------------------------------------------------------------

###################################################################################################################################################



  @AuthoredBy-harshita.nayak
    @ImplementedBy-harshita.nayak
  Scenario Outline: ACAUTOCAS-20926: [LogicalID-<LogicalID>] Save sourcing details for credit card in loan details for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "CCDE" stage present in context from application grid
    And user navigates to sourcing details tab of "Credit Card Application"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_sheet>" and row <SourcingDetails_rowNum>
    When user fills sourcing details with "<Mandatory_All>" fields for Credit Card Application
    And user fill commercial card details in sourcing details
    And user save sourcing details of Credit Card Application
    Then sourcing details should saved successfully
    @CCDE
    Examples:
      | LogicalID | SourcingDetailsWB              | Mandatory_All | SourcingDetails_sheet | SourcingDetails_rowNum | ProductType             |
      | CC00001   | credit_card_loan_end_flow.xlsx | All           | sourcing_details      | 1                      | Credit Card Application |
      | CC00003   | credit_card_loan_end_flow.xlsx | All           | sourcing_details      | 3                      | Credit Card Application |


  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: Save sourcing details for <ApplicantType> <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user navigates to sourcing details tab of "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_sheet>" and row <SourcingDetails_rowNum>
    And user fills sourcing details of Credit Card Application
    And user save sourcing details of Credit Card Application
    Then sourcing details of the credit card application should be saved successfully

    @CCDE
    Examples:
      | LogicalID | SourcingDetailsWB              | SourcingDetails_sheet | SourcingDetails_rowNum | ProductType             | ApplicantType |
      | CC00002   | credit_card_loan_end_flow.xlsx | sourcing_details      | 2                      | Credit Card Application | indiv         |


  @AuthoredBy-harshita.nayak
    @ImplementedBy-harshita.nayak
  Scenario Outline: ACAUTOCAS-20927: [LogicalID-<LogicalID>] Fills the <CardType> details for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "CCDE" stage present in context from application grid
    And user reads data from the excel file "<CardDetailsWB>" under sheet "<CardDetails_sheet>" and row <CardDetails_rowNum>
    When user navigates to card details
    And user add new "<CardType>" with "<Mandatory_All>" fields
    And user save the "<CardType>" details
    Then card details for "<CardType>" should be saved successfully

    @CCDE
    Examples:
      | LogicalID | ProductType             | Mandatory_All | CardDetailsWB                  | CardDetails_sheet | CardDetails_rowNum | CardType     |
      | CC00001   | Credit Card Application | All           | credit_card_loan_end_flow.xlsx | card_details      | 1                  | Primary Card |
      | CC00002   | Credit Card Application | All           | credit_card_loan_end_flow.xlsx | card_details      | 2                  | Primary Card |
      | CC00002   | Credit Card Application | All           | credit_card_loan_end_flow.xlsx | card_details      | 3                  | Add-On Card  |
      | CC00003   | Credit Card Application | All           | credit_card_loan_end_flow.xlsx | card_details      | 6                  | Primary Card |

  @AuthoredBy-harshita.nayak
    @ImplementedBy-harshita.nayak
  Scenario Outline: ACAUTOCAS-20928: [LogicalID-<LogicalID>] Save the credit card details in loan details for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "CCDE" stage present in context from application grid
#    When user navigates to sourcing details tab of "Credit Card Application"
#    And user navigates to card details
    And user reads data from the excel file "credit_card_loan_end_flow.xlsx" under sheet "card_details" and row 1
    When user fills credit card details
    Then credit card details should be saved successfully
    @CCDE
    Examples:
      | LogicalID | ProductType             |
      | CC00001   | Credit Card Application |
      | CC00002   | Credit Card Application |
      | CC00003   | Credit Card Application |

#------------------------------------------- REPAYMENT PARAMETERS---------------------------------------------------------------------------------------

  @AuthoredBy-akash.bansal
    @ImplementedBy-akash.bansal
  Scenario Outline: Save repayment parameters with FAS Details on loan details tab at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "DDE" stage present in context from application grid
    When user navigates to Loan Details Tab
    And user opens repayment parameter screen
    And user reads data from the excel file "<RepaymentParameters_WB>" under sheet "<RepaymentParameters_Sheet>" and row <RepaymentParameters_RowNum>
    And user enters fields of repayment parameters
    And user enters fields FAS Details
    And user save repayment parameters
    Then repayment parameters should be saved successfully
    @DDE
    Examples:
      | LogicalID | RepaymentParameters_WB             | RepaymentParameters_Sheet | RepaymentParameters_RowNum | ProductType                |
      | FAS00001  | repayment_parameters_end_flow.xlsx | repayment_parameters      | 23                         | Finance Against Securities |

################################################ DCC_SCHEDULING ##################################################################################

  @AuthoredBy-tanya
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-21402: Check sourcing details in loan details is in view mode for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "DCC_SCHEDULING" stage present in context from application grid
    When user navigates to sourcing details tab of "DCC_SCHEDULING"
    Then sourcing details should be in the view mode

    @DCCScheduling
    Examples:
      | LogicalID | ProductType           |
      | SHG00001  | Self Help Group       |
      | JLG00001  | Joint Liability Group |

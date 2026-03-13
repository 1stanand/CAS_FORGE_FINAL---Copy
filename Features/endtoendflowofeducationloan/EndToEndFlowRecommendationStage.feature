@Epic-E2E
@Conventional
@E2EOrder
@Release
@Recommendation
@Order
  #FeatureID-ACAUTOCAS-17204
Feature: End to end work flow for All LOB Order Wise

########################################## STAGE 6 : Recommendation ##############################################################################################

  @AuthoredBy-tanya
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-19890: Swap Primary Applicant with Co-applicant at Recommendation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "recommendation" stage present in context from application grid
    And user opens applicant information page of "recommendation"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    When user swaps primary applicant with "Co-applicant"
    Then primary applicant should get swapped successfully
    Examples:
      | LogicalID | ProductType     | PersonalInfoWB                     | PersonalInfo_home | PersonalInfo_home_rowNum |
      | SHG00001  | Self Help Group | personal_information_end_flow.xlsx | home              | 53                       |


 #For negative indiv add on applicant with dynamic form scenario Logical ID is CAS_262309_CC00004
  #For positive indiv  add on applicant scenario with dynamic form logical id is CAS_262309_CC00002
  @AuthoredBy-tanya
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-19891: Update documents at Recommendation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Recommendation" stage present in context from application grid
    And user selects document tab
    And user reads data from the excel file "<DocumentWB>" under sheet "<Document_home>" and row <Document_home_rowNum>
    And user selects the document
    And user selects document status as "<Status>"
    When user submit the document
    Then documents should be submitted successfully
    Examples:
      | LogicalID          | ProductType             | DocumentWB    | Document_home | Document_home_rowNum | Status              |
      | SHG00001           | Self Help Group         | document.xlsx | home          | 539                  | Received & Uploaded |
      | CC00002            | Credit Card Application | document.xlsx | home          | 541                  | Received & Uploaded |
      | CC00003            | Credit Card Application | document.xlsx | home          | 542                  | Received & Uploaded |
      | CAS_262309_CC00002 | Credit Card Application | document.xlsx | home          | 541                  | Received & Uploaded |




#    Commented for E2E JLG execution
#  @AuthoredBy-akash.bansal
#    @ImplementedBy-akash.bansal
#  Scenario Outline: ACAUTOCAS-19890: Remove existing <ApplicantType> at Recommendation stage for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "recommendation" stage present in context from application grid
#    And user opens applicant information page of "recommendation"
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
#    When user removes the required existing "<ApplicantType>"
#    Then existing "<ApplicantType>" should get removed successfully
#    Examples:
#      | LogicalID | ProductType           | ApplicantType | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
#      | JLG00001  | Joint Liability Group | Co-applicant  | personal_information.xlsx | home              | 181                      |

    #    #---------------- CHECKING REPAYMENT PARAMETERS -----------#
  @AuthoredBy-tanya
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-20922: Save repayment parameters details at Recommendation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Recommendation" stage present in context from application grid
    And user moves to main tab of "Recommendation"
    And user open repayment parameters page of "Recommendation"
    When user save repayment parameters
    Then repayment parameters should save successfully

    Examples:
      | LogicalID | ProductType           |
      | SHG00001  | Self Help Group       |
      | JLG00001  | Joint Liability Group |

  @AuthoredBy-anshika.gupta
    @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-19892:[LogicalID-<LogicalID>][SendBack-<SendBack>] Save recommendation decision details at Recommendation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Recommendation" stage present in context from application grid
    When user reads data from the excel file "<Recommendation_WB>" under sheet "<Recommendation_Sheet>" and row <Recommendation_RowNum>
    And user complete recommendation decision details
    And user saves the recommendation decision details
    Then recommendation decision details should be saved successfully
    Examples:
      | LogicalID  | Recommendation_WB            | Recommendation_Sheet   | Recommendation_RowNum | ProductType           | SendBack |
      | EDU00001   | recommendation_end_flow.xlsx | decision_justification | 1                     | Education Loan        |          |
      | EDU00002   | recommendation_end_flow.xlsx | decision_justification | 1                     | Education Loan        |          |
      | AL00001    | recommendation_end_flow.xlsx | decision_justification | 1                     | Auto Loan             |          |
      | KCC00001   | recommendation_end_flow.xlsx | decision_justification | 1                     | Kisan Credit Card     |          |
      | SHG00001   | recommendation_end_flow.xlsx | decision_justification | 1                     | Self Help Group       |          |
      | JLG00001   | recommendation_end_flow.xlsx | decision_justification | 1                     | Joint Liability Group |          |
      | CD00001    | recommendation_end_flow.xlsx | decision_justification | 1                     | Consumer Durable      |          |
      | AGRL00001  | recommendation_end_flow.xlsx | decision_justification | 1                     | Agriculture Loan      |          |
      | PL00001    | recommendation_end_flow.xlsx | decision_justification | 1                     | Personal Loan         |          |
      | HL00001    | recommendation_end_flow.xlsx | decision_justification | 1                     | Home Loan             |          |
      | KCC00002   | recommendation_end_flow.xlsx | decision_justification | 1                     | Kisan Credit Card     |          |
      | PL00002    | recommendation_end_flow.xlsx | decision_justification | 1                     | Personal Loan         |          |
      | OL00001    | recommendation_end_flow.xlsx | decision_justification | 2                     | Omni Loan             |          |
      | AL00002    | recommendation_end_flow.xlsx | decision_justification | 1                     | Auto Loan             |          |
      | EDU00004   | recommendation_end_flow.xlsx | decision_justification | 1                     | Education Loan        |          |
      | SB_AL00003 | recommendation_end_flow.xlsx | decision_justification | 1                     | Auto Loan             |          |
      | SB_AL00003 | recommendation_end_flow.xlsx | decision_justification | 1                     | Auto Loan             | yes      |
      | SB_AL00004 | recommendation_end_flow.xlsx | decision_justification | 1                     | Auto Loan             |          |

    @PQMStory
    Examples:
      | LogicalID                        | Recommendation_WB            | Recommendation_Sheet   | Recommendation_RowNum | ProductType    |
      | EDU_CAS_60813_ContractualIndiv01 | recommendation_end_flow.xlsx | decision_justification | 1                     | Education Loan |
      | EDU_CAS_60813_ContractualIndiv02 | recommendation_end_flow.xlsx | decision_justification | 1                     | Education Loan |
      | EDU_CAS_60813_ContractualIndiv03 | recommendation_end_flow.xlsx | decision_justification | 1                     | Education Loan |
      | EDU_CAS_60813_ContractualIndiv04 | recommendation_end_flow.xlsx | decision_justification | 1                     | Education Loan |
      | EDU_CAS_60813_ContractualIndiv05 | recommendation_end_flow.xlsx | decision_justification | 1                     | Education Loan |
      | AL_CAS_60813_ContractualIndiv01  | recommendation_end_flow.xlsx | decision_justification | 1                     | Auto Loan      |
      | AL_CAS_60813_ContractualIndiv02  | recommendation_end_flow.xlsx | decision_justification | 1                     | Auto Loan      |
      | AL_CAS_60813_ContractualIndiv03  | recommendation_end_flow.xlsx | decision_justification | 1                     | Auto Loan      |
      | AL_CAS_60813_ContractualIndiv04  | recommendation_end_flow.xlsx | decision_justification | 1                     | Auto Loan      |
      | AL_CAS_60813_ContractualIndiv05  | recommendation_end_flow.xlsx | decision_justification | 1                     | Auto Loan      |


  @ImplementedBy-ashutosh.kumar2
  Scenario Outline: ACAUTOCAS-19893: Add identification details at Recommendation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Recommendation" stage present in context from application grid
    And user moves to main tab of "Recommendation"
    And user opens applicant information page of "Recommendation"
    And user edits customer information
    When user open identification details accordion
    And user reads data from the excel file "<PersonalInfo_sheet>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user add "<MandatoryAll>" identification details of type "<IdentificationType>"
#    And user consent the identification details
    And user check for duplicates on personal information
    And user saves the applicant information details
    And personal information details should be saved successfully
    Then Identification type of type "<IdentificationType>" should be added successfully
    Examples:
      | LogicalID | PersonalInfo_sheet        | PersonalInfo_identification | PersonalInfo_identification_rowNum | ProductType      | IdentificationType | MandatoryAll |
      | CD00001   | personal_information.xlsx | identification              | 0                                  | Consumer Durable | PAN                | all          |

  @ImplementedBy-ashutosh.kumar2
  Scenario Outline: ACAUTOCAS-19894: validate sourcing details at Recommendation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Recommendation" stage present in context from application grid
    And user moves to main tab of "Recommendation"
    When user clicks on sourcing details page of "Recommendation"
    And user reads data from the excel file "consume_durable_end_flow.xlsx" under sheet "asset_details" and row 0
    Then user validate the sourcing details

    Examples:
      | LogicalID | ProductType      |
      | CD00001   | Consumer Durable |

  @AuthoredBy-harshita.nayak
    @ImplementedBy-harshita.nayak
  Scenario Outline: ACAUTOCAS-20923: Update the Card limit at Recommendation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Recommendation" stage present in context from application grid
    When user reads data from the excel file "<Recommendation_WB>" under sheet "<Recommendation_Sheet>" and row <Recommendation_RowNum>
    And user update card details to "increase" card limit
    And user fill card limit decision
    And user saves the recommendation decision details
    Then recommendation decision details should be saved successfully
    Examples:
      | LogicalID | Recommendation_WB              | Recommendation_Sheet | Recommendation_RowNum | ProductType             |
      | CC00001   | credit_card_loan_end_flow.xlsx | recommendation       | 0                     | Credit Card Application |
      | CC00003   | credit_card_loan_end_flow.xlsx | recommendation       | 0                     | Credit Card Application |

  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: Update the <CreditCard> limit at Recommendation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Recommendation" stage present in context from application grid
    And user reads data from the excel file "<CardDetailsWB>" under sheet "<CardDetails_sheet>" and row <CardDetails_rowNum>
    And user navigates to credit card details at Recommendation stage
    When user updates card limit of "<CreditCard>"
    And user save the "<CreditCard>" details
    Then credit card details should be updated successfully

    Examples:
      | LogicalID          | ProductType             | CardDetailsWB                  | CardDetails_sheet | CardDetails_rowNum | CreditCard   |
      | CC00002            | Credit Card Application | credit_card_loan_end_flow.xlsx | card_details      | 4                  | Primary Card |
      | CC00002            | Credit Card Application | credit_card_loan_end_flow.xlsx | card_details      | 5                  | Add-On Card  |
      | CAS_262309_CC00002 | Credit Card Application | credit_card_loan_end_flow.xlsx | card_details      | 4                  | Primary Card |
      | CAS_262309_CC00002 | Credit Card Application | credit_card_loan_end_flow.xlsx | card_details      | 5                  | Add-On Card  |

  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: Save card decision in recommendation decision details at Recommendation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Recommendation" stage present in context from application grid
    And user reads data from the excel file "<Recommendation_WB>" under sheet "<Recommendation_Sheet>" and row <Recommendation_RowNum>
    When user fills card limit decision for credit card
    And user saves the recommendation decision details
    Then recommendation decision details should be saved successfully
    Examples:
      | LogicalID          | Recommendation_WB              | Recommendation_Sheet | Recommendation_RowNum | ProductType             |
      | CC00002            | credit_card_loan_end_flow.xlsx | recommendation       | 0                     | Credit Card Application |
      | CAS_262309_CC00002 | credit_card_loan_end_flow.xlsx | recommendation       | 0                     | Credit Card Application |



    #----------------- CHECKING ASSET DETAILS ---------------#
  @AuthoredBy-vaishnavi.agrawal
    @ImplementedBy-ashutosh.kumar2
  Scenario Outline: ACAUTOCAS-19895: Save asset details at Recommendation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Recommendation" stage present in context from application grid
    And user moves to main tab of "Recommendation"
    When user open asset details of "Recommendation"
    And user fills the "<asset_type>""<tab_name>"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills all fields of invoice details
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    And user fills Assets details in recommendation stage
    And user fills asset cost
    And user checks for the duplicates
    And user saves asset details home page
    Then asset details saved successfully

    Examples:
      | LogicalID | ProductType      | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | tab_name        | asset_type | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum |
      | CD00001   | Consumer Durable | asset_details.xlsx | invoice_details | 15                     | Invoice Details | Used Asset | asset_details.xlsx | home                      | 84                               |

  @ImplementedBy-ashutosh.kumar2
  Scenario Outline: ACAUTOCAS-19896: Save Insurance details of asset for Consumer Durable at Recommendation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Recommendation" stage present in context from application grid
#    And user moves to main tab of "Recommendation"
#    And user open asset details of "Recommendation"
    And user opens insurance details tab to add insurance
    And user reads data from the excel file "asset_details.xlsx" under sheet "insurance_details" and row 105
    When user fills insurance details for asset
    And user saves the record for insurance
    Then insurance details should be added successfully
    Examples:
      | LogicalID | ProductType      |
      | CD00001   | Consumer Durable |


  @ImplementedBy-ashutosh.kumar2
  Scenario Outline: ACAUTOCAS-19897: Update the Repayment parameter for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Recommendation" stage present in context from application grid
    And user moves to main tab of "Recommendation"
    And user open repayment parameters page of "Recommendation"
    And user reads data from the excel file "<RepaymentParameters_WB>" under sheet "<RepaymentParameters_Sheet>" and row <RepaymentParameters_RowNum>
    When user fills repayment parameters with all fields
    And user save repayment parameters
    Then repayment parameters should save successfully
    Examples:
      | LogicalID | ProductType      | RepaymentParameters_WB    | RepaymentParameters_Sheet | RepaymentParameters_RowNum |
      | CD00001   | Consumer Durable | repayment_parameters.xlsx | repayment_parameters      | 2981                       |

  @ImplementedBy-ashutosh.kumar2
  Scenario Outline: ACAUTOCAS-19898: save collateral details at Recommendation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Recommendation" stage present in context from application grid
    And user moves to main tab of "Recommendation"
    And user open collateral page of "Recommendation" stage
    When user clicks on add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_sheet>" and row <Collateral_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "invoice_details" and row 62
    And user fill Invoice Details
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    Then collateral details should be saved successfully

    Examples:
      | LogicalID | ProductType      | CollateralWB    | Collateral_sheet | Collateral_rowNum |
      | CD00001   | Consumer Durable | collateral.xlsx | default          | 375               |

  @ImplementedBy-ashutosh.kumar2
  Scenario Outline: ACAUTOCAS-19899: save document at Recommendation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Recommendation" stage present in context from application grid
    And user moves to main tab of "Recommendation"
    And user selects document tab
    And user reads data from the excel file "<DocumentWB>" under sheet "<Document_home>" and row <Document_home_rowNum>
    And user selects the document
    And user selects document status as "<Status>"
    When user submit the document
    Then documents should be submitted successfully with close
    Examples:
      | LogicalID | DocumentWB    | Document_home | Document_home_rowNum | Status    | ProductType      |
      | CD00001   | document.xlsx | home          | 216                  | WaivedOff | Consumer Durable |
      | CD00001   | document.xlsx | home          | 438                  | Deferred  | Consumer Durable |

  @ImplementedBy-ashutosh.kumar2
  Scenario Outline: ACAUTOCAS-19900: validation of document at Document Approval Grid of <ProductType> logical id <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user navigates to document approval grid
    And user search and assign application from context to itself in document approval grid
    And user search and perform "<doc_approval_status>" decision on application from context in document approval grid
    And user reads data from the excel file "<DocumentWB>" under sheet "<Document_approval>" and row <Document_approval_rowNum>
    And user fill the reason for Document Approval Grid regarding the "<doc_approval_status>" Decision
    Then document approval rows for an application should be removed from grid
    Examples:
      | LogicalID | DocumentWB    | Document_approval | Document_approval_rowNum | doc_approval_status | ProductType      |
      | CD00001   | document.xlsx | document_approval | 1                        | Approve             | Consumer Durable |

#
#    #----------------------- FILLING KYC DETAILS --------------------#
#  @AuthoredBy-vaishnavi.agrawal
#  Scenario Outline: Save KYC details at Recommendation stage for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    When user clicks on "Applicant Details" hyperlink at recommendation stage
#    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_sheet>" and row <Collateral_rowNum>
#    And user navigates to kyc details of applicant information
#    And user fill kyc details of applicant information
#    When user click on save button in Kyc details
#    Then KYC Details should be saved successfully
#
#    Examples:
#      | LogicalID | ProductType      | CollateralWB                   | Collateral_sheet       | Collateral_rowNum |
#      |           | Consumer Durable | consumer_durable_end_flow.xlsx | identification_details | 0                 |

@Epic-Charges
@AuthoredBy-yash.sharma
@ImplementedBy-yash.sharma
@APICenter
@NotImplemented

Feature: Validate API Documentation for Charge Receipt Status Service

  #PQM-15_CAS-45598,15_CAS-45599
  Scenario Outline: Validate Charge Receipt Status Service details API description changes is present at <ProductType> LogicalID <LogicalID>
    Given user is on CAS Login Page
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user starts creating application of logical id "<LogicalID>"
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<APIName>" service is present as per contract in API documentation
    Examples:
      | LogicalID                     | APIName     |
      | CAS_45598_ExReceiptService_02 | CAS_Appl_12 |

  #PQM-15_CAS-45598
  Scenario Outline: Verify <APIName> description for <fieldName> with <fieldDescription> at <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    Then "<fieldDescription>" of "<fieldName>" should be present in API request details
    Examples:
      | LogicalID                     | APIName     | fieldName                 | fieldDescription                                                                                                                                                                                                                                                                 |
      | CAS_45598_ExReceiptService_02 | CAS_Appl_12 | receiptPayOutMode         | integer <int64>                                                                                                                                                                                                                                                                  |
      | CAS_45598_ExReceiptService_02 | CAS_Appl_12 | applicationId             | integer <int64>                                                                                                                                                                                                                                                                  |
      | CAS_45598_ExReceiptService_02 | CAS_Appl_12 | receiptOrPayoutAmount     | number                                                                                                                                                                                                                                                                           |
      | CAS_45598_ExReceiptService_02 | CAS_Appl_12 | instrumentDate            | string <date-time>                                                                                                                                                                                                                                                               |
      | CAS_45598_ExReceiptService_02 | CAS_Appl_12 | instrumentReferenceNumber | string                                                                                                                                                                                                                                                                           |
      | CAS_45598_ExReceiptService_02 | CAS_Appl_12 | transactionValueDate      | string <date-time>                                                                                                                                                                                                                                                               |
      | CAS_45598_ExReceiptService_02 | CAS_Appl_12 | tenantId                  | integer <int64>                                                                                                                                                                                                                                                                  |
      | CAS_45598_ExReceiptService_02 | CAS_Appl_12 | receiptNo                 | string                                                                                                                                                                                                                                                                           |
      | CAS_45598_ExReceiptService_02 | CAS_Appl_12 | sourceAccountNumber       | string                                                                                                                                                                                                                                                                           |
      | CAS_45598_ExReceiptService_02 | CAS_Appl_12 | productProcessor          | string Enum: "mCas" "LMS" "mApply" "INTERNAL" "EXTERNAL"  This field signifies the module from which the request has been raised. The valid value from Dtype:ProductProcessor. The length of the field is 255.                                                                   |
      | CAS_45598_ExReceiptService_02 | CAS_Appl_12 | receiptNumber             | string  This field signifies the unique system generated reference number against a receipt recorded in FinnOne Neo. The length of the field is 100.                                                                                                                             |
      | CAS_45598_ExReceiptService_02 | CAS_Appl_12 | receiptStatus             | string  Enum: "DA-RECEIPT_STATUS_DEPOSIT_AUTHOR" "CA-RECEIPT_STATUS_REALIZATION_AUTHOR" "BA-RECEIPT_STATUS_BOUNCE_AUTHOR" "XA-RECEIPT_STATUS_CANCEL_AUTHOR" "RN-RECEIPT_STATUS_RECEIPT_ENTERED"  This field signifies the receipt created status. The length of the field is 20. |

  #PQM-22_CAS-45598
  Scenario Outline: Validate the <APIName> after hitting with valid JSON LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user hit the api(CAS-Appl-12)
    Then proper response should come with <fieldName>
    Examples:
      | LogicalID                     | APIName     | fieldName     |
      | CAS_45598_ExReceiptService_02 | CAS_Appl_12 | status        |
      | CAS_45598_ExReceiptService_02 | CAS_Appl_12 | receiptNumber |
      | CAS_45598_ExReceiptService_02 | CAS_Appl_12 | receiptStatus |
      | CAS_45598_ExReceiptService_02 | CAS_Appl_12 | timeStamp     |

    #PQM-16_CAS-45598,22_CAS-45598,16_CAS-45599,22_CAS-45599,32_CAS-45599,29_CAS-45599
  Scenario Outline: Validate the <APIName> after hitting with valid JSON LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user hit the api(CAS-Appl-12) with <receiptStatus>
    Then proper response should come with <receiptStatus>
    Examples:
      | LogicalID                     | APIName     | receiptStatus      |
      | CAS_45598_ExReceiptService_02 | CAS_Appl_12 | Entry              |
      | CAS_45598_ExReceiptService_02 | CAS_Appl_12 | Deposit Maker      |
      | CAS_45598_ExReceiptService_02 | CAS_Appl_12 | Deposit Author     |
      | CAS_45598_ExReceiptService_02 | CAS_Appl_12 | Realization Author |
      | CAS_45598_ExReceiptService_02 | CAS_Appl_12 | Bounce             |
      | CAS_45598_ExReceiptService_02 | CAS_Appl_12 | Cancelled          |
      | CAS_45598_ExReceiptService_02 | CAS_Appl_12 | Deleted            |



#    #PQM-06_CAS-45598
#  Scenario Outline: Create new receipt using Service at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user reads data from the excel file "<chargesWB>" under sheet "<charges_sheetName>" and row <charges_sheetName_rowNum>
#    When user create new receipt using service at "<ApplicationStage>"
#    Then receipt should be created successfully
#    @Charge @Disbursal
#    Examples:
#      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key | chargesWB    | charges_sheetName      | charges_sheetName_rowNum |
#      | PL_CAS_45598_ExReceiptService_03  | PL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       |
#      | HL_CAS_45598_ExReceiptService_03  | HL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       |
#      | MAL_CAS_45598_ExReceiptService_03 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       |

#    #PQM-28_CAS-45599
#  Scenario Outline: Edit new receipt using Service at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user reads data from the excel file "<chargesWB>" under sheet "<charges_sheetName>" and row <charges_sheetName_rowNum>
#    When user create new receipt using service at "<ApplicationStage>"
#    Then receipt should be created successfully
#    @Charge @Disbursal
#    Examples:
#      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key | chargesWB    | charges_sheetName      | charges_sheetName_rowNum |
#      | PL_CAS_45598_ExReceiptService_03  | PL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       |
#      | HL_CAS_45598_ExReceiptService_03  | HL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       |
#      | MAL_CAS_45598_ExReceiptService_03 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       |

#    #PQM-2_CAS-45599
#  Scenario Outline: Delete new receipt using Service at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user reads data from the excel file "<chargesWB>" under sheet "<charges_sheetName>" and row <charges_sheetName_rowNum>
#    When user create new receipt using service at "<ApplicationStage>"
#    Then receipt should be Delete successfully
#    @Charge @Disbursal
#    Examples:
#      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key | chargesWB    | charges_sheetName      | charges_sheetName_rowNum |
#      | PL_CAS_45598_ExReceiptService_03  | PL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       |
#      | HL_CAS_45598_ExReceiptService_03  | HL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       |
#      | MAL_CAS_45598_ExReceiptService_03 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       |

#    #PQM-31_CAS-45598,25_CAS-45598
#  Scenario Outline: Create new receipt using Service with status <status> at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user reads data from the excel file "<chargesWB>" under sheet "<charges_sheetName>" and row <charges_sheetName_rowNum>
#    When user create new receipt using service at "<ApplicationStage>" with status "<status>
#    Then receipt should be created successfully with status "<status>"
#    @Charge @Disbursal
#    Examples:
#      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key | chargesWB    | charges_sheetName      | charges_sheetName_rowNum | status                               |
#      | PL_CAS_45598_ExReceiptService_03  | PL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       | DA-RECEIPT_STATUS_DEPOSIT_AUTHOR     |
#      | HL_CAS_45598_ExReceiptService_03  | HL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       | DA-RECEIPT_STATUS_DEPOSIT_AUTHOR     |
#      | MAL_CAS_45598_ExReceiptService_03 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       | DA-RECEIPT_STATUS_DEPOSIT_AUTHOR     |
#      | PL_CAS_45598_ExReceiptService_03  | PL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       | CA-RECEIPT_STATUS_REALIZATION_AUTHOR |
#      | HL_CAS_45598_ExReceiptService_03  | HL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       | CA-RECEIPT_STATUS_REALIZATION_AUTHOR |
#      | MAL_CAS_45598_ExReceiptService_03 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       | CA-RECEIPT_STATUS_REALIZATION_AUTHOR |
#      | PL_CAS_45598_ExReceiptService_03  | PL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       | BA-RECEIPT_STATUS_BOUNCE_AUTHOR      |
#      | HL_CAS_45598_ExReceiptService_03  | HL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       | BA-RECEIPT_STATUS_BOUNCE_AUTHOR      |
#      | MAL_CAS_45598_ExReceiptService_03 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       | BA-RECEIPT_STATUS_BOUNCE_AUTHOR      |
#      | PL_CAS_45598_ExReceiptService_03  | PL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       | XA-RECEIPT_STATUS_CANCEL_AUTHOR      |
#      | HL_CAS_45598_ExReceiptService_03  | HL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       | XA-RECEIPT_STATUS_CANCEL_AUTHOR      |
#      | MAL_CAS_45598_ExReceiptService_03 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       | XA-RECEIPT_STATUS_CANCEL_AUTHOR      |
#      | PL_CAS_45598_ExReceiptService_03  | PL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       | RN-RECEIPT_STATUS_RECEIPT_ENTERED    |
#      | HL_CAS_45598_ExReceiptService_03  | HL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       | RN-RECEIPT_STATUS_RECEIPT_ENTERED    |
#      | MAL_CAS_45598_ExReceiptService_03 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                      | RN-RECEIPT_STATUS_RECEIPT_ENTERED    |




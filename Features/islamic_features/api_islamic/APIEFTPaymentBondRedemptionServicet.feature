@Epic-PF_Bond_Base
@PQMStory
@AuthoredBy-ankit.yadav
@ImplementedBy-ankit.yadav
@ReviewedBy-None
@Release
@Islamic
@Bonds
@Part-2

#${ProductType:["IPF"]}

Feature: Islamic EFT Payment Bond Redemption Service API

  Background:
    Given user is on CAS Login Page

#PQM-34_CAS-185578
Scenario Outline: ACAUTOCAS-17810: API Documentation Tab in eft payment details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on Documentation tab
    Then Service is present as per contract in API
    Examples:
      | ProductType   |
      | <ProductType> |

#PQM-35_CAS-185578
Scenario Outline: ACAUTOCAS-17811: Verify eft payment details <Service> in <APIName> documentation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user click on download "<Service>" for "<APIName>"
    Then "<Service>" is present as per contract in "<APIName>"
    Examples:
      | Service                 | ProductType   | APIName      |
      | API Documentation PDF   | <ProductType> | CAS_Appl_118 |
      | API Documentation Excel | <ProductType> | CAS_Appl_118 |

#PQM-36_CAS-185578
Scenario Outline: ACAUTOCAS-17812: Validating <APIHeader> in eft payment details in API center for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user click on CAS API vault
    When user search "<APIHeader>" in search bar
    Then "<APIHeader>" should be present in API center
    Examples:
      | APIHeader         | ProductType   |
      | CAS_Appl_118      | <ProductType> |
      | eftPaymentDetails | <ProductType> |

Scenario Outline: ACAUTOCAS-17813: Validating <APIDescription> in eft payment details in API center for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user click on CAS API vault
    When user search "<APIDescription>" in search bar
    Then "<APIDescription>" should be present in API center
    Examples:
      | APIDescription                                                     | ProductType   |
      | eftPaymentDetails                                                  | <ProductType> |
      | CAS_Appl_118                                                       | <ProductType> |
      | This service will be used to Register Applicant's Mandate Details. | <ProductType> |

#PQM-37_CAS-185578
Scenario Outline: ACAUTOCAS-17814: Verify API service eft payment details URL for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_eftPayment>" and row <PostApproval_eftPayment_rowNum>
    When user searches "<APIName>" in documentation and opens
    Then User verify API service Eft Payment service URL
    Examples:
      | ProductType   | APIName      | PostApprovalWB     | PostApproval_eftPayment | PostApproval_eftPayment_rowNum |
      | <ProductType> | CAS_Appl_118 | post_approval.xlsx | eft_payment             | 0                              |

Scenario Outline: ACAUTOCAS-17815: Verify API service eft payment details URL in TRY Now feature for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_eftPayment>" and row <PostApproval_eftPayment_rowNum>
    Then User verify API service Eft Payment service URL on try now page
    Examples:
      | ProductType   | APIName      | PostApprovalWB     | PostApproval_eftPayment | PostApproval_eftPayment_rowNum |
      | <ProductType> | CAS_Appl_118 | post_approval.xlsx | eft_payment             | 0                              |

#PQM-38_CAS-185578,PQM-33_CAS-185578
Scenario Outline: ACAUTOCAS-17816: <Fields> should be present in eft payment details <APIName> request details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Fields>" should be present in Eft Payment API request details
    Examples:
      | APIName      | ProductType   | Fields                   |
      | CAS_Appl_118 | <ProductType> | eftDetails               |
      | CAS_Appl_118 | <ProductType> | subPaymentModeTypeCode   |
      | CAS_Appl_118 | <ProductType> | paymentDate              |
      | CAS_Appl_118 | <ProductType> | payto                    |
      | CAS_Appl_118 | <ProductType> | ifscCode                 |
      | CAS_Appl_118 | <ProductType> | bankName                 |
      | CAS_Appl_118 | <ProductType> | bankBranch               |
      | CAS_Appl_118 | <ProductType> | bankingLocation          |
      | CAS_Appl_118 | <ProductType> | accountTypeCode          |
      | CAS_Appl_118 | <ProductType> | payableAmount            |
      | CAS_Appl_118 | <ProductType> | beneficiaryaccountNumber |
      | CAS_Appl_118 | <ProductType> | id                       |
      | CAS_Appl_118 | <ProductType> | subPaymentModeTypeName   |
      | CAS_Appl_118 | <ProductType> | accountTypeName          |
      | CAS_Appl_118 | <ProductType> | dealingBankId            |
      | CAS_Appl_118 | <ProductType> | commodityDetails         |
      | CAS_Appl_118 | <ProductType> | commodityType            |
      | CAS_Appl_118 | <ProductType> | subLoanId                |
      | CAS_Appl_118 | <ProductType> | chequeDetails            |
      | CAS_Appl_118 | <ProductType> | id                       |
      | CAS_Appl_118 | <ProductType> | chequeNumber             |
      | CAS_Appl_118 | <ProductType> | instrumentDate           |
      | CAS_Appl_118 | <ProductType> | dealingBankId            |
      | CAS_Appl_118 | <ProductType> | tieUpBranchCode          |
      | CAS_Appl_118 | <ProductType> | printingBranchCode       |
      | CAS_Appl_118 | <ProductType> | draftDetails             |
      | CAS_Appl_118 | <ProductType> | id                       |
      | CAS_Appl_118 | <ProductType> | draftNumber              |
      | CAS_Appl_118 | <ProductType> | instrumentDate           |
      | CAS_Appl_118 | <ProductType> | dealingBankId            |
      | CAS_Appl_118 | <ProductType> | tieUpBranchCode          |
      | CAS_Appl_118 | <ProductType> | printingBranchCode       |
      | CAS_Appl_118 | <ProductType> | demandDraftDetails       |
      | CAS_Appl_118 | <ProductType> | id                       |
      | CAS_Appl_118 | <ProductType> | draftNumber              |
      | CAS_Appl_118 | <ProductType> | instrumentDate           |
      | CAS_Appl_118 | <ProductType> | dealingBankId            |
      | CAS_Appl_118 | <ProductType> | tieUpBranchCode          |
      | CAS_Appl_118 | <ProductType> | printingBranchCode       |

#PQM-38_CAS-185578
Scenario Outline: ACAUTOCAS-17817: Validate <Status> <Fields> should be present in eft payment details <APIName> request details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Status>" "<Fields>" should be present in Eft Payment API request details
    Examples:
      | APIName      | ProductType   | Fields                   | Status   |
      | CAS_Appl_118 | <ProductType> | eftDetails               | optional |
      | CAS_Appl_118 | <ProductType> | subPaymentModeTypeCode   | optional |
      | CAS_Appl_118 | <ProductType> | paymentDate              | optional |
      | CAS_Appl_118 | <ProductType> | payto                    | optional |
      | CAS_Appl_118 | <ProductType> | ifscCode                 | optional |
      | CAS_Appl_118 | <ProductType> | bankName                 | optional |
      | CAS_Appl_118 | <ProductType> | bankBranch               | optional |
      | CAS_Appl_118 | <ProductType> | bankingLocation          | optional |
      | CAS_Appl_118 | <ProductType> | accountTypeCode          | optional |
      | CAS_Appl_118 | <ProductType> | payableAmount            | optional |
      | CAS_Appl_118 | <ProductType> | beneficiaryaccountNumber | optional |
      | CAS_Appl_118 | <ProductType> | id                       | optional |
      | CAS_Appl_118 | <ProductType> | subPaymentModeTypeName   | optional |
      | CAS_Appl_118 | <ProductType> | accountTypeName          | optional |
      | CAS_Appl_118 | <ProductType> | dealingBankId            | optional |
      | CAS_Appl_118 | <ProductType> | commodityDetails         | optional |
      | CAS_Appl_118 | <ProductType> | commodityType            | optional |
      | CAS_Appl_118 | <ProductType> | subLoanId                | optional |
      | CAS_Appl_118 | <ProductType> | chequeDetails            | optional |
      | CAS_Appl_118 | <ProductType> | id                       | optional |
      | CAS_Appl_118 | <ProductType> | chequeNumber             | optional |
      | CAS_Appl_118 | <ProductType> | instrumentDate           | optional |
      | CAS_Appl_118 | <ProductType> | dealingBankId            | optional |
      | CAS_Appl_118 | <ProductType> | tieUpBranchCode          | optional |
      | CAS_Appl_118 | <ProductType> | printingBranchCode       | optional |
      | CAS_Appl_118 | <ProductType> | draftDetails             | optional |
      | CAS_Appl_118 | <ProductType> | id                       | optional |
      | CAS_Appl_118 | <ProductType> | draftNumber              | optional |
      | CAS_Appl_118 | <ProductType> | instrumentDate           | optional |
      | CAS_Appl_118 | <ProductType> | dealingBankId            | optional |
      | CAS_Appl_118 | <ProductType> | tieUpBranchCode          | optional |
      | CAS_Appl_118 | <ProductType> | printingBranchCode       | optional |
      | CAS_Appl_118 | <ProductType> | demandDraftDetails       | optional |
      | CAS_Appl_118 | <ProductType> | id                       | optional |
      | CAS_Appl_118 | <ProductType> | draftNumber              | optional |
      | CAS_Appl_118 | <ProductType> | instrumentDate           | optional |
      | CAS_Appl_118 | <ProductType> | dealingBankId            | optional |
      | CAS_Appl_118 | <ProductType> | tieUpBranchCode          | optional |
      | CAS_Appl_118 | <ProductType> | printingBranchCode       | optional |

#PQM-38_CAS-185578
Scenario Outline: ACAUTOCAS-17818: <Fields> should be present in eft payment details <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Fields>" should be present in Eft Payment API response details
    Examples:
      | APIName      | ProductType   | Fields                 |
      | CAS_Appl_118 | <ProductType> | requestReferenceNumber |
      | CAS_Appl_118 | <ProductType> | status                 |
      | CAS_Appl_118 | <ProductType> | messageCode            |
      | CAS_Appl_118 | <ProductType> | messageDescription     |
      | CAS_Appl_118 | <ProductType> | additionalField1       |
      | CAS_Appl_118 | <ProductType> | additionalField2       |
      | CAS_Appl_118 | <ProductType> | additionalField3       |
      | CAS_Appl_118 | <ProductType> | additionalField4       |
      | CAS_Appl_118 | <ProductType> | additionalField5       |
      | CAS_Appl_118 | <ProductType> | additionalField6       |
      | CAS_Appl_118 | <ProductType> | additionalField7       |
      | CAS_Appl_118 | <ProductType> | additionalField8       |
      | CAS_Appl_118 | <ProductType> | additionalField9       |
      | CAS_Appl_118 | <ProductType> | additionalField10      |
      | CAS_Appl_118 | <ProductType> | additionalField11      |
      | CAS_Appl_118 | <ProductType> | additionalField12      |
      | CAS_Appl_118 | <ProductType> | additionalField13      |
      | CAS_Appl_118 | <ProductType> | additionalField14      |
      | CAS_Appl_118 | <ProductType> | additionalField15      |
      | CAS_Appl_118 | <ProductType> | serialVersionUID       |

#PQM-38_CAS-185578
Scenario Outline: ACAUTOCAS-17819: <Status> <Fields> should be present in eft payment details <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Status>" "<Fields>" should be present in Eft Payment API response details
    Examples:
      | APIName      | ProductType   | Fields                 | Status   |
      | CAS_Appl_118 | <ProductType> | requestReferenceNumber | required |
      | CAS_Appl_118 | <ProductType> | status                 | required |
      | CAS_Appl_118 | <ProductType> | messageCode            | optional |
      | CAS_Appl_118 | <ProductType> | messageDescription     | optional |
      | CAS_Appl_118 | <ProductType> | additionalField1       | optional |
      | CAS_Appl_118 | <ProductType> | additionalField2       | optional |
      | CAS_Appl_118 | <ProductType> | additionalField3       | optional |
      | CAS_Appl_118 | <ProductType> | additionalField4       | optional |
      | CAS_Appl_118 | <ProductType> | additionalField5       | optional |
      | CAS_Appl_118 | <ProductType> | additionalField6       | optional |
      | CAS_Appl_118 | <ProductType> | additionalField7       | optional |
      | CAS_Appl_118 | <ProductType> | additionalField8       | optional |
      | CAS_Appl_118 | <ProductType> | additionalField9       | optional |
      | CAS_Appl_118 | <ProductType> | additionalField10      | optional |
      | CAS_Appl_118 | <ProductType> | additionalField11      | optional |
      | CAS_Appl_118 | <ProductType> | additionalField12      | optional |
      | CAS_Appl_118 | <ProductType> | additionalField13      | optional |
      | CAS_Appl_118 | <ProductType> | additionalField14      | optional |
      | CAS_Appl_118 | <ProductType> | additionalField15      | optional |
      | CAS_Appl_118 | <ProductType> | serialVersionUID       | optional |

#PQM-39_CAS-185578
Scenario Outline: ACAUTOCAS-17820: <Description> of <Fields> should be present in eft payment details <APIName> request details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Description>" of "<Fields>" should be present in Eft Payment API request details
    Examples:
      | APIName      | ProductType   | Fields                   | Description                                                                                                                                                                                                    |
      | CAS_Appl_118 | <ProductType> | eftDetails               | This block signifies the EFT details.                                                                                                                                                                          |
      | CAS_Appl_118 | <ProductType> | subPaymentModeTypeCode   | This field signifies the sub payment mode type name of the eft. |
      | CAS_Appl_118 | <ProductType> | paymentDate              | This field signifies the payment date of the EFT. The valid dat |
      | CAS_Appl_118 | <ProductType> | payto                    | This block signifies the concerned entity to pay to.The length  |
      | CAS_Appl_118 | <ProductType> | ifscCode                 | This field signifies the IFSC code. The length of the field is  |
      | CAS_Appl_118 | <ProductType> | bankName                 | This field signifies the name of the bank. The valid value is f |
      | CAS_Appl_118 | <ProductType> | bankBranch               | This field signifies the bank branch of the beneficiary. The le |
      | CAS_Appl_118 | <ProductType> | bankingLocation          | This field signifies the banking location of the beneficiary. T |
      | CAS_Appl_118 | <ProductType> | accountTypeCode          | This field signifies the accountType. The valid value will be f |
      | CAS_Appl_118 | <ProductType> | payableAmount            | This block signifies the payment amount to be paid.             |
      | CAS_Appl_118 | <ProductType> | beneficiaryaccountNumber | This field signifies the account number of the beneficiary. The |
      | CAS_Appl_118 | <ProductType> | id                       | This field signifies the EFT Payment Details ID. The length of  |
      | CAS_Appl_118 | <ProductType> | subPaymentModeTypeName   | This field signifies the sub payment mode type. The valid value |
      | CAS_Appl_118 | <ProductType> | accountTypeName          | This field signifies the account  type. The valid value will be |
      | CAS_Appl_118 | <ProductType> | dealingBankId            | This field signifies the Dealing Bank ID. The valid value will  |
      | CAS_Appl_118 | <ProductType> | commodityDetails         | This block signifies the commodity details.                     |
      | CAS_Appl_118 | <ProductType> | commodityType            | This field signifies the commodity type mapped to the product.  |
      | CAS_Appl_118 | <ProductType> | subLoanId                | This field signifies the Subloan ID. The length of the field is |
      | CAS_Appl_118 | <ProductType> | chequeDetails            | This block signifies the cheque details.                        |
      | CAS_Appl_118 | <ProductType> | id                       | This field signifies the cheque detail ID. The length of the fi |
      | CAS_Appl_118 | <ProductType> | chequeNumber             | This field signifies the cheque number. The length of the field |
      | CAS_Appl_118 | <ProductType> | instrumentDate           | This field signifies the instrument date. The valid date format |
      | CAS_Appl_118 | <ProductType> | dealingBankId            | This field signifies the Dealing Bank ID. The valid value will  |
      | CAS_Appl_118 | <ProductType> | tieUpBranchCode          | This field signifies the tie up branch of the beneficiary. The  |
      | CAS_Appl_118 | <ProductType> | printingBranchCode       | This field signifies the printing branch of the beneficiary. Th |
      | CAS_Appl_118 | <ProductType> | draftDetails             | This block signifies the draft details.                         |
      | CAS_Appl_118 | <ProductType> | id                       | This field signifies the draft detail ID. The length of the fie |
      | CAS_Appl_118 | <ProductType> | draftNumber              | This field signifies the draft number. The length of the field  |
      | CAS_Appl_118 | <ProductType> | instrumentDate           | This field signifies the instrument date. The valid date format |
      | CAS_Appl_118 | <ProductType> | dealingBankId            | This field signifies the Dealing Bank ID. The valid value will  |
      | CAS_Appl_118 | <ProductType> | tieUpBranchCode          | This field signifies the tie up branch of the beneficiary. The  |
      | CAS_Appl_118 | <ProductType> | printingBranchCode       | This field signifies the printing branch of the beneficiary. Th |
      | CAS_Appl_118 | <ProductType> | demandDraftDetails       | This block signifies the demand draft details.                  |
      | CAS_Appl_118 | <ProductType> | id                       | This field signifies the demand draft detail ID. The length of  |
      | CAS_Appl_118 | <ProductType> | draftNumber              | This field signifies the demand draft number. The length of the |
      | CAS_Appl_118 | <ProductType> | instrumentDate           | This field signifies the instrument date. The valid date format |
      | CAS_Appl_118 | <ProductType> | dealingBankId            | This field signifies the Dealing Bank ID. The valid value will  |
      | CAS_Appl_118 | <ProductType> | tieUpBranchCode          | This field signifies the tie up branch of the beneficiary. The  |
      | CAS_Appl_118 | <ProductType> | printingBranchCode       | This field signifies the printing branch of the beneficiary. Th |

#PQM-39_CAS-185578
Scenario Outline: ACAUTOCAS-17821: <Description> of <Fields> should be present in eft payment details <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Description>" of "<Fields>" should be present in Eft Payment API response details
    Examples:
      | APIName      | ProductType   | Fields                 | Description                                                                             |
      | CAS_Appl_118 | <ProductType> | requestReferenceNumber | This field signifies the request reference number as per request to match the response. |
      | CAS_Appl_118 | <ProductType> | status                 | This field signifies the status of the response.                                        |
      | CAS_Appl_118 | <ProductType> | messageCode            | This field signifies the message code.                                                  |
      | CAS_Appl_118 | <ProductType> | messageDescription     | This field signifies the message description.                                           |
      | CAS_Appl_118 | <ProductType> | additionalField1       | This field signifies the additional field 1.                                            |
      | CAS_Appl_118 | <ProductType> | additionalField2       | This field signifies the additional field 2.                                            |
      | CAS_Appl_118 | <ProductType> | additionalField3       | This field signifies the additional field 3.                                            |
      | CAS_Appl_118 | <ProductType> | additionalField4       | This field signifies the additional field 4.                                            |
      | CAS_Appl_118 | <ProductType> | additionalField5       | This field signifies the additional field 5.                                            |
      | CAS_Appl_118 | <ProductType> | additionalField6       | This field signifies the additional field 6.                                            |
      | CAS_Appl_118 | <ProductType> | additionalField7       | This field signifies the additional field 7.                                            |
      | CAS_Appl_118 | <ProductType> | additionalField8       | This field signifies the additional field 8.                                            |
      | CAS_Appl_118 | <ProductType> | additionalField9       | This field signifies the additional field 9.                                            |
      | CAS_Appl_118 | <ProductType> | additionalField10      | This field signifies the additional field 10.                                           |
      | CAS_Appl_118 | <ProductType> | additionalField11      | This field signifies the additional field 11.                                           |
      | CAS_Appl_118 | <ProductType> | additionalField12      | This field signifies the additional field 12.                                           |
      | CAS_Appl_118 | <ProductType> | additionalField13      | This field signifies the additional field 13.                                           |
      | CAS_Appl_118 | <ProductType> | additionalField14      | This field signifies the additional field 14.                                           |
      | CAS_Appl_118 | <ProductType> | additionalField15      | This field signifies the additional field 15.                                           |
      | CAS_Appl_118 | <ProductType> | serialVersionUID       |                                                                                         |

Scenario: ACAUTOCAS-17822: Check expand all functionality in documentation section for eft payment details CAS_Appl_118 header details
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on documentation section
    And user expands Islamic pack
    Then Expand All functionality should work properly

Scenario: ACAUTOCAS-17823: Check collapse all functionality in documentation section for eft payment details CAS_Appl_118 header details
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on documentation section
    And user collapses Islamic pack
    Then Collapse All functionality should work properly

Scenario Outline: ACAUTOCAS-17824: <ColumnLayout> samples functionality should working properly in eft payment details <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user click on "<ColumnLayout>" toggle button
    Then "<ColumnLayout>" samples funcationality should working properly
    Examples:
      | APIName      | ProductType   | ColumnLayout |
      | CAS_Appl_118 | <ProductType> | show         |
      | CAS_Appl_118 | <ProductType> | hide         |

Scenario Outline: ACAUTOCAS-17818: <Fields> should be present in eft payment details <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Fields>" should be present in API header parameter details
    Examples:
      | APIName      | ProductType   | Fields       |
      | CAS_Appl_118 | <ProductType> | access_token |
      | CAS_Appl_118 | <ProductType> | Content-Type |

Scenario Outline: ACAUTOCAS-17819: <Status> <Fields> should be present in eft payment details <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Status>" "<Fields>" should be present in API header parameter details
    Examples:
      | APIName      | ProductType   | Fields       | Status   |
      | CAS_Appl_118 | <ProductType> | access_token | required |
      | CAS_Appl_118 | <ProductType> | Content-Type | required |

Scenario Outline: ACAUTOCAS-17825: <Description> of <Fields> should be present in eft payment details <APIName> header details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Description>" of "<Fields>" should be present in API header parameter details
    Examples:
      | APIName      | ProductType   | Fields       | Description                                          |
      | CAS_Appl_118 | <ProductType> | access_token | Token based authentication is used to access an API. |
      | CAS_Appl_118 | <ProductType> | Content-Type | It represents the content type of request.           |

Scenario Outline: ACAUTOCAS-17826: <dataType> <Fields> should be present in eft payment details <APIName> header details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<dataType>" "<Fields>" should be present in API header parameter details
    Examples:
      | APIName      | ProductType   | Fields       | dataType |
      | CAS_Appl_118 | <ProductType> | access_token | string   |
      | CAS_Appl_118 | <ProductType> | Content-Type | string   |

Scenario Outline: ACAUTOCAS-17827: <Fields> is <DataType> datatype should be present in eft payment details <APIName> request details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<DataType>" of "<Fields>" with datatype should be present in Eft Payment API request details
    Examples:
      | APIName      | ProductType   | Fields                   | DataType |
      | CAS_Appl_118 | <ProductType> | eftDetails               | object   |
      | CAS_Appl_118 | <ProductType> | subPaymentModeTypeCode   | string   |
      | CAS_Appl_118 | <ProductType> | paymentDate              | string   |
      | CAS_Appl_118 | <ProductType> | payto                    | string   |
      | CAS_Appl_118 | <ProductType> | ifscCode                 | string   |
      | CAS_Appl_118 | <ProductType> | bankName                 | string   |
      | CAS_Appl_118 | <ProductType> | bankBranch               | string   |
      | CAS_Appl_118 | <ProductType> | bankingLocation          | string   |
      | CAS_Appl_118 | <ProductType> | accountTypeCode          | string   |
      | CAS_Appl_118 | <ProductType> | payableAmount            | object   |
      | CAS_Appl_118 | <ProductType> | beneficiaryaccountNumber | string   |
      | CAS_Appl_118 | <ProductType> | id                       | integer  |
      | CAS_Appl_118 | <ProductType> | subPaymentModeTypeName   | string   |
      | CAS_Appl_118 | <ProductType> | accountTypeName          | string   |
      | CAS_Appl_118 | <ProductType> | dealingBankId            | integer  |
      | CAS_Appl_118 | <ProductType> | commodityDetails         | object   |
      | CAS_Appl_118 | <ProductType> | commodityType            | string   |
      | CAS_Appl_118 | <ProductType> | subLoanId                | string   |
      | CAS_Appl_118 | <ProductType> | chequeDetails            | object   |
      | CAS_Appl_118 | <ProductType> | id                       | integer  |
      | CAS_Appl_118 | <ProductType> | chequeNumber             | string   |
      | CAS_Appl_118 | <ProductType> | instrumentDate           | string   |
      | CAS_Appl_118 | <ProductType> | dealingBankId            | integer  |
      | CAS_Appl_118 | <ProductType> | tieUpBranchCode          | string   |
      | CAS_Appl_118 | <ProductType> | printingBranchCode       | string   |
      | CAS_Appl_118 | <ProductType> | draftDetails             | object   |
      | CAS_Appl_118 | <ProductType> | id                       | integer  |
      | CAS_Appl_118 | <ProductType> | draftNumber              | string   |
      | CAS_Appl_118 | <ProductType> | instrumentDate           | string   |
      | CAS_Appl_118 | <ProductType> | dealingBankId            | string   |
      | CAS_Appl_118 | <ProductType> | tieUpBranchCode          | string   |
      | CAS_Appl_118 | <ProductType> | printingBranchCode       | string   |
      | CAS_Appl_118 | <ProductType> | demandDraftDetails       | object   |
      | CAS_Appl_118 | <ProductType> | id                       | integer  |
      | CAS_Appl_118 | <ProductType> | draftNumber              | string   |
      | CAS_Appl_118 | <ProductType> | instrumentDate           | string   |
      | CAS_Appl_118 | <ProductType> | dealingBankId            | string   |
      | CAS_Appl_118 | <ProductType> | tieUpBranchCode          | string   |
      | CAS_Appl_118 | <ProductType> | printingBranchCode       | string   |

Scenario Outline: ACAUTOCAS-17828: <Fields> is <DataType> datatype should be present in eft payment details <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<DataType>" of "<Fields>" with datatype should be present in Eft Payment API response details
    Examples:
      | APIName      | ProductType   | Fields                 | DataType |
      | CAS_Appl_118 | <ProductType> | requestReferenceNumber | string   |
      | CAS_Appl_118 | <ProductType> | status                 | string   |
      | CAS_Appl_118 | <ProductType> | messageCode            | string   |
      | CAS_Appl_118 | <ProductType> | messageDescription     | string   |
      | CAS_Appl_118 | <ProductType> | additionalField1       | string   |
      | CAS_Appl_118 | <ProductType> | additionalField2       | string   |
      | CAS_Appl_118 | <ProductType> | additionalField3       | string   |
      | CAS_Appl_118 | <ProductType> | additionalField4       | string   |
      | CAS_Appl_118 | <ProductType> | additionalField5       | string   |
      | CAS_Appl_118 | <ProductType> | additionalField6       | string   |
      | CAS_Appl_118 | <ProductType> | additionalField7       | string   |
      | CAS_Appl_118 | <ProductType> | additionalField8       | string   |
      | CAS_Appl_118 | <ProductType> | additionalField9       | string   |
      | CAS_Appl_118 | <ProductType> | additionalField10      | string   |
      | CAS_Appl_118 | <ProductType> | additionalField11      | string   |
      | CAS_Appl_118 | <ProductType> | additionalField12      | string   |
      | CAS_Appl_118 | <ProductType> | additionalField13      | string   |
      | CAS_Appl_118 | <ProductType> | additionalField14      | string   |
      | CAS_Appl_118 | <ProductType> | additionalField15      | string   |
      | CAS_Appl_118 | <ProductType> | serialVersionUID       | number   |

#PQM-40_CAS-185578
Scenario Outline: ACAUTOCAS-17829: Hit the <APIName> via try now feature for <ProductType> application for bond cancellation service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName      | ProductType   |
      | CAS_Appl_118 | <ProductType> |

Scenario Outline: ACAUTOCAS-17830: Response should be generated successfully for <ProductType> application for eft payment details
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_eftPayment>" and row <PostApproval_eftPayment_rowNum>
    And user click on try now button on API center
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName      | ProductType   | PostApprovalWB     | PostApproval_eftPayment | PostApproval_eftPayment_rowNum |
      | CAS_Appl_118 | <ProductType> | post_approval.xlsx | eft_payment             | 1                              |

Scenario Outline: ACAUTOCAS-17831: The service should not get executed successfully for <ProductType> application for eft payment details
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_eftPayment>" and row <PostApproval_eftPayment_rowNum>
    And user click on try now button on API center
    And user update the json of "<APIName>"
    When user click on send request button
    Then API should not get executed successfully for "<APIName>"
    Examples:
      | APIName      | ProductType   | PostApprovalWB     | PostApproval_eftPayment | PostApproval_eftPayment_rowNum |
      | CAS_Appl_118 | <ProductType> | post_approval.xlsx | eft_payment             | 2                              |

Scenario Outline: ACAUTOCAS-17832: Mock response should come as maintained for <ProductType> application for bond cancellation service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user enters access token
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_eftPayment>" and row <PostApproval_eftPayment_rowNum>
    And user update the json of "<APIName>"
    When user click on send request button
    Then Mock response should come as maintained Bond Cancellation
    Examples:
      | APIName      | ProductType   | PostApprovalWB     | PostApproval_eftPayment | PostApproval_eftPayment_rowNum |
      | CAS_Appl_118 | <ProductType> | post_approval.xlsx | eft_payment             | 3                              |


Scenario Outline: ACAUTOCAS-17833: Response message should be SUCCESS for <ProductType> application for eft payment details
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user enters access token
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_eftPayment>" and row <PostApproval_eftPayment_rowNum>
    And user update the json of "<APIName>"
    When user click on send request button
    Then Api hit successfully with proper SUCCESS message for "<APIName>"
    Examples:
      | APIName      | ProductType   | PostApprovalWB     | PostApproval_eftPayment | PostApproval_eftPayment_rowNum |
      | CAS_Appl_118 | <ProductType> | post_approval.xlsx | eft_payment             | 3                              |

Scenario Outline: ACAUTOCAS-17834: Hit service with null value in every field for <ProductType> application for eft payment details
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user enters access token
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_eftPayment>" and row <PostApproval_eftPayment_rowNum>
    And user update the json of "<APIName>"
    When user click on send request button
    Then Request should successfully get hit with null values with custom error in response
    Examples:
      | APIName      | ProductType   | PostApprovalWB     | PostApproval_eftPayment | PostApproval_eftPayment_rowNum |
      | CAS_Appl_118 | <ProductType> | post_approval.xlsx | eft_payment             | 0                              |

Scenario Outline: ACAUTOCAS-17835: Response should be customErrorResponse for <ProductType> application for eft payment details
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_eftPayment>" and row <PostApproval_eftPayment_rowNum>
    And user click on try now button on API center
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with custom error response details for "<APIName>"
    Examples:
      | APIName      | ProductType   | PostApprovalWB     | PostApproval_eftPayment | PostApproval_eftPayment_rowNum |
      | CAS_Appl_118 | <ProductType> | post_approval.xlsx | eft_payment             | 4                              |

Scenario Outline: ACAUTOCAS-17836: Validation should come for fields AccessToken <AccessToken> ContentType <ContentType> for <ProductType> application for eft payment details with <Result>
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_eftPayment>" and row <PostApproval_eftPayment_rowNum>
    And user update the json of "<APIName>"
    And user enters "<AccessToken>" with "<ContentType>"
    When user click on send request button
    Then Api hit successfully with "<Result>" response details for "<APIName>"
    Examples:
      | Result  | APIName          | AccessToken | ContentType | PostApprovalWB     | PostApproval_eftPayment | PostApproval_eftPayment_rowNum |
      | Failure | CAS_IFIN_Bond_03 | fill        | notFill     | post_approval.xlsx | eft_payment             | 5                              |
      | Failure | CAS_IFIN_Bond_03 | notFill     | fill        | post_approval.xlsx | eft_payment             | 6                              |
      | Failure | CAS_IFIN_Bond_03 | notFill     | notFill     | post_approval.xlsx | eft_payment             | 7                              |

Scenario Outline: ACAUTOCAS-17837: <Fields> should be present in eft payment details <APIName> on TRY NOW page for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on try now button on API center
    Then "<Fields>" should be present in try now page
    Examples:
      | APIName      | ProductType   | Fields       |
      | CAS_Appl_118 | <ProductType> | access_token |
      | CAS_Appl_118 | <ProductType> | Content-Type |

Scenario Outline: ACAUTOCAS-17838: <Mandatory> <Fields> should be present in eft payment details <APIName> on TRY NOW page for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on try now button on API center
    Then user should be able to see "<Fields>" marked as mandatory
    Examples:
      | APIName      | ProductType   | Fields       | Mandatory |
      | CAS_Appl_118 | <ProductType> | access_token | required  |
      | CAS_Appl_118 | <ProductType> | Content-Type | required  |

Scenario Outline: ACAUTOCAS-17839: Request should successfully get hit with data in data push object  for <ProductType> application for eft payment details
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_eftPayment>" and row <PostApproval_eftPayment_rowNum>
    And user click on try now button on API center
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Request should successfully get hit with data in data push object
    Examples:
      | APIName      | ProductType   | PostApprovalWB     | PostApproval_eftPayment | PostApproval_eftPayment_rowNum |
      | CAS_Appl_118 | <ProductType> | post_approval.xlsx | eft_payment             | 3                              |

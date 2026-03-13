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

Feature: Islamic Bond Cancellation Service API

  Background:
    Given user is on CAS Login Page

#PQM-1_CAS-186980
Scenario Outline: ACAUTOCAS-17880: API Documentation Tab in bond cancellation service for <ProductType> application
    When user clicks on Documentation tab
    Then Service is present as per contract in API
    Examples:
      | ProductType   |
      | <ProductType> |

#PQM-2_CAS-186980
Scenario Outline: ACAUTOCAS-17881: Verify bond cancellation service <Service> in <APIName> documentation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user click on download "<Service>" for "<APIName>"
    Then "<Service>" is present as per contract in "<APIName>"
    Examples:
      | Service                 | ProductType   | APIName          |
      | API Documentation PDF   | <ProductType> | CAS_IFIN_Bond_03 |
      | API Documentation Excel | <ProductType> | CAS_IFIN_Bond_03 |

#PQM-3_CAS-186980
Scenario Outline: ACAUTOCAS-17882: Validating <APIHeader> in bond cancellation service in API center for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user click on CAS API vault
    When user search "<APIHeader>" in search bar
    Then "<APIHeader>" should be present in API center
    Examples:
      | APIHeader               | ProductType   |
      | CAS_IFIN_Bond_03        | <ProductType> |
      | bondCancellationService | <ProductType> |

#PQM-4_CAS-186980
Scenario Outline: ACAUTOCAS-17883: Validating <APIDescription> in bond cancellation service in API center for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user click on CAS API vault
    When user search "<APIDescription>" in search bar
    Then "<APIDescription>" should be present in API center
    Examples:
      | APIDescription                                                     | ProductType   |
      | bondCancellationService                                            | <ProductType> |
      | CAS_IFIN_Bond_03                                                   | <ProductType> |
      | This service will be used to Register Applicant's Mandate Details. | <ProductType> |

#PQM-5_CAS-186980
Scenario Outline: ACAUTOCAS-17884: Verify API service bond cancellation service URL for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_bondCancellation>" and row <PostApproval_bondCancellation_rowNum>
    When user searches "<APIName>" in documentation and opens
    Then User verify API service Bond Cancellation service URL
    Examples:
      | ProductType   | APIName          | PostApprovalWB     | PostApproval_bondCancellation | PostApproval_bondCancellation_rowNum |
      | <ProductType> | CAS_IFIN_Bond_03 | post_approval.xlsx | bond_cancellation             | 0                                    |

Scenario Outline: ACAUTOCAS-17885: Verify API service Bond Cancellation service URL in TRY Now feature for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_bondCancellation>" and row <PostApproval_bondCancellation_rowNum>
    Then User verify API service Bond Cancellation service URL on try now page
    Examples:
      | ProductType   | APIName          | PostApprovalWB     | PostApproval_bondCancellation | PostApproval_bondCancellation_rowNum |
      | <ProductType> | CAS_IFIN_Bond_03 | post_approval.xlsx | bond_cancellation             | 0                                    |

#PQM-6_CAS-186980
Scenario Outline: ACAUTOCAS-17886: <Fields> should be present in bond cancellation service <APIName> request details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Fields>" should be present in Bond Cancellation API request details
    Examples:
      | APIName          | ProductType   | Fields                    |
      | CAS_IFIN_Bond_03 | <ProductType> | refNumber                 |
      | CAS_IFIN_Bond_03 | <ProductType> | transTimeStamp            |
      | CAS_IFIN_Bond_03 | <ProductType> | purchaseDealRefNumber     |
      | CAS_IFIN_Bond_03 | <ProductType> | transferDealRefNumber     |
      | CAS_IFIN_Bond_03 | <ProductType> | dealReferenceNoIdentifier |
      | CAS_IFIN_Bond_03 | <ProductType> | applicationId             |
      | CAS_IFIN_Bond_03 | <ProductType> | cifNumber                 |
      | CAS_IFIN_Bond_03 | <ProductType> | dataPushObject            |

#PQM-6_CAS-186980
Scenario Outline: ACAUTOCAS-17887: Validate <Status> <Fields> should be present in bond cancellation service <APIName> request details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Status>" "<Fields>" should be present in Bond Cancellation API request details
    Examples:
      | APIName          | ProductType   | Fields                    | Status   |
      | CAS_IFIN_Bond_03 | <ProductType> | refNumber                 | required |
      | CAS_IFIN_Bond_03 | <ProductType> | transTimeStamp            | required |
      | CAS_IFIN_Bond_03 | <ProductType> | dealReferenceNoIdentifier | required |

#PQM-6_CAS-186980
Scenario Outline: ACAUTOCAS-17888: <Fields> should be present in bond cancellation service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Fields>" should be present in Bond Cancellation API response details
    Examples:
      | APIName          | ProductType   | Fields            |
      | CAS_IFIN_Bond_03 | <ProductType> | refNumber         |
      | CAS_IFIN_Bond_03 | <ProductType> | returnCode        |
      | CAS_IFIN_Bond_03 | <ProductType> | returnDescription |
      | CAS_IFIN_Bond_03 | <ProductType> | transTimeStamp    |
      | CAS_IFIN_Bond_03 | <ProductType> | responseTimeStamp |
      | CAS_IFIN_Bond_03 | <ProductType> | dynamicJson       |

#PQM-6_CAS-186980
Scenario Outline: ACAUTOCAS-17889: <Status> <Fields> should be present in bond cancellation service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Status>" "<Fields>" should be present in Bond Cancellation API response details
    Examples:
      | APIName          | ProductType   | Fields            | Status   |
      | CAS_IFIN_Bond_03 | <ProductType> | refNumber         | required |
      | CAS_IFIN_Bond_03 | <ProductType> | returnCode        | required |
      | CAS_IFIN_Bond_03 | <ProductType> | returnDescription | required |
      | CAS_IFIN_Bond_03 | <ProductType> | transTimeStamp    | required |

#PQM-7_CAS-186980
Scenario Outline: ACAUTOCAS-17890: <Description> of <Fields> should be present in bond cancellation service <APIName> request details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Description>" of "<Fields>" should be present in Bond Cancellation API request details
    Examples:
      | APIName          | ProductType   | Fields                    | Description                                                                                                              |
      | CAS_IFIN_Bond_03 | <ProductType> | refNumber                 | This field signifies the unique reference number of the request. This number would be generated by FinnOne Neo CAS       |
      | CAS_IFIN_Bond_03 | <ProductType> | transTimeStamp            | This field signifies the transaction date time of cancellation request. This field is mandatory.                         |
      | CAS_IFIN_Bond_03 | <ProductType> | purchaseDealRefNumber     | This field signifies the unique deal reference number that has been sent in the response of Bond Purchase service.       |
      | CAS_IFIN_Bond_03 | <ProductType> | transferDealRefNumber     | This field signifies the unique deal reference number that has been sent in the response of Bond Transfer service.       |
      | CAS_IFIN_Bond_03 | <ProductType> | dealReferenceNoIdentifier | This field signifies the deal reference number Identifier which will identify which deal reference number will be sent i |
      | CAS_IFIN_Bond_03 | <ProductType> | applicationId             | This field signifies the application ID. The length of this field is 255.                                                |
      | CAS_IFIN_Bond_03 | <ProductType> | cifNumber                 | This field signifies the CIF Number of customer. The length of this field is 255.                                        |
      | CAS_IFIN_Bond_03 | <ProductType> | dataPushObject            | This block signifies the list of additional field required specific for the particular region.                           |
      | CAS_IFIN_Bond_01 | <ProductType> | referenceNumber           | This field signifies the unique reference number of the request. This number would be generated by FinnOne Neo CAS and s |
      | CAS_IFIN_Bond_01 | <ProductType> | bankProductName           | This field signifies the name of the product in which the finance application has been sourced. The valid value is from  |
      | CAS_IFIN_Bond_01 | <ProductType> | amount                    | This field signifies the amount for which the bonds have to be purchased. This is the sanctioned amount of the finance a |
      | CAS_IFIN_Bond_01 | <ProductType> | transactionTimeStamp      | This field signifies the date time of the request. The valid date format is YYYY-MM-DDThh:mm:ssTZD.                      |
      | CAS_IFIN_Bond_01 | <ProductType> | applicationId             | This field signifies the application ID. The length of this field is 255.                                                |
      | CAS_IFIN_Bond_01 | <ProductType> | cifNumber                 | This field signifies the CIF Number of customer. The length of this field is 255.                                        |
      | CAS_IFIN_Bond_01 | <ProductType> | dataPushObject            | This field signifies the data push object for sharing additional data in the request.                                    |
      | CAS_IFIN_Bond_01 | <ProductType> | bank                      | This field signifies the Bank from which the Purchase request has been initiated. The Host Bank Id maintained in Tenant  |
      | CAS_IFIN_Bond_02 | <ProductType> | refNumber                 | This field signifies the unique reference number of the request. The length of the field is 255.                         |
      | CAS_IFIN_Bond_02 | <ProductType> | transactionDateTime       | This field signifies the date time of the request. The valid date format is YYYY-MM-DDThh:mm:ssTZD.                      |
      | CAS_IFIN_Bond_02 | <ProductType> | dealReferenceNumber       | This field signifies the unique deal reference number provided by the third party service provider in the Bond Purchase  |
      | CAS_IFIN_Bond_02 | <ProductType> | amount                    | This field signifies the amount for which the bonds have to be transferred. This is the sanctioned amount of the finance |
      | CAS_IFIN_Bond_02 | <ProductType> | customerType              | This field signifies the customer type as individual or non-individual. The field accepts values individual and non_indi |
      | CAS_IFIN_Bond_02 | <ProductType> | customerFirstName         | This field signifies the first name of the Primary Applicant. This field is mandatory when the customer type is Individu |
      | CAS_IFIN_Bond_02 | <ProductType> | customerMiddleName        | This field signifies the middle name of the Primary Applicant.This field is mandatory when the customer type is Individu |
      | CAS_IFIN_Bond_02 | <ProductType> | customerLastName          | This field signifies the last name of the Primary Applicant. This field is mandatory when the customer type is Individua |
      | CAS_IFIN_Bond_02 | <ProductType> | customerFullName          | This field signifies the full name of the primary applicant. This field is mandatory when the customer type is Individua |
      | CAS_IFIN_Bond_02 | <ProductType> | institutionName           | This field signifies the institution name when the primary applicant is a non individual or corporate. This field is man |
      | CAS_IFIN_Bond_02 | <ProductType> | customerMobile            | This field signifies the primary mobile number of the applicant. The length of the field is 255.                         |
      | CAS_IFIN_Bond_02 | <ProductType> | customerEmail             | This field signifies the primary email ID of the applicant. The length of the field is 300.                              |
      | CAS_IFIN_Bond_02 | <ProductType> | customerAccountTitle      | This field signifies the full name of the customer as available in the bank account for which IBAN is being provided. If |
      | CAS_IFIN_Bond_02 | <ProductType> | customerIBAN              | This field signifies the IBAN number of the account in which the amount has to be allocated. It is mandatory to provide  |
      | CAS_IFIN_Bond_02 | <ProductType> | customerAccountNumber     | This field signifies the Customer Account Number of the account in which the amount has to be allocated. It is mandatory |
      | CAS_IFIN_Bond_02 | <ProductType> | bank                      | This field signifies the name of the bank where the customer holds the account which is being shared in Customer Account |
      | CAS_IFIN_Bond_02 | <ProductType> | bankBranch                | This field signifies the bank branch where the customer holds the account which is being shared in Customer Account Numb |
      | CAS_IFIN_Bond_02 | <ProductType> | bankProductName           | This field signifies the name of the product in which the finance application has been sourced. The valid value is from  |
      | CAS_IFIN_Bond_02 | <ProductType> | dataPushObject            | This field signifies the data push object for sharing additional data in the request.                                    |
      | CAS_IFIN_Bond_02 | <ProductType> | appId                     | This field signifies the application ID. The length of this field is 255.                                                |
      | CAS_IFIN_Bond_02 | <ProductType> | cifNumber                 | This field signifies the CIF Number of customer. The length of this field is 255.                                        |
      | CAS_IFIN_Bond_02 | <ProductType> | hostBankId                | This field signifies the Bank from which the Transfer request has been initiated. The Host Bank Id maintained in Tenant  |

#PQM-7_CAS-186980
Scenario Outline: ACAUTOCAS-17891: <Description> of <Fields> should be present in bond cancellation service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Description>" of "<Fields>" should be present in Bond Cancellation API response details
    Examples:
      | APIName          | ProductType   | Fields                 | Description                                                                                                                        |
      | CAS_IFIN_Bond_03 | <ProductType> | refNumber              | This field signifies the unique reference number that will be received in the response for cancellation.                           |
      | CAS_IFIN_Bond_03 | <ProductType> | returnCode             | This field signifies the return code.                                                                                              |
      | CAS_IFIN_Bond_03 | <ProductType> | returnDescription      | This field signifies the description of the return code.                                                                           |
      | CAS_IFIN_Bond_03 | <ProductType> | transTimeStamp         | This field signifies the date time of the request.                                                                                 |
      | CAS_IFIN_Bond_03 | <ProductType> | responseTimeStamp      | This field signifies the date time of the response                                                                                 |
      | CAS_IFIN_Bond_03 | <ProductType> | dynamicJson            | This field signifies the additional fields that can be fetched through the service in json format.                                 |
      | CAS_IFIN_Bond_01 | <ProductType> | referenceNumber        | This field signifies the unique reference number of the request. This is the same number that is shared in                         |
      | CAS_IFIN_Bond_01 | <ProductType> | returnCode             | This field signifies the return code. The valid values are from Dtype ReturnCodeBondPurchase. Return code f                        |
      | CAS_IFIN_Bond_01 | <ProductType> | returnDescription      | This field signifies the description of the return code. The valid values are from Dtype ReturnCodeBondPurc                        |
      | CAS_IFIN_Bond_01 | <ProductType> | transactionTimeStamp   | This field signifies the date time of the request. The valid date format is YYYY-MM-DDThh:mm:ssTZD.                                |
      | CAS_IFIN_Bond_01 | <ProductType> | responseTimeStamp      | This field signifies the date time of the response. The valid date format is YYYY-MM-DDThh:mm:ssTZD.                               |
      | CAS_IFIN_Bond_01 | <ProductType> | dealDetails            |                                                                                                                                    |
      | CAS_IFIN_Bond_01 | <ProductType> | dealReferenceNumber    | This field signifies the unique deal reference number provided by the third party service provider. The len                        |
      | CAS_IFIN_Bond_01 | <ProductType> | unitNumberStart        | This field signifies the starting unit number. The length of the field is 25.                                                      |
      | CAS_IFIN_Bond_01 | <ProductType> | unitNumberEnd          | This field signifies the ending unit number. The length of the field is 25.                                                        |
      | CAS_IFIN_Bond_01 | <ProductType> | bondNumber             | This field signifies the bond number. The length of the field is 20.                                                               |
      | CAS_IFIN_Bond_01 | <ProductType> | bondExpiryDate         | This field signifies the bond expiry date.The valid date format is YYYY-MM-DDThh:mm:ssTZD.                                         |
      | CAS_IFIN_Bond_01 | <ProductType> | purchasedInvoiceNumber | This field signifies the invoice number of the purchase. The length of the field is 255.                                           |
      | CAS_IFIN_Bond_01 | <ProductType> | purchasedReceiptNumber | This field signifies the receipt number of the purchase. The length of the field is 255.                                           |
      | CAS_IFIN_Bond_01 | <ProductType> | invoiceObject          | This field signifies the actual document in base 64 format. The format should be valid as per the FinnOne N                        |
      | CAS_IFIN_Bond_01 | <ProductType> | value                  | This field is value.                                                                                                               |
      | CAS_IFIN_Bond_01 | <ProductType> | contentType            | This field is Content Type.                                                                                                        |
      | CAS_IFIN_Bond_01 | <ProductType> | receiptObject          | This field signifies the actual document in base 64 format. The format should be valid as per the FinnOne N                        |
      | CAS_IFIN_Bond_01 | <ProductType> | value                  | This field is value.                                                                                                               |
      | CAS_IFIN_Bond_01 | <ProductType> | contentType            | This field is Content Type.                                                                                                        |
      | CAS_IFIN_Bond_01 | <ProductType> | bankTitleObject        | This field signifies the actual document in base 64 format. The format should be valid as per the FinnOne N                        |
      | CAS_IFIN_Bond_01 | <ProductType> | value                  | This field is value.                                                                                                               |
      | CAS_IFIN_Bond_01 | <ProductType> | contentType            | This field is Content Type.                                                                                                        |
      | CAS_IFIN_Bond_01 | <ProductType> | dynamicJson            | This field signifies the additional fields that can be fetched through the service in json format.                                 |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalFields       | This block signifies the list of additional field required specific for the particular region. This block i                        |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField1       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField2       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField3       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField4       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField5       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField6       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField7       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField8       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField9       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField10      | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField11      | This field signifies the additional field for maintaining additional data. The length of the field is 18 wi                        |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField12      | This field signifies the additional field for maintaining additional data. The length of the field is 18 wi                        |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField13      | This field signifies the additional field for maintaining additional data. The length of the field is 18 wi                        |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField14      | This field signifies the additional field for maintaining additional data. The length of the field is 18 wi                        |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField15      | This field signifies the additional field for maintaining additional data. The length of the field is 18 wi                        |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField16      | This field signifies the additional field for maintaining additional data. The length of the field is 18 wi                        |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField17      | This field signifies the additional field for maintaining additional data. The length of the field is 18 wi                        |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField18      | This field signifies the additional field for maintaining additional data. The length of the field is 18 wi                        |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField19      | This field signifies the additional field for maintaining additional data. The length of the field is 18 wi                        |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField20      | This field signifies the additional field for maintaining additional data. The length of the field is 18 wi                        |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField21      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField22      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField23      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField24      | This field signifies the additional field for maintaining additional data. The length of the field is 10..                         |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField25      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField26      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField27      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField28      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField29      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField30      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField1             | This field signifies the additional date field for maintaining additional data. The valid date format is YY                        |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField2             | This field signifies the additional date field for maintaining additional data. The valid date format is YY                        |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField3             | This field signifies the additional date field for maintaining additional data. The valid date format is YY                        |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField4             | This field signifies the additional date field for maintaining additional data. The valid date format is YY                        |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField5             | This field signifies the additional date field for maintaining additional data. The valid date format is YY                        |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField6             | This field signifies the additional date field for maintaining additional data. The valid date format is YY                        |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField7             | This field signifies the additional date field for maintaining additional data. The valid date format is YY                        |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField8             | This field signifies the additional date field for maintaining additional data. The valid date format is YY                        |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField9             | This field signifies the additional date field for maintaining additional data. The valid date format is YY                        |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField10            | This field signifies the additional date field for maintaining additional data. The valid date format is YY                        |
      | CAS_IFIN_Bond_01 | <ProductType> | dynamicJson            | This field signifies the additional fields that can be fetched through the service in json format.                                 |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalFields       | This block signifies the list of additional field required specific for the particular region. This block i                        |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField1       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField2       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField3       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField4       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField5       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField6       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField7       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField8       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField9       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField10      | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField11      | This field signifies the additional field for maintaining additional data. The length of the field is 18 wi                        |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField12      | This field signifies the additional field for maintaining additional data. The length of the field is 18 wi                        |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField13      | This field signifies the additional field for maintaining additional data. The length of the field is 18 wi                        |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField14      | This field signifies the additional field for maintaining additional data. The length of the field is 18 wi                        |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField15      | This field signifies the additional field for maintaining additional data. The length of the field is 18 wi                        |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField16      | This field signifies the additional field for maintaining additional data. The length of the field is 18 wi                        |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField17      | This field signifies the additional field for maintaining additional data. The length of the field is 18 wi                        |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField18      | This field signifies the additional field for maintaining additional data. The length of the field is 18 wi                        |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField19      | This field signifies the additional field for maintaining additional data. The length of the field is 18 wi                        |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField20      | This field signifies the additional field for maintaining additional data. The length of the field is 18 wi                        |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField21      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField22      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField23      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField24      | This field signifies the additional field for maintaining additional data. The length of the field is 10..                         |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField25      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField26      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField27      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField28      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField29      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField30      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField1             | This field signifies the additional date field for maintaining additional data. The valid date format is YY                        |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField2             | This field signifies the additional date field for maintaining additional data. The valid date format is YY                        |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField3             | This field signifies the additional date field for maintaining additional data. The valid date format is YY                        |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField4             | This field signifies the additional date field for maintaining additional data. The valid date format is YY                        |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField5             | This field signifies the additional date field for maintaining additional data. The valid date format is YY                        |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField6             | This field signifies the additional date field for maintaining additional data. The valid date format is YY                        |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField7             | This field signifies the additional date field for maintaining additional data. The valid date format is YY                        |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField8             | This field signifies the additional date field for maintaining additional data. The valid date format is YY                        |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField9             | This field signifies the additional date field for maintaining additional data. The valid date format is YY                        |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField10            | This field signifies the additional date field for maintaining additional data. The valid date format is YY                        |
      | CAS_IFIN_Bond_02 | <ProductType> | refNumber              | This field signifies the reference number as provided in the request. The length of the field is 255.                              |
      | CAS_IFIN_Bond_02 | <ProductType> | returnCode             | This field signifies the return code. The valid value is from Dtype ReturnCodeBondTransfer.  Return code for                       |
      | CAS_IFIN_Bond_02 | <ProductType> | returnDesc             | This field signifies the description of the return code. The valid values are from Dtype ReturnCodeBondTransf                      |
      | CAS_IFIN_Bond_02 | <ProductType> | transTimeStamp         | This field signifies the date time of the request. The valid date format is YYYY-MM-DDThh:mm:ssTZD.                                |
      | CAS_IFIN_Bond_02 | <ProductType> | responseTimeStamp      | This field signifies the date time of the response. The valid date format is YYYY-MM-DDThh:mm:ssTZD.                               |
      | CAS_IFIN_Bond_02 | <ProductType> | dealDetails            | This block signifies the response received in case of success.                                                                     |
      | CAS_IFIN_Bond_02 | <ProductType> | dealReferenceNumber    | This field signifies the unique deal reference number provided by the third party service provider in the Bon                      |
      | CAS_IFIN_Bond_02 | <ProductType> | unitNumberStart        | This field signifies the starting unit number. The length of the field is 25.                                                      |
      | CAS_IFIN_Bond_02 | <ProductType> | unitNumberEnd          | This field signifies the ending unit number. The length of the field is 25.                                                        |
      | CAS_IFIN_Bond_02 | <ProductType> | bondNumber             | This field signifies the bond number. The length of the field is 20.                                                               |
      | CAS_IFIN_Bond_02 | <ProductType> | purchasedInvoiceNumber | This field signifies the invoice number of the purchase. The length of the field is 255.                                           |
      | CAS_IFIN_Bond_02 | <ProductType> | bondExpiryDate         | This field signifies the bond expiry date.The valid date format is YYYY-MM-DDThh:mm:ssTZD.                                         |
      | CAS_IFIN_Bond_02 | <ProductType> | titleCertificateObject | This field signifies the actual document in base 64 format. The format should be valid as per the FinnOne Neo setup.               |
      | CAS_IFIN_Bond_02 | <ProductType> | value                  | This field is value.                                                                                                               |
      | CAS_IFIN_Bond_02 | <ProductType> | contentType            | This field is Content Type.                                                                                                        |
      | CAS_IFIN_Bond_02 | <ProductType> | invoiceObject          | This field signifies the actual document in base 64 format. The format should be valid as per the FinnOne Neo setup.               |
      | CAS_IFIN_Bond_02 | <ProductType> | value                  | This field is value.                                                                                                               |
      | CAS_IFIN_Bond_02 | <ProductType> | contentType            | This field is Content Type.                                                                                                        |
      | CAS_IFIN_Bond_02 | <ProductType> | dynamicJson            | This field signifies the additional fields that can be fetched through the service in json format.                                 |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalFields       | This block signifies the list of additional field required specific for the particular region. This block is non mandatory.        |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField1       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField2       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField3       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField4       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField5       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField6       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField7       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField8       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField9       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField10      | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField11      | This field signifies the additional field for maintaining additional data. The length of the field is 18 with decimal precision 7. |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField12      | This field signifies the additional field for maintaining additional data. The length of the field is 18 with decimal precision 7. |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField13      | This field signifies the additional field for maintaining additional data. The length of the field is 18 with decimal precision 7. |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField14      | This field signifies the additional field for maintaining additional data. The length of the field is 18 with decimal precision 7. |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField15      | This field signifies the additional field for maintaining additional data. The length of the field is 18 with decimal precision 7. |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField16      | This field signifies the additional field for maintaining additional data. The length of the field is 18 with decimal precision 7. |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField17      | This field signifies the additional field for maintaining additional data. The length of the field is 18 with decimal precision 7. |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField18      | This field signifies the additional field for maintaining additional data. The length of the field is 18 with decimal precision 7. |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField19      | This field signifies the additional field for maintaining additional data. The length of the field is 18 with decimal precision 7. |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField20      | This field signifies the additional field for maintaining additional data. The length of the field is 18 with decimal precision 7. |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField21      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField22      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField23      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField24      | This field signifies the additional field for maintaining additional data. The length of the field is 10..                         |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField25      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField26      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField27      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField28      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField29      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField30      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField1             | This field signifies the additional date field for maintaining additional data. The valid date format is YYYY-MM-DDThh:mm:ssTZD.   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField2             | This field signifies the additional date field for maintaining additional data. The valid date format is YYYY-MM-DDThh:mm:ssTZD.   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField3             | This field signifies the additional date field for maintaining additional data. The valid date format is YYYY-MM-DDThh:mm:ssTZD.   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField4             | This field signifies the additional date field for maintaining additional data. The valid date format is YYYY-MM-DDThh:mm:ssTZD.   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField5             | This field signifies the additional date field for maintaining additional data. The valid date format is YYYY-MM-DDThh:mm:ssTZD.   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField6             | This field signifies the additional date field for maintaining additional data. The valid date format is YYYY-MM-DDThh:mm:ssTZD.   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField7             | This field signifies the additional date field for maintaining additional data. The valid date format is YYYY-MM-DDThh:mm:ssTZD.   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField8             | This field signifies the additional date field for maintaining additional data. The valid date format is YYYY-MM-DDThh:mm:ssTZD.   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField9             | This field signifies the additional date field for maintaining additional data. The valid date format is YYYY-MM-DDThh:mm:ssTZD.   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField10            | This field signifies the additional date field for maintaining additional data. The valid date format is YYYY-MM-DDThh:mm:ssTZD.   |
      | CAS_IFIN_Bond_02 | <ProductType> | dataPushObject         | This field signifies the data push object for sharing additional data in the request.                                              |
      | CAS_IFIN_Bond_02 | <ProductType> | dynamicJson            | This field signifies the additional fields that can be fetched through the service in json format.                                 |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalFields       | This block signifies the list of additional field required specific for the particular region. This block is non mandatory.        |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField1       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField2       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField3       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField4       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField5       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField6       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField7       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField8       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField9       | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField10      | This field signifies the additional field for maintaining additional data. The length of the field is 255.                         |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField11      | This field signifies the additional field for maintaining additional data. The length of the field is 18 with decimal precision 7. |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField12      | This field signifies the additional field for maintaining additional data. The length of the field is 18 with decimal precision 7. |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField13      | This field signifies the additional field for maintaining additional data. The length of the field is 18 with decimal precision 7. |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField14      | This field signifies the additional field for maintaining additional data. The length of the field is 18 with decimal precision 7. |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField15      | This field signifies the additional field for maintaining additional data. The length of the field is 18 with decimal precision 7. |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField16      | This field signifies the additional field for maintaining additional data. The length of the field is 18 with decimal precision 7. |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField17      | This field signifies the additional field for maintaining additional data. The length of the field is 18 with decimal precision 7. |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField18      | This field signifies the additional field for maintaining additional data. The length of the field is 18 with decimal precision 7. |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField19      | This field signifies the additional field for maintaining additional data. The length of the field is 18 with decimal precision 7. |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField20      | This field signifies the additional field for maintaining additional data. The length of the field is 18 with decimal precision 7. |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField21      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField22      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField23      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField24      | This field signifies the additional field for maintaining additional data. The length of the field is 10..                         |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField25      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField26      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField27      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField28      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField29      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField30      | This field signifies the additional field for maintaining additional data. The length of the field is 10.                          |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField1             | This field signifies the additional date field for maintaining additional data. The valid date format is YYYY-MM-DDThh:mm:ssTZD.   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField2             | This field signifies the additional date field for maintaining additional data. The valid date format is YYYY-MM-DDThh:mm:ssTZD.   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField3             | This field signifies the additional date field for maintaining additional data. The valid date format is YYYY-MM-DDThh:mm:ssTZD.   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField4             | This field signifies the additional date field for maintaining additional data. The valid date format is YYYY-MM-DDThh:mm:ssTZD.   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField5             | This field signifies the additional date field for maintaining additional data. The valid date format is YYYY-MM-DDThh:mm:ssTZD.   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField6             | This field signifies the additional date field for maintaining additional data. The valid date format is YYYY-MM-DDThh:mm:ssTZD.   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField7             | This field signifies the additional date field for maintaining additional data. The valid date format is YYYY-MM-DDThh:mm:ssTZD.   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField8             | This field signifies the additional date field for maintaining additional data. The valid date format is YYYY-MM-DDThh:mm:ssTZD.   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField9             | This field signifies the additional date field for maintaining additional data. The valid date format is YYYY-MM-DDThh:mm:ssTZD.   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField10            | This field signifies the additional date field for maintaining additional data. The valid date format is YYYY-MM-DDThh:mm:ssTZD.   |
      | CAS_IFIN_Bond_02 | <ProductType> | dataPushObject         | This field signifies the data push object for sharing additional data in the request.                                              |

Scenario: ACAUTOCAS-17892: Check expand all functionality in documentation section for bond cancellation service CAS_IFIN_Bond_03 header details
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on documentation section
    And user expands Islamic pack
    Then Expand All functionality should work properly

Scenario: ACAUTOCAS-17893: Check collapse all functionality in documentation section for bond cancellation service CAS_IFIN_Bond_03 header details
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on documentation section
    And user collapses Islamic pack
    Then Collapse All functionality should work properly

Scenario Outline: ACAUTOCAS-17894: <ColumnLayout> samples functionality should working properly in bond cancellation service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user click on "<ColumnLayout>" toggle button
    Then "<ColumnLayout>" samples funcationality should working properly
    Examples:
      | APIName          | ProductType   | ColumnLayout |
      | CAS_IFIN_Bond_03 | <ProductType> | show         |
      | CAS_IFIN_Bond_03 | <ProductType> | hide         |
      | CAS_IFIN_Bond_01 | <ProductType> | show         |
      | CAS_IFIN_Bond_01 | <ProductType> | hide         |
      | CAS_IFIN_Bond_02 | <ProductType> | show         |
      | CAS_IFIN_Bond_02 | <ProductType> | hide         |

Scenario Outline: ACAUTOCAS-17888: <Fields> should be present in bond cancellation service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Fields>" should be present in API header parameter details
    Examples:
      | APIName          | ProductType   | Fields       |
      | CAS_IFIN_Bond_03 | <ProductType> | access_token |
      | CAS_IFIN_Bond_03 | <ProductType> | Content-Type |
      | CAS_IFIN_Bond_01 | <ProductType> | access_token |
      | CAS_IFIN_Bond_01 | <ProductType> | Content-Type |
      | CAS_IFIN_Bond_02 | <ProductType> | access_token |
      | CAS_IFIN_Bond_02 | <ProductType> | Content-Type |

Scenario Outline: ACAUTOCAS-17889: <Status> <Fields> should be present in bond cancellation service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Status>" "<Fields>" should be present in API header parameter details
    Examples:
      | APIName          | ProductType   | Fields       | Status   |
      | CAS_IFIN_Bond_03 | <ProductType> | access_token | required |
      | CAS_IFIN_Bond_03 | <ProductType> | Content-Type | required |
      | CAS_IFIN_Bond_01 | <ProductType> | access_token | required |
      | CAS_IFIN_Bond_01 | <ProductType> | Content-Type | required |
      | CAS_IFIN_Bond_02 | <ProductType> | access_token | required |
      | CAS_IFIN_Bond_02 | <ProductType> | Content-Type | required |

Scenario Outline: ACAUTOCAS-17895: <Description> of <Fields> should be present in bond cancellation service <APIName> header details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Description>" of "<Fields>" should be present in API header parameter details
    Examples:
      | APIName          | ProductType   | Fields       | Description                                          |
      | CAS_IFIN_Bond_03 | <ProductType> | access_token | Token based authentication is used to access an API. |
      | CAS_IFIN_Bond_03 | <ProductType> | Content-Type | It represents the content type of request.           |
      | CAS_IFIN_Bond_01 | <ProductType> | access_token | Token based authentication is used to access an API. |
      | CAS_IFIN_Bond_01 | <ProductType> | Content-Type | It represents the content type of request.           |
      | CAS_IFIN_Bond_02 | <ProductType> | access_token | Token based authentication is used to access an API. |
      | CAS_IFIN_Bond_02 | <ProductType> | Content-Type | It represents the content type of request.           |

Scenario Outline: ACAUTOCAS-17896: <dataType> <Fields> should be present in bond cancellation service <APIName> header details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<dataType>" "<Fields>" should be present in API header parameter details
    Examples:
      | APIName          | ProductType   | Fields       | dataType |
      | CAS_IFIN_Bond_03 | <ProductType> | access_token | string   |
      | CAS_IFIN_Bond_03 | <ProductType> | Content-Type | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | access_token | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | Content-Type | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | access_token | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | Content-Type | string   |

Scenario Outline: ACAUTOCAS-17897: <Fields> is <DataType> datatype should be present in bond cancellation service <APIName> request details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<DataType>" of "<Fields>" with datatype should be present in Bond Cancellation API request details
    Examples:
      | APIName          | ProductType   | Fields                    | DataType |
      | CAS_IFIN_Bond_03 | <ProductType> | refNumber                 | string   |
      | CAS_IFIN_Bond_03 | <ProductType> | transTimeStamp            | string   |
      | CAS_IFIN_Bond_03 | <ProductType> | purchaseDealRefNumber     | string   |
      | CAS_IFIN_Bond_03 | <ProductType> | transferDealRefNumber     | string   |
      | CAS_IFIN_Bond_03 | <ProductType> | dealReferenceNoIdentifier | string   |
      | CAS_IFIN_Bond_03 | <ProductType> | applicationId             | string   |
      | CAS_IFIN_Bond_03 | <ProductType> | cifNumber                 | string   |
      | CAS_IFIN_Bond_03 | <ProductType> | dataPushObject            | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | referenceNumber           | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | bankProductName           | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | amount                    | number   |
      | CAS_IFIN_Bond_01 | <ProductType> | transactionTimeStamp      | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | applicationId             | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | cifNumber                 | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | dataPushObject            | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | bank                      | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | refNumber                 | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | transactionDateTime       | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dealReferenceNumber       | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | amount                    | number   |
      | CAS_IFIN_Bond_02 | <ProductType> | customerType              | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | customerFirstName         | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | customerMiddleName        | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | customerLastName          | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | customerFullName          | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | institutionName           | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | customerMobile            | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | customerEmail             | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | customerAccountTitle      | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | customerIBAN              | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | customerAccountNumber     | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | bank                      | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | bankBranch                | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | bankProductName           | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dataPushObject            | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | appId                     | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | cifNumber                 | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | hostBankId                | string   |

Scenario Outline: ACAUTOCAS-17898: <Fields> is <DataType> datatype should be present in bond cancellation service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<DataType>" of "<Fields>" with datatype should be present in Bond Cancellation API response details
    Examples:
      | APIName          | ProductType   | Fields                 | DataType |
      | CAS_IFIN_Bond_03 | <ProductType> | refNumber              | string   |
      | CAS_IFIN_Bond_03 | <ProductType> | returnCode             | string   |
      | CAS_IFIN_Bond_03 | <ProductType> | returnDescription      | string   |
      | CAS_IFIN_Bond_03 | <ProductType> | transTimeStamp         | string   |
      | CAS_IFIN_Bond_03 | <ProductType> | responseTimeStamp      | string   |
      | CAS_IFIN_Bond_03 | <ProductType> | dynamicJson            | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | referenceNumber        | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | returnCode             | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | returnDescription      | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | transactionTimeStamp   | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | responseTimeStamp      | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | dealDetails            | object   |
      | CAS_IFIN_Bond_01 | <ProductType> | dealReferenceNumber    | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | unitNumberStart        | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | unitNumberEnd          | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | bondNumber             | integer  |
      | CAS_IFIN_Bond_01 | <ProductType> | bondExpiryDate         | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | purchasedInvoiceNumber | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | purchasedReceiptNumber | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | invoiceObject          | object   |
      | CAS_IFIN_Bond_01 | <ProductType> | value                  | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | contentType            | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | receiptObject          | object   |
      | CAS_IFIN_Bond_01 | <ProductType> | value                  | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | contentType            | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | bankTitleObject        | object   |
      | CAS_IFIN_Bond_01 | <ProductType> | value                  | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | contentType            | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | dynamicJson            | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalFields       | object   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField1       | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField2       | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField3       | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField4       | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField5       | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField6       | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField7       | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField8       | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField9       | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField10      | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField11      | number   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField12      | number   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField13      | number   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField14      | number   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField15      | number   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField16      | number   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField17      | number   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField18      | number   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField19      | number   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField20      | number   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField21      | integer  |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField22      | integer  |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField23      | integer  |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField24      | integer  |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField25      | integer  |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField26      | integer  |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField27      | integer  |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField28      | integer  |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField29      | integer  |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField30      | integer  |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField1             | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField2             | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField3             | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField4             | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField5             | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField6             | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField7             | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField8             | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField9             | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField10            | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | dynamicJson            | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalFields       | object   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField1       | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField2       | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField3       | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField4       | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField5       | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField6       | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField7       | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField8       | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField9       | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField10      | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField11      | number   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField12      | number   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField13      | number   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField14      | number   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField15      | number   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField16      | number   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField17      | number   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField18      | number   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField19      | number   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField20      | number   |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField21      | integer  |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField22      | integer  |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField23      | integer  |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField24      | integer  |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField25      | integer  |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField26      | integer  |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField27      | integer  |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField28      | integer  |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField29      | integer  |
      | CAS_IFIN_Bond_01 | <ProductType> | additionalField30      | integer  |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField1             | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField2             | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField3             | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField4             | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField5             | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField6             | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField7             | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField8             | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField9             | string   |
      | CAS_IFIN_Bond_01 | <ProductType> | dateField10            | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | refNumber              | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | returnCode             | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | returnDesc             | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | transTimeStamp         | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | responseTimeStamp      | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dealDetails            | object   |
      | CAS_IFIN_Bond_02 | <ProductType> | dealReferenceNumber    | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | unitNumberStart        | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | unitNumberEnd          | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | bondNumber             | integer  |
      | CAS_IFIN_Bond_02 | <ProductType> | purchasedInvoiceNumber | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | bondExpiryDate         | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | titleCertificateObject | object   |
      | CAS_IFIN_Bond_02 | <ProductType> | value                  | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | contentType            | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | invoiceObject          | object   |
      | CAS_IFIN_Bond_02 | <ProductType> | value                  | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | contentType            | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dynamicJson            | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalFields       | object   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField1       | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField2       | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField3       | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField4       | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField5       | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField6       | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField7       | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField8       | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField9       | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField10      | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField11      | number   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField12      | number   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField13      | number   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField14      | number   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField15      | number   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField16      | number   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField17      | number   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField18      | number   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField19      | number   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField20      | number   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField21      | integer  |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField22      | integer  |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField23      | integer  |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField24      | integer  |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField25      | integer  |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField26      | integer  |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField27      | integer  |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField28      | integer  |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField29      | integer  |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField30      | integer  |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField1             | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField2             | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField3             | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField4             | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField5             | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField6             | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField7             | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField8             | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField9             | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField10            | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dataPushObject         | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dynamicJson            | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalFields       | object   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField1       | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField2       | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField3       | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField4       | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField5       | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField6       | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField7       | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField8       | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField9       | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField10      | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField11      | number   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField12      | number   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField13      | number   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField14      | number   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField15      | number   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField16      | number   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField17      | number   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField18      | number   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField19      | number   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField20      | number   |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField21      | integer  |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField22      | integer  |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField23      | integer  |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField24      | integer  |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField25      | integer  |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField26      | integer  |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField27      | integer  |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField28      | integer  |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField29      | integer  |
      | CAS_IFIN_Bond_02 | <ProductType> | additionalField30      | integer  |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField1             | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField2             | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField3             | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField4             | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField5             | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField6             | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField7             | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField8             | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField9             | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dateField10            | string   |
      | CAS_IFIN_Bond_02 | <ProductType> | dataPushObject         | string   |

#PQM-8_CAS-186980
Scenario Outline: ACAUTOCAS-17899: Hit the <APIName> via try now feature for <ProductType> application for bond cancellation service
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
      | APIName          | ProductType   |
      | CAS_IFIN_Bond_03 | <ProductType> |

#PQM-10_CAS-186980
Scenario Outline: ACAUTOCAS-17900: Response should be generated successfully for <ProductType> application for Bond Cancellation service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_bondCancellation>" and row <PostApproval_bondCancellation_rowNum>
    And user click on try now button on API center
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName          | ProductType   | PostApprovalWB     | PostApproval_bondCancellation | PostApproval_bondCancellation_rowNum |
      | CAS_IFIN_Bond_03 | <ProductType> | post_approval.xlsx | bond_cancellation             | 1                                    |

#PQM-11_CAS-186980
Scenario Outline: ACAUTOCAS-17901: The service should not get executed successfully for <ProductType> application for Bond Cancellation service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_bondCancellation>" and row <PostApproval_bondCancellation_rowNum>
    And user click on try now button on API center
    And user update the json of "<APIName>"
    When user click on send request button
    Then API should not get executed successfully for "<APIName>"
    Examples:
      | APIName          | ProductType   | PostApprovalWB     | PostApproval_bondCancellation | PostApproval_bondCancellation_rowNum |
      | CAS_IFIN_Bond_03 | <ProductType> | post_approval.xlsx | bond_cancellation             | 2                                    |

#PQM-12_CAS-186980
Scenario Outline: ACAUTOCAS-17902: Mock response should come as maintained for <ProductType> application for bond cancellation service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user enters access token
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_bondCancellation>" and row <PostApproval_bondCancellation_rowNum>
    And user update the json of "<APIName>"
    When user click on send request button
    Then Mock response should come as maintained Bond Cancellation
    Examples:
      | APIName          | ProductType   | PostApprovalWB     | PostApproval_bondCancellation | PostApproval_bondCancellation_rowNum |
      | CAS_IFIN_Bond_03 | <ProductType> | post_approval.xlsx | bond_cancellation             | 3                                    |

#PQM-13_CAS-186980
Scenario Outline: ACAUTOCAS-17903: Response message should be SUCCESS for <ProductType> application for Bond Cancellation service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user enters access token
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_bondCancellation>" and row <PostApproval_bondCancellation_rowNum>
    And user update the json of "<APIName>"
    When user click on send request button
    Then Api hit successfully with proper SUCCESS message for "<APIName>"
    Examples:
      | APIName          | ProductType   | PostApprovalWB     | PostApproval_bondCancellation | PostApproval_bondCancellation_rowNum |
      | CAS_IFIN_Bond_03 | <ProductType> | post_approval.xlsx | bond_cancellation             | 3                                    |

#PQM-13_CAS-186980
Scenario Outline: ACAUTOCAS-17904: Hit service with null value in every field for <ProductType> application for Bond Cancellation service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user enters access token
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_bondCancellation>" and row <PostApproval_bondCancellation_rowNum>
    And user update the json of "<APIName>"
    When user click on send request button
    Then Request should successfully get hit with null values with custom error in response
    Examples:
      | APIName          | ProductType   | PostApprovalWB     | PostApproval_bondCancellation | PostApproval_bondCancellation_rowNum |
      | CAS_IFIN_Bond_03 | <ProductType> | post_approval.xlsx | bond_cancellation             | 0                                    |

#PQM-13_CAS-186980
Scenario Outline: ACAUTOCAS-17905: Response should be customErrorResponse for <ProductType> application for Bond Cancellation service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_bondCancellation>" and row <PostApproval_bondCancellation_rowNum>
    And user click on try now button on API center
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with custom error response details for "<APIName>"
    Examples:
      | APIName          | ProductType   | PostApprovalWB     | PostApproval_bondCancellation | PostApproval_bondCancellation_rowNum |
      | CAS_IFIN_Bond_03 | <ProductType> | post_approval.xlsx | bond_cancellation             | 4                                    |

Scenario Outline: ACAUTOCAS-17906: Validation should come for fields AccessToken <AccessToken> ContentType <ContentType> for <ProductType> application for Bond Cancellation service with <Result>
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_bondCancellation>" and row <PostApproval_bondCancellation_rowNum>
    And user update the json of "<APIName>"
    And user enters "<AccessToken>" with "<ContentType>"
    When user click on send request button
    Then Api hit successfully with "<Result>" response details for "<APIName>"
    Examples:
      | Result  | APIName          | AccessToken | ContentType | PostApprovalWB     | PostApproval_bondCancellation | PostApproval_bondCancellation_rowNum |
      | Failure | CAS_IFIN_Bond_03 | fill        | notFill     | post_approval.xlsx | bond_cancellation             | 5                                    |
      | Failure | CAS_IFIN_Bond_03 | notFill     | fill        | post_approval.xlsx | bond_cancellation             | 6                                    |
      | Failure | CAS_IFIN_Bond_03 | notFill     | notFill     | post_approval.xlsx | bond_cancellation             | 7                                    |

Scenario Outline: ACAUTOCAS-17907: <Fields> should be present in Bond Cancellation service <APIName> on TRY NOW page for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on try now button on API center
    Then "<Fields>" should be present in try now page
    Examples:
      | APIName          | ProductType   | Fields       |
      | CAS_IFIN_Bond_03 | <ProductType> | access_token |
      | CAS_IFIN_Bond_03 | <ProductType> | Content-Type |

Scenario Outline: ACAUTOCAS-17908: <Mandatory> <Fields> should be present in Bond Cancellation service <APIName> on TRY NOW page for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on try now button on API center
    Then user should be able to see "<Fields>" marked as mandatory
    Examples:
      | APIName          | ProductType   | Fields       | Mandatory |
      | CAS_IFIN_Bond_03 | <ProductType> | access_token | required  |
      | CAS_IFIN_Bond_03 | <ProductType> | Content-Type | required  |

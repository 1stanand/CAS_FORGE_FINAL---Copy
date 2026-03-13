@Epic-PF_Share_Base
@PQMStory
@AuthoredBy-ankit.yadav
@ImplementedBy-ankit.yadav
@ReviewedBy-None
@ReleaseIslamicM5
@Release
@Islamic
@Shares

#${ProductType:["IPF"]}
#${ApplicationStage:["Reconsideration"]}
#${ApplicantType:["indiv"]}

Feature: Share Registration Service API

#  Pre-Requisites---
#  In this feature we will validate the share registration service api
# PRODUCT_TYPE
#  IPF	    Personal Finance
#  IHF	    Home Finance
#  IAF	    Auto Finance

  Background:
    Given user is on CAS Login Page

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16255: API Documentation Tab in share registration service for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on Documentation tab
    Then Service is present as per contract in API
    Examples:
      | ProductType   |
      | <ProductType> |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16256: Verify share registration <Service> in <APIName> documentation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user click on download "<Service>" for "<APIName>"
    Then "<Service>" is present as per contract in "<APIName>"
    Examples:
      | Service                 | ProductType   | APIName           |
      | API Documentation PDF   | <ProductType> | CAS_IFIN_Share_03 |
      | API Documentation Excel | <ProductType> | CAS_IFIN_Share_03 |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14882: Validating share registration service <API Header> in API center for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user click on CAS API vault
    When user search "<API Header>" in search bar
    Then "<API Header>" should be present in API center
    Examples:
      | API Header               | ProductType   |
      | CAS_IFIN_Share_03        | <ProductType> |
      | shareRegistrationService | <ProductType> |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16257: Validating <API Description> in share registration service in API center for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user click on CAS API vault
    When user search "<API Description>" in search bar
    Then "<API Description>" should be present in API center
    Examples:
      | API Description                                                                          | ProductType   |
      | shareRegistrationService                                                                 | <ProductType> |
      | CAS_IFIN_Share_03                                                                        | <ProductType> |
      | This service will be used to register investors shares details with respective platform. | <ProductType> |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16258: Verify API service Share Registration Service URL for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    When user searches "<APIName>" in documentation and opens
    Then User verify API service share registration service URL
    Examples:
      | ProductType   | APIName           | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum |
      | <ProductType> | CAS_IFIN_Share_03 | sharepurchase.xlsx | share_execution                 | 0                                      |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16259: <Fields> with <SubFields> should be present in share registration service <APIName> request details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Fields>" with "<SubFields>" should be present in share registration API request details
    Examples:
      | APIName           | ProductType   | Fields               | SubFields           |
      | CAS_IFIN_Share_03 | <ProductType> | platform             |                     |
      | CAS_IFIN_Share_03 | <ProductType> | applicationId        |                     |
      | CAS_IFIN_Share_03 | <ProductType> | hostCifNumber        |                     |
      | CAS_IFIN_Share_03 | <ProductType> | cifNumber            |                     |
      | CAS_IFIN_Share_03 | <ProductType> | clientID             |                     |
      | CAS_IFIN_Share_03 | <ProductType> | firstName            |                     |
      | CAS_IFIN_Share_03 | <ProductType> | middleName           |                     |
      | CAS_IFIN_Share_03 | <ProductType> | lastName             |                     |
      | CAS_IFIN_Share_03 | <ProductType> | fullName             |                     |
      | CAS_IFIN_Share_03 | <ProductType> | institutionName      |                     |
      | CAS_IFIN_Share_03 | <ProductType> | orderType            |                     |
      | CAS_IFIN_Share_03 | <ProductType> | shareValidity        |                     |
      | CAS_IFIN_Share_03 | <ProductType> | mobileNumber         |                     |
      | CAS_IFIN_Share_03 | <ProductType> | mobileNumber         | mobileNumber        |
      | CAS_IFIN_Share_03 | <ProductType> | mobileNumber         | countryCode         |
      | CAS_IFIN_Share_03 | <ProductType> | pobox                |                     |
      | CAS_IFIN_Share_03 | <ProductType> | primaryEmailId       |                     |
      | CAS_IFIN_Share_03 | <ProductType> | bankDetails          |                     |
      | CAS_IFIN_Share_03 | <ProductType> | transactionID        |                     |
      | CAS_IFIN_Share_03 | <ProductType> | transactionNumber    |                     |
      | CAS_IFIN_Share_03 | <ProductType> | totalMaxOriginalCost |                     |
      | CAS_IFIN_Share_03 | <ProductType> | fulfillPercentage    |                     |
      | CAS_IFIN_Share_03 | <ProductType> | expiryDate           |                     |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      |                     |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      | companyCode         |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      | companyName         |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      | investorNo          |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      | quantity            |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      | requestedSharePrice |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      | maxOriginalCost     |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      | dynamicFormDetails  |
      | CAS_IFIN_Share_03 | <ProductType> | bankDetails          | bankName            |
      | CAS_IFIN_Share_03 | <ProductType> | bankDetails          | bankCode            |
      | CAS_IFIN_Share_03 | <ProductType> | bankDetails          | bankBranch          |
      | CAS_IFIN_Share_03 | <ProductType> | bankDetails          | accountNumber       |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     |                     |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField1    |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField2    |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField3    |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField4    |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField5    |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField6    |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField7    |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField8    |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField9    |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField10   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField11   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField12   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField13   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField14   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField15   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField16   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField17   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField18   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField19   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField20   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField21   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField22   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField23   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField24   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField25   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField26   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField27   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField28   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField29   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField30   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField1          |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField2          |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField3          |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField4          |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField5          |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField6          |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField7          |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField8          |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField9          |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField10         |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16260: Validate <Status> <Fields> with <SubFields> should be present in share registration service <APIName> request details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Status>" "<Fields>" with "<SubFields>" should be present in share registration API request details
    Examples:
      | APIName           | ProductType   | Fields               | SubFields       | Status   |
      | CAS_IFIN_Share_03 | <ProductType> | platform             |                 | required |
      | CAS_IFIN_Share_03 | <ProductType> | cifNumber            |                 | required |
      | CAS_IFIN_Share_03 | <ProductType> | orderType            |                 | required |
      | CAS_IFIN_Share_03 | <ProductType> | shareValidity        |                 | required |
      | CAS_IFIN_Share_03 | <ProductType> | mobileNumber         |                 | required |
      | CAS_IFIN_Share_03 | <ProductType> | mobileNumber         | mobileNumber    | required |
      | CAS_IFIN_Share_03 | <ProductType> | mobileNumber         | countryCode     | required |
      | CAS_IFIN_Share_03 | <ProductType> | pobox                |                 | required |
      | CAS_IFIN_Share_03 | <ProductType> | primaryEmailId       |                 | required |
      | CAS_IFIN_Share_03 | <ProductType> | bankDetails          |                 | required |
      | CAS_IFIN_Share_03 | <ProductType> | transactionID        |                 | required |
      | CAS_IFIN_Share_03 | <ProductType> | transactionNumber    |                 | required |
      | CAS_IFIN_Share_03 | <ProductType> | totalMaxOriginalCost |                 | required |
      | CAS_IFIN_Share_03 | <ProductType> | fulfillPercentage    |                 | required |
      | CAS_IFIN_Share_03 | <ProductType> | expiryDate           |                 | required |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      |                 | required |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      | companyCode     | required |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      | companyName     | required |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      | maxOriginalCost | required |
      | CAS_IFIN_Share_03 | <ProductType> | bankDetails          | accountNumber   | required |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16261: <Fields> with <SubFields> should be present in share registration service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Fields>" with "<SubFields>" should be present in share registration API response details
    Examples:
      | APIName           | ProductType   | Fields          | SubFields        |
      | CAS_IFIN_Share_03 | <ProductType> | responseCode    |                  |
      | CAS_IFIN_Share_03 | <ProductType> | responseMessage |                  |
      | CAS_IFIN_Share_03 | <ProductType> | errorList       |                  |
      | CAS_IFIN_Share_03 | <ProductType> | errorList       | errorCode        |
      | CAS_IFIN_Share_03 | <ProductType> | errorList       | errorDescription |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16262: <Status> <Fields> with <SubFields> should be present in share registration service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Status>" "<Fields>" with "<SubFields>" should be present in share registration API response details
    Examples:
      | APIName           | ProductType   | Fields          | Status   | SubFields |
      | CAS_IFIN_Share_03 | <ProductType> | responseCode    | required |           |
      | CAS_IFIN_Share_03 | <ProductType> | responseMessage | required |           |
      | CAS_IFIN_Share_03 | <ProductType> | errorList       | required |           |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16263: <Description> of <Fields> with <SubFields> should be present in share registration service <APIName> request details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Description>" of "<Fields>" with "<SubFields>" should be present in share registration API request details
    Examples:
      | APIName           | ProductType   | Fields               | SubFields           | Description                                                                                           |
      | CAS_IFIN_Share_03 | <ProductType> | applicationId        |                     | This field signifies the system generated Application ID tagged with an application in database.      |
      | CAS_IFIN_Share_03 | <ProductType> | platform             |                     | This field signifies the platform on which share registration call will be made.                      |
      | CAS_IFIN_Share_03 | <ProductType> | hostCifNumber        |                     | This field signifies the host CIF number tagged with an application in database.                      |
      | CAS_IFIN_Share_03 | <ProductType> | cifNumber            |                     | This field signifies the FinnOne Neo CIF Number of the applicant.                                     |
      | CAS_IFIN_Share_03 | <ProductType> | clientID             |                     | This field signifies the exchange Client ID of the investor.                                          |
      | CAS_IFIN_Share_03 | <ProductType> | firstName            |                     | This field signifies the first name of the applicant.                                                 |
      | CAS_IFIN_Share_03 | <ProductType> | middleName           |                     | This field signifies the middle name of the applicant.                                                |
      | CAS_IFIN_Share_03 | <ProductType> | lastName             |                     | This field signifies the last name of the applicant.                                                  |
      | CAS_IFIN_Share_03 | <ProductType> | fullName             |                     | This field signifies the full name of the applicant.                                                  |
      | CAS_IFIN_Share_03 | <ProductType> | institutionName      |                     | This field signifies the Institution Name.                                                            |
      | CAS_IFIN_Share_03 | <ProductType> | orderType            |                     | This field signifies the order type for registration of shares.                                       |
      | CAS_IFIN_Share_03 | <ProductType> | shareValidity        |                     | This field signifies the shares validity.                                                             |
      | CAS_IFIN_Share_03 | <ProductType> | mobileNumber         |                     | This block signifies the applicant's primary mobile number.                                           |
      | CAS_IFIN_Share_03 | <ProductType> | mobileNumber         | mobileNumber        | This field signifies the primary mobile number.                                                       |
      | CAS_IFIN_Share_03 | <ProductType> | mobileNumber         | countryCode         | This field signifies the country code of the mobile number.                                           |
      | CAS_IFIN_Share_03 | <ProductType> | pobox                |                     | This field signifies the PO Box added in primary address.                                             |
      | CAS_IFIN_Share_03 | <ProductType> | primaryEmailId       |                     | This field signifies the primary Email ID of the applicant.                                           |
      | CAS_IFIN_Share_03 | <ProductType> | bankDetails          |                     | This block signifies the bank details of applicant.                                                   |
      | CAS_IFIN_Share_03 | <ProductType> | bankDetails          | bankName            | This field signifies the default bank name associated with the applicant in application.              |
      | CAS_IFIN_Share_03 | <ProductType> | bankDetails          | bankCode            | This field signifies the bank code of default bank name associated with the applicant in application. |
      | CAS_IFIN_Share_03 | <ProductType> | bankDetails          | bankBranch          | This field signifies the bank branch of the default bank.                                             |
      | CAS_IFIN_Share_03 | <ProductType> | bankDetails          | accountNumber       | This field signifies the account number associated with the default Bank name of the customer.        |
      | CAS_IFIN_Share_03 | <ProductType> | transactionID        |                     | This field signifies the Transaction ID which is unique system generated running sequence number      |
      | CAS_IFIN_Share_03 | <ProductType> | transactionNumber    |                     | This field signifies the unique Transaction Number.                                                   |
      | CAS_IFIN_Share_03 | <ProductType> | totalMaxOriginalCost |                     | This field signifies the Total Max Original Cost of all records.                                      |
      | CAS_IFIN_Share_03 | <ProductType> | fulfillPercentage    |                     | This fields signifies the share Fulfill Percentage.                                                   |
      | CAS_IFIN_Share_03 | <ProductType> | expiryDate           |                     | This field signifies the expiry date of shares.                                                       |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      |                     | This block signifies the Investor Details.                                                            |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      | companyCode         | This field signifies the Company Code.                                                                |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      | companyName         | This field signifies the Company Name.                                                                |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      | investorNo          | This field signifies the Market Exchange No.                                                          |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      | quantity            | This field signifies the requested share quantity.                                                    |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      | requestedSharePrice | This field signifies the Requested Share Price.                                                       |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      | maxOriginalCost     | This field signifies the maximum cost of shares.                                                      |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      | dynamicFormDetails  | This block signifies the dynamic form details that needs to be added.                                 |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     |                     | This block signifies the list of additional field required specific for the particular region.        |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField1    | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField2    | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField3    | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField4    | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField5    | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField6    | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField7    | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField8    | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField9    | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField10   | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField11   | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField12   | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField13   | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField14   | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField15   | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField16   | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField17   | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField18   | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField19   | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField20   | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField21   | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField22   | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField23   | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField24   | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField25   | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField26   | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField27   | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField28   | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField29   | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField30   | This field signifies the additional field for maintaining additional data.                            |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField1          | This field signifies the additional date field for maintaining additional data.                       |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField2          | This field signifies the additional date field for maintaining additional data.                       |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField3          | This field signifies the additional date field for maintaining additional data.                       |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField4          | This field signifies the additional date field for maintaining additional data.                       |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField5          | This field signifies the additional date field for maintaining additional data.                       |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField6          | This field signifies the additional date field for maintaining additional data.                       |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField7          | This field signifies the additional date field for maintaining additional data.                       |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField8          | This field signifies the additional date field for maintaining additional data.                       |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField9          | This field signifies the additional date field for maintaining additional data.                       |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField10         | This field signifies the additional date field for maintaining additional data.                       |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16261: <Fields> with <SubFields> should be present in share registration service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Description>" of "<Fields>" with "<SubFields>" should be present in share registration API response details
    Examples:
      | APIName           | ProductType   | Fields          | SubFields        | Description                                                                 |
      | CAS_IFIN_Share_03 | <ProductType> | responseCode    |                  | This field signifies the response code received on execution of service.    |
      | CAS_IFIN_Share_03 | <ProductType> | responseMessage |                  | This field signifies the response message received on execution of service. |
      | CAS_IFIN_Share_03 | <ProductType> | errorList       |                  | This block will contain array of errors received on validation              |
      | CAS_IFIN_Share_03 | <ProductType> | errorList       | errorCode        | This field signifies the Error Code. The length of the field is 255.        |
      | CAS_IFIN_Share_03 | <ProductType> | errorList       | errorDescription | This field signifies the Error Message. The length of the field is 255.     |

#FeatureID-ACAUTOCAS-5496
Scenario Outline: ACAUTOCAS-18143: <DataType> of <Fields> with <SubFields> should be present in share registration service <APIName> request details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<DataType>" of "<Fields>" with "<SubFields>" data type should be present in share registration API request details
    Examples:
      | APIName           | ProductType   | Fields               | SubFields           | DataType |
      | CAS_IFIN_Share_03 | <ProductType> | applicationId        |                     | string   |
      | CAS_IFIN_Share_03 | <ProductType> | platform             |                     | string   |
      | CAS_IFIN_Share_03 | <ProductType> | hostCifNumber        |                     | string   |
      | CAS_IFIN_Share_03 | <ProductType> | cifNumber            |                     | string   |
      | CAS_IFIN_Share_03 | <ProductType> | clientID             |                     | string   |
      | CAS_IFIN_Share_03 | <ProductType> | firstName            |                     | string   |
      | CAS_IFIN_Share_03 | <ProductType> | middleName           |                     | string   |
      | CAS_IFIN_Share_03 | <ProductType> | lastName             |                     | string   |
      | CAS_IFIN_Share_03 | <ProductType> | fullName             |                     | string   |
      | CAS_IFIN_Share_03 | <ProductType> | institutionName      |                     | string   |
      | CAS_IFIN_Share_03 | <ProductType> | orderType            |                     | string   |
      | CAS_IFIN_Share_03 | <ProductType> | shareValidity        |                     | string   |
      | CAS_IFIN_Share_03 | <ProductType> | mobileNumber         |                     | string   |
      | CAS_IFIN_Share_03 | <ProductType> | mobileNumber         | mobileNumber        | string   |
      | CAS_IFIN_Share_03 | <ProductType> | mobileNumber         | countryCode         | string   |
      | CAS_IFIN_Share_03 | <ProductType> | pobox                |                     | string   |
      | CAS_IFIN_Share_03 | <ProductType> | primaryEmailId       |                     | string   |
      | CAS_IFIN_Share_03 | <ProductType> | bankDetails          |                     | string   |
      | CAS_IFIN_Share_03 | <ProductType> | bankDetails          | bankName            | string   |
      | CAS_IFIN_Share_03 | <ProductType> | bankDetails          | bankCode            | string   |
      | CAS_IFIN_Share_03 | <ProductType> | bankDetails          | bankBranch          | string   |
      | CAS_IFIN_Share_03 | <ProductType> | bankDetails          | accountNumber       | string   |
      | CAS_IFIN_Share_03 | <ProductType> | transactionID        |                     | string   |
      | CAS_IFIN_Share_03 | <ProductType> | transactionNumber    |                     | string   |
      | CAS_IFIN_Share_03 | <ProductType> | totalMaxOriginalCost |                     | string   |
      | CAS_IFIN_Share_03 | <ProductType> | fulfillPercentage    |                     | string   |
      | CAS_IFIN_Share_03 | <ProductType> | expiryDate           |                     | string   |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      |                     | string   |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      | companyCode         | string   |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      | companyName         | string   |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      | investorNo          | string   |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      | quantity            | string   |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      | requestedSharePrice | string   |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      | maxOriginalCost     | string   |
      | CAS_IFIN_Share_03 | <ProductType> | investorDetails      | dynamicFormDetails  | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     |                     | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField1    | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField2    | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField3    | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField4    | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField5    | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField6    | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField7    | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField8    | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField9    | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField10   | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField11   | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField12   | number   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField13   | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField14   | number   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField15   | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField16   | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField17   | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField18   | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField19   | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField20   | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField21   | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField22   | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField23   | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField24   | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField25   | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField26   | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField27   | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField28   | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField29   | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | additionalField30   | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField1          | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField2          | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField3          | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField4          | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField5          | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField6          | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField7          | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField8          | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField9          | string   |
      | CAS_IFIN_Share_03 | <ProductType> | additionalFields     | dateField10         | string   |

#FeatureID-ACAUTOCAS-5496
Scenario Outline: ACAUTOCAS-18144: <DataType> of <Fields> with <SubFields> should be present in share registration service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<DataType>" of "<Fields>" with "<SubFields>" data type should be present in share registration API response details
    Examples:
      | APIName           | ProductType   | Fields          | SubFields        | DataType |
      | CAS_IFIN_Share_03 | <ProductType> | responseCode    |                  | string   |
      | CAS_IFIN_Share_03 | <ProductType> | responseMessage |                  | string   |
      | CAS_IFIN_Share_03 | <ProductType> | errorList       |                  | string   |
      | CAS_IFIN_Share_03 | <ProductType> | errorList       | errorCode        | string   |
      | CAS_IFIN_Share_03 | <ProductType> | errorList       | errorDescription | string   |

#FeatureID-ACAUTOCAS-5496
Scenario Outline: ACAUTOCAS-18145: <Fields> should be present in share registration service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Fields>" should be present in API header parameter details
    Examples:
      | APIName           | ProductType   | Fields       |
      | CAS_IFIN_Share_03 | <ProductType> | access_token |
      | CAS_IFIN_Share_03 | <ProductType> | Content-Type |

#FeatureID-ACAUTOCAS-5496
Scenario Outline: ACAUTOCAS-18146: <Status> <Fields> should be present in share registration service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Status>" "<Fields>" should be present in API header parameter details
    Examples:
      | APIName           | ProductType   | Fields       | Status   |
      | CAS_IFIN_Share_03 | <ProductType> | access_token | required |
      | CAS_IFIN_Share_03 | <ProductType> | Content-Type | required |

#FeatureID-ACAUTOCAS-5496
Scenario Outline: ACAUTOCAS-18147: <Description> of <Fields> should be present in share registration service <APIName> header details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Description>" of "<Fields>" should be present in API header parameter details
    Examples:
      | APIName           | ProductType   | Fields       | Description                                          |
      | CAS_IFIN_Share_03 | <ProductType> | access_token | Token based authentication is used to access an API. |
      | CAS_IFIN_Share_03 | <ProductType> | Content-Type | It represents the content type of request.           |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16264: <ColumnLayout> samples funcationality should working properly in share registration service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user click on "<ColumnLayout>" toggle button
    Then "<ColumnLayout>" samples funcationality should working properly
    Examples:
      | APIName           | ProductType   | ColumnLayout |
      | CAS_IFIN_Share_03 | <ProductType> | show         |
      | CAS_IFIN_Share_03 | <ProductType> | hide         |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16265: <ColumnLayout> samples funcationality should working properly in share <ServiceAPI> service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user click on "<ColumnLayout>" toggle button
    Then "<ColumnLayout>" samples funcationality should working properly
    Examples:
      | APIName           | ProductType   | ColumnLayout | ServiceAPI |
      | CAS_IFIN_Share_05 | <ProductType> | show         | sell       |
      | CAS_IFIN_Share_05 | <ProductType> | hide         | sell       |
      | CAS_IFIN_Share_06 | <ProductType> | show         | purchase   |
      | CAS_IFIN_Share_06 | <ProductType> | hide         | purchase   |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16314:  Verify Share Registration Service for Application ID by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName      | InputType                | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | Application ID | null                     | sharepurchase.xlsx | share_registration              | 0                                      | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Application ID | incorrect data           | sharepurchase.xlsx | share_registration              | 1                                      | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Application ID | more that 100 characters | sharepurchase.xlsx | share_registration              | 2                                      | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Application ID | negative                 | sharepurchase.xlsx | share_registration              | 3                                      | Purchase Promise | shares   | <ApplicationStage> |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16315:  Verify Share Registration Service for Host CIF Number by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName       | InputType                | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | Host CIF Number | null                     | sharepurchase.xlsx | share_registration              | 4                                      | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Host CIF Number | incorrect data           | sharepurchase.xlsx | share_registration              | 5                                      | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Host CIF Number | more that 100 characters | sharepurchase.xlsx | share_registration              | 6                                      | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Host CIF Number | negative                 | sharepurchase.xlsx | share_registration              | 7                                      | Purchase Promise | shares   | <ApplicationStage> |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16316:  Verify Share Registration Service for CIF Number by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName  | InputType                | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | CIF Number | null                     | sharepurchase.xlsx | share_registration              | 8                                      | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | CIF Number | incorrect data           | sharepurchase.xlsx | share_registration              | 9                                      | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | CIF Number | more that 255 characters | sharepurchase.xlsx | share_registration              | 10                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | CIF Number | negative                 | sharepurchase.xlsx | share_registration              | 11                                     | Purchase Promise | shares   | <ApplicationStage> |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16317: Verify Share Registration Service for Share Validity Fields by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName      | InputType                | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | Share Validity | null                     | sharepurchase.xlsx | share_registration              | 12                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Share Validity | incorrect data           | sharepurchase.xlsx | share_registration              | 13                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Share Validity | more that 255 characters | sharepurchase.xlsx | share_registration              | 14                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Share Validity | negative                 | sharepurchase.xlsx | share_registration              | 15                                     | Purchase Promise | shares   | <ApplicationStage> |


#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16318: Verify Share Registration Service for Order Type Fields by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName  | InputType                | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | Order Type | null                     | sharepurchase.xlsx | share_registration              | 16                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Order Type | incorrect data           | sharepurchase.xlsx | share_registration              | 17                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Order Type | more that 255 characters | sharepurchase.xlsx | share_registration              | 18                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Order Type | negative                 | sharepurchase.xlsx | share_registration              | 19                                     | Purchase Promise | shares   | <ApplicationStage> |


#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16319: Verify Share Registration Service for Customer Name Fields by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName   | InputType                 | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | First Name  | null                      | sharepurchase.xlsx | share_registration              | 20                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | First Name  | incorrect data            | sharepurchase.xlsx | share_registration              | 21                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | First Name  | more that 255 characters  | sharepurchase.xlsx | share_registration              | 22                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | First Name  | negative                  | sharepurchase.xlsx | share_registration              | 23                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Middle Name | null                      | sharepurchase.xlsx | share_registration              | 20                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Middle Name | incorrect data            | sharepurchase.xlsx | share_registration              | 21                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Middle Name | more that 255 characters  | sharepurchase.xlsx | share_registration              | 22                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Middle Name | negative                  | sharepurchase.xlsx | share_registration              | 23                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Last Name   | null                      | sharepurchase.xlsx | share_registration              | 20                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Last Name   | incorrect data            | sharepurchase.xlsx | share_registration              | 21                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Last Name   | more that 255 characters  | sharepurchase.xlsx | share_registration              | 22                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Last Name   | negative                  | sharepurchase.xlsx | share_registration              | 23                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Full Name   | null                      | sharepurchase.xlsx | share_registration              | 20                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Full Name   | incorrect data            | sharepurchase.xlsx | share_registration              | 21                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Full Name   | more that 1000 characters | sharepurchase.xlsx | share_registration              | 22                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Full Name   | negative                  | sharepurchase.xlsx | share_registration              | 23                                     | Purchase Promise | shares   | <ApplicationStage> |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16320: Verify Share Registration Service for platform Fields by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName | InputType                | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | platform  | null                     | sharepurchase.xlsx | share_registration              | 24                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | platform  | incorrect data           | sharepurchase.xlsx | share_registration              | 25                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | platform  | more that 255 characters | sharepurchase.xlsx | share_registration              | 26                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | platform  | negative                 | sharepurchase.xlsx | share_registration              | 27                                     | Purchase Promise | shares   | <ApplicationStage> |


#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16321: Verify Share Registration Service for ClientID Fields by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName | InputType                | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | ClientID  | null                     | sharepurchase.xlsx | share_registration              | 28                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | ClientID  | incorrect data           | sharepurchase.xlsx | share_registration              | 29                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | ClientID  | more that 255 characters | sharepurchase.xlsx | share_registration              | 30                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | ClientID  | negative                 | sharepurchase.xlsx | share_registration              | 31                                     | Purchase Promise | shares   | <ApplicationStage> |


#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16322: Verify Share Registration Service for Mobile Number Country Code Fields by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName    | InputType                | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | Country Code | null                     | sharepurchase.xlsx | share_registration              | 32                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Country Code | incorrect data           | sharepurchase.xlsx | share_registration              | 33                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Country Code | more that 255 characters | sharepurchase.xlsx | share_registration              | 34                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Country Code | negative                 | sharepurchase.xlsx | share_registration              | 35                                     | Purchase Promise | shares   | <ApplicationStage> |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16323: Verify Share Registration Service for Mobile Number Fields by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName     | InputType                | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | Mobile Number | null                     | sharepurchase.xlsx | share_registration              | 36                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Mobile Number | incorrect data           | sharepurchase.xlsx | share_registration              | 37                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Mobile Number | more that 255 characters | sharepurchase.xlsx | share_registration              | 38                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Mobile Number | negative                 | sharepurchase.xlsx | share_registration              | 39                                     | Purchase Promise | shares   | <ApplicationStage> |


#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16324: Verify Share Registration Service for Institution Name Fields by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName        | InputType                 | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | Institution Name | null                      | sharepurchase.xlsx | share_registration              | 40                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Institution Name | incorrect data            | sharepurchase.xlsx | share_registration              | 41                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Institution Name | more that 1000 characters | sharepurchase.xlsx | share_registration              | 42                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Institution Name | negative                  | sharepurchase.xlsx | share_registration              | 43                                     | Purchase Promise | shares   | <ApplicationStage> |


#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16325: Verify Share Registration Service for Primary Email ID Fields by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName        | InputType                | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | Primary Email ID | null                     | sharepurchase.xlsx | share_registration              | 44                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Primary Email ID | incorrect data           | sharepurchase.xlsx | share_registration              | 45                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Primary Email ID | more that 255 characters | sharepurchase.xlsx | share_registration              | 46                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Primary Email ID | negative                 | sharepurchase.xlsx | share_registration              | 47                                     | Purchase Promise | shares   | <ApplicationStage> |


#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16326: Verify Share Registration Service for Bank Details Fields by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName      | InputType                | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | Bank Name      | null                     | sharepurchase.xlsx | share_registration              | 48                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Bank Name      | incorrect data           | sharepurchase.xlsx | share_registration              | 49                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Bank Name      | more that 255 characters | sharepurchase.xlsx | share_registration              | 50                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Bank Code      | null                     | sharepurchase.xlsx | share_registration              | 51                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Bank Code      | incorrect data           | sharepurchase.xlsx | share_registration              | 52                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Bank Code      | more that 255 characters | sharepurchase.xlsx | share_registration              | 53                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Bank Branch    | null                     | sharepurchase.xlsx | share_registration              | 54                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Bank Branch    | incorrect data           | sharepurchase.xlsx | share_registration              | 55                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Bank Branch    | more that 255 characters | sharepurchase.xlsx | share_registration              | 56                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Account Number | null                     | sharepurchase.xlsx | share_registration              | 57                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Account Number | incorrect data           | sharepurchase.xlsx | share_registration              | 58                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Account Number | more that 255 characters | sharepurchase.xlsx | share_registration              | 59                                     | Purchase Promise | shares   | <ApplicationStage> |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16327: Verify Share Registration Service for PO Box Fields by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName | InputType                | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | PO Box    | null                     | sharepurchase.xlsx | share_registration              | 60                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | PO Box    | incorrect data           | sharepurchase.xlsx | share_registration              | 61                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | PO Box    | more that 255 characters | sharepurchase.xlsx | share_registration              | 62                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | PO Box    | negative                 | sharepurchase.xlsx | share_registration              | 63                                     | Purchase Promise | shares   | <ApplicationStage> |


#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16328:  Verify Share Registration Service for Transaction ID by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName      | InputType                | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | Transaction ID | null                     | sharepurchase.xlsx | share_registration              | 64                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Transaction ID | incorrect data           | sharepurchase.xlsx | share_registration              | 65                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Transaction ID | more that 255 characters | sharepurchase.xlsx | share_registration              | 66                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Transaction ID | negative                 | sharepurchase.xlsx | share_registration              | 67                                     | Purchase Promise | shares   | <ApplicationStage> |


#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16329:  Verify Share Registration Service for Transaction Number by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName          | InputType                | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | Transaction Number | null                     | sharepurchase.xlsx | share_registration              | 68                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Transaction Number | characters               | sharepurchase.xlsx | share_registration              | 69                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Transaction Number | more that 255 characters | sharepurchase.xlsx | share_registration              | 70                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Transaction Number | negative                 | sharepurchase.xlsx | share_registration              | 71                                     | Purchase Promise | shares   | <ApplicationStage> |


#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16330:  Verify Share Registration Service for Total Max Original Cost by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName               | InputType               | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | Total Max Original Cost | null                    | sharepurchase.xlsx | share_registration              | 72                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Total Max Original Cost | incorrect data          | sharepurchase.xlsx | share_registration              | 73                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Total Max Original Cost | more that 18 characters | sharepurchase.xlsx | share_registration              | 74                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Total Max Original Cost | negative                | sharepurchase.xlsx | share_registration              | 75                                     | Purchase Promise | shares   | <ApplicationStage> |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16331:  Verify Share Registration Service for Full Fill Percentage by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName            | InputType                | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | Full Fill Percentage | null                     | sharepurchase.xlsx | share_registration              | 76                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Full Fill Percentage | incorrect data           | sharepurchase.xlsx | share_registration              | 77                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Full Fill Percentage | more that 100 characters | sharepurchase.xlsx | share_registration              | 78                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Full Fill Percentage | negative                 | sharepurchase.xlsx | share_registration              | 79                                     | Purchase Promise | shares   | <ApplicationStage> |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16332:  Verify Share Registration Service for Expiry Date by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName   | InputType               | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | Expiry Date | null                    | sharepurchase.xlsx | share_registration              | 80                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Expiry Date | incorrect data          | sharepurchase.xlsx | share_registration              | 81                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Expiry Date | more that 18 characters | sharepurchase.xlsx | share_registration              | 82                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Expiry Date | negative                | sharepurchase.xlsx | share_registration              | 83                                     | Purchase Promise | shares   | <ApplicationStage> |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16333: Verify Share Registration Service for Company Code by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName    | InputType                | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | Company Code | null                     | sharepurchase.xlsx | share_registration              | 84                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Company Code | incorrect data           | sharepurchase.xlsx | share_registration              | 85                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Company Code | more that 255 characters | sharepurchase.xlsx | share_registration              | 86                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Company Code | negative                 | sharepurchase.xlsx | share_registration              | 87                                     | Purchase Promise | shares   | <ApplicationStage> |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16334:  Verify Share Registration Service for Company Name by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName    | InputType                | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | Company Name | null                     | sharepurchase.xlsx | share_registration              | 88                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Company Name | incorrect data           | sharepurchase.xlsx | share_registration              | 89                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Company Name | more that 255 characters | sharepurchase.xlsx | share_registration              | 90                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Company Name | negative                 | sharepurchase.xlsx | share_registration              | 91                                     | Purchase Promise | shares   | <ApplicationStage> |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16335: Verify Share Registration Service for Quantity by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName          | InputType                | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | Requested Quantity | null                     | sharepurchase.xlsx | share_registration              | 92                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Requested Quantity | incorrect data           | sharepurchase.xlsx | share_registration              | 93                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Requested Quantity | more that 255 characters | sharepurchase.xlsx | share_registration              | 94                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Requested Quantity | negative                 | sharepurchase.xlsx | share_registration              | 95                                     | Purchase Promise | shares   | <ApplicationStage> |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16336: Verify Share Registration Service for Requested Share Price by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName             | InputType               | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | Requested Share Price | null                    | sharepurchase.xlsx | share_registration              | 96                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Requested Share Price | incorrect data          | sharepurchase.xlsx | share_registration              | 97                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Requested Share Price | more that 18 characters | sharepurchase.xlsx | share_registration              | 98                                     | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Requested Share Price | negative                | sharepurchase.xlsx | share_registration              | 99                                     | Purchase Promise | shares   | <ApplicationStage> |


#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16337: Verify Share Registration Service for Max Original Cost by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName         | InputType               | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | Max Original Cost | null                    | sharepurchase.xlsx | share_registration              | 100                                    | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Max Original Cost | incorrect data          | sharepurchase.xlsx | share_registration              | 101                                    | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Max Original Cost | more that 18 characters | sharepurchase.xlsx | share_registration              | 102                                    | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Max Original Cost | negative                | sharepurchase.xlsx | share_registration              | 103                                    | Purchase Promise | shares   | <ApplicationStage> |


#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16338: Verify Share Registration Service for Dynamic Form Details by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName         | InputType                | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | CAS_IFIN_Share_03 | <ProductType> | Dynamic Form Name | null                     | sharepurchase.xlsx | share_registration              | 104                                    | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Dynamic Form Name | incorrect data           | sharepurchase.xlsx | share_registration              | 105                                    | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Dynamic Form Name | more that 255 characters | sharepurchase.xlsx | share_registration              | 106                                    | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Dynamic Form Data | null                     | sharepurchase.xlsx | share_registration              | 107                                    | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Dynamic Form Data | incorrect data           | sharepurchase.xlsx | share_registration              | 108                                    | Purchase Promise | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_03 | <ProductType> | Dynamic Form Data | more that 255 characters | sharepurchase.xlsx | share_registration              | 109                                    | Purchase Promise | shares   | <ApplicationStage> |


#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16339: Verify Share Registration Service for String Additional Fields with <Dataset> by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | Dataset | APIName           | ProductType   | fieldName           | InputType                | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | 1       | CAS_IFIN_Share_03 | <ProductType> | String Additional1  | null                     | sharepurchase.xlsx | share_registration              | 110                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 1       | CAS_IFIN_Share_03 | <ProductType> | String Additional1  | more that 255 characters | sharepurchase.xlsx | share_registration              | 111                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 1       | CAS_IFIN_Share_03 | <ProductType> | String Additional1  | incorrect data           | sharepurchase.xlsx | share_registration              | 112                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 1       | CAS_IFIN_Share_03 | <ProductType> | String Additional1  | negative                 | sharepurchase.xlsx | share_registration              | 113                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 2       | CAS_IFIN_Share_03 | <ProductType> | String Additional2  | null                     | sharepurchase.xlsx | share_registration              | 114                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 2       | CAS_IFIN_Share_03 | <ProductType> | String Additional2  | more that 255 characters | sharepurchase.xlsx | share_registration              | 115                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 2       | CAS_IFIN_Share_03 | <ProductType> | String Additional2  | incorrect data           | sharepurchase.xlsx | share_registration              | 116                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 2       | CAS_IFIN_Share_03 | <ProductType> | String Additional2  | negative                 | sharepurchase.xlsx | share_registration              | 117                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 3       | CAS_IFIN_Share_03 | <ProductType> | String Additional3  | null                     | sharepurchase.xlsx | share_registration              | 118                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 3       | CAS_IFIN_Share_03 | <ProductType> | String Additional3  | more that 255 characters | sharepurchase.xlsx | share_registration              | 119                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 3       | CAS_IFIN_Share_03 | <ProductType> | String Additional3  | incorrect data           | sharepurchase.xlsx | share_registration              | 120                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 3       | CAS_IFIN_Share_03 | <ProductType> | String Additional3  | negative                 | sharepurchase.xlsx | share_registration              | 121                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 4       | CAS_IFIN_Share_03 | <ProductType> | String Additional4  | null                     | sharepurchase.xlsx | share_registration              | 122                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 4       | CAS_IFIN_Share_03 | <ProductType> | String Additional4  | more that 255 characters | sharepurchase.xlsx | share_registration              | 123                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 4       | CAS_IFIN_Share_03 | <ProductType> | String Additional4  | incorrect data           | sharepurchase.xlsx | share_registration              | 124                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 4       | CAS_IFIN_Share_03 | <ProductType> | String Additional4  | negative                 | sharepurchase.xlsx | share_registration              | 125                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 5       | CAS_IFIN_Share_03 | <ProductType> | String Additional5  | null                     | sharepurchase.xlsx | share_registration              | 126                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 5       | CAS_IFIN_Share_03 | <ProductType> | String Additional5  | more that 255 characters | sharepurchase.xlsx | share_registration              | 127                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 5       | CAS_IFIN_Share_03 | <ProductType> | String Additional5  | incorrect data           | sharepurchase.xlsx | share_registration              | 128                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 5       | CAS_IFIN_Share_03 | <ProductType> | String Additional5  | negative                 | sharepurchase.xlsx | share_registration              | 129                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 6       | CAS_IFIN_Share_03 | <ProductType> | String Additional6  | null                     | sharepurchase.xlsx | share_registration              | 130                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 6       | CAS_IFIN_Share_03 | <ProductType> | String Additional6  | more that 255 characters | sharepurchase.xlsx | share_registration              | 131                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 6       | CAS_IFIN_Share_03 | <ProductType> | String Additional6  | incorrect data           | sharepurchase.xlsx | share_registration              | 132                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 6       | CAS_IFIN_Share_03 | <ProductType> | String Additional6  | negative                 | sharepurchase.xlsx | share_registration              | 133                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 7       | CAS_IFIN_Share_03 | <ProductType> | String Additional7  | null                     | sharepurchase.xlsx | share_registration              | 134                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 7       | CAS_IFIN_Share_03 | <ProductType> | String Additional7  | more that 255 characters | sharepurchase.xlsx | share_registration              | 135                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 7       | CAS_IFIN_Share_03 | <ProductType> | String Additional7  | incorrect data           | sharepurchase.xlsx | share_registration              | 136                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 7       | CAS_IFIN_Share_03 | <ProductType> | String Additional7  | negative                 | sharepurchase.xlsx | share_registration              | 137                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 8       | CAS_IFIN_Share_03 | <ProductType> | String Additional8  | null                     | sharepurchase.xlsx | share_registration              | 138                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 8       | CAS_IFIN_Share_03 | <ProductType> | String Additional8  | more that 255 characters | sharepurchase.xlsx | share_registration              | 139                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 8       | CAS_IFIN_Share_03 | <ProductType> | String Additional8  | incorrect data           | sharepurchase.xlsx | share_registration              | 140                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 8       | CAS_IFIN_Share_03 | <ProductType> | String Additional8  | negative                 | sharepurchase.xlsx | share_registration              | 141                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 9       | CAS_IFIN_Share_03 | <ProductType> | String Additional9  | null                     | sharepurchase.xlsx | share_registration              | 142                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 9       | CAS_IFIN_Share_03 | <ProductType> | String Additional9  | more that 255 characters | sharepurchase.xlsx | share_registration              | 143                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 9       | CAS_IFIN_Share_03 | <ProductType> | String Additional9  | incorrect data           | sharepurchase.xlsx | share_registration              | 144                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 9       | CAS_IFIN_Share_03 | <ProductType> | String Additional9  | negative                 | sharepurchase.xlsx | share_registration              | 145                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 10      | CAS_IFIN_Share_03 | <ProductType> | String Additional10 | null                     | sharepurchase.xlsx | share_registration              | 146                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 10      | CAS_IFIN_Share_03 | <ProductType> | String Additional10 | more that 255 characters | sharepurchase.xlsx | share_registration              | 147                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 10      | CAS_IFIN_Share_03 | <ProductType> | String Additional10 | incorrect data           | sharepurchase.xlsx | share_registration              | 148                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 10      | CAS_IFIN_Share_03 | <ProductType> | String Additional10 | negative                 | sharepurchase.xlsx | share_registration              | 149                                    | Purchase Promise | shares   | <ApplicationStage> |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16340: Verify Share Registration Service for Number Additional Fields with <Dataset> by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | Dataset | APIName           | ProductType   | fieldName           | InputType               | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | 11      | CAS_IFIN_Share_03 | <ProductType> | Number Additional1  | null                    | sharepurchase.xlsx | share_registration              | 134                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 11      | CAS_IFIN_Share_03 | <ProductType> | Number Additional1  | more that 18 characters | sharepurchase.xlsx | share_registration              | 135                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 11      | CAS_IFIN_Share_03 | <ProductType> | Number Additional1  | incorrect data          | sharepurchase.xlsx | share_registration              | 136                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 11      | CAS_IFIN_Share_03 | <ProductType> | Number Additional1  | negative                | sharepurchase.xlsx | share_registration              | 137                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 12      | CAS_IFIN_Share_03 | <ProductType> | Number Additional2  | null                    | sharepurchase.xlsx | share_registration              | 138                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 12      | CAS_IFIN_Share_03 | <ProductType> | Number Additional2  | more that 18 characters | sharepurchase.xlsx | share_registration              | 139                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 12      | CAS_IFIN_Share_03 | <ProductType> | Number Additional2  | incorrect data          | sharepurchase.xlsx | share_registration              | 140                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 12      | CAS_IFIN_Share_03 | <ProductType> | Number Additional2  | negative                | sharepurchase.xlsx | share_registration              | 141                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 13      | CAS_IFIN_Share_03 | <ProductType> | Number Additional3  | null                    | sharepurchase.xlsx | share_registration              | 142                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 13      | CAS_IFIN_Share_03 | <ProductType> | Number Additional3  | more that 18 characters | sharepurchase.xlsx | share_registration              | 143                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 13      | CAS_IFIN_Share_03 | <ProductType> | Number Additional3  | incorrect data          | sharepurchase.xlsx | share_registration              | 144                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 13      | CAS_IFIN_Share_03 | <ProductType> | Number Additional3  | negative                | sharepurchase.xlsx | share_registration              | 145                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 14      | CAS_IFIN_Share_03 | <ProductType> | Number Additional4  | null                    | sharepurchase.xlsx | share_registration              | 146                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 14      | CAS_IFIN_Share_03 | <ProductType> | Number Additional4  | more that 18 characters | sharepurchase.xlsx | share_registration              | 147                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 14      | CAS_IFIN_Share_03 | <ProductType> | Number Additional4  | incorrect data          | sharepurchase.xlsx | share_registration              | 148                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 14      | CAS_IFIN_Share_03 | <ProductType> | Number Additional4  | negative                | sharepurchase.xlsx | share_registration              | 149                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 15      | CAS_IFIN_Share_03 | <ProductType> | Number Additional5  | null                    | sharepurchase.xlsx | share_registration              | 151                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 15      | CAS_IFIN_Share_03 | <ProductType> | Number Additional5  | more that 18 characters | sharepurchase.xlsx | share_registration              | 152                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 15      | CAS_IFIN_Share_03 | <ProductType> | Number Additional5  | incorrect data          | sharepurchase.xlsx | share_registration              | 153                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 15      | CAS_IFIN_Share_03 | <ProductType> | Number Additional5  | negative                | sharepurchase.xlsx | share_registration              | 154                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 15      | CAS_IFIN_Share_03 | <ProductType> | Number Additional6  | null                    | sharepurchase.xlsx | share_registration              | 155                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 16      | CAS_IFIN_Share_03 | <ProductType> | Number Additional6  | more that 18 characters | sharepurchase.xlsx | share_registration              | 156                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 16      | CAS_IFIN_Share_03 | <ProductType> | Number Additional6  | incorrect data          | sharepurchase.xlsx | share_registration              | 157                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 16      | CAS_IFIN_Share_03 | <ProductType> | Number Additional6  | negative                | sharepurchase.xlsx | share_registration              | 158                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 16      | CAS_IFIN_Share_03 | <ProductType> | Number Additional7  | null                    | sharepurchase.xlsx | share_registration              | 159                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 17      | CAS_IFIN_Share_03 | <ProductType> | Number Additional7  | more that 18 characters | sharepurchase.xlsx | share_registration              | 160                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 17      | CAS_IFIN_Share_03 | <ProductType> | Number Additional7  | incorrect data          | sharepurchase.xlsx | share_registration              | 161                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 17      | CAS_IFIN_Share_03 | <ProductType> | Number Additional7  | negative                | sharepurchase.xlsx | share_registration              | 162                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 17      | CAS_IFIN_Share_03 | <ProductType> | Number Additional8  | null                    | sharepurchase.xlsx | share_registration              | 163                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 18      | CAS_IFIN_Share_03 | <ProductType> | Number Additional8  | more that 18 characters | sharepurchase.xlsx | share_registration              | 164                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 18      | CAS_IFIN_Share_03 | <ProductType> | Number Additional8  | incorrect data          | sharepurchase.xlsx | share_registration              | 165                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 18      | CAS_IFIN_Share_03 | <ProductType> | Number Additional8  | negative                | sharepurchase.xlsx | share_registration              | 166                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 18      | CAS_IFIN_Share_03 | <ProductType> | Number Additional9  | null                    | sharepurchase.xlsx | share_registration              | 167                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 19      | CAS_IFIN_Share_03 | <ProductType> | Number Additional9  | more that 18 characters | sharepurchase.xlsx | share_registration              | 168                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 19      | CAS_IFIN_Share_03 | <ProductType> | Number Additional9  | incorrect data          | sharepurchase.xlsx | share_registration              | 169                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 19      | CAS_IFIN_Share_03 | <ProductType> | Number Additional9  | negative                | sharepurchase.xlsx | share_registration              | 170                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 19      | CAS_IFIN_Share_03 | <ProductType> | Number Additional10 | null                    | sharepurchase.xlsx | share_registration              | 171                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 20      | CAS_IFIN_Share_03 | <ProductType> | Number Additional10 | more that 18 characters | sharepurchase.xlsx | share_registration              | 172                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 20      | CAS_IFIN_Share_03 | <ProductType> | Number Additional10 | incorrect data          | sharepurchase.xlsx | share_registration              | 173                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 20      | CAS_IFIN_Share_03 | <ProductType> | Number Additional10 | negative                | sharepurchase.xlsx | share_registration              | 174                                    | Purchase Promise | shares   | <ApplicationStage> |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16341: Verify Share Registration Service for Integer Additional Fields with <Dataset> by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | Dataset | APIName           | ProductType   | fieldName            | InputType               | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | 21      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional1  | null                    | sharepurchase.xlsx | share_registration              | 134                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 21      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional1  | more that 10 characters | sharepurchase.xlsx | share_registration              | 135                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 21      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional1  | incorrect data          | sharepurchase.xlsx | share_registration              | 136                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 21      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional1  | negative                | sharepurchase.xlsx | share_registration              | 137                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 22      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional2  | null                    | sharepurchase.xlsx | share_registration              | 138                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 22      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional2  | more that 10 characters | sharepurchase.xlsx | share_registration              | 139                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 22      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional2  | incorrect data          | sharepurchase.xlsx | share_registration              | 140                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 22      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional2  | negative                | sharepurchase.xlsx | share_registration              | 141                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 23      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional3  | null                    | sharepurchase.xlsx | share_registration              | 142                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 23      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional3  | more that 10 characters | sharepurchase.xlsx | share_registration              | 143                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 23      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional3  | incorrect data          | sharepurchase.xlsx | share_registration              | 144                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 23      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional3  | negative                | sharepurchase.xlsx | share_registration              | 145                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 24      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional4  | null                    | sharepurchase.xlsx | share_registration              | 146                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 24      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional4  | more that 10 characters | sharepurchase.xlsx | share_registration              | 147                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 24      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional4  | incorrect data          | sharepurchase.xlsx | share_registration              | 148                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 24      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional4  | negative                | sharepurchase.xlsx | share_registration              | 149                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 25      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional5  | null                    | sharepurchase.xlsx | share_registration              | 151                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 25      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional5  | more that 10 characters | sharepurchase.xlsx | share_registration              | 152                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 25      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional5  | incorrect data          | sharepurchase.xlsx | share_registration              | 153                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 25      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional5  | negative                | sharepurchase.xlsx | share_registration              | 154                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 26      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional6  | null                    | sharepurchase.xlsx | share_registration              | 155                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 26      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional6  | more that 10 characters | sharepurchase.xlsx | share_registration              | 156                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 26      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional6  | incorrect data          | sharepurchase.xlsx | share_registration              | 157                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 26      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional6  | negative                | sharepurchase.xlsx | share_registration              | 158                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 27      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional7  | null                    | sharepurchase.xlsx | share_registration              | 159                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 27      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional7  | more that 10 characters | sharepurchase.xlsx | share_registration              | 160                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 27      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional7  | incorrect data          | sharepurchase.xlsx | share_registration              | 161                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 27      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional7  | negative                | sharepurchase.xlsx | share_registration              | 162                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 28      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional8  | null                    | sharepurchase.xlsx | share_registration              | 163                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 28      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional8  | more that 10 characters | sharepurchase.xlsx | share_registration              | 164                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 28      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional8  | incorrect data          | sharepurchase.xlsx | share_registration              | 165                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 28      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional8  | negative                | sharepurchase.xlsx | share_registration              | 166                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 29      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional9  | null                    | sharepurchase.xlsx | share_registration              | 167                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 29      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional9  | more that 10 characters | sharepurchase.xlsx | share_registration              | 168                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 29      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional9  | incorrect data          | sharepurchase.xlsx | share_registration              | 169                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 29      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional9  | negative                | sharepurchase.xlsx | share_registration              | 170                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 30      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional10 | null                    | sharepurchase.xlsx | share_registration              | 171                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 30      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional10 | more that 10 characters | sharepurchase.xlsx | share_registration              | 172                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 30      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional10 | incorrect data          | sharepurchase.xlsx | share_registration              | 173                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 30      | CAS_IFIN_Share_03 | <ProductType> | Integer Additional10 | negative                | sharepurchase.xlsx | share_registration              | 174                                    | Purchase Promise | shares   | <ApplicationStage> |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16342: Verify Share Registration Service for Date and Time Additional Fields with <Dataset> by hit <APIName> with <InputType> validation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareRegistration>" and row <SharePurchase_shareRegistration_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | Dataset | APIName           | ProductType   | fieldName                | InputType                        | SharePurchaseWB    | SharePurchase_shareRegistration | SharePurchase_shareRegistration_rowNum | FinalStage       | Category | ApplicationStage   |
      | 31      | CAS_IFIN_Share_03 | <ProductType> | Date and Time Additional | null                             | sharepurchase.xlsx | share_registration              | 175                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 31      | CAS_IFIN_Share_03 | <ProductType> | Date and Time Additional | incorrect YYYY-MM-DDThh:mm:ssTZD | sharepurchase.xlsx | share_registration              | 176                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 32      | CAS_IFIN_Share_03 | <ProductType> | Date and Time Additional | null                             | sharepurchase.xlsx | share_registration              | 177                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 32      | CAS_IFIN_Share_03 | <ProductType> | Date and Time Additional | incorrect YYYY-MM-DDThh:mm:ssTZD | sharepurchase.xlsx | share_registration              | 178                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 33      | CAS_IFIN_Share_03 | <ProductType> | Date and Time Additional | null                             | sharepurchase.xlsx | share_registration              | 179                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 33      | CAS_IFIN_Share_03 | <ProductType> | Date and Time Additional | incorrect YYYY-MM-DDThh:mm:ssTZD | sharepurchase.xlsx | share_registration              | 180                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 34      | CAS_IFIN_Share_03 | <ProductType> | Date and Time Additional | null                             | sharepurchase.xlsx | share_registration              | 181                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 34      | CAS_IFIN_Share_03 | <ProductType> | Date and Time Additional | incorrect YYYY-MM-DDThh:mm:ssTZD | sharepurchase.xlsx | share_registration              | 182                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 35      | CAS_IFIN_Share_03 | <ProductType> | Date and Time Additional | null                             | sharepurchase.xlsx | share_registration              | 183                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 35      | CAS_IFIN_Share_03 | <ProductType> | Date and Time Additional | incorrect YYYY-MM-DDThh:mm:ssTZD | sharepurchase.xlsx | share_registration              | 184                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 36      | CAS_IFIN_Share_03 | <ProductType> | Date and Time Additional | null                             | sharepurchase.xlsx | share_registration              | 185                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 36      | CAS_IFIN_Share_03 | <ProductType> | Date and Time Additional | incorrect YYYY-MM-DDThh:mm:ssTZD | sharepurchase.xlsx | share_registration              | 186                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 37      | CAS_IFIN_Share_03 | <ProductType> | Date and Time Additional | null                             | sharepurchase.xlsx | share_registration              | 187                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 37      | CAS_IFIN_Share_03 | <ProductType> | Date and Time Additional | incorrect YYYY-MM-DDThh:mm:ssTZD | sharepurchase.xlsx | share_registration              | 188                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 38      | CAS_IFIN_Share_03 | <ProductType> | Date and Time Additional | null                             | sharepurchase.xlsx | share_registration              | 189                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 38      | CAS_IFIN_Share_03 | <ProductType> | Date and Time Additional | incorrect YYYY-MM-DDThh:mm:ssTZD | sharepurchase.xlsx | share_registration              | 190                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 39      | CAS_IFIN_Share_03 | <ProductType> | Date and Time Additional | null                             | sharepurchase.xlsx | share_registration              | 191                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 39      | CAS_IFIN_Share_03 | <ProductType> | Date and Time Additional | incorrect YYYY-MM-DDThh:mm:ssTZD | sharepurchase.xlsx | share_registration              | 175                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 40      | CAS_IFIN_Share_03 | <ProductType> | Date and Time Additional | null                             | sharepurchase.xlsx | share_registration              | 176                                    | Purchase Promise | shares   | <ApplicationStage> |
      | 40      | CAS_IFIN_Share_03 | <ProductType> | Date and Time Additional | incorrect YYYY-MM-DDThh:mm:ssTZD | sharepurchase.xlsx | share_registration              | 177                                    | Purchase Promise | shares   | <ApplicationStage> |

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

Feature: Share Confirmation Service API

#  Pre-Requisites---
#  In this feature we will validate the share confirmation service api
# PRODUCT_TYPE
#  IPF	    Personal Finance
#  IHF	    Home Finance
#  IAF	    Auto Finance

  Background:
    Given user is on CAS Login Page

#FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-16295: API Documentation Tab in share confirmation service for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on Documentation tab
    Then Service is present as per contract in API
    Examples:
      | ProductType   |
      | <ProductType> |

#FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-16296: Verify share confirmation service <Service> in <APIName> documentation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user click on download "<Service>" for "<APIName>"
    Then "<Service>" is present as per contract in "<APIName>"
    Examples:
      | Service                 | ProductType   | APIName           |
      | API Documentation PDF   | <ProductType> | CAS_IFIN_Share_04 |
      | API Documentation Excel | <ProductType> | CAS_IFIN_Share_04 |

#FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-17307: Verify share sell service <Service> in <APIName> documentation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user click on download "<Service>" for "<APIName>"
    Then "<Service>" is present as per contract in "<APIName>"
    Examples:
      | Service                 | ProductType   | APIName           |
      | API Documentation PDF   | <ProductType> | CAS_IFIN_Share_05 |
      | API Documentation Excel | <ProductType> | CAS_IFIN_Share_05 |

#FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-16297: Validating <APIHeader> in share confirmation service in API center for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user click on CAS API vault
    When user search "<APIHeader>" in search bar
    Then "<APIHeader>" should be present in API center
    Examples:
      | APIHeader                | ProductType   |
      | CAS_IFIN_Share_04        | <ProductType> |
      | shareConfirmationService | <ProductType> |

#FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-16298: Validating <APIDescription> in share confirmation service in API center for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user click on CAS API vault
    When user search "<APIDescription>" in search bar
    Then "<APIDescription>" should be present in API center
    Examples:
      | APIDescription                                                                                      | ProductType   |
      | shareConfirmationService                                                                            | <ProductType> |
      | CAS_IFIN_Share_04                                                                                   | <ProductType> |
      | This service will be used to confirm registered investor's shares details with respective platform. | <ProductType> |

#FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-16299: Verify API service share confirmation service URL for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    When user searches "<APIName>" in documentation and opens
    Then User verify API service share confirmation service URL
    Examples:
      | ProductType   | APIName           | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | <ProductType> | CAS_IFIN_Share_04 | sharepurchase.xlsx | share_execution              | 0                                   |

#FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-16300: Verify API service Share Sell Service URL for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    When user searches "<APIName>" in documentation and opens
    Then User verify API service share sell service URL
    Examples:
      | ProductType   | APIName           | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | <ProductType> | CAS_IFIN_Share_05 | sharepurchase.xlsx | share_execution              | 0                                   |

#FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-16301: <Fields> with <SubFields> should be present in share confirmation service <APIName> request details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Fields>" with "<SubFields>" should be present in share confirmation API request details
    Examples:
      | APIName           | ProductType   | Fields              | SubFields       |
      | CAS_IFIN_Share_04 | <ProductType> | platform            |                 |
      | CAS_IFIN_Share_04 | <ProductType> | applicationId       |                 |
      | CAS_IFIN_Share_04 | <ProductType> | hostCifNumber       |                 |
      | CAS_IFIN_Share_04 | <ProductType> | clientID            |                 |
      | CAS_IFIN_Share_04 | <ProductType> | transactionID       |                 |
      | CAS_IFIN_Share_04 | <ProductType> | transactionNumber   |                 |
      | CAS_IFIN_Share_04 | <ProductType> | dynamicFormDetails  |                 |
      | CAS_IFIN_Share_04 | <ProductType> | dynamicFormDetails  | dynamicFormName |
      | CAS_IFIN_Share_04 | <ProductType> | dynamicFormDetails  | dynamicFormData |
      | CAS_IFIN_Share_04 | <ProductType> | decision            |                 |
      | CAS_IFIN_Share_04 | <ProductType> | decisionDescription |                 |
      | CAS_IFIN_Share_04 | <ProductType> | reasons             |                 |
      | CAS_IFIN_Share_04 | <ProductType> | reasons             | reason          |
      | CAS_IFIN_Share_04 | <ProductType> | reasons             | description     |
      | CAS_IFIN_Share_04 | <ProductType> | dataPushobject      |                 |

#FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-16302: Validate <Status> <Fields> with <SubFields> should be present in share confirmation service <APIName> request details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Status>" "<Fields>" with "<SubFields>" should be present in share confirmation API request details
    Examples:
      | APIName           | ProductType   | Fields             | SubFields       | Status   |
      | CAS_IFIN_Share_04 | <ProductType> | platform           |                 | required |
      | CAS_IFIN_Share_04 | <ProductType> | applicationId      |                 | required |
      | CAS_IFIN_Share_04 | <ProductType> | transactionID      |                 | required |
      | CAS_IFIN_Share_04 | <ProductType> | transactionNumber  |                 | required |
      | CAS_IFIN_Share_04 | <ProductType> | dynamicFormDetails | dynamicFormName | required |
      | CAS_IFIN_Share_04 | <ProductType> | dynamicFormDetails | dynamicFormData | required |
      | CAS_IFIN_Share_04 | <ProductType> | decision           |                 | required |
      | CAS_IFIN_Share_04 | <ProductType> | reasons            |                 | required |
      | CAS_IFIN_Share_04 | <ProductType> | reasons            | reason          | required |
      | CAS_IFIN_Share_04 | <ProductType> | reasons            | description     | required |

#FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-16303: <Fields> with <SubFields> should be present in share confirmation service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Fields>" with "<SubFields>" should be present in share confirmation API "response" details
    Examples:
      | APIName           | ProductType   | Fields               | SubFields            |
      | CAS_IFIN_Share_04 | <ProductType> | responseCode         |                      |
      | CAS_IFIN_Share_04 | <ProductType> | responseMessage      |                      |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields     |                      |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField1     | additionalField1     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField2     | additionalField2     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField3     | additionalField3     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField4     | additionalField4     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField5     | additionalField5     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField6     | additionalField6     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField7     | additionalField7     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField8     | additionalField8     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField9     | additionalField9     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField10    | additionalField10    |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField11    | additionalField11    |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField12    | additionalField12    |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField13    | additionalField13    |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField14    | additionalField14    |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField15    | additionalField15    |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField16    | additionalField16    |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField17    | additionalField17    |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField18    | additionalField18    |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField19    | additionalField19    |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField20    | additionalField20    |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField21    | additionalField21    |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField22    | additionalField22    |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField23    | additionalField23    |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField24    | additionalField24    |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField25    | additionalField25    |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField26    | additionalField26    |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField27    | additionalField27    |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField28    | additionalField28    |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField29    | additionalField29    |
      | CAS_IFIN_Share_04 | <ProductType> | additionalField30    | additionalField30    |
      | CAS_IFIN_Share_04 | <ProductType> | dateField1           | dateField1           |
      | CAS_IFIN_Share_04 | <ProductType> | dateField2           | dateField2           |
      | CAS_IFIN_Share_04 | <ProductType> | dateField3           | dateField3           |
      | CAS_IFIN_Share_04 | <ProductType> | dateField4           | dateField4           |
      | CAS_IFIN_Share_04 | <ProductType> | dateField5           | dateField5           |
      | CAS_IFIN_Share_04 | <ProductType> | dateField6           | dateField6           |
      | CAS_IFIN_Share_04 | <ProductType> | dateField7           | dateField7           |
      | CAS_IFIN_Share_04 | <ProductType> | dateField8           | dateField8           |
      | CAS_IFIN_Share_04 | <ProductType> | dateField9           | dateField9           |
      | CAS_IFIN_Share_04 | <ProductType> | dateField10          | dateField10          |
      | CAS_IFIN_Share_04 | <ProductType> | extendedResponseJson |                      |
      | CAS_IFIN_Share_04 | <ProductType> | extendedResponseJson | extendedResponseJson |

#FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-16304: <Status> <Fields> with <SubFields> should be present in share confirmation service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Status>" "<Fields>" with "<SubFields>" should be present in share confirmation API response details
    Examples:
      | APIName           | ProductType   | Fields          | Status   | SubFields |
      | CAS_IFIN_Share_04 | <ProductType> | responseCode    | required |           |
      | CAS_IFIN_Share_04 | <ProductType> | responseMessage | required |           |

#FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-16305: <Description> of <Fields> with <SubFields> should be present in share confirmation service <APIName> request details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Description>" of "<Fields>" with "<SubFields>" should be present in share confirmation API request details
    Examples:
      | APIName           | ProductType   | Fields              | SubFields          | Description                                                                                      |
      | CAS_IFIN_Share_04 | <ProductType> | applicationId       |                    | This field signifies the system generated Application ID tagged with an application in database. |
      | CAS_IFIN_Share_04 | <ProductType> | platform            |                    | This field signifies the platform on which share registration call will be made.                 |
      | CAS_IFIN_Share_04 | <ProductType> | hostCifNumber       |                    | This field signifies the host CIF number tagged with an application in database.                 |
      | CAS_IFIN_Share_04 | <ProductType> | clientID            |                    | This field signifies the exchange Client ID of the investor.                                     |
      | CAS_IFIN_Share_04 | <ProductType> | transactionID       |                    | This field signifies the Transaction ID                                                          |
      | CAS_IFIN_Share_04 | <ProductType> | transactionNumber   |                    | This field signifies the unique Transaction Number.                                              |
      | CAS_IFIN_Share_04 | <ProductType> | dynamicFormDetails  | dynamicFormDetails | This block signifies the dynamic form details that needs to be added.                            |
      | CAS_IFIN_Share_04 | <ProductType> | dynamicFormDetails  | dynamicFormName    | This field signifies the dynamic form name.                                                      |
      | CAS_IFIN_Share_04 | <ProductType> | dynamicFormDetails  | dynamicFormData    | This field signifies the dynamic json data.                                                      |
      | CAS_IFIN_Share_04 | <ProductType> | decision            |                    | This field signifies the Decision Code.                                                          |
      | CAS_IFIN_Share_04 | <ProductType> | decisionDescription |                    | This field signifies the description of the decision selected.                                   |
      | CAS_IFIN_Share_04 | <ProductType> | reasons             |                    | This block signifies the Reason captured. This block is mandatory.                               |
      | CAS_IFIN_Share_04 | <ProductType> | reasons             | reason             | This field signifies the Reason of the decision.                                                 |
      | CAS_IFIN_Share_04 | <ProductType> | reasons             | description        | This field signifies the description of the reason selected.                                     |
      | CAS_IFIN_Share_04 | <ProductType> | dataPushobject      |                    | This field signifies the data push object for sharing additional data in the request.            |

#FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-17308: <Description> of <Fields> with <SubFields> should be present in share confirmation service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Description>" of "<Fields>" with "<SubFields>" should be present in share confirmation API response details
    Examples:
      | APIName           | ProductType   | Fields           | SubFields         | Description                                                                                    |
      | CAS_IFIN_Share_04 | <ProductType> | responseCode     |                   | This field signifies the response code received on execution of service.                       |
      | CAS_IFIN_Share_04 | <ProductType> | responseMessage  |                   | This field signifies the response message received on execution of service.                    |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields |                   | This block signifies the list of additional field required specific for the particular region. |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField1  | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField2  | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField3  | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField4  | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField5  | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField6  | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField7  | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField8  | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField9  | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField10 | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField11 | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField12 | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField13 | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField14 | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField15 | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField16 | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField17 | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField18 | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField19 | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField20 | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField21 | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField22 | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField23 | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField24 | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField25 | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField26 | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField27 | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField28 | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField29 | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField30 | This field signifies the additional field for maintaining additional data.                     |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | dateField1        | This field signifies the additional date field for maintaining additional data.                |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | dateField2        | This field signifies the additional date field for maintaining additional data.                |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | dateField3        | This field signifies the additional date field for maintaining additional data.                |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | dateField4        | This field signifies the additional date field for maintaining additional data.                |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | dateField5        | This field signifies the additional date field for maintaining additional data.                |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | dateField6        | This field signifies the additional date field for maintaining additional data.                |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | dateField7        | This field signifies the additional date field for maintaining additional data.                |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | dateField8        | This field signifies the additional date field for maintaining additional data.                |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | dateField9        | This field signifies the additional date field for maintaining additional data.                |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | dateField10       | This field signifies the additional date field for maintaining additional data.                |

  #FeatureID-ACAUTOCAS-5496
Scenario Outline: ACAUTOCAS-18125: <DataType> of <Fields> with <SubFields> should be present in share confirmation service <APIName> request details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<DataType>" of "<Fields>" with "<SubFields>" data type should be present in share confirmation API request details
    Examples:
      | APIName           | ProductType   | Fields              | SubFields          | DataType |
      | CAS_IFIN_Share_04 | <ProductType> | applicationId       |                    | string   |
      | CAS_IFIN_Share_04 | <ProductType> | platform            |                    | string   |
      | CAS_IFIN_Share_04 | <ProductType> | hostCifNumber       |                    | string   |
      | CAS_IFIN_Share_04 | <ProductType> | clientID            |                    | string   |
      | CAS_IFIN_Share_04 | <ProductType> | transactionID       |                    | string   |
      | CAS_IFIN_Share_04 | <ProductType> | transactionNumber   |                    | string   |
      | CAS_IFIN_Share_04 | <ProductType> | dynamicFormDetails  | dynamicFormDetails | string   |
      | CAS_IFIN_Share_04 | <ProductType> | dynamicFormDetails  | dynamicFormName    | string   |
      | CAS_IFIN_Share_04 | <ProductType> | dynamicFormDetails  | dynamicFormData    | string   |
      | CAS_IFIN_Share_04 | <ProductType> | decision            |                    | string   |
      | CAS_IFIN_Share_04 | <ProductType> | decisionDescription |                    | string   |
      | CAS_IFIN_Share_04 | <ProductType> | reasons             |                    | string   |
      | CAS_IFIN_Share_04 | <ProductType> | reasons             | reason             | string   |
      | CAS_IFIN_Share_04 | <ProductType> | reasons             | description        | string   |
      | CAS_IFIN_Share_04 | <ProductType> | dataPushobject      |                    | string   |

#FeatureID-ACAUTOCAS-5496
Scenario Outline: ACAUTOCAS-18126: <DataType> of <Fields> with <SubFields> should be present in share confirmation service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<DataType>" of "<Fields>" with "<SubFields>" data type should be present in share confirmation API response details
    Examples:
      | APIName           | ProductType   | Fields           | SubFields         | DataType |
      | CAS_IFIN_Share_04 | <ProductType> | responseCode     |                   | string   |
      | CAS_IFIN_Share_04 | <ProductType> | responseMessage  |                   | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields |                   | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField1  | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField2  | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField3  | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField4  | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField5  | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField6  | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField7  | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField8  | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField9  | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField10 | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField11 | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField12 | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField13 | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField14 | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField15 | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField16 | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField17 | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField18 | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField19 | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField20 | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField21 | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField22 | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField23 | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField24 | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField25 | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField26 | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField27 | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField28 | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField29 | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | additionalField30 | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | dateField1        | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | dateField2        | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | dateField3        | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | dateField4        | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | dateField5        | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | dateField6        | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | dateField7        | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | dateField8        | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | dateField9        | string   |
      | CAS_IFIN_Share_04 | <ProductType> | additionalFields | dateField10       | string   |

Scenario Outline: ACAUTOCAS-18127: <Fields> should be present in share confirmation service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Fields>" should be present in API header parameter details
    Examples:
      | APIName           | ProductType   | Fields       |
      | CAS_IFIN_Share_04 | <ProductType> | access_token |
      | CAS_IFIN_Share_04 | <ProductType> | Content-Type |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-18128: <Status> <Fields> should be present in share confirmation service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Status>" "<Fields>" should be present in API header parameter details
    Examples:
      | APIName           | ProductType   | Fields       | Status   |
      | CAS_IFIN_Share_04 | <ProductType> | access_token | required |
      | CAS_IFIN_Share_04 | <ProductType> | Content-Type | required |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-18129: <Description> of <Fields> should be present in share confirmation service <APIName> header details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Description>" of "<Fields>" should be present in API header parameter details
    Examples:
      | APIName           | ProductType   | Fields       | Description                                          |
      | CAS_IFIN_Share_04 | <ProductType> | access_token | Token based authentication is used to access an API. |
      | CAS_IFIN_Share_04 | <ProductType> | Content-Type | It represents the content type of request.           |

#FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-16306: <ColumnLayout> samples funcationality should working properly in share confirmation service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user click on "<ColumnLayout>" toggle button
    Then "<ColumnLayout>" samples funcationality should working properly
    Examples:
      | APIName           | ProductType   | ColumnLayout |
      | CAS_IFIN_Share_04 | <ProductType> | show         |
      | CAS_IFIN_Share_04 | <ProductType> | hide         |

#FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-16307:  Verify Share Confirmation Service for <fieldName> by hit <APIName> with <InputType> validation at <FinalStage> for <ProductType> application of <Category>
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareConfirmation>" and row <SharePurchase_shareConfirmation_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName      | InputType                | SharePurchaseWB    | SharePurchase_shareConfirmation | SharePurchase_shareConfirmation_rowNum | FinalStage  | Category | ApplicationStage   |
      | CAS_IFIN_Share_04 | <ProductType> | Application ID | null                     | sharepurchase.xlsx | share_confirmation              | 0                                      | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | Application ID | incorrect data           | sharepurchase.xlsx | share_confirmation              | 1                                      | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | Application ID | more that 100 characters | sharepurchase.xlsx | share_confirmation              | 2                                      | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | Application ID | negative                 | sharepurchase.xlsx | share_confirmation              | 3                                      | Share Order | shares   | <ApplicationStage> |

#FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-16308:  Verify Share Confirmation Service for <fieldName> by hit <APIName> with <InputType> validation at <FinalStage> for <ProductType> application of <Category>
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareConfirmation>" and row <SharePurchase_shareConfirmation_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName       | InputType                | SharePurchaseWB    | SharePurchase_shareConfirmation | SharePurchase_shareConfirmation_rowNum | FinalStage  | Category | ApplicationStage   |
      | CAS_IFIN_Share_04 | <ProductType> | Host CIF Number | null                     | sharepurchase.xlsx | share_confirmation              | 4                                      | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | Host CIF Number | incorrect data           | sharepurchase.xlsx | share_confirmation              | 5                                      | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | Host CIF Number | more that 100 characters | sharepurchase.xlsx | share_confirmation              | 6                                      | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | Host CIF Number | negative                 | sharepurchase.xlsx | share_confirmation              | 7                                      | Share Order | shares   | <ApplicationStage> |

#FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-16309: Verify Share Registration Service for <fieldName> Fields by hit <APIName> with <InputType> validation at <FinalStage> for <ProductType> application of <Category>
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareConfirmation>" and row <SharePurchase_shareConfirmation_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName | InputType                | SharePurchaseWB    | SharePurchase_shareConfirmation | SharePurchase_shareConfirmation_rowNum | FinalStage  | Category | ApplicationStage   |
      | CAS_IFIN_Share_04 | <ProductType> | platform  | null                     | sharepurchase.xlsx | share_confirmation              | 8                                      | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | platform  | incorrect data           | sharepurchase.xlsx | share_confirmation              | 9                                      | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | platform  | more that 255 characters | sharepurchase.xlsx | share_confirmation              | 10                                     | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | platform  | negative                 | sharepurchase.xlsx | share_confirmation              | 11                                     | Share Order | shares   | <ApplicationStage> |


#FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-16310: Verify Share Registration Service for <fieldName> Fields by hit <APIName> with <InputType> validation at <FinalStage> for <ProductType> application of <Category>
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareConfirmation>" and row <SharePurchase_shareConfirmation_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName | InputType                | SharePurchaseWB    | SharePurchase_shareConfirmation | SharePurchase_shareConfirmation_rowNum | FinalStage  | Category | ApplicationStage   |
      | CAS_IFIN_Share_04 | <ProductType> | ClientID  | null                     | sharepurchase.xlsx | share_confirmation              | 8                                      | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | ClientID  | incorrect data           | sharepurchase.xlsx | share_confirmation              | 9                                      | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | ClientID  | more that 255 characters | sharepurchase.xlsx | share_confirmation              | 10                                     | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | ClientID  | negative                 | sharepurchase.xlsx | share_confirmation              | 11                                     | Share Order | shares   | <ApplicationStage> |

#FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-16311:  Verify Share Registration Service for <fieldName> by hit <APIName> with <InputType> validation at <FinalStage> for <ProductType> application of <Category>
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareConfirmation>" and row <SharePurchase_shareConfirmation_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName      | InputType                | SharePurchaseWB    | SharePurchase_shareConfirmation | SharePurchase_shareConfirmation_rowNum | FinalStage  | Category | ApplicationStage   |
      | CAS_IFIN_Share_04 | <ProductType> | Transaction ID | null                     | sharepurchase.xlsx | share_confirmation              | 12                                     | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | Transaction ID | incorrect data           | sharepurchase.xlsx | share_confirmation              | 13                                     | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | Transaction ID | more that 255 characters | sharepurchase.xlsx | share_confirmation              | 14                                     | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | Transaction ID | negative                 | sharepurchase.xlsx | share_confirmation              | 15                                     | Share Order | shares   | <ApplicationStage> |


#FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-16312:  Verify Share Registration Service for <fieldName> by hit <APIName> with <InputType> validation at <FinalStage> for <ProductType> application of <Category>
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareConfirmation>" and row <SharePurchase_shareConfirmation_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName          | InputType                | SharePurchaseWB    | SharePurchase_shareConfirmation | SharePurchase_shareConfirmation_rowNum | FinalStage  | Category | ApplicationStage   |
      | CAS_IFIN_Share_04 | <ProductType> | Transaction Number | null                     | sharepurchase.xlsx | share_confirmation              | 16                                     | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | Transaction Number | characters               | sharepurchase.xlsx | share_confirmation              | 17                                     | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | Transaction Number | more that 255 characters | sharepurchase.xlsx | share_confirmation              | 18                                     | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | Transaction Number | negative                 | sharepurchase.xlsx | share_confirmation              | 19                                     | Share Order | shares   | <ApplicationStage> |

#FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-16313: Verify Share Registration Service for <fieldName> Details by hit <APIName> with <InputType> validation at <FinalStage> for <ProductType> application of <Category>
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareConfirmation>" and row <SharePurchase_shareConfirmation_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName         | InputType                | SharePurchaseWB    | SharePurchase_shareConfirmation | SharePurchase_shareConfirmation_rowNum | FinalStage  | Category | ApplicationStage   |
      | CAS_IFIN_Share_04 | <ProductType> | Dynamic Form Name | null                     | sharepurchase.xlsx | share_confirmation              | 20                                     | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | Dynamic Form Name | incorrect data           | sharepurchase.xlsx | share_confirmation              | 21                                     | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | Dynamic Form Name | more that 255 characters | sharepurchase.xlsx | share_confirmation              | 22                                     | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | Dynamic Form Data | null                     | sharepurchase.xlsx | share_confirmation              | 23                                     | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | Dynamic Form Data | incorrect data           | sharepurchase.xlsx | share_confirmation              | 24                                     | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | Dynamic Form Data | more that 255 characters | sharepurchase.xlsx | share_confirmation              | 25                                     | Share Order | shares   | <ApplicationStage> |

#FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-16313: Verify Share Registration Service for <fieldName> Details by hit <APIName> with <InputType> validation at <FinalStage> for <ProductType> application of <Category>
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareConfirmation>" and row <SharePurchase_shareConfirmation_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | fieldName          | InputType                | SharePurchaseWB    | SharePurchase_shareConfirmation | SharePurchase_shareConfirmation_rowNum | FinalStage  | Category | ApplicationStage   |
      | CAS_IFIN_Share_04 | <ProductType> | Reason             | null                     | sharepurchase.xlsx | share_confirmation              | 26                                     | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | Reason             | incorrect data           | sharepurchase.xlsx | share_confirmation              | 27                                     | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | Reason             | more that 255 characters | sharepurchase.xlsx | share_confirmation              | 28                                     | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | Reason Description | null                     | sharepurchase.xlsx | share_confirmation              | 29                                     | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | Reason Description | incorrect data           | sharepurchase.xlsx | share_confirmation              | 30                                     | Share Order | shares   | <ApplicationStage> |
      | CAS_IFIN_Share_04 | <ProductType> | Reason Description | more that 255 characters | sharepurchase.xlsx | share_confirmation              | 31                                     | Share Order | shares   | <ApplicationStage> |

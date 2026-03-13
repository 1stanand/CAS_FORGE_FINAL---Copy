@Epic-PF_Share_Base
@PQMStory
@AuthoredBy-ankit.yadav
@ImplementedBy-ankit.yadav
@ReviewedBy-None
@Islamic
@ReleaseIslamicM3
@Release
@Shares


#${ProductType:["IPF"]}

Feature: Islamic Share Execution API via API Center

#  Pre-Requisites---
#  In this feature we will validate the share execution api
# PRODUCT_TYPE
#  IPF	    Personal Finance
#  IHF	    Home Finance
#  IAF	    Auto Finance

  Background:
    Given user is on CAS Login Page
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


#PQM-01_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14880:  API Documentation Tab for <ProductType> application
    When user clicks on Documentation tab
    Then Service is present as per contract in API
    Examples:
      | ProductType   |
      | <ProductType> |


#PQM-02_CAS-189529
#ST-43_CAS-189529,42_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14881: Verify share execution <Service> in api documentation for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user click on download "<Service>"
    Then "<Service>" is present as per contract in API
    Examples:
      | Service                 | ProductType   | APIName           |
      | API Documentation PDF   | <ProductType> | CAS_IFIN_Share_06 |
      | API Documentation Excel | <ProductType> | CAS_IFIN_Share_06 |


#PQM-3.1_CAS-189529, 02_CAS-189529
#PMG-02_CAS-191648
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14882: Validating <API Header> in API center for <ProductType> application
    And user click on CAS API vault
    When user search "<API Header>" in search bar
    Then "<API Header>" should be present in API center
    Examples:
      | API Header            | ProductType   |
      | CAS_IFIN_Share_06     | <ProductType> |
      | shareExecutionService | <ProductType> |
      | CAS_IFIN_Share_05     | <ProductType> |
      | shareSellService      | <ProductType> |


#PQM-3.2_CAS-189529, 02_CAS-189529
#PMG-02_CAS-191648
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14883:  Validating <API Description> in API center for <ProductType> application
    And user click on CAS API vault
    When user search "<API Description>" in search bar
    Then "<API Description>" should be present in API center
    Examples:
      | API Description                                                     | ProductType   |
      | This service is used to execute and update share execution details. | <ProductType> |
      | This service will be used to notify platfom to sell/release shares. | <ProductType> |


#PQM-04_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14884:  Verify API service Share Execution Service URL for <ProductType> application
    And user clicks on Documentation tab
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    When user searches "<APIName>" in documentation and opens
    Then User verify API service shareExecutionService URL
    Examples:
      | ProductType   | APIName           | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | <ProductType> | CAS_IFIN_Share_06 | sharepurchase.xlsx | share_execution              | 0                                   |


#PQM-04_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14885:  validate service as Rest API for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then URL should have REST mentioned
    Examples:
      | ProductType   | APIName           |
      | <ProductType> | CAS_IFIN_Share_06 |


#PQM-05_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14886:  <Fields> with <SubFields> should be present in <APIName> request details for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Fields>" with "<SubFields>" should be present in share API request details
    Examples:
      | APIName           | ProductType   | Fields               | SubFields          |
      | CAS_IFIN_Share_06 | <ProductType> | extendedJSON         |                    |
      | CAS_IFIN_Share_06 | <ProductType> | applicationId        |                    |
      | CAS_IFIN_Share_06 | <ProductType> | hostCifNumber        |                    |
      | CAS_IFIN_Share_06 | <ProductType> | transactionID        |                    |
      | CAS_IFIN_Share_06 | <ProductType> | transactionNumber    |                    |
      | CAS_IFIN_Share_06 | <ProductType> | totalMaxOriginalCost |                    |
      | CAS_IFIN_Share_06 | <ProductType> | totalExecutedAmount  |                    |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails |                    |
      | CAS_IFIN_Share_06 | <ProductType> | status               |                    |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | companyCode        |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | companyName        |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | orderNumber        |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | executedQuantity   |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | executedSharePrice |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | vatAmount          |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | executedAmount     |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | executionFlag      |
      | CAS_IFIN_Share_05 | <ProductType> | dataPushObject       |                    |
      | CAS_IFIN_Share_05 | <ProductType> | applicationId        |                    |
      | CAS_IFIN_Share_05 | <ProductType> | platform             |                    |
      | CAS_IFIN_Share_05 | <ProductType> | orderType            |                    |
      | CAS_IFIN_Share_05 | <ProductType> | cifNumber            |                    |
      | CAS_IFIN_Share_05 | <ProductType> | transactionID        |                    |
      | CAS_IFIN_Share_05 | <ProductType> | transactionNumber    |                    |
      | CAS_IFIN_Share_05 | <ProductType> | dynamicFormDetails   |                    |
      | CAS_IFIN_Share_05 | <ProductType> | dynamicFormDetails   | dynamicFormName    |
      | CAS_IFIN_Share_05 | <ProductType> | dynamicFormDetails   | dynamicFormData    |


#PQM-05_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14887: Validate <Status> <Fields> with <SubFields> should be present in <APIName> request details for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Status>" "<Fields>" with "<SubFields>" should be present in share API request details
    Examples:
      | APIName           | ProductType   | Fields               | Status   | SubFields       |
      | CAS_IFIN_Share_05 | <ProductType> | transactionID        | required |                 |
      | CAS_IFIN_Share_05 | <ProductType> | applicationId        | required |                 |
      | CAS_IFIN_Share_05 | <ProductType> | platform             | required |                 |
      | CAS_IFIN_Share_05 | <ProductType> | orderType            | required |                 |
      | CAS_IFIN_Share_05 | <ProductType> | transactionNumber    | required |                 |
      | CAS_IFIN_Share_06 | <ProductType> | applicationId        | required |                 |
      | CAS_IFIN_Share_06 | <ProductType> | transactionID        | required |                 |
      | CAS_IFIN_Share_06 | <ProductType> | transactionNumber    | required |                 |
      | CAS_IFIN_Share_06 | <ProductType> | totalMaxOriginalCost | required |                 |
      | CAS_IFIN_Share_06 | <ProductType> | totalExecutedAmount  | required |                 |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | required |                 |
      | CAS_IFIN_Share_06 | <ProductType> | status               | required |                 |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | required | companyCode     |
      | CAS_IFIN_Share_05 | <ProductType> | dynamicFormDetails   | required | dynamicFormData |
      | CAS_IFIN_Share_05 | <ProductType> | dynamicFormDetails   | required | dynamicFormName |

#PQM-05_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14888:  <Fields> with <SubFields> should be present in <APIName> response details for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Fields>" with "<SubFields>" should be present in API response details
    Examples:
      | APIName           | ProductType   | Fields           | SubFields         |
      | CAS_IFIN_Share_05 | <ProductType> | responseCode     |                   |
      | CAS_IFIN_Share_05 | <ProductType> | responseMessage  |                   |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields |                   |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField1  |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField2  |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField3  |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField4  |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField5  |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField6  |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField7  |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField8  |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField9  |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField10 |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField11 |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField12 |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField13 |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField14 |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField15 |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField16 |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField17 |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField18 |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField19 |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField20 |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField21 |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField22 |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField23 |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField24 |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField25 |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField26 |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField27 |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField28 |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField29 |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField30 |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | dateField1        |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | dateField2        |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | dateField3        |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | dateField4        |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | dateField5        |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | dateField6        |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | dateField7        |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | dateField8        |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | dateField9        |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | dateField10       |
      | CAS_IFIN_Share_06 | <ProductType> | responseCode     |                   |
      | CAS_IFIN_Share_06 | <ProductType> | responseMessage  |                   |
      | CAS_IFIN_Share_06 | <ProductType> | errorList        |                   |
      | CAS_IFIN_Share_06 | <ProductType> | errorList        | errorCode         |
      | CAS_IFIN_Share_06 | <ProductType> | errorList        | errorDescription  |


#PQM-05_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14889:  <Status> <Fields> with <SubFields> should be present in <APIName> response details for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Status>" "<Fields>" with "<SubFields>" should be present in share API response details
    Examples:
      | APIName           | ProductType   | Fields          | Status   | SubFields |
      | CAS_IFIN_Share_05 | <ProductType> | responseCode    | required |           |
      | CAS_IFIN_Share_05 | <ProductType> | responseMessage | required |           |
      | CAS_IFIN_Share_06 | <ProductType> | responseCode    | required |           |
      | CAS_IFIN_Share_06 | <ProductType> | responseMessage | required |           |
      | CAS_IFIN_Share_06 | <ProductType> | errorList       | required |           |


#PQM-06_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14890:  <Description> of <Fields> with <SubFields> should be present in <APIName> request details for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Description>" of "<Fields>" with "<SubFields>" should be present in share API request details
    Examples:
      | APIName           | ProductType   | Fields               | SubFields          | Description                                                                                                                                                                                                                                                                              |
      | CAS_IFIN_Share_06 | <ProductType> | extendedJSON         |                    | This field signifies the dynamic json. The length of the field is 4000.                                                                                                                                                                                                                  |
      | CAS_IFIN_Share_06 | <ProductType> | applicationId        |                    | This field signifies the system generated Application ID tagged with an application in database. The length of the field is 100.                                                                                                                                                         |
      | CAS_IFIN_Share_06 | <ProductType> | hostCifNumber        |                    | This field signifies the host CIF number tagged with an application in database. The length of the field is 100.                                                                                                                                                                         |
      | CAS_IFIN_Share_06 | <ProductType> | transactionID        |                    | This field signifies the Transaction ID which is unique system generated running sequence number for each execution. The length of the field is 255.                                                                                                                                     |
      | CAS_IFIN_Share_06 | <ProductType> | transactionNumber    |                    | This field signifies the unique Transaction Number. For an application there will be only one unique transaction number. The length of the field is 255.                                                                                                                                 |
      | CAS_IFIN_Share_06 | <ProductType> | totalMaxOriginalCost |                    | This field signifies the Total Max Original Cost of all records. The length of the field is 18 with decimal precision 7.                                                                                                                                                                 |
      | CAS_IFIN_Share_06 | <ProductType> | totalExecutedAmount  |                    | This field signifies the Total Executed Cost of all records. The length of the field is 18 with decimal precision 7.                                                                                                                                                                     |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails |                    | This block signifies the Executed Share Details. The same is mandatory for executing shares with respective platform.                                                                                                                                                                    |
      | CAS_IFIN_Share_06 | <ProductType> | status               |                    | This field signfies the status of execution call shared by platform. The valid value of the field will be from Dtype-ShareExecutionStatus and sample values are Approve or Reject. The length of the field is 255.                                                                       |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | companyCode        | This field signifies the Company Code. The valid value of the field will be from Dtype-TadawulCompanyNameIFIN. The length of the field is 255.                                                                                                                                           |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | companyName        | This field signifies the Company Name. The valid value of the field will be from Dtype-TadawulCompanyNameIFIN and sample values are Atkins Middle East, The Creative Company etc. The length of the field is 255.                                                                        |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | orderNumber        | This field signifies the order number of the executed share. The length of the field is 255.                                                                                                                                                                                             |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | executedQuantity   | This field signifies the quantity of the executed share. This field is mandatory when Order Number is provided. The length of the field is 18 with decimal precision 7.                                                                                                                  |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | executedSharePrice | This field signifies the executed share price. This field is mandatory when Order Number is provided. The length of the field is 18 with decimal precision 7.                                                                                                                            |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | vatAmount          | This field signifies the VAT on the executed share price .This field is mandatory when Order Number is provided. The length of the field is 18 with decimal precision 7.                                                                                                                 |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | executedAmount     | This field signifies the share executed amount. This field is mandatory when Order Number is provided. The length of the field is 18 with decimal precision 7                                                                                                                            |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | executionFlag      | The fields signifies the execution flag of the executed share. The length of the field is 1                                                                                                                                                                                              |
      | CAS_IFIN_Share_05 | <ProductType> | dataPushObject       |                    | This field signifies the data push object for sharing additional data in the request.                                                                                                                                                                                                    |
      | CAS_IFIN_Share_05 | <ProductType> | applicationId        |                    | This field signifies the system generated Application ID tagged with an application in database. The length of the field is 100.                                                                                                                                                         |
      | CAS_IFIN_Share_05 | <ProductType> | platform             |                    | This field signifies the platform on which share sell call will be made. Platform needs to be same across an application. The valid value of the field will be from Dtype-TadawulPlatformIFIN and possible values are TADAWUL_DIRECT & TADAWUL_STANDARD. The length of the field is 255. |
      | CAS_IFIN_Share_05 | <ProductType> | orderType            |                    | This field signifies the order type of shares. Order Type needs to be same across an application. The valid value of the field will be from Dtype-TadawulOrderTypeIFIN and possible values are REQUESTED_SHARE_PRICE & MARKET_SHARE_PRICE. The length of the field is 255.               |
      | CAS_IFIN_Share_05 | <ProductType> | cifNumber            |                    | This field signifies the CIF Number of customer. The length of this field is 255.                                                                                                                                                                                                        |
      | CAS_IFIN_Share_05 | <ProductType> | transactionID        |                    | This field signifies the Transaction ID which is unique system generated running sequence number for each execution. The length of the field is 255.                                                                                                                                     |
      | CAS_IFIN_Share_05 | <ProductType> | transactionNumber    |                    | This field signifies the unique Transaction Number. For an application there will be only one unique transaction number. The length of the field is 255.                                                                                                                                 |
      | CAS_IFIN_Share_05 | <ProductType> | dynamicFormDetails   |                    | This block signifies the dynamic form details that needs to be added. This block is non mandatory.                                                                                                                                                                                       |
      | CAS_IFIN_Share_05 | <ProductType> | dynamicFormDetails   | dynamicFormName    | This field signifies the dynamic form name. The valid value will be from Dynamic form mapping master. The length of the field is 255.                                                                                                                                                    |
      | CAS_IFIN_Share_05 | <ProductType> | dynamicFormDetails   | dynamicFormData    | This field signifies the dynamic json data. The valid value will be from Dynamic form mapping master. The length of the field is 4000.                                                                                                                                                   |


#PQM-6_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14888:  <Description> of <Fields> with <SubFields> should be present in <APIName> response details for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Description>" of "<Fields>" with "<SubFields>" should be present in share API response details
    Examples:
      | APIName           | ProductType   | Fields           | SubFields        | Description                                                                                                                      |
      | CAS_IFIN_Share_05 | <ProductType> | responseCode     |                  | This field signifies the response code received on execution of service. The length of the field is 255.                         |
      | CAS_IFIN_Share_05 | <ProductType> | responseMessage  |                  | This field signifies the response message received on execution of service. The length of the field is 255.                      |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields |                  | This block signifies the list of additional field required specific for the particular region. This block is non mandatory.      |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField1 | This field signifies the additional field for maintaining additional data. The length of the field is 255.                       |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | dateField1       | This field signifies the additional date field for maintaining additional data. The valid date format is YYYY-MM-DDThh:mm:ssTZD. |
      | CAS_IFIN_Share_06 | <ProductType> | responseCode     |                  | This field signifies the response code received on execution of service. The length of the field is 255.                         |
      | CAS_IFIN_Share_06 | <ProductType> | responseMessage  |                  | This field signifies the response message received on execution of service. The length of the field is 255.                      |
      | CAS_IFIN_Share_06 | <ProductType> | errorList        |                  | This block will contain array of errors received on validation                                                                   |
      | CAS_IFIN_Share_06 | <ProductType> | errorList        | errorCode        | This field signifies the Error Code. The length of the field is 255.                                                             |
      | CAS_IFIN_Share_06 | <ProductType> | errorList        | errorDescription | This field signifies the Error Message. The length of the field is 255.                                                          |

#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14890:  <DataType> of <Fields> with <SubFields> should be present in <APIName> request details for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<DataType>" of "<Fields>" with "<SubFields>" data type should be present in share API request details
    Examples:
      | APIName           | ProductType   | Fields               | SubFields          | DataType |
      | CAS_IFIN_Share_06 | <ProductType> | extendedJSON         |                    | string      |
      | CAS_IFIN_Share_06 | <ProductType> | applicationId        |                    | string      |
      | CAS_IFIN_Share_06 | <ProductType> | hostCifNumber        |                    | string      |
      | CAS_IFIN_Share_06 | <ProductType> | transactionID        |                    | string      |
      | CAS_IFIN_Share_06 | <ProductType> | transactionNumber    |                    | string      |
      | CAS_IFIN_Share_06 | <ProductType> | totalMaxOriginalCost |                    | string      |
      | CAS_IFIN_Share_06 | <ProductType> | totalExecutedAmount  |                    | string      |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails |                    | string      |
      | CAS_IFIN_Share_06 | <ProductType> | status               |                    | string      |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | companyCode        | string      |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | companyName        | string      |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | orderNumber        | string      |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | executedQuantity   | string      |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | executedSharePrice | string      |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | vatAmount          | string      |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | executedAmount     | string      |
      | CAS_IFIN_Share_06 | <ProductType> | executedShareDetails | executionFlag      | string      |
      | CAS_IFIN_Share_05 | <ProductType> | dataPushObject       |                    | string      |
      | CAS_IFIN_Share_05 | <ProductType> | applicationId        |                    | string      |
      | CAS_IFIN_Share_05 | <ProductType> | platform             |                    | string      |
      | CAS_IFIN_Share_05 | <ProductType> | orderType            |                    | string      |
      | CAS_IFIN_Share_05 | <ProductType> | cifNumber            |                    | string      |
      | CAS_IFIN_Share_05 | <ProductType> | transactionID        |                    | string      |
      | CAS_IFIN_Share_05 | <ProductType> | transactionNumber    |                    | string      |
      | CAS_IFIN_Share_05 | <ProductType> | dynamicFormDetails   |                    | string      |
      | CAS_IFIN_Share_05 | <ProductType> | dynamicFormDetails   | dynamicFormName    | string      |
      | CAS_IFIN_Share_05 | <ProductType> | dynamicFormDetails   | dynamicFormData    | string      |

#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14888:  <DataType> of <Fields> with <SubFields> should be present in <APIName> response details for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<DataType>" of "<Fields>" with "<SubFields>" data type should be present in share API response details
    Examples:
      | APIName           | ProductType   | Fields           | SubFields        | DataType |
      | CAS_IFIN_Share_05 | <ProductType> | responseCode     |                  | string      |
      | CAS_IFIN_Share_05 | <ProductType> | responseMessage  |                  | string      |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields |                  | string      |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | additionalField1 | string      |
      | CAS_IFIN_Share_05 | <ProductType> | additionalFields | dateField1       | string      |
      | CAS_IFIN_Share_06 | <ProductType> | responseCode     |                  | string      |
      | CAS_IFIN_Share_06 | <ProductType> | responseMessage  |                  | string      |
      | CAS_IFIN_Share_06 | <ProductType> | errorList        |                  | string      |
      | CAS_IFIN_Share_06 | <ProductType> | errorList        | errorCode        | string      |
      | CAS_IFIN_Share_06 | <ProductType> | errorList        | errorDescription | string      |

Scenario Outline: ACAUTOCAS-18130: <Fields> should be present in share execution service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Fields>" should be present in API header parameter details
    Examples:
      | APIName           | ProductType   | Fields       |
      | CAS_IFIN_Share_05 | <ProductType> | access_token |
      | CAS_IFIN_Share_05 | <ProductType> | Content-Type |
      | CAS_IFIN_Share_06 | <ProductType> | access_token |
      | CAS_IFIN_Share_06 | <ProductType> | Content-Type |
    
#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-18131: <Status> <Fields> should be present in share execution service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Status>" "<Fields>" should be present in API header parameter details
    Examples:
      | APIName           | ProductType   | Fields       | Status   |
      | CAS_IFIN_Share_05 | <ProductType> | access_token | required |
      | CAS_IFIN_Share_05 | <ProductType> | Content-Type | required |
      | CAS_IFIN_Share_06 | <ProductType> | access_token | required |
      | CAS_IFIN_Share_06 | <ProductType> | Content-Type | required |
    
#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-18132: <Description> of <Fields> should be present in share execution service <APIName> header details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Description>" of "<Fields>" should be present in API header parameter details
    Examples:
      | APIName           | ProductType   | Fields       | Description                                          |
      | CAS_IFIN_Share_05 | <ProductType> | access_token | Token based authentication is used to access an API. |
      | CAS_IFIN_Share_05 | <ProductType> | Content-Type | It represents the content type of request.           |
      | CAS_IFIN_Share_06 | <ProductType> | access_token | Token based authentication is used to access an API. |
      | CAS_IFIN_Share_06 | <ProductType> | Content-Type | It represents the content type of request.           |
    
##PQM-7_CAS-189529
##need to discuss
#  #FeatureID-ACAUTOCAS-11331
##FeatureID-ACAUTOCAS-11317
#  Scenario Outline: Verify service in async mode for <ProductType> application
#    And User have taken the JSON from API center
#    When User hit the service in POSTMAN Request
#    Then Service should be work in async mode as per configuration
#    Examples:
#      | ProductType   |
#      | <ProductType> |


#PQM-9_CAS-189529,10_CAS-189529,11_CAS-189529
#UT-76_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14891:  Verify Service for Application ID by hit <APIName> with <InputType> validation for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | InputType                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | null                     | sharepurchase.xlsx | share_execution              | 0                                   |
      | CAS_IFIN_Share_06 | <ProductType> | incorrect data           | sharepurchase.xlsx | share_execution              | 1                                   |
      | CAS_IFIN_Share_06 | <ProductType> | more that 100 characters | sharepurchase.xlsx | share_execution              | 2                                   |
      | CAS_IFIN_Share_06 | <ProductType> | negative                 | sharepurchase.xlsx | share_execution              | 67                                  |


#PQM-12_CAS-189529,13_CAS-189529
#UT-76_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14892:  Verify Service for Host CIF Number by hit <APIName> with <InputType> validation for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | InputType                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | null                     | sharepurchase.xlsx | share_execution              | 3                                   |
      | CAS_IFIN_Share_06 | <ProductType> | incorrect data           | sharepurchase.xlsx | share_execution              | 4                                   |
      | CAS_IFIN_Share_06 | <ProductType> | more that 100 characters | sharepurchase.xlsx | share_execution              | 5                                   |
      | CAS_IFIN_Share_06 | <ProductType> | negative                 | sharepurchase.xlsx | share_execution              | 68                                  |


#PQM-14_CAS-189529,15_CAS-189529,16_CAS-189529
#UT-76_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14893:  Verify Service for Transaction ID by hit <APIName> with <InputType> validation for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | InputType                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | null                     | sharepurchase.xlsx | share_execution              | 6                                   |
      | CAS_IFIN_Share_06 | <ProductType> | incorrect data           | sharepurchase.xlsx | share_execution              | 7                                   |
      | CAS_IFIN_Share_06 | <ProductType> | more that 255 characters | sharepurchase.xlsx | share_execution              | 8                                   |
      | CAS_IFIN_Share_06 | <ProductType> | negative                 | sharepurchase.xlsx | share_execution              | 69                                  |


#PQM-17_CAS-189529,18_CAS-189529,19_CAS-189529
#UT-76_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14894:  Verify Service for Transaction Number by hit <APIName> with <InputType> validation for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | InputType                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | null                     | sharepurchase.xlsx | share_execution              | 9                                   |
      | CAS_IFIN_Share_06 | <ProductType> | characters               | sharepurchase.xlsx | share_execution              | 10                                  |
      | CAS_IFIN_Share_06 | <ProductType> | more that 255 characters | sharepurchase.xlsx | share_execution              | 11                                  |
      | CAS_IFIN_Share_06 | <ProductType> | negative                 | sharepurchase.xlsx | share_execution              | 70                                  |


#PQM-20_CAS-189529,21_CAS-189529,22_CAS-189529,23_CAS-189529,24_CAS-189529,25_CAS-189529,26_CAS-189529
#UT-76_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14895:  Verify Service for Total Max Original Cost by hit <APIName> with <InputType> validation for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | InputType               | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | null                    | sharepurchase.xlsx | share_execution              | 12                                  |
      | CAS_IFIN_Share_06 | <ProductType> | incorrect data          | sharepurchase.xlsx | share_execution              | 13                                  |
      | CAS_IFIN_Share_06 | <ProductType> | more that 18 characters | sharepurchase.xlsx | share_execution              | 14                                  |
      | CAS_IFIN_Share_06 | <ProductType> | negative                | sharepurchase.xlsx | share_execution              | 71                                  |


#PQM-24_CAS-189529,25_CAS-189529,26_CAS-189529,42_CAS-189529,43_CAS-189529,44_CAS-189529
#UT-76_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14896:  Verify Service for Total Executed Amount by hit <APIName> with <InputType> validation for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | InputType               | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | null                    | sharepurchase.xlsx | share_execution              | 15                                  |
      | CAS_IFIN_Share_06 | <ProductType> | incorrect data          | sharepurchase.xlsx | share_execution              | 16                                  |
      | CAS_IFIN_Share_06 | <ProductType> | more that 18 characters | sharepurchase.xlsx | share_execution              | 17                                  |
      | CAS_IFIN_Share_06 | <ProductType> | negative                | sharepurchase.xlsx | share_execution              | 214                                 |


#PQM-27_CAS-189529
#UT-76_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14897:  Verify Service for Executed Share Details by hit <APIName> with <InputType> validation for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | InputType                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | null                     | sharepurchase.xlsx | share_execution              | 18                                  |
      | CAS_IFIN_Share_06 | <ProductType> | incorrect data           | sharepurchase.xlsx | share_execution              | 19                                  |
      | CAS_IFIN_Share_06 | <ProductType> | more that 255 characters | sharepurchase.xlsx | share_execution              | 20                                  |


#PQM-28_CAS-189529, 29_CAS-189529, 30_CAS-189529
#UT-76_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14898:  Verify Service for Company Code by hit <APIName> with <InputType> validation for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | InputType                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | null                     | sharepurchase.xlsx | share_execution              | 21                                  |
      | CAS_IFIN_Share_06 | <ProductType> | incorrect data           | sharepurchase.xlsx | share_execution              | 22                                  |
      | CAS_IFIN_Share_06 | <ProductType> | more that 255 characters | sharepurchase.xlsx | share_execution              | 23                                  |
      | CAS_IFIN_Share_06 | <ProductType> | negative                 | sharepurchase.xlsx | share_execution              | 215                                 |


#PQM-31_CAS-189529, 32_CAS-189529
#UT-76_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14899:  Verify Service for Company Name by hit <APIName> with <InputType> validation for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | InputType                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | null                     | sharepurchase.xlsx | share_execution              | 24                                  |
      | CAS_IFIN_Share_06 | <ProductType> | incorrect data           | sharepurchase.xlsx | share_execution              | 25                                  |
      | CAS_IFIN_Share_06 | <ProductType> | more that 255 characters | sharepurchase.xlsx | share_execution              | 26                                  |
      | CAS_IFIN_Share_06 | <ProductType> | negative                 | sharepurchase.xlsx | share_execution              | 216                                 |


#PQM-33_CAS-189529,34_CAS-189529,31_CAS-189529,32_CAS-189529
#UT-76_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14900:  Verify Service for Executed Quantity by hit <APIName> with <InputType> validation for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | InputType                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | null                     | sharepurchase.xlsx | share_execution              | 27                                  |
      | CAS_IFIN_Share_06 | <ProductType> | incorrect data           | sharepurchase.xlsx | share_execution              | 28                                  |
      | CAS_IFIN_Share_06 | <ProductType> | more that 100 characters | sharepurchase.xlsx | share_execution              | 29                                  |
      | CAS_IFIN_Share_06 | <ProductType> | negative                 | sharepurchase.xlsx | share_execution              | 218                                 |


#PQM-35_CAS-189529, 36_CAS-189529
#UT-76_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14901:  Verify Service for Executed Share Price by hit <APIName> with <InputType> validation for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | InputType                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | null                     | sharepurchase.xlsx | share_execution              | 30                                  |
      | CAS_IFIN_Share_06 | <ProductType> | incorrect data           | sharepurchase.xlsx | share_execution              | 31                                  |
      | CAS_IFIN_Share_06 | <ProductType> | more that 100 characters | sharepurchase.xlsx | share_execution              | 32                                  |
      | CAS_IFIN_Share_06 | <ProductType> | negative                 | sharepurchase.xlsx | share_execution              | 219                                 |


#PQM-37_CAS-189529,38_CAS-189529
#UT-76_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14902:  Verify Service for VAT Amount by hit <APIName> with <InputType> validation for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | InputType                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | null                     | sharepurchase.xlsx | share_execution              | 33                                  |
      | CAS_IFIN_Share_06 | <ProductType> | incorrect data           | sharepurchase.xlsx | share_execution              | 34                                  |
      | CAS_IFIN_Share_06 | <ProductType> | more that 100 characters | sharepurchase.xlsx | share_execution              | 35                                  |
      | CAS_IFIN_Share_06 | <ProductType> | negative                 | sharepurchase.xlsx | share_execution              | 220                                 |


#PQM-39_CAS-189529,40_CAS-189529,41_CAS-189529
#UT-76_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14903:  Verify Service for Executed Amount by hit <APIName> with <InputType> validation for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | InputType                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | null                     | sharepurchase.xlsx | share_execution              | 36                                  |
      | CAS_IFIN_Share_06 | <ProductType> | incorrect data           | sharepurchase.xlsx | share_execution              | 37                                  |
      | CAS_IFIN_Share_06 | <ProductType> | more that 100 characters | sharepurchase.xlsx | share_execution              | 38                                  |
      | CAS_IFIN_Share_06 | <ProductType> | negative                 | sharepurchase.xlsx | share_execution              | 221                                 |


#UT-54_CAS-189529,76_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14904:  Verify Service for Order Number by hit <APIName> with <InputType> validation for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | InputType                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | null                     | sharepurchase.xlsx | share_execution              | 39                                  |
      | CAS_IFIN_Share_06 | <ProductType> | incorrect data           | sharepurchase.xlsx | share_execution              | 40                                  |
      | CAS_IFIN_Share_06 | <ProductType> | more that 100 characters | sharepurchase.xlsx | share_execution              | 41                                  |
      | CAS_IFIN_Share_06 | <ProductType> | negative                 | sharepurchase.xlsx | share_execution              | 217                                 |


#UT-21_CAS-189529,22_CAS-189529,23_CAS-189529,24_CAS-189529
#ST-55_CAS-189529,56_CAS-189529,57_CAS-189529,58_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14905:  Verify Service for Order Number is not null by hit <APIName> with <ExecutedQuantity> <ExecutedSharePrice> <ExecutedAmount> <VatAmount> validation for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | ExecutedQuantity | ExecutedSharePrice | ExecutedAmount | VatAmount | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | not null         | null               | null           | null      | sharepurchase.xlsx | share_execution              | 42                                  |
      | CAS_IFIN_Share_06 | <ProductType> | null             | not null           | null           | null      | sharepurchase.xlsx | share_execution              | 43                                  |
      | CAS_IFIN_Share_06 | <ProductType> | null             | null               | not null       | null      | sharepurchase.xlsx | share_execution              | 44                                  |
      | CAS_IFIN_Share_06 | <ProductType> | null             | null               | null           | not null  | sharepurchase.xlsx | share_execution              | 45                                  |
      | CAS_IFIN_Share_06 | <ProductType> | not null         | not null           | null           | null      | sharepurchase.xlsx | share_execution              | 46                                  |
      | CAS_IFIN_Share_06 | <ProductType> | null             | not null           | not null       | null      | sharepurchase.xlsx | share_execution              | 47                                  |
      | CAS_IFIN_Share_06 | <ProductType> | null             | null               | not null       | not null  | sharepurchase.xlsx | share_execution              | 48                                  |
      | CAS_IFIN_Share_06 | <ProductType> | not null         | null               | null           | not null  | sharepurchase.xlsx | share_execution              | 49                                  |
      | CAS_IFIN_Share_06 | <ProductType> | not null         | null               | not null       | null      | sharepurchase.xlsx | share_execution              | 50                                  |
      | CAS_IFIN_Share_06 | <ProductType> | null             | not null           | null           | not null  | sharepurchase.xlsx | share_execution              | 51                                  |
      | CAS_IFIN_Share_06 | <ProductType> | not null         | not null           | not null       | null      | sharepurchase.xlsx | share_execution              | 52                                  |
      | CAS_IFIN_Share_06 | <ProductType> | null             | not null           | not null       | not null  | sharepurchase.xlsx | share_execution              | 53                                  |
      | CAS_IFIN_Share_06 | <ProductType> | not null         | null               | not null       | not null  | sharepurchase.xlsx | share_execution              | 54                                  |
      | CAS_IFIN_Share_06 | <ProductType> | not null         | not null           | null           | not null  | sharepurchase.xlsx | share_execution              | 55                                  |


#ST-51_CAS-189529,52_CAS-189529,64_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14906:  Verify Service for Status by hit <APIName> with <InputType> validation for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | InputType | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | null      | sharepurchase.xlsx | share_execution              | 56                                  |
      | CAS_IFIN_Share_06 | <ProductType> | blank     | sharepurchase.xlsx | share_execution              | 57                                  |
      | CAS_IFIN_Share_06 | <ProductType> | Approve   | sharepurchase.xlsx | share_execution              | 58                                  |
      | CAS_IFIN_Share_06 | <ProductType> | Reject    | sharepurchase.xlsx | share_execution              | 59                                  |
      | CAS_IFIN_Share_06 | <ProductType> | Other     | sharepurchase.xlsx | share_execution              | 60                                  |


#ST-66_CAS-189529,67_CAS-189529
#UT-54_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14907:  Verify Service for Execution Flag by hit <APIName> with <InputType> validation for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | InputType | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | null      | sharepurchase.xlsx | share_execution              | 61                                  |
      | CAS_IFIN_Share_06 | <ProductType> | true      | sharepurchase.xlsx | share_execution              | 62                                  |
      | CAS_IFIN_Share_06 | <ProductType> | false     | sharepurchase.xlsx | share_execution              | 63                                  |

#
##PQM-45_CAS-189529
##Invalid Scenarios
#  #FeatureID-ACAUTOCAS-11331
##FeatureID-ACAUTOCAS-11317
#  Scenario Outline: Verify data push pull object in the API for <ProductType> application
#    And User on interface block configuration screen
#    When Enter data in push object
#    Then Request should successfully get hit with data in data push object
#    Examples:
#      | ProductType   |
#      | <ProductType> |


#PQM-46_CAS-189529,47_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14908:  Execute share execution service by hit <APIName> in case of "<Decision>" for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | Decision | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_04 | <ProductType> | Approve  | sharepurchase.xlsx | share_execution              | 72                                  |
      | CAS_IFIN_Share_04 | <ProductType> | Reject   | sharepurchase.xlsx | share_execution              | 73                                  |


#ST-22_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14909:  Verify Total Executed Amount is equal to sum of Executed Amount of all records by hit <APIName> for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | sharepurchase.xlsx | share_execution              | 74                                  |


#ST-23_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14910:  Verify Total Executed Amount is not greater than Total Max Original Cost by hit <APIName> for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | sharepurchase.xlsx | share_execution              | 75                                  |


#UT-57_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14911:  Execution date is greater than Expiry date by hit <APIName> for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | sharepurchase.xlsx | share_execution              | 76                                  |


#ST-26_CAS-189529,27_CAS-189529,29_CAS-189529,30_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14912:  Verify Share calculation logic by hit <APIName> for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | sharepurchase.xlsx | share_execution              | 77                                  |


#ST-28_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14913:  Verify VAT Amount can not be equal to executed share price by hit <APIName> for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | sharepurchase.xlsx | share_execution              | 78                                  |


#ST-26_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14914:  Verify Executed Quantity does not match with the logic executed amount and executed share price by hit <APIName> for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | sharepurchase.xlsx | share_execution              | 64                                  |


#ST-29_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14915:  Verify Executed Amount does not match with the logic executed quantity by hit <APIName> for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | sharepurchase.xlsx | share_execution              | 65                                  |


#ST-30_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14916:  Verify Executed Amount cannot be greater than Max Original Cost by hit <APIName> for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | sharepurchase.xlsx | share_execution              | 66                                  |


#UT-77_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14917:  Verify <FieldName> is required by hit <APIName> for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters "<FieldName>" in post request
    When user click on send request button
    Then user get an error message for mandatory field
    Examples:
      | FieldName    | APIName           | ProductType   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | Access Token | CAS_IFIN_Share_06 | <ProductType> | sharepurchase.xlsx | share_execution              | 222                                 |
      | Content Type | CAS_IFIN_Share_06 | <ProductType> | sharepurchase.xlsx | share_execution              | 223                                 |



#UT-70_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14918:  Verify data will be stored with each of executed amount as zero by hit <APIName> for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | sharepurchase.xlsx | share_execution              | 224                                 |



#UT-34_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14919:  Verify execution date is equal to expiry date by hit <APIName> for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | sharepurchase.xlsx | share_execution              | 226                                 |


#ST-62_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14920:  Verify max original cost different from the one present in CAS_SHARE_DTL_ISLM_FIN by hit <APIName> for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | sharepurchase.xlsx | share_execution              | 233                                 |


#PQM-57_CAS-189529
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-14921:  Verify Verify try now feature for share execution service by hit <APIName> for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_IFIN_Share_06 | <ProductType> | sharepurchase.xlsx | share_execution              | 234                                 |

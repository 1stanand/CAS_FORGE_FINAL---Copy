@Epic-Direct_Debit_System
@PQMStory
@AuthoredBy-ankit.yadav
@ImplementedBy-ankit.yadav
@ReviewedBy-None
@Release
@Islamic
@Part-2

#${ProductType:["IPF","IAF","IHF"]}

Feature: Mandate Cancellation Service API

  Background:
    Given user is on CAS Login Page

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17840: API Documentation Tab in mandate cancellation service for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on Documentation tab
    Then Service is present as per contract in API
    Examples:
      | ProductType   |
      | <ProductType> |

#PQM-1.1_CAS-193262
#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17841: Validating <APIDescription> in mandate cancellation service in API center for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user click on CAS API vault
    When user search "<APIDescription>" in search bar
    Then "<APIDescription>" should be present in API center
    Examples:
      | APIDescription                                                                      | ProductType   |
      | CAS_Disb_17                                                                         | <ProductType> |
      | mandateCancellationService                                                          | <ProductType> |
      | This service will be used to cancel already registered applicant's mandate details. | <ProductType> |

#PQM-1.2_CAS-193262
#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17842: Validating <APIHeader> in mandate cancellation service in API center for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user click on CAS API vault
    When user search "<APIHeader>" in search bar
    Then "<APIHeader>" should be present in API center
    Examples:
      | APIHeader                  | ProductType   |
      | CAS_Disb_17                | <ProductType> |
      | mandateCancellationService | <ProductType> |

#PQM-2_CAS-193262
#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17843: Verify mandate cancellation service <Service> in <APIName> documentation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user click on download "<Service>" for "<APIName>"
    Then "<Service>" is present as per contract in "<APIName>"
    Examples:
      | Service                 | ProductType   | APIName     |
      | API Documentation PDF   | <ProductType> | CAS_Disb_17 |
      | API Documentation Excel | <ProductType> | CAS_Disb_17 |

#PQM-5_CAS-193262
#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17844: Verify API service mandate cancellation service URL for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user reads data from the excel file "<MandateWB>" under sheet "<Mandate_mandateCancellation>" and row <Mandate_mandateCancellation_rowNum>
    When user searches "<APIName>" in documentation and opens
    Then User verify API service mandate cancellation service URL
    Examples:
      | ProductType   | APIName     | MandateWB    | Mandate_mandateCancellation | Mandate_mandateCancellation_rowNum |
      | <ProductType> | CAS_Disb_17 | mandate.xlsx | mandate_cancellation        | 0                                  |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17845: validate mandate cancellation service as Rest API for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then URL should have REST mentioned in cancellation service
    Examples:
      | ProductType   | APIName     |
      | <ProductType> | CAS_Disb_17 |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17846: Verify API service mandate cancellation service URL in TRY Now feature for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<MandateWB>" under sheet "<Mandate_mandateCancellation>" and row <Mandate_mandateCancellation_rowNum>
    Then User verify API service mandate cancellation service URL on try now page
    Examples:
      | ProductType   | APIName     | MandateWB    | Mandate_mandateCancellation | Mandate_mandateCancellation_rowNum |
      | <ProductType> | CAS_Disb_17 | mandate.xlsx | mandate_cancellation        | 0                                  |

#PQM-6_CAS-193262
#PQM-3_CAS-193262
#PQM-4_CAS-193262
#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17847: Validate <Fields> should be present in mandate cancellation service <APIName> request details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Fields>" should be present in mandate cancellation "request" API request details
    Examples:
      | APIName     | ProductType   | Fields           |
      | CAS_Disb_17 | <ProductType> | cifNumber        |
      | CAS_Disb_17 | <ProductType> | productProcessor |
      | CAS_Disb_17 | <ProductType> | hostCifNumber    |
      | CAS_Disb_17 | <ProductType> | applicationId    |
      | CAS_Disb_17 | <ProductType> | mandateId        |
      | CAS_Disb_17 | <ProductType> | umrnId           |
      | CAS_Disb_17 | <ProductType> | referenceNumber  |
      | CAS_Disb_17 | <ProductType> | ifscCode         |
      | CAS_Disb_17 | <ProductType> | reasons          |
      | CAS_Disb_17 | <ProductType> | reason           |
      | CAS_Disb_17 | <ProductType> | description      |
      | CAS_Disb_17 | <ProductType> | documentDetails  |
      | CAS_Disb_17 | <ProductType> | documentFileName |
      | CAS_Disb_17 | <ProductType> | document         |
      | CAS_Disb_17 | <ProductType> | dataPushObject   |

#PQM-6_CAS-193262
#PQM-3_CAS-193262
#PQM-4_CAS-193262
#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17848: Validate <Status> <Fields> should be present in mandate cancellation service <APIName> request details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Status>" "<Fields>" should be present in mandate cancellation API request details
    Examples:
      | APIName     | ProductType   | Fields           | Status   |
      | CAS_Disb_17 | <ProductType> | cifNumber        | required |
      | CAS_Disb_17 | <ProductType> | productProcessor | required |
      | CAS_Disb_17 | <ProductType> | hostCifNumber    |          |
      | CAS_Disb_17 | <ProductType> | applicationId    | required |
      | CAS_Disb_17 | <ProductType> | mandateId        |          |
      | CAS_Disb_17 | <ProductType> | umrnId           |          |
      | CAS_Disb_17 | <ProductType> | referenceNumber  | required |
      | CAS_Disb_17 | <ProductType> | ifscCode         |          |
      | CAS_Disb_17 | <ProductType> | reasons          | required |
      | CAS_Disb_17 | <ProductType> | reason           | required |
      | CAS_Disb_17 | <ProductType> | description      | required |
      | CAS_Disb_17 | <ProductType> | documentDetails  |          |
      | CAS_Disb_17 | <ProductType> | documentFileName |          |
      | CAS_Disb_17 | <ProductType> | document         |          |
      | CAS_Disb_17 | <ProductType> | dataPushObject   |          |

#PQM-6_CAS-193262
#PQM-3_CAS-193262
#PQM-4_CAS-193262
#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17849: Validate <Status> <Fields> should be present in mandate cancellation service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Status>" "<Fields>" should be present in mandate cancellation API response details
    Examples:
      | APIName     | ProductType   | Fields          | Status   |
      | CAS_Disb_17 | <ProductType> | status          | required |
      | CAS_Disb_17 | <ProductType> | responseCode    | required |
      | CAS_Disb_17 | <ProductType> | responseMessage | required |
      | CAS_Disb_17 | <ProductType> | documentContent |          |
      | CAS_Disb_17 | <ProductType> | value           |          |
      | CAS_Disb_17 | <ProductType> | contentType     |          |
      | CAS_Disb_17 | <ProductType> | referenceNumber | required |
      | CAS_Disb_17 | <ProductType> | cancelResponse  |          |

#PQM-7_CAS-193262
#FeatureID-ACAUTOCAS-16525
#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17850: <Description> of <Fields> should be present in mandate cancellation service <APIName> request details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Description>" of "<Fields>" should be present in mandate cancellation API request details
    Examples:
      | APIName     | ProductType   | Fields           | Description                                                                                                                       |
      | CAS_Disb_17 | <ProductType> | cifNumber        | This field signifies the FinnOne Neo CIF Number of the applicant. The length of this field is 255.                                |
      | CAS_Disb_17 | <ProductType> | productProcessor | This field signifies the module from which the request has been raised. The valid value will be from Dtype:ProductProcessor       |
      | CAS_Disb_17 | <ProductType> | hostCifNumber    | This field signifies the host CIF number of the applicant. The length of the field is 100.                                        |
      | CAS_Disb_17 | <ProductType> | applicationId    | This field signifies the system generated Application ID tagged with an application in database.                                  |
      | CAS_Disb_17 | <ProductType> | mandateId        | This field signifies the Registration Acknowledgment Number. Either Mandate ID or UMRN ID                                         |
      | CAS_Disb_17 | <ProductType> | umrnId           | This field signifies the Mandate ID received in response of getMandateIdService. Either Mandate ID or UMRN ID                     |
      | CAS_Disb_17 | <ProductType> | referenceNumber  | This field signifies the unique reference number of the request. This number would be generated by FinnOne Neo CAS                |
      | CAS_Disb_17 | <ProductType> | ifscCode         | This field signifies the IFSC code of the bank associated with the instrument. The valid value will be from External Bank master. |
      | CAS_Disb_17 | <ProductType> | reasons          | This block signfies the reason captured for mandate cancellation. This block is mandatory                                         |
      | CAS_Disb_17 | <ProductType> | reason           | This field signifies the reason of mandate cancellation. The valid value of the field will be from Reasons Master.                |
      | CAS_Disb_17 | <ProductType> | description      | This field signifies the description of the reason selected. The valid value of the field will be from Reasons Master.            |
      | CAS_Disb_17 | <ProductType> | documentDetails  | This block signifies the documents which needs to shared with third party system.                                                 |
      | CAS_Disb_17 | <ProductType> | documentFileName | This field signifies the document name. The valid value of document will be from Document Master.                                 |
      | CAS_Disb_17 | <ProductType> | document         | This field signifies the document in base 64 format. This field is mandatory when Document Details is provided.                   |
      | CAS_Disb_17 | <ProductType> | dataPushObject   | This field signifies the data push object for sharing additional data in the request.                                             |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17851: <Description> of <Fields> should be present in mandate cancellation service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Description>" of "<Fields>" should be present in mandate cancellation API response details
    Examples:
      | APIName     | ProductType   | Fields          | Description                                                                               |
      | CAS_Disb_17 | <ProductType> | status          | This field signifies the status of the request. The valid values can be Success or Error. |
      | CAS_Disb_17 | <ProductType> | responseCode    | This field signifies the response code received on execution of service.                  |
      | CAS_Disb_17 | <ProductType> | responseMessage | This field signifies the response message received on execution of service                |
      | CAS_Disb_17 | <ProductType> | documentContent | This block signifies the cancellation document received in response.                      |
      | CAS_Disb_17 | <ProductType> | value           | This field signifies the value.                                                           |
      | CAS_Disb_17 | <ProductType> | contentType     | This field signifies the content Type. The length of the field is 255.                    |
      | CAS_Disb_17 | <ProductType> | referenceNumber | This field signifies the same reference number passed in request of the API.              |
      | CAS_Disb_17 | <ProductType> | cancelResponse  | This field signifies the response of mandate cancel Service in Json format.               |

#PQM-8_CAS-193262
#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17852: Hit the <APIName> via try now feature for <ProductType> application for mandate cancellation service
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
      | APIName     | ProductType   |
      | CAS_Disb_17 | <ProductType> |

#PQM-10_CAS-193262
#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17853: Response should be generated successfully for <ProductType> application for mandate cancellation service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user reads data from the excel file "<MandateWB>" under sheet "<Mandate_mandateCancellation>" and row <Mandate_mandateCancellation_rowNum>
    And user click on try now button on API center
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName     | ProductType   | MandateWB    | Mandate_mandateCancellation | Mandate_mandateCancellation_rowNum |
      | CAS_Disb_17 | <ProductType> | mandate.xlsx | mandate_cancellation        | 1                                  |

#PQM-11_CAS-193262
#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17854: The service should not get executed successfully for <ProductType> application for mandate cancellation service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user reads data from the excel file "<MandateWB>" under sheet "<Mandate_mandateCancellation>" and row <Mandate_mandateCancellation_rowNum>
    And user click on try now button on API center
    And user update the json of "<APIName>"
    When user click on send request button
    Then API should not get executed successfully for "<APIName>"
    Examples:
      | APIName     | ProductType   | MandateWB    | Mandate_mandateCancellation | Mandate_mandateCancellation_rowNum |
      | CAS_Disb_17 | <ProductType> | mandate.xlsx | mandate_cancellation        | 2                                  |

#PQM-12_CAS-193262
#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17855: Hit service with null value in every field for <ProductType> application for mandate cancellation service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user enters access token
    And user reads data from the excel file "<MandateWB>" under sheet "<Mandate_mandateCancellation>" and row <Mandate_mandateCancellation_rowNum>
    And user update the json of "<APIName>"
    When user click on send request button
    Then Request should successfully get hit with null values with custom error in response
    Examples:
      | APIName     | ProductType   | MandateWB    | Mandate_mandateCancellation | Mandate_mandateCancellation_rowNum |
      | CAS_Disb_17 | <ProductType> | mandate.xlsx | mandate_cancellation        | 0                                  |

#PQM-13_CAS-193262
#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17856: Response message should be SUCCESS for <ProductType> application for mandate cancellation service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user enters access token
    And user reads data from the excel file "<MandateWB>" under sheet "<Mandate_mandateCancellation>" and row <Mandate_mandateCancellation_rowNum>
    And user update the json of "<APIName>"
    When user click on send request button
    Then Api hit successfully with proper SUCCESS message for "<APIName>"
    Examples:
      | APIName     | ProductType   | MandateWB    | Mandate_mandateCancellation | Mandate_mandateCancellation_rowNum |
      | CAS_Disb_17 | <ProductType> | mandate.xlsx | mandate_cancellation        | 3                                  |

#PQM-15_CAS-193262
#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17857: Response should be customErrorResponse for <ProductType> application for mandate cancellation service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user reads data from the excel file "<MandateWB>" under sheet "<Mandate_mandateCancellation>" and row <Mandate_mandateCancellation_rowNum>
    And user click on try now button on API center
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with custom error response details for "<APIName>"
    Examples:
      | APIName     | ProductType   | MandateWB    | Mandate_mandateCancellation | Mandate_mandateCancellation_rowNum |
      | CAS_Disb_17 | <ProductType> | mandate.xlsx | mandate_cancellation        | 4                                  |

Scenario: ACAUTOCAS-17858: Check expand all functionality in documentation section for mandate cancellation service CAS_Disb_17 header details
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on documentation section
    And user expands Islamic pack
    Then Expand All functionality should work properly

Scenario: ACAUTOCAS-17859: Check collapse all functionality in documentation section for mandate cancellation service CAS_Disb_17 header details
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on documentation section
    And user collapses Islamic pack
    Then Collapse All functionality should work properly

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17860: <ColumnLayout> samples functionality should working properly in mandate cancellation service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user click on "<ColumnLayout>" toggle button
    Then "<ColumnLayout>" samples funcationality should working properly
    Examples:
      | APIName     | ProductType   | ColumnLayout |
      | CAS_Disb_17 | <ProductType> | show         |
      | CAS_Disb_17 | <ProductType> | hide         |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17861: <Fields> should be present in mandate cancellation service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Fields>" should be present in Mandate API header parameter details
    Examples:
      | APIName     | ProductType   | Fields       |
      | CAS_Disb_17 | <ProductType> | access_token |
      | CAS_Disb_17 | <ProductType> | Content-Type |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17862: <Status> <Fields> should be present in mandate cancellation service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Status>" "<Fields>" should be present in Mandate API header parameter details
    Examples:
      | APIName     | ProductType   | Fields       | Status   |
      | CAS_Disb_17 | <ProductType> | access_token | required |
      | CAS_Disb_17 | <ProductType> | Content-Type | required |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17863: <Description> of <Fields> should be present in mandate cancellation service <APIName> header details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Description>" of "<Fields>" should be present in Mandate API header parameter details
    Examples:
      | APIName     | ProductType   | Fields       | Description                                          |
      | CAS_Disb_17 | <ProductType> | access_token | Token based authentication is used to access an API. |
      | CAS_Disb_17 | <ProductType> | Content-Type | It represents the content type of request.           |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17864: <dataType> <Fields> should be present in mandate cancellation service <APIName> header details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<dataType>" "<Fields>" data type should be present in Mandate API header parameter details
    Examples:
      | APIName     | ProductType   | Fields       | dataType |
      | CAS_Disb_17 | <ProductType> | access_token | string   |
      | CAS_Disb_17 | <ProductType> | Content-Type | string   |

#PQM-7_CAS-193262
#FeatureID-ACAUTOCAS-16525
#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17865: <Fields> is <DataType> datatype should be present in mandate cancellation service <APIName> request details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<DataType>" datatype of "<Fields>" should be present in mandate cancellation API request details
    Examples:
      | APIName     | ProductType   | Fields           | DataType         |
      | CAS_Disb_17 | <ProductType> | cifNumber        | string           |
      | CAS_Disb_17 | <ProductType> | productProcessor | string           |
      | CAS_Disb_17 | <ProductType> | hostCifNumber    | string           |
      | CAS_Disb_17 | <ProductType> | applicationId    | string           |
      | CAS_Disb_17 | <ProductType> | mandateId        | string           |
      | CAS_Disb_17 | <ProductType> | umrnId           | string           |
      | CAS_Disb_17 | <ProductType> | referenceNumber  | string           |
      | CAS_Disb_17 | <ProductType> | ifscCode         | string           |
      | CAS_Disb_17 | <ProductType> | reasons          | Array of objects |
      | CAS_Disb_17 | <ProductType> | reason           | string           |
      | CAS_Disb_17 | <ProductType> | description      | string           |
      | CAS_Disb_17 | <ProductType> | documentDetails  | Array of objects |
      | CAS_Disb_17 | <ProductType> | documentFileName | string           |
      | CAS_Disb_17 | <ProductType> | document         | string           |
      | CAS_Disb_17 | <ProductType> | dataPushObject   | string           |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17866: <Fields> is <DataType> datatype should be present in mandate cancellation service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<DataType>" datatype of "<Fields>" should be present in mandate cancellation API response details
    Examples:
      | APIName     | ProductType   | Fields          | DataType |
      | CAS_Disb_17 | <ProductType> | status          | string   |
      | CAS_Disb_17 | <ProductType> | responseCode    | string   |
      | CAS_Disb_17 | <ProductType> | responseMessage | string   |
      | CAS_Disb_17 | <ProductType> | documentContent | string   |
      | CAS_Disb_17 | <ProductType> | value           | string   |
      | CAS_Disb_17 | <ProductType> | contentType     | string   |
      | CAS_Disb_17 | <ProductType> | referenceNumber | string   |
      | CAS_Disb_17 | <ProductType> | cancelResponse  | string   |

Scenario Outline: ACAUTOCAS-17867: Validation should come for fields AccessToken <AccessToken> ContentType <ContentType> for <ProductType> application for mandate cancellation service with <Result>
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user reads data from the excel file "<MandateWB>" under sheet "<Mandate_mandateCancellation>" and row <Mandate_mandateCancellation_rowNum>
    And user update the json of "<APIName>"
    And user enters "<AccessToken>" with "<ContentType>"
    When user click on send request button
    Then Api hit successfully with "<Result>" response details for "<APIName>"
    Examples:
      | Result  | APIName     | AccessToken | ContentType | MandateWB    | Mandate_mandateCancellation | Mandate_mandateCancellation_rowNum |
      | Failure | CAS_Disb_17 | fill        | notFill     | mandate.xlsx | mandate_cancellation        | 5                                  |
      | Failure | CAS_Disb_17 | notFill     | fill        | mandate.xlsx | mandate_cancellation        | 6                                  |
      | Failure | CAS_Disb_17 | notFill     | notFill     | mandate.xlsx | mandate_cancellation        | 7                                  |

Scenario Outline: ACAUTOCAS-17868: <Fields> should be present in mandate cancellation service <APIName> on TRY NOW page for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on try now button on API center
    Then "<Fields>" should be present in try now page
    Examples:
      | APIName     | ProductType   | Fields       |
      | CAS_Disb_17 | <ProductType> | access_token |
      | CAS_Disb_17 | <ProductType> | Content-Type |

Scenario Outline: ACAUTOCAS-17869: <Mandatory> <Fields> should be present in mandate cancellation service <APIName> on TRY NOW page for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on try now button on API center
    Then user should be able to see "<Fields>" marked as mandatory
    Examples:
      | APIName     | ProductType   | Fields       | Mandatory |
      | CAS_Disb_17 | <ProductType> | access_token | required  |
      | CAS_Disb_17 | <ProductType> | Content-Type | required  |

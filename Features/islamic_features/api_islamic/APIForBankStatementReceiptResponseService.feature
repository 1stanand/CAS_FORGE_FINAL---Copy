@Epic-UAEFTS
@PQMStory
@AuthoredBy-aryan.jain
@ImplementedBy-aryan.jain
@Islamic
@Release


Feature: API for Bank Statement Receipt Response Service

  Background:
    Given user is on CAS Login Page
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


   # ${ProductType:["IPF"]}
   # PQM-4_CAS-199695
  #FeatureID-ACAUTOCAS-15326
  Scenario Outline: ACAUTOCAS-15638: Validating <API Name> in API center for <ProductType> application for bankStatementReceiptResponse service
    And user click on CAS API vault
    When user search "<API Name>" in search bar
    Then "<API Name>" should be present in API center for bankStatementReceiptResponse service
    Examples:
      | API Name                            | ProductType   |
      | CAS_Cred_25                         | <ProductType> |
      | bankStatementReceiptResponseService | <ProductType> |

   # ${ProductType:["IPF"]}
   # PQM-1_CAS-199695,3_CAS-199695
  #FeatureID-ACAUTOCAS-15326
  Scenario Outline: ACAUTOCAS-15639:<API Name> should be present in API center for <ProductType> application for bankStatementReceiptResponse service
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    Then "<API Name>" should be opened
    Examples:
      | API Name                              | ProductType   |
      | CAS_Cred_25                           | <ProductType> |
      | bankStatementReceiptResponse  Service | <ProductType> |

   # ${ProductType:["IPF"]}
   # PQM-5_CAS-199695
  #FeatureID-ACAUTOCAS-15326
  Scenario Outline: ACAUTOCAS-15640:<Fields> should be present in <API Name> request details for <ProductType> application for bankStatementReceiptResponse service
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    Then "<Fields>" should be present in API request details
    Examples:
      | API Name    | ProductType   | Fields                  |
      | CAS_Cred_25 | <ProductType> | requestStatus           |
      | CAS_Cred_25 | <ProductType> | requestCode             |
      | CAS_Cred_25 | <ProductType> | requestMessage          |
      | CAS_Cred_25 | <ProductType> | transactionNumber       |
      | CAS_Cred_25 | <ProductType> | bankAcknowledgementCode |
      | CAS_Cred_25 | <ProductType> | requestReferenceNumber  |
      | CAS_Cred_25 | <ProductType> | applicationId           |
      | CAS_Cred_25 | <ProductType> | accountNumber           |
      | CAS_Cred_25 | <ProductType> | responseCsvFile         |
      | CAS_Cred_25 | <ProductType> | dynamicJson             |

  # ${ProductType:["IPF"]}
  #PQM-5_CAS-199695
  #FeatureID-ACAUTOCAS-15326
  Scenario Outline: ACAUTOCAS-15641:Validate required <Fields> should be present in <API Name> request details for <ProductType> application for bankStatementReceiptResponse service
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    Then "<Status>" "<Fields>" should be present in API request details
    Examples:
      | API Name    | ProductType   | Fields            | Status   |
      | CAS_Cred_25 | <ProductType> | requestStatus     | required |
      | CAS_Cred_25 | <ProductType> | transactionNumber | required |

  # ${ProductType:["IPF"]}
  #PQM-5_CAS-199695
  #FeatureID-ACAUTOCAS-15326
  Scenario Outline: ACAUTOCAS-15642:<Fields> should be present in <API Name> response details for <ProductType> application for bankStatementReceiptResponse service
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    And user open response details in API center
    Then "<Fields>" should be present in API response details
    Examples:
      | API Name    | ProductType   | Fields                 |
      | CAS_Cred_25 | <ProductType> | responseCode           |
      | CAS_Cred_25 | <ProductType> | responseMessage        |
      | CAS_Cred_25 | <ProductType> | applicationId          |
      | CAS_Cred_25 | <ProductType> | requestReferenceNumber |
      | CAS_Cred_25 | <ProductType> | errorMap               |
      | CAS_Cred_25 | <ProductType> | dynamicJson            |

  # ${ProductType:["IPF"]}
  #PQM-5_CAS-199695
  #FeatureID-ACAUTOCAS-15326
  Scenario Outline: ACAUTOCAS-15643:Validate required <Fields> should be present in <API Name> response details for <ProductType> application for bankStatementReceiptResponse service
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    And user open response details in API center
    Then "<Status>" "<Fields>" should be present in API response details
    Examples:
      | API Name    | ProductType   | Fields          | Status   |
      | CAS_Cred_25 | <ProductType> | responseCode    | required |
      | CAS_Cred_25 | <ProductType> | responseMessage | required |

  # ${ProductType:["IPF"]}
  #PMG-6_CAS-199695
  #FeatureID-ACAUTOCAS-15326
  Scenario Outline: ACAUTOCAS-15644: validate service as Rest API for <ProductType> application for bankStatementReceiptResponse  service
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    Then URL should have REST mentioned in "<API Name>"
    Examples:
      | API Name    | ProductType   |
      | CAS_Cred_25 | <ProductType> |

  # ${ProductType:["IPF"]}
  #PQM-7_CAS-199695
  #FeatureID-ACAUTOCAS-15326
  Scenario Outline: ACAUTOCAS-15645: Data of <FieldName> present in integration of <ProductType> application for bankStatementReceiptResponse  service
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    Then Data of "<FieldName>" in "<API Name>" present in integration
    Examples:
      | API Name    | ProductType   | FieldName |
      | CAS_Cred_25 | <ProductType> | Request   |
      | CAS_Cred_25 | <ProductType> | Response  |

  # ${ProductType:["IPF"]}
  #PQM-2_CAS-199695
  #FeatureID-ACAUTOCAS-15326
  Scenario Outline: ACAUTOCAS-15646:Verify bankStatementReceiptResponse  Service <Service> option is visible in api documentation for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    Then "<Service>" option should be visible from API Portal
    Examples:
      | API Name    | Service                 | ProductType   |
      | CAS_Cred_25 | API Documentation PDF   | <ProductType> |
      | CAS_Cred_25 | API Documentation Excel | <ProductType> |

  # ${ProductType:["IPF"]}
  #PQM-2_CAS-199695
  #FeatureID-ACAUTOCAS-15326
  Scenario Outline: ACAUTOCAS-15647:Verify bankStatementReceiptResponse  service <Service> in api documentation for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    And user click on download "<Service>" for bankStatementReceiptResponse  service
    Then "<Service>" is present as per contract from API Portal for bankStatementReceiptResponse  service
    Examples:
      | API Name    | Service                 | ProductType   |
      | CAS_Cred_25 | API Documentation PDF   | <ProductType> |
      | CAS_Cred_25 | API Documentation Excel | <ProductType> |

  # ${ProductType:["IPF"]}
  #PQM-3_CAS-199695
  #FeatureID-ACAUTOCAS-15326
  Scenario Outline: ACAUTOCAS-15648: API Documentation Tab for <ProductType> application for bankStatementReceiptResponse  service
    When user clicks on Documentation tab
    Then "<API Name>" is visible as per contract from API Portal
    Examples:
      | API Name    | ProductType   |
      | CAS_Cred_25 | <ProductType> |

   # ${ProductType:["IPF"]}
   # PQM-5_CAS-199695
  #FeatureID-ACAUTOCAS-15326
  Scenario Outline: ACAUTOCAS-15649: <Description> of <Fields> should be present in <APIName> request details for <ProductType> application as per contract
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Description>" of "<Fields>" should be present in share API "<Request>" details
    Examples:
      | Request | APIName     | ProductType   | Fields                  | Description                                                                                                                                            |
      | request | CAS_Cred_25 | <ProductType> | requestStatus           | This field signifies the code against which the request message will get generated. Possible values- 'SUCCESS' or 'FAILURE'.                           |
      | request | CAS_Cred_25 | <ProductType> | requestCode             | This field signifies the code against which the request message will get generated. Possible values- 'ACK' or 'NACK'.                                  |
      | request | CAS_Cred_25 | <ProductType> | requestMessage          | This field signifies the response message for success or failure of service received on execution. The length of field is 4000.                        |
      | request | CAS_Cred_25 | <ProductType> | transactionNumber       | This field signifies the unique transaction number for service. The length of field is 255.                                                            |
      | request | CAS_Cred_25 | <ProductType> | bankAcknowledgementCode | This field signifies the response code received for acknowledgment of request from the bank for which statement is sought. The length of field is 255. |
      | request | CAS_Cred_25 | <ProductType> | requestReferenceNumber  | This field signifies the unique request number for service against which the response will be sent. The length of field is 255.                        |
      | request | CAS_Cred_25 | <ProductType> | applicationId           | This field signifies the system generated Application ID tagged with an application in database. The length of the field is 100.                       |
      | request | CAS_Cred_25 | <ProductType> | accountNumber           | This field specifies the Bank account number captured by the user at Bank details screen. The length of field is 255.                                  |
      | request | CAS_Cred_25 | <ProductType> | dynamicJson             | This field signifies the additional fields that can be fetched through the service in json format. The length of field is 4000.                        |

   # ${ProductType:["IPF"]}
   # PQM-5_CAS-199695
  #FeatureID-ACAUTOCAS-15326
  Scenario Outline: ACAUTOCAS-15650: <Description> of <Fields> should be present in <APIName> response details for <ProductType> application as per contract
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Description>" of "<Fields>" should be present in share API "<Response>" details
    Examples:
      | Response | APIName     | ProductType   | Fields                 | Description                                                                                                                      |
      | response | CAS_Cred_25 | <ProductType> | responseCode           | This field signifies the response code received on execution of service. The length of field is 255.                             |
      | response | CAS_Cred_25 | <ProductType> | responseMessage        | This field signifies the response message sent on execution of service. The length of field is 4000.                             |
      | response | CAS_Cred_25 | <ProductType> | applicationId          | This field signifies the system generated Application ID tagged with an application in database. The length of the field is 100. |
      | response | CAS_Cred_25 | <ProductType> | requestReferenceNumber | This field signifies the unique request number for service against which the response will be sent. The length of field is 255.  |
      | response | CAS_Cred_25 | <ProductType> | errorMap               | This field signifies the map of error codes and error descriptions.                                                              |
      | response | CAS_Cred_25 | <ProductType> | dynamicJson            | This field signifies the additional fields that can be fetched through the service in json format. The length of field is 4000.  |


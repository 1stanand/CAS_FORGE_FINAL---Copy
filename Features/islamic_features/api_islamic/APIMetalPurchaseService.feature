@Epic-PF_Metal_Base
@PQMStory
@AuthoredBy-aryan.jain
@ImplementedBy-aryan.jain
@Islamic
@ReleaseIslamicM5
@Release

Feature: API For Metal Purchase Service


  Background:
    Given user is on CAS Login Page
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

   # ${ProductType:["IPF"]}
   #FeatureID-ACAUTOCAS-15323
   # PQM-3_CAS-191010
Scenario Outline: ACAUTOCAS-17263:  Validating <API Name> in API center for <ProductType> application for metal purchase service
    And user click on CAS API vault
    When user search "<API Name>" in search bar
    Then "<API Name>" should be present in API center for metal purchase service
    Examples:
      | API Name             | ProductType   |
      | CAS_IFIN_Metal_01    | <ProductType> |
      | metalPurchaseService | <ProductType> |

   # ${ProductType:["IPF"]}
   # PQM-1_CAS-191010
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17264: <API Name> should be present in API center for <ProductType> application for metal Purchase service
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    Then "<API Name>" should be opened
    Examples:
      | API Name             | ProductType   |
      | CAS_IFIN_Metal_01    | <ProductType> |
      | metalPurchaseService | <ProductType> |

   # ${ProductType:["IPF"]}
   # PQM-5_CAS-191010
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17265: <Fields> should be present in <API Name> request details for <ProductType> application for metal Purchase service
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    Then "<Fields>" should be present in API request details
    Examples:
      | API Name          | ProductType   | Fields           |
      | CAS_IFIN_Metal_01 | <ProductType> | bankCode         |
      | CAS_IFIN_Metal_01 | <ProductType> | clientCode       |
      | CAS_IFIN_Metal_01 | <ProductType> | dealType         |
      | CAS_IFIN_Metal_01 | <ProductType> | transactionClass |
      | CAS_IFIN_Metal_01 | <ProductType> | refNumber        |
      | CAS_IFIN_Metal_01 | <ProductType> | commodity        |
      | CAS_IFIN_Metal_01 | <ProductType> | currency         |
      | CAS_IFIN_Metal_01 | <ProductType> | amount           |
      | CAS_IFIN_Metal_01 | <ProductType> | tradeDate        |
      | CAS_IFIN_Metal_01 | <ProductType> | settlementDate   |
      | CAS_IFIN_Metal_01 | <ProductType> | maturityDate     |
      | CAS_IFIN_Metal_01 | <ProductType> | customerName     |
      | CAS_IFIN_Metal_01 | <ProductType> | applicationID    |
      | CAS_IFIN_Metal_01 | <ProductType> | cifNumber        |
      | CAS_IFIN_Metal_01 | <ProductType> | dataPush         |

  # ${ProductType:["IPF"]}
  # PQM-5_CAS-191010
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17266: Validate required <Fields> should be present in <API Name> request details for <ProductType> application for metal Purchase service
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    Then "<Status>" "<Fields>" should be present in API request details
    Examples:
      | API Name          | ProductType   | Fields           | Status   |
      | CAS_IFIN_Metal_01 | <ProductType> | bankCode         | required |
      | CAS_IFIN_Metal_01 | <ProductType> | clientCode       | required |
      | CAS_IFIN_Metal_01 | <ProductType> | dealType         | required |
      | CAS_IFIN_Metal_01 | <ProductType> | transactionClass | required |
      | CAS_IFIN_Metal_01 | <ProductType> | refNumber        | required |
      | CAS_IFIN_Metal_01 | <ProductType> | commodity        | required |
      | CAS_IFIN_Metal_01 | <ProductType> | currency         | required |
      | CAS_IFIN_Metal_01 | <ProductType> | amount           | required |
      | CAS_IFIN_Metal_01 | <ProductType> | tradeDate        | required |
      | CAS_IFIN_Metal_01 | <ProductType> | settlementDate   | required |
      | CAS_IFIN_Metal_01 | <ProductType> | maturityDate     | required |
      | CAS_IFIN_Metal_01 | <ProductType> | customerName     | required |
      | CAS_IFIN_Metal_01 | <ProductType> | applicationID    | required |
      | CAS_IFIN_Metal_01 | <ProductType> | dataPush         | required |

  # ${ProductType:["IPF"]}
  # PQM-5_CAS-191010
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17267: <Fields> should be present in <API Name> response details for <ProductType> application for metal Purchase service
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    And user open response details in API center
    Then "<Fields>" should be present in API response details
    Examples:
      | API Name          | ProductType   | Fields              |
      | CAS_IFIN_Metal_01 | <ProductType> | errorType           |
      | CAS_IFIN_Metal_01 | <ProductType> | responseCode        |
      | CAS_IFIN_Metal_01 | <ProductType> | responseMessage     |
      | CAS_IFIN_Metal_01 | <ProductType> | currency            |
      | CAS_IFIN_Metal_01 | <ProductType> | bcdtCode            |
      | CAS_IFIN_Metal_01 | <ProductType> | settlementDate      |
      | CAS_IFIN_Metal_01 | <ProductType> | defferedPrice       |
      | CAS_IFIN_Metal_01 | <ProductType> | inputTimeStamp      |
      | CAS_IFIN_Metal_01 | <ProductType> | nextStage           |
      | CAS_IFIN_Metal_01 | <ProductType> | extraReference1     |
      | CAS_IFIN_Metal_01 | <ProductType> | extraReference2     |
      | CAS_IFIN_Metal_01 | <ProductType> | documentsURI        |
      | CAS_IFIN_Metal_01 | <ProductType> | fee                 |
      | CAS_IFIN_Metal_01 | <ProductType> | deferredAmount      |
      | CAS_IFIN_Metal_01 | <ProductType> | principal           |
      | CAS_IFIN_Metal_01 | <ProductType> | structureCode       |
      | CAS_IFIN_Metal_01 | <ProductType> | dept                |
      | CAS_IFIN_Metal_01 | <ProductType> | quantityUnit        |
      | CAS_IFIN_Metal_01 | <ProductType> | endBuyer            |
      | CAS_IFIN_Metal_01 | <ProductType> | transactionNo       |
      | CAS_IFIN_Metal_01 | <ProductType> | clientCode          |
      | CAS_IFIN_Metal_01 | <ProductType> | agreedProfitRate    |
      | CAS_IFIN_Metal_01 | <ProductType> | commodity           |
      | CAS_IFIN_Metal_01 | <ProductType> | cycleIdentifier     |
      | CAS_IFIN_Metal_01 | <ProductType> | price               |
      | CAS_IFIN_Metal_01 | <ProductType> | transactionKey      |
      | CAS_IFIN_Metal_01 | <ProductType> | clientName          |
      | CAS_IFIN_Metal_01 | <ProductType> | tradeDate           |
      | CAS_IFIN_Metal_01 | <ProductType> | tenor               |
      | CAS_IFIN_Metal_01 | <ProductType> | subTransactionNo    |
      | CAS_IFIN_Metal_01 | <ProductType> | stageCode           |
      | CAS_IFIN_Metal_01 | <ProductType> | feeExchangeRate     |
      | CAS_IFIN_Metal_01 | <ProductType> | maturityDate        |
      | CAS_IFIN_Metal_01 | <ProductType> | bcdtURI             |
      | CAS_IFIN_Metal_01 | <ProductType> | inputUser           |
      | CAS_IFIN_Metal_01 | <ProductType> | exchangeRateInverse |
      | CAS_IFIN_Metal_01 | <ProductType> | bankCode            |
      | CAS_IFIN_Metal_01 | <ProductType> | initialSeller       |
      | CAS_IFIN_Metal_01 | <ProductType> | transYourReference  |
      | CAS_IFIN_Metal_01 | <ProductType> | branch              |
      | CAS_IFIN_Metal_01 | <ProductType> | exchangeRate        |
      | CAS_IFIN_Metal_01 | <ProductType> | feeCurrency         |
      | CAS_IFIN_Metal_01 | <ProductType> | quantity            |
      | CAS_IFIN_Metal_01 | <ProductType> | principalPlusComm   |
      | CAS_IFIN_Metal_01 | <ProductType> | uri                 |
      | CAS_IFIN_Metal_01 | <ProductType> | comdtyAllocNumber   |
      | CAS_IFIN_Metal_01 | <ProductType> | locationRule        |
      | CAS_IFIN_Metal_01 | <ProductType> | tranTreType         |
      | CAS_IFIN_Metal_01 | <ProductType> | tranDealType        |
      | CAS_IFIN_Metal_01 | <ProductType> | dynamicJson         |
      | CAS_IFIN_Metal_01 | <ProductType> | transactionClass    |
      | CAS_IFIN_Metal_01 | <ProductType> | transactionFee      |

  # ${ProductType:["IPF"]}
  # PQM-5_CAS-191010
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17268: Validate required <Fields> should be present in <API Name> response details for <ProductType> application for metal Purchase service
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    And user open response details in API center
    Then "<Status>" "<Fields>" should be present in API response details
    Examples:
      | API Name          | ProductType   | Fields              | Status   |
      | CAS_IFIN_Metal_01 | <ProductType> | responseCode        | required |
      | CAS_IFIN_Metal_01 | <ProductType> | responseMessage     | required |
      | CAS_IFIN_Metal_01 | <ProductType> | currency            | required |
      | CAS_IFIN_Metal_01 | <ProductType> | bcdtCode            | required |
      | CAS_IFIN_Metal_01 | <ProductType> | settlementDate      | required |
      | CAS_IFIN_Metal_01 | <ProductType> | defferedPrice       | required |
      | CAS_IFIN_Metal_01 | <ProductType> | inputTimeStamp      | required |
      | CAS_IFIN_Metal_01 | <ProductType> | nextStage           | required |
      | CAS_IFIN_Metal_01 | <ProductType> | extraReference1     | required |
      | CAS_IFIN_Metal_01 | <ProductType> | extraReference2     | required |
      | CAS_IFIN_Metal_01 | <ProductType> | documentsURI        | required |
      | CAS_IFIN_Metal_01 | <ProductType> | fee                 | required |
      | CAS_IFIN_Metal_01 | <ProductType> | deferredAmount      | required |
      | CAS_IFIN_Metal_01 | <ProductType> | principal           | required |
      | CAS_IFIN_Metal_01 | <ProductType> | structureCode       | required |
      | CAS_IFIN_Metal_01 | <ProductType> | dept                | required |
      | CAS_IFIN_Metal_01 | <ProductType> | quantityUnit        | required |
      | CAS_IFIN_Metal_01 | <ProductType> | endBuyer            | required |
      | CAS_IFIN_Metal_01 | <ProductType> | transactionNo       | required |
      | CAS_IFIN_Metal_01 | <ProductType> | clientCode          | required |
      | CAS_IFIN_Metal_01 | <ProductType> | agreedProfitRate    | required |
      | CAS_IFIN_Metal_01 | <ProductType> | commodity           | required |
      | CAS_IFIN_Metal_01 | <ProductType> | cycleIdentifier     | required |
      | CAS_IFIN_Metal_01 | <ProductType> | price               | required |
      | CAS_IFIN_Metal_01 | <ProductType> | transactionKey      | required |
      | CAS_IFIN_Metal_01 | <ProductType> | clientName          | required |
      | CAS_IFIN_Metal_01 | <ProductType> | tradeDate           | required |
      | CAS_IFIN_Metal_01 | <ProductType> | tenor               | required |
      | CAS_IFIN_Metal_01 | <ProductType> | subTransactionNo    | required |
      | CAS_IFIN_Metal_01 | <ProductType> | stageCode           | required |
      | CAS_IFIN_Metal_01 | <ProductType> | feeExchangeRate     | required |
      | CAS_IFIN_Metal_01 | <ProductType> | maturityDate        | required |
      | CAS_IFIN_Metal_01 | <ProductType> | bcdtURI             | required |
      | CAS_IFIN_Metal_01 | <ProductType> | inputUser           | required |
      | CAS_IFIN_Metal_01 | <ProductType> | exchangeRateInverse | required |
      | CAS_IFIN_Metal_01 | <ProductType> | bankCode            | required |
      | CAS_IFIN_Metal_01 | <ProductType> | initialSeller       | required |
      | CAS_IFIN_Metal_01 | <ProductType> | transYourReference  | required |
      | CAS_IFIN_Metal_01 | <ProductType> | branch              | required |
      | CAS_IFIN_Metal_01 | <ProductType> | exchangeRate        | required |
      | CAS_IFIN_Metal_01 | <ProductType> | feeCurrency         | required |
      | CAS_IFIN_Metal_01 | <ProductType> | quantity            | required |
      | CAS_IFIN_Metal_01 | <ProductType> | principalPlusComm   | required |
      | CAS_IFIN_Metal_01 | <ProductType> | uri                 | required |
      | CAS_IFIN_Metal_01 | <ProductType> | comdtyAllocNumber   | required |
      | CAS_IFIN_Metal_01 | <ProductType> | locationRule        | required |
      | CAS_IFIN_Metal_01 | <ProductType> | tranTreType         | required |
      | CAS_IFIN_Metal_01 | <ProductType> | tranDealType        | required |
      | CAS_IFIN_Metal_01 | <ProductType> | dynamicJson         | required |
      | CAS_IFIN_Metal_01 | <ProductType> | transactionClass    | required |
      | CAS_IFIN_Metal_01 | <ProductType> | transactionFee      | required |

  # ${ProductType:["IPF"]}
  # PQM-4_CAS-191010
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17269:  validate service URL for <ProductType> application for metal Purchase service
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    Then URL should be present in "<API Name>"
    Examples:
      | API Name          | ProductType   |
      | CAS_IFIN_Metal_01 | <ProductType> |

  # ${ProductType:["IPF"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17270:  Data of <FieldName> present in integration of <ProductType> application for metal Purchase service
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    Then Data of "<FieldName>" in "<API Name>" present in integration
    Examples:
      | API Name          | ProductType   | FieldName |
      | CAS_IFIN_Metal_01 | <ProductType> | Request   |
      | CAS_IFIN_Metal_01 | <ProductType> | Response  |

  # ${ProductType:["IPF"]}
  # PQM-2_CAS-191010
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17271: Verify metal Purchase Service <Service> option is visible in api documentation for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    Then "<Service>" option should be visible from API Portal
    Examples:
      | API Name          | Service                 | ProductType   |
      | CAS_IFIN_Metal_01 | API Documentation PDF   | <ProductType> |
      | CAS_IFIN_Metal_01 | API Documentation Excel | <ProductType> |

  # ${ProductType:["IPF"]}
  # PQM-2_CAS-191010
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17272: Verify metal Purchase service <Service> in api documentation for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    And user click on download "<Service>" for metal Purchase service
    Then "<Service>" is present as per contract from API Portal for metal Purchase service
    Examples:
      | API Name          | Service                 | ProductType   |
      | CAS_IFIN_Metal_01 | API Documentation PDF   | <ProductType> |
      | CAS_IFIN_Metal_01 | API Documentation Excel | <ProductType> |

  # ${ProductType:["IPF"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17273: API Documentation Tab for <ProductType> application for metal Purchase service
    When user clicks on Documentation tab
    Then "<API Name>" is visible as per contract from API Portal
    Examples:
      | API Name          | ProductType   |
      | CAS_IFIN_Metal_01 | <ProductType> |

   # ${ProductType:["IPF"]}
   # PQM-6_CAS-191010
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17274:  <Description> of <Fields> should be present in <APIName> request details for <ProductType> application as per contract
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Description>" of "<Fields>" should be present in metal Purchase API "<Request>" details
    Examples:
      | Request | APIName           | ProductType   | Fields           | Description                                                                                                                                                                                                                              |
      | request | CAS_IFIN_Metal_01 | <ProductType> | bankCode         | This field signifies the unique bank code provided to the financial institution by the third party service provider. The length of the field is 255.                                                                                     |
      | request | CAS_IFIN_Metal_01 | <ProductType> | clientCode       | This field signifies the unique client code provided to the financial institution by the third party service provider. The length of the field is 255.                                                                                   |
      | request | CAS_IFIN_Metal_01 | <ProductType> | dealType         | This field signifies the deal type of the service. The deal type is provided by the third party service provider. The length of the field is 255.                                                                                        |
      | request | CAS_IFIN_Metal_01 | <ProductType> | transactionClass | This field signifies the transaction class of the service. The deal type is provided by the third party service provider. The length of the field is 255.                                                                                |
      | request | CAS_IFIN_Metal_01 | <ProductType> | refNumber        | This field signifies the unique reference number of the request. This number would be generated by FinnOne Neo CAS and shared with third party system. The length of the field is 255.                                                   |
      | request | CAS_IFIN_Metal_01 | <ProductType> | commodity        | This field signifies the commodity which has to be bought. The valid value would be from the metaltype Dtype. The metal type mapped to the product in the Commodity Mapping Master shall be shared here. The length of the field is 255. |
      | request | CAS_IFIN_Metal_01 | <ProductType> | currency         | This field signifies the currency in which the amount is being shared. The base currency of the system shall be passed here. The length of the field is 255.                                                                             |
      | request | CAS_IFIN_Metal_01 | <ProductType> | amount           | This field signifies the amount for which the commodity is to be bought. The sanction amount in base currency shall be passed here. The length of the field is 255.                                                                      |
      | request | CAS_IFIN_Metal_01 | <ProductType> | tradeDate        | This field signifies the date on which the request for buying the commodity is placed. The current date of the system shall be passed here. The date shall be in yyyy-MM-dd format.                                                      |
      | request | CAS_IFIN_Metal_01 | <ProductType> | settlementDate   | This field signifies the settlement date. The current date of the system shall be passed here. The date shall be in yyyy-MM-dd format.                                                                                                   |
      | request | CAS_IFIN_Metal_01 | <ProductType> | maturityDate     | This field signifies the maturity date. The date 2 days ahead of the current date of the system shall be passed here. The number of days is configurable. The date shall be in yyyy-MM-dd format.                                        |
      | request | CAS_IFIN_Metal_01 | <ProductType> | customerName     | This field signifies the name of the customer. The full name of the primary customer shall be passed here. The length of the field is 255.                                                                                               |
      | request | CAS_IFIN_Metal_01 | <ProductType> | applicationID    | This field signifies the application ID. The unique application number as generated by FinnOne Neo CAS shall be passed here. The length of the field is 255.                                                                             |
      | request | CAS_IFIN_Metal_01 | <ProductType> | cifNumber        | This field signifies the CIF Number of customer. The length of this field is 255.                                                                                                                                                        |
      | request | CAS_IFIN_Metal_01 | <ProductType> | dataPush         | This field signifies the data push object for sharing additional data in the request.                                                                                                                                                    |

   # ${ProductType:["IPF"]}
   # PQM-6_CAS-191010
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17275:  <Description> of <Fields> should be present in <APIName> response details for <ProductType> application as per contract
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Description>" of "<Fields>" should be present in metal Purchase API "<Response>" details
    Examples:
      | Response | APIName           | ProductType   | Fields              | Description                                                                                                                                                                            |
      | response | CAS_IFIN_Metal_01 | <ProductType> | responseCode        | This field signifies the response code received on execution of service. The length of the field is 255.                                                                               |
      | response | CAS_IFIN_Metal_01 | <ProductType> | responseMessage     | This field signifies the response message received on execution of service. The length of the field is 255.                                                                            |
      | response | CAS_IFIN_Metal_01 | <ProductType> | currency            | This field signifies the currency in which the amounts are being shared in the response. The currency as per the currency master shall be shared here. The length of the field is 255. |
      | response | CAS_IFIN_Metal_01 | <ProductType> | bcdtCode            | This field signifies the code. The length of the field is 255.                                                                                                                         |
      | response | CAS_IFIN_Metal_01 | <ProductType> | settlementDate      | This field signifies the settlement date. The date shall be in yyyy-MM-dd format.                                                                                                      |
      | response | CAS_IFIN_Metal_01 | <ProductType> | defferedPrice       | This field signifies the deferred price. The length of the field is 18 with decimal precision 7.                                                                                       |
      | response | CAS_IFIN_Metal_01 | <ProductType> | inputTimeStamp      | This field signifies the input timestamp. The valid format is YYYY-MM-DDThh:mm:ssTZD.                                                                                                  |
      | response | CAS_IFIN_Metal_01 | <ProductType> | nextStage           | This field signifies the next stage. The length of the field is 255.                                                                                                                   |
      | response | CAS_IFIN_Metal_01 | <ProductType> | extraReference1     | This field signifies the extra reference. The length of the field is 255.                                                                                                              |
      | response | CAS_IFIN_Metal_01 | <ProductType> | extraReference2     | This field signifies the extra reference. The length of the field is 255.                                                                                                              |
      | response | CAS_IFIN_Metal_01 | <ProductType> | documentsURI        | This field signifies the document URI. The length of the field is 255.                                                                                                                 |
      | response | CAS_IFIN_Metal_01 | <ProductType> | fee                 | This field signifies the fee. The length of the field is 18 with decimal precision 7.                                                                                                  |
      | response | CAS_IFIN_Metal_01 | <ProductType> | deferredAmount      | This field signifies the deferred amount. The length of the field is 18 with decimal precision 7.                                                                                      |
      | response | CAS_IFIN_Metal_01 | <ProductType> | principal           | This field signifies the Principal amount for which the commodity has been purchased. The length of the field is 18 with decimal precision 7.                                          |
      | response | CAS_IFIN_Metal_01 | <ProductType> | structureCode       | This field signifies the structure code. The length of the field is 255.                                                                                                               |
      | response | CAS_IFIN_Metal_01 | <ProductType> | dept                | This field signifies the transaction department. The length of the field is 255.                                                                                                       |
      | response | CAS_IFIN_Metal_01 | <ProductType> | quantityUnit        | This field signifies the unit in which the commodity has been bought. The length of the field is 255.                                                                                  |
      | response | CAS_IFIN_Metal_01 | <ProductType> | endBuyer            | This field signifies the end buyer of the commodity. The length of the field is 255.                                                                                                   |
      | response | CAS_IFIN_Metal_01 | <ProductType> | transactionNo       | This field signifies the unique transaction number of the purchase. The length of the field is 255.                                                                                    |
      | response | CAS_IFIN_Metal_01 | <ProductType> | clientCode          | This field signifies the client code. The length of the field is 255.                                                                                                                  |
      | response | CAS_IFIN_Metal_01 | <ProductType> | agreedProfitRate    | This field signifies the agreed profit rate. The length of the field is 255.                                                                                                           |
      | response | CAS_IFIN_Metal_01 | <ProductType> | commodity           | This field signifies the commodity that has been bought. The length of the field is 255.                                                                                               |
      | response | CAS_IFIN_Metal_01 | <ProductType> | cycleIdentifier     | This field signifies the cycle identifier. The length of the field is 255.                                                                                                             |
      | response | CAS_IFIN_Metal_01 | <ProductType> | price               | This field signifies the unit price of the commodity. The length of the field is 255.                                                                                                  |
      | response | CAS_IFIN_Metal_01 | <ProductType> | transactionKey      | This field signifies the transaction key. The length of the field is 255.                                                                                                              |
      | response | CAS_IFIN_Metal_01 | <ProductType> | clientName          | This field signifies the client name. The length of the field is 255.                                                                                                                  |
      | response | CAS_IFIN_Metal_01 | <ProductType> | tradeDate           | This field signifies the trade date. The valid format is yyyy-MM-dd.                                                                                                                   |
      | response | CAS_IFIN_Metal_01 | <ProductType> | tenor               | This field signifies the tenor. The length of the field is 20.                                                                                                                         |
      | response | CAS_IFIN_Metal_01 | <ProductType> | subTransactionNo    | This field signifies the sub transaction number. The length of the field is 255.                                                                                                       |
      | response | CAS_IFIN_Metal_01 | <ProductType> | stageCode           | This field signifies the stage code. The length of the field is 255.                                                                                                                   |
      | response | CAS_IFIN_Metal_01 | <ProductType> | feeExchangeRate     | This field signifies the fee exchange rate. The length of the field is 18 with decimal precision 7.                                                                                    |
      | response | CAS_IFIN_Metal_01 | <ProductType> | maturityDate        | This field signifies the maturity date. The valid format is yyyy-MM-dd.                                                                                                                |
      | response | CAS_IFIN_Metal_01 | <ProductType> | bcdtURI             | This field signifies the URI. The length of the field is 255.                                                                                                                          |
      | response | CAS_IFIN_Metal_01 | <ProductType> | inputUser           | This field signifies the input user. The length of the field is 255.                                                                                                                   |
      | response | CAS_IFIN_Metal_01 | <ProductType> | exchangeRateInverse | This field signifies the exchange rate Inverse. The length of the field is 18 with decimal precision 7                                                                                 |
      | response | CAS_IFIN_Metal_01 | <ProductType> | bankCode            | This field signifies the bank code. The length of the field is 255.                                                                                                                    |
      | response | CAS_IFIN_Metal_01 | <ProductType> | initialSeller       | This field signifies the initial seller. The length of the field is 255.                                                                                                               |
      | response | CAS_IFIN_Metal_01 | <ProductType> | transYourReference  | This field signifies the transaction reference. The length of the field is 255.                                                                                                        |
      | response | CAS_IFIN_Metal_01 | <ProductType> | branch              | This field signifies the branch. The length of the field is 255.                                                                                                                       |
      | response | CAS_IFIN_Metal_01 | <ProductType> | exchangeRate        | This field signifies the exchange rate. The length of the field is 255.                                                                                                                |
      | response | CAS_IFIN_Metal_01 | <ProductType> | feeCurrency         | This field signifies the fee currency. The valid values shall be from currency master. The length of the field is 255.                                                                 |
      | response | CAS_IFIN_Metal_01 | <ProductType> | quantity            | This field signifies the quantity of commodity purchased. The valid values shall be from currency master. The length of the field is 20.                                               |
      | response | CAS_IFIN_Metal_01 | <ProductType> | principalPlusComm   | This field signifies the principal plus commission. The length of the field is 18 with decimal precision 7.                                                                            |
      | response | CAS_IFIN_Metal_01 | <ProductType> | uri                 | This field signifies the URI. This URL can be used to do the enquiry on this purchase request. The length of the field is 255.                                                         |
      | response | CAS_IFIN_Metal_01 | <ProductType> | comdtyAllocNumber   | This field signifies the commodity allocation number. The length of the field is 255.                                                                                                  |
      | response | CAS_IFIN_Metal_01 | <ProductType> | locationRule        | This field signifies the location of the commodity. The length of the field is 255.                                                                                                    |
      | response | CAS_IFIN_Metal_01 | <ProductType> | tranTreType         | This field signifies the transaction type such as Original Deal. The length of the field is 255                                                                                        |
      | response | CAS_IFIN_Metal_01 | <ProductType> | tranDealType        | This field signifies the transaction deal type. The length of the field is 255                                                                                                         |
      | response | CAS_IFIN_Metal_01 | <ProductType> | dynamicJson         | This field signifies the dynamicjson which can be used for fetching additional details. The length of the field is 255                                                                 |
      | response | CAS_IFIN_Metal_01 | <ProductType> | transactionClass    | This field signifies the transaction class of the service. The transaction class is provided by the third party service provider. The length of the field is 255                       |
      | response | CAS_IFIN_Metal_01 | <ProductType> | transactionFee      | This field signifies the transaction fee. The length of the field is 18 with decimal precision 7.                                                                                      |


  # ${ProductType:["IPF"]}
  # PQM-10_CAS-191010,PQM-7_CAS-191010
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17276: Hit the <API Name> via try now feature for <ProductType> application for metal Purchase service
    And user clicks on Documentation tab
    And user searches "<API Name>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metal>" and row <PostApproval_metal_rowNum>
    And user update the json of "<API Name>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<API Name>"
    Examples:
      | API Name          | ProductType   | PostApprovalWB     | PostApproval_metal | PostApproval_metal_rowNum |
      | CAS_IFIN_Metal_01 | <ProductType> | post_approval.xlsx | metalAllocation    | 48                        |

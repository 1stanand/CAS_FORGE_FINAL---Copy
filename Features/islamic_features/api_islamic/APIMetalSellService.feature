@Epic-PF_Metal_Base
@PQMStory
@AuthoredBy-ankit.yadav
@ImplementedBy-ankit.yadav
@ReviewedBy-None
@Release
@Islamic
@Metals

#${ProductType:["IPF"]}

Feature: Islamic Metal Sell Service API

#  Pre-Requisites---
#  In this feature we will validate the metal sell service api
# PRODUCT_TYPE
#  IPF	    Personal Finance
#  IHF	    Home Finance
#  IAF	    Auto Finance

  Background:
    Given user is on CAS Login Page
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-17277: API Documentation Tab in metal sell service for <ProductType> application
    When user clicks on Documentation tab
    Then Service is present as per contract in API
    Examples:
      | ProductType   |
      | <ProductType> |

#FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-17278: Verify metal sell service <Service> in <APIName> documentation for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user click on download "<Service>" for "<APIName>"
    Then "<Service>" is present as per contract in "<APIName>"
    Examples:
      | Service                 | ProductType   | APIName           |
      | API Documentation PDF   | <ProductType> | CAS_IFIN_Metal_02 |
      | API Documentation Excel | <ProductType> | CAS_IFIN_Metal_02 |

#FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-17279: Validating <APIHeader> in metal sell service in API center for <ProductType> application
    And user click on CAS API vault
    When user search "<APIHeader>" in search bar
    Then "<APIHeader>" should be present in API center
    Examples:
      | APIHeader         | ProductType   |
      | CAS_IFIN_Metal_02 | <ProductType> |
      | metalSellService  | <ProductType> |

#FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-17280: Validating <APIDescription> in metal sell service in API center for <ProductType> application
    And user click on CAS API vault
    When user search "<APIDescription>" in search bar
    Then "<APIDescription>" should be present in API center
    Examples:
      | APIDescription                                                                                                             | ProductType   |
      | metalSellService                                                                                                           | <ProductType> |
      | CAS_IFIN_Metal_02                                                                                                          | <ProductType> |
      | This service is used to handle selling of metal to support commodity based financing, by any third party service provider. | <ProductType> |

#FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-17281: Verify API service metal sell service URL for <ProductType> application
    And user clicks on Documentation tab
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    When user searches "<APIName>" in documentation and opens
    Then User verify API service metal sell service URL
    Examples:
      | ProductType   | APIName           | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | <ProductType> | CAS_IFIN_Metal_02 | sharepurchase.xlsx | share_execution              | 0                                   |

#FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-17282: <Fields> with <SubFields> should be present in metal sell service <APIName> request details for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Fields>" with "<SubFields>" should be present in metal sell API request details
    Examples:
      | APIName           | ProductType   | Fields            | SubFields |
      | CAS_IFIN_Metal_02 | <ProductType> | bankCode          |           |
      | CAS_IFIN_Metal_02 | <ProductType> | clientCode        |           |
      | CAS_IFIN_Metal_02 | <ProductType> | dealType          |           |
      | CAS_IFIN_Metal_02 | <ProductType> | refNumber         |           |
      | CAS_IFIN_Metal_02 | <ProductType> | transactionNumber |           |
      | CAS_IFIN_Metal_02 | <ProductType> | transactionTopUp  |           |
      | CAS_IFIN_Metal_02 | <ProductType> | amount            |           |
      | CAS_IFIN_Metal_02 | <ProductType> | settlementDate    |           |
      | CAS_IFIN_Metal_02 | <ProductType> | applicationID     |           |
      | CAS_IFIN_Metal_02 | <ProductType> | cifNumber         |           |
      | CAS_IFIN_Metal_02 | <ProductType> | dataPush          |           |

#FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-17283: Validate <Status> <Fields> with <SubFields> should be present in metal sell service <APIName> request details for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Status>" "<Fields>" with "<SubFields>" should be present in metal sell API request details
    Examples:
      | APIName           | ProductType   | Fields            | SubFields | Status   |
      | CAS_IFIN_Metal_02 | <ProductType> | bankCode          |           | required |
      | CAS_IFIN_Metal_02 | <ProductType> | clientCode        |           | required |
      | CAS_IFIN_Metal_02 | <ProductType> | dealType          |           | required |
      | CAS_IFIN_Metal_02 | <ProductType> | refNumber         |           | required |
      | CAS_IFIN_Metal_02 | <ProductType> | transactionNumber |           | required |
      | CAS_IFIN_Metal_02 | <ProductType> | transactionTopUp  |           | required |
      | CAS_IFIN_Metal_02 | <ProductType> | amount            |           | required |
      | CAS_IFIN_Metal_02 | <ProductType> | settlementDate    |           | required |
      | CAS_IFIN_Metal_02 | <ProductType> | applicationID     |           | required |
      | CAS_IFIN_Metal_02 | <ProductType> | dataPush          |           | required |

#FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-17284: <Fields> with <SubFields> should be present in metal sell service <APIName> response details for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Fields>" with "<SubFields>" should be present in metal sell API response details
    Examples:
      | APIName           | ProductType   | Fields              | SubFields |
      | CAS_IFIN_Metal_02 | <ProductType> | errorType           |           |
      | CAS_IFIN_Metal_02 | <ProductType> | responseCode        |           |
      | CAS_IFIN_Metal_02 | <ProductType> | responseMessage     |           |
      | CAS_IFIN_Metal_02 | <ProductType> | currency            |           |
      | CAS_IFIN_Metal_02 | <ProductType> | bcdtCode            |           |
      | CAS_IFIN_Metal_02 | <ProductType> | settlementDate      |           |
      | CAS_IFIN_Metal_02 | <ProductType> | defferedPrice       |           |
      | CAS_IFIN_Metal_02 | <ProductType> | inputTimeStamp      |           |
      | CAS_IFIN_Metal_02 | <ProductType> | nextStage           |           |
      | CAS_IFIN_Metal_02 | <ProductType> | extraReference1     |           |
      | CAS_IFIN_Metal_02 | <ProductType> | extraReference2     |           |
      | CAS_IFIN_Metal_02 | <ProductType> | documentsURI        |           |
      | CAS_IFIN_Metal_02 | <ProductType> | fee                 |           |
      | CAS_IFIN_Metal_02 | <ProductType> | deferredAmount      |           |
      | CAS_IFIN_Metal_02 | <ProductType> | principal           |           |
      | CAS_IFIN_Metal_02 | <ProductType> | structureCode       |           |
      | CAS_IFIN_Metal_02 | <ProductType> | dept                |           |
      | CAS_IFIN_Metal_02 | <ProductType> | quantityUnit        |           |
      | CAS_IFIN_Metal_02 | <ProductType> | endBuyer            |           |
      | CAS_IFIN_Metal_02 | <ProductType> | transactionNo       |           |
      | CAS_IFIN_Metal_02 | <ProductType> | clientCode          |           |
      | CAS_IFIN_Metal_02 | <ProductType> | agreedProfitRate    |           |
      | CAS_IFIN_Metal_02 | <ProductType> | commodity           |           |
      | CAS_IFIN_Metal_02 | <ProductType> | cycleIdentifier     |           |
      | CAS_IFIN_Metal_02 | <ProductType> | price               |           |
      | CAS_IFIN_Metal_02 | <ProductType> | transactionKey      |           |
      | CAS_IFIN_Metal_02 | <ProductType> | clientName          |           |
      | CAS_IFIN_Metal_02 | <ProductType> | tradeDate           |           |
      | CAS_IFIN_Metal_02 | <ProductType> | tenor               |           |
      | CAS_IFIN_Metal_02 | <ProductType> | subTransactionNo    |           |
      | CAS_IFIN_Metal_02 | <ProductType> | stageCode           |           |
      | CAS_IFIN_Metal_02 | <ProductType> | feeExchangeRate     |           |
      | CAS_IFIN_Metal_02 | <ProductType> | maturityDate        |           |
      | CAS_IFIN_Metal_02 | <ProductType> | bcdtURI             |           |
      | CAS_IFIN_Metal_02 | <ProductType> | inputUser           |           |
      | CAS_IFIN_Metal_02 | <ProductType> | exchangeRateInverse |           |
      | CAS_IFIN_Metal_02 | <ProductType> | bankCode            |           |
      | CAS_IFIN_Metal_02 | <ProductType> | initialSeller       |           |
      | CAS_IFIN_Metal_02 | <ProductType> | transYourReference  |           |
      | CAS_IFIN_Metal_02 | <ProductType> | branch              |           |
      | CAS_IFIN_Metal_02 | <ProductType> | exchangeRate        |           |
      | CAS_IFIN_Metal_02 | <ProductType> | feeCurrency         |           |
      | CAS_IFIN_Metal_02 | <ProductType> | quantity            |           |
      | CAS_IFIN_Metal_02 | <ProductType> | principalPlusComm   |           |
      | CAS_IFIN_Metal_02 | <ProductType> | uri                 |           |
      | CAS_IFIN_Metal_02 | <ProductType> | comdtyAllocNumber   |           |
      | CAS_IFIN_Metal_02 | <ProductType> | locationRule        |           |
      | CAS_IFIN_Metal_02 | <ProductType> | tranTreType         |           |
      | CAS_IFIN_Metal_02 | <ProductType> | tranDealType        |           |
      | CAS_IFIN_Metal_02 | <ProductType> | dynamicJson         |           |
      | CAS_IFIN_Metal_02 | <ProductType> | transactionClass    |           |
      | CAS_IFIN_Metal_02 | <ProductType> | transactionFee      |           |

#FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-17285: <Status> <Fields> with <SubFields> should be present in metal sell service <APIName> response details for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Status>" "<Fields>" with "<SubFields>" should be present in metal sell API response details
    Examples:
      | APIName           | ProductType   | Fields              | Status   | SubFields |
      | CAS_IFIN_Metal_02 | <ProductType> | responseCode        | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | responseMessage     | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | currency            | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | bcdtCode            | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | settlementDate      | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | defferedPrice       | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | inputTimeStamp      | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | nextStage           | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | extraReference1     | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | extraReference2     | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | documentsURI        | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | fee                 | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | deferredAmount      | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | principal           | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | structureCode       | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | dept                | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | quantityUnit        | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | endBuyer            | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | transactionNo       | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | clientCode          | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | agreedProfitRate    | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | commodity           | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | cycleIdentifier     | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | price               | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | transactionKey      | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | clientName          | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | tradeDate           | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | tenor               | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | subTransactionNo    | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | stageCode           | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | feeExchangeRate     | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | maturityDate        | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | bcdtURI             | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | inputUser           | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | exchangeRateInverse | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | bankCode            | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | initialSeller       | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | transYourReference  | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | branch              | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | exchangeRate        | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | feeCurrency         | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | quantity            | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | principalPlusComm   | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | uri                 | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | comdtyAllocNumber   | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | locationRule        | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | tranTreType         | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | tranDealType        | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | dynamicJson         | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | transactionClass    | required |           |
      | CAS_IFIN_Metal_02 | <ProductType> | transactionFee      | required |           |

#FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-17286: <Description> of <Fields> with <SubFields> should be present in metal sell service <APIName> request details for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Description>" of "<Fields>" with "<SubFields>" should be present in metal sell API request details
    Examples:
      | APIName           | ProductType   | Fields            | SubFields | Description                                                                                                                                                                            |
      | CAS_IFIN_Metal_02 | <ProductType> | bankCode          |           | This field signifies the unique bank code provided to the financial institution by the third party service provider. The length of the field is 255.                                   |
      | CAS_IFIN_Metal_02 | <ProductType> | clientCode        |           | This field signifies the unique client code provided to the financial institution by the third party service provider. The length of the field is 255.                                 |
      | CAS_IFIN_Metal_02 | <ProductType> | dealType          |           | This field signifies the deal type of the service. The deal type is provided by the third party service provider. The length of the field is 255.                                      |
      | CAS_IFIN_Metal_02 | <ProductType> | refNumber         |           | This field signifies the unique reference number of the request. This number would be generated by FinnOne Neo CAS and shared with third party system. The length of the field is 255. |
      | CAS_IFIN_Metal_02 | <ProductType> | transactionNumber |           | This field signifies the transaction number. The transaction number received in the purchase transaction shall be passed here. The length of the field is 255.                         |
      | CAS_IFIN_Metal_02 | <ProductType> | transactionTopUp  |           | This field signifies the transaction type such as SALE. The length of the field is 255.                                                                                                |
      | CAS_IFIN_Metal_02 | <ProductType> | amount            |           | This field signifies the sanction amount for which the commodity is to be sold. The length of the field is 18 with decimal precision 7.                                                |
      | CAS_IFIN_Metal_02 | <ProductType> | settlementDate    |           | This field signifies the settlement date. The current date of the system shall be passed here. The date shall be in yyyy-MM-dd format.                                                 |
      | CAS_IFIN_Metal_02 | <ProductType> | applicationID     |           | This field signifies the application ID. The unique application number as generated by FinnOne Neo CAS shall be passed here. The length of the field is 255.                           |
      | CAS_IFIN_Metal_02 | <ProductType> | cifNumber         |           | This field signifies the CIF Number of customer. The length of this field is 255.                                                                                                      |
      | CAS_IFIN_Metal_02 | <ProductType> | dataPush          |           | This field signifies the data push object for sharing additional data in the request.                                                                                                  |

#FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-17284: <Fields> with <SubFields> should be present in metal sell service <APIName> response details for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Description>" of "<Fields>" with "<SubFields>" should be present in metal sell API response details
    Examples:
      | APIName           | ProductType   | Fields              | SubFields | Description                                                                                                                                                                                                  |
      | CAS_IFIN_Metal_02 | <ProductType> | responseCode        |           | This field signifies the response code received on execution of service. The length of the field is 255.                                                                                                     |
      | CAS_IFIN_Metal_02 | <ProductType> | responseMessage     |           | This field signifies the response message received on execution of service. The length of the field is 255.                                                                                                  |
      | CAS_IFIN_Metal_02 | <ProductType> | currency            |           | This field signifies the currency in which the amounts are being shared in the response. The currency as per the currency master shall be shared here. The length of the field is 255.                       |
      | CAS_IFIN_Metal_02 | <ProductType> | bcdtCode            |           | This field signifies the code. The length of the field is 255.                                                                                                                                               |
      | CAS_IFIN_Metal_02 | <ProductType> | settlementDate      |           | This field signifies the settlement date. The date shall be in yyyy-MM-dd format.                                                                                                                            |
      | CAS_IFIN_Metal_02 | <ProductType> | defferedPrice       |           | This field signifies the deferred price. The length of the field is 18 with decimal precision 7.                                                                                                             |
      | CAS_IFIN_Metal_02 | <ProductType> | inputTimeStamp      |           | This field signifies the input timestamp. The valid format is YYYY-MM-DDThh:mm:ssTZD.                                                                                                                        |
      | CAS_IFIN_Metal_02 | <ProductType> | nextStage           |           | This field signifies the next stage. The length of the field is 255.                                                                                                                                         |
      | CAS_IFIN_Metal_02 | <ProductType> | extraReference1     |           | This field signifies the extra reference. The length of the field is 255.                                                                                                                                    |
      | CAS_IFIN_Metal_02 | <ProductType> | extraReference2     |           | This field signifies the extra reference. The length of the field is 255.                                                                                                                                    |
      | CAS_IFIN_Metal_02 | <ProductType> | documentsURI        |           | This field signifies the document URI. The length of the field is 255.                                                                                                                                       |
      | CAS_IFIN_Metal_02 | <ProductType> | fee                 |           | This field signifies the fee. The length of the field is 18 with decimal precision 7.                                                                                                                        |
      | CAS_IFIN_Metal_02 | <ProductType> | deferredAmount      |           | This field signifies the deferred amount. The length of the field is 18 with decimal precision 7.                                                                                                            |
      | CAS_IFIN_Metal_02 | <ProductType> | principal           |           | This field signifies the Principal amount for which the commodity has been purchased. The length of the field is 18 with decimal precision 7.                                                                |
      | CAS_IFIN_Metal_02 | <ProductType> | structureCode       |           | This field signifies the structure code. The length of the field is 255.                                                                                                                                     |
      | CAS_IFIN_Metal_02 | <ProductType> | dept                |           | This field signifies the transaction department. The length of the field is 255.                                                                                                                             |
      | CAS_IFIN_Metal_02 | <ProductType> | quantityUnit        |           | This field signifies the unit in which the commodity has been bought.The valid of the field will be from Dtype QuantityUnitType and sample values are kg,mt,TROY_OUNCES etc. The length of the field is 255. |
      | CAS_IFIN_Metal_02 | <ProductType> | endBuyer            |           | This field signifies the end buyer of the commodity. The length of the field is 255.                                                                                                                         |
      | CAS_IFIN_Metal_02 | <ProductType> | transactionNo       |           | This field signifies the unique transaction number of the purchase. The length of the field is 255.                                                                                                          |
      | CAS_IFIN_Metal_02 | <ProductType> | clientCode          |           | This field signifies the client code. The length of the field is 255.                                                                                                                                        |
      | CAS_IFIN_Metal_02 | <ProductType> | agreedProfitRate    |           | This field signifies the agreed profit rate. The length of the field is 255.                                                                                                                                 |
      | CAS_IFIN_Metal_02 | <ProductType> | commodity           |           | This field signifies the commodity that has been bought. The length of the field is 255.                                                                                                                     |
      | CAS_IFIN_Metal_02 | <ProductType> | cycleIdentifier     |           | This field signifies the cycle identifier. The length of the field is 255.                                                                                                                                   |
      | CAS_IFIN_Metal_02 | <ProductType> | price               |           | This field signifies the unit price of the commodity. The length of the field is 255.                                                                                                                        |
      | CAS_IFIN_Metal_02 | <ProductType> | transactionKey      |           | This field signifies the transaction key. The length of the field is 255.                                                                                                                                    |
      | CAS_IFIN_Metal_02 | <ProductType> | clientName          |           | This field signifies the client name. The length of the field is 255.                                                                                                                                        |
      | CAS_IFIN_Metal_02 | <ProductType> | tradeDate           |           | This field signifies the trade date. The valid format is yyyy-MM-dd.                                                                                                                                         |
      | CAS_IFIN_Metal_02 | <ProductType> | tenor               |           | This field signifies the tenor. The length of the field is 20.                                                                                                                                               |
      | CAS_IFIN_Metal_02 | <ProductType> | subTransactionNo    |           | This field signifies the sub transaction number. The length of the field is 255.                                                                                                                             |
      | CAS_IFIN_Metal_02 | <ProductType> | stageCode           |           | This field signifies the stage code. The length of the field is 255.                                                                                                                                         |
      | CAS_IFIN_Metal_02 | <ProductType> | feeExchangeRate     |           | This field signifies the fee exchange rate. The length of the field is 18 with decimal precision 7.                                                                                                          |
      | CAS_IFIN_Metal_02 | <ProductType> | maturityDate        |           | This field signifies the maturity date. The valid format is yyyy-MM-dd.                                                                                                                                      |
      | CAS_IFIN_Metal_02 | <ProductType> | bcdtURI             |           | This field signifies the URI. The length of the field is 255.                                                                                                                                                |
      | CAS_IFIN_Metal_02 | <ProductType> | inputUser           |           | This field signifies the input user. The length of the field is 255.                                                                                                                                         |
      | CAS_IFIN_Metal_02 | <ProductType> | exchangeRateInverse |           | This field signifies the exchange rate Inverse. The length of the field is 18 with decimal precision 7.                                                                                                      |
      | CAS_IFIN_Metal_02 | <ProductType> | bankCode            |           | This field signifies the bank code. The length of the field is 255.                                                                                                                                          |
      | CAS_IFIN_Metal_02 | <ProductType> | initialSeller       |           | This field signifies the initial seller. The length of the field is 255.                                                                                                                                     |
      | CAS_IFIN_Metal_02 | <ProductType> | transYourReference  |           | This field signifies the transaction reference. The length of the field is 255.                                                                                                                              |
      | CAS_IFIN_Metal_02 | <ProductType> | branch              |           | This field signifies the branch. The length of the field is 255.                                                                                                                                             |
      | CAS_IFIN_Metal_02 | <ProductType> | exchangeRate        |           | This field signifies the exchange rate. The length of the field is 255.                                                                                                                                      |
      | CAS_IFIN_Metal_02 | <ProductType> | feeCurrency         |           | This field signifies the fee currency. The valid values shall be from currency master. The length of the field is 255.                                                                                       |
      | CAS_IFIN_Metal_02 | <ProductType> | quantity            |           | This field signifies the quantity of commodity purchased. The valid values shall be from currency master. The length of the field is 20.                                                                     |
      | CAS_IFIN_Metal_02 | <ProductType> | principalPlusComm   |           | This field signifies the principal plus commission. The length of the field is 18 with decimal precision 7.                                                                                                  |
      | CAS_IFIN_Metal_02 | <ProductType> | uri                 |           | This field signifies the URI. This URL can be used to do the enquiry on this purchase request. The length of the field is 255.                                                                               |
      | CAS_IFIN_Metal_02 | <ProductType> | comdtyAllocNumber   |           | This field signifies the commodity allocation number. The length of the field is 255.                                                                                                                        |
      | CAS_IFIN_Metal_02 | <ProductType> | locationRule        |           | This field signifies the location of the commodity. The length of the field is 255.                                                                                                                          |
      | CAS_IFIN_Metal_02 | <ProductType> | tranTreType         |           | This field signifies the transaction type such as Original Deal. The length of the field is 255                                                                                                              |
      | CAS_IFIN_Metal_02 | <ProductType> | tranDealType        |           | This field signifies the transaction deal type. The length of the field is 255                                                                                                                               |
      | CAS_IFIN_Metal_02 | <ProductType> | dynamicJson         |           | This field signifies the dynamicjson which can be used for fetching additional details. The length of the field is 255                                                                                       |
      | CAS_IFIN_Metal_02 | <ProductType> | transactionClass    |           | This field signifies the transaction class of the service. The transaction class is provided by the third party service provider. The length of the field is 255                                             |
      | CAS_IFIN_Metal_02 | <ProductType> | transactionFee      |           | This field signifies the transaction fee. The length of the field is 18 with decimal precision 7.                                                                                                            |

#FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-17287: <ColumnLayout> samples functionality should working properly in metal sell service <APIName> response details for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user click on "<ColumnLayout>" toggle button
    Then "<ColumnLayout>" samples funcationality should working properly
    Examples:
      | APIName           | ProductType   | ColumnLayout |
      | CAS_IFIN_Metal_02 | <ProductType> | show         |
      | CAS_IFIN_Metal_02 | <ProductType> | hide         |

#FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17911: <DataType> of <Fields> should be present in metal sell service <APIName> request details for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<DataType>" of "<Fields>" with datatype should be present in metal sell API request details
    Examples:
      | APIName           | ProductType   | Fields            | DataType |
      | CAS_IFIN_Metal_02 | <ProductType> | bankCode          | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | clientCode        | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | dealType          | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | refNumber         | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | transactionNumber | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | transactionTopUp  | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | amount            | number   |
      | CAS_IFIN_Metal_02 | <ProductType> | settlementDate    | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | applicationID     | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | cifNumber         | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | dataPush          | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | bankCode          | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | clientCode        | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | dealType          | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | transactionClass  | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | refNumber         | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | commodity         | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | currency          | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | amount            | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | tradeDate         | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | settlementDate    | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | maturityDate      | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | customerName      | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | applicationID     | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | cifNumber         | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | dataPush          | string   |
      | CAS_IFIN_Metal_05 | <ProductType> | applicationId     | string   |
      | CAS_IFIN_Metal_05 | <ProductType> | hostCifNumber     | string   |
      | CAS_IFIN_Metal_05 | <ProductType> | cifNumber         | string   |
      | CAS_IFIN_Metal_05 | <ProductType> | refNumber         | string   |
      | CAS_IFIN_Metal_05 | <ProductType> | transactionKey    | string   |
      | CAS_IFIN_Metal_05 | <ProductType> | transactionNo     | string   |
      | CAS_IFIN_Metal_05 | <ProductType> | dataPushObject    | string   |

#FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17912: <Fields> with <DataType> should be present in metal sell service <APIName> response details for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<DataType>" of "<Fields>" with datatype should be present in metal sell API response details
    Examples:
      | APIName           | ProductType   | Fields              | DataType |
      | CAS_IFIN_Metal_02 | <ProductType> | responseCode        | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | responseMessage     | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | currency            | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | bcdtCode            | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | settlementDate      | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | defferedPrice       | number   |
      | CAS_IFIN_Metal_02 | <ProductType> | inputTimeStamp      | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | nextStage           | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | extraReference1     | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | extraReference2     | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | documentsURI        | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | fee                 | number   |
      | CAS_IFIN_Metal_02 | <ProductType> | deferredAmount      | number   |
      | CAS_IFIN_Metal_02 | <ProductType> | principal           | number   |
      | CAS_IFIN_Metal_02 | <ProductType> | structureCode       | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | dept                | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | quantityUnit        | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | endBuyer            | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | transactionNo       | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | clientCode          | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | agreedProfitRate    | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | commodity           | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | cycleIdentifier     | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | price               | number   |
      | CAS_IFIN_Metal_02 | <ProductType> | transactionKey      | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | clientName          | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | tradeDate           | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | tenor               | integer  |
      | CAS_IFIN_Metal_02 | <ProductType> | subTransactionNo    | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | stageCode           | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | feeExchangeRate     | number   |
      | CAS_IFIN_Metal_02 | <ProductType> | maturityDate        | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | bcdtURI             | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | inputUser           | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | exchangeRateInverse | number   |
      | CAS_IFIN_Metal_02 | <ProductType> | bankCode            | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | initialSeller       | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | transYourReference  | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | branch              | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | exchangeRate        | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | feeCurrency         | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | quantity            | number   |
      | CAS_IFIN_Metal_02 | <ProductType> | principalPlusComm   | number   |
      | CAS_IFIN_Metal_02 | <ProductType> | uri                 | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | comdtyAllocNumber   | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | locationRule        | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | tranTreType         | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | tranDealType        | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | dynamicJson         | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | transactionClass    | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | transactionFee      | number   |
      | CAS_IFIN_Metal_01 | <ProductType> | errorType           | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | responseCode        | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | responseMessage     | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | currency            | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | bcdtCode            | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | settlementDate      | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | defferedPrice       | number   |
      | CAS_IFIN_Metal_01 | <ProductType> | inputTimeStamp      | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | nextStage           | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | extraReference1     | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | extraReference2     | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | documentsURI        | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | fee                 | number   |
      | CAS_IFIN_Metal_01 | <ProductType> | deferredAmount      | number   |
      | CAS_IFIN_Metal_01 | <ProductType> | principal           | number   |
      | CAS_IFIN_Metal_01 | <ProductType> | structureCode       | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | dept                | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | quantityUnit        | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | endBuyer            | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | transactionNo       | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | clientCode          | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | agreedProfitRate    | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | commodity           | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | cycleIdentifier     | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | price               | number   |
      | CAS_IFIN_Metal_01 | <ProductType> | transactionKey      | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | clientName          | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | tradeDate           | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | tenor               | integer  |
      | CAS_IFIN_Metal_01 | <ProductType> | subTransactionNo    | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | stageCode           | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | feeExchangeRate     | number   |
      | CAS_IFIN_Metal_01 | <ProductType> | maturityDate        | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | bcdtURI             | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | inputUser           | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | exchangeRateInverse | number   |
      | CAS_IFIN_Metal_01 | <ProductType> | bankCode            | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | initialSeller       | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | transYourReference  | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | branch              | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | exchangeRate        | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | feeCurrency         | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | quantity            | number   |
      | CAS_IFIN_Metal_01 | <ProductType> | principalPlusComm   | number   |
      | CAS_IFIN_Metal_01 | <ProductType> | uri                 | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | comdtyAllocNumber   | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | locationRule        | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | tranTreType         | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | tranDealType        | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | dynamicJson         | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | transactionClass    | string   |
      | CAS_IFIN_Metal_01 | <ProductType> | transactionFee      | number   |
      | CAS_IFIN_Metal_05 | <ProductType> | responseCode        | string   |
      | CAS_IFIN_Metal_05 | <ProductType> | responseMessage     | string   |
      | CAS_IFIN_Metal_05 | <ProductType> | refNumber           | string   |
      | CAS_IFIN_Metal_05 | <ProductType> | extendedJson        | string   |

#FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17913: Validation should come for fields AccessToken <AccessToken> ContentType <ContentType> for <ProductType> application for metal sell service with <Result>
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<Metal_metalSell>" and row <Metal_metalSell_rowNum>
    And user click on try now button on API center
    And user update the json of "<APIName>"
    And user enters "<AccessToken>" with "<ContentType>"
    When user click on send request button
    Then Api hit successfully with "<Result>" response details for "<APIName>"
    Examples:
      | Result  | APIName           | ProductType   | AccessToken | ContentType | PostApprovalWB     | Metal_metalSell | Metal_metalSell_rowNum |
      | Failure | CAS_IFIN_Metal_02 | <ProductType> | fill        | notFill     | post_approval.xlsx | metal_sell      | 5                      |
      | Failure | CAS_IFIN_Metal_02 | <ProductType> | notFill     | fill        | post_approval.xlsx | metal_sell      | 6                      |
      | Failure | CAS_IFIN_Metal_02 | <ProductType> | notFill     | notFill     | post_approval.xlsx | metal_sell      | 7                      |

#FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17914: <Fields> should be present in metal sell service <APIName> on TRY NOW page for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on try now button on API center
    Then "<Fields>" should be present in try now page
    Examples:
      | APIName           | ProductType   | Fields       |
      | CAS_IFIN_Metal_02 | <ProductType> | access_token |
      | CAS_IFIN_Metal_02 | <ProductType> | Content-Type |

#FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17915: <Mandatory> <Fields> should be present in metal sell service <APIName> on TRY NOW page for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on try now button on API center
    Then user should be able to see "<Fields>" marked as mandatory
    Examples:
      | APIName           | ProductType   | Fields       | Mandatory |
      | CAS_IFIN_Metal_02 | <ProductType> | access_token | required  |
      | CAS_IFIN_Metal_02 | <ProductType> | Content-Type | required  |
    
#FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17916: Hit the <APIName> via try now feature for <ProductType> application for metal sell service
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
      | APIName           | ProductType   |
      | CAS_IFIN_Metal_02 | <ProductType> |

#FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17917: Response should be generated successfully for <ProductType> application for metal sell service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<Metal_metalSell>" and row <Metal_metalSell_rowNum>
    And user click on try now button on API center
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | PostApprovalWB     | Metal_metalSell | Metal_metalSell_rowNum |
      | CAS_IFIN_Metal_02 | <ProductType> | post_approval.xlsx | metal_sell      | 1                      |

#FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17918: The service should not get executed successfully for <ProductType> application for metal sell service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<Metal_metalSell>" and row <Metal_metalSell_rowNum>
    And user click on try now button on API center
    And user update the json of "<APIName>"
    When user click on send request button
    Then API should not get executed successfully for "<APIName>"
    Examples:
      | APIName           | ProductType   | PostApprovalWB     | Metal_metalSell | Metal_metalSell_rowNum |
      | CAS_IFIN_Metal_02 | <ProductType> | post_approval.xlsx | metal_sell      | 2                      |

#FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17919: Hit service with null value in every field for <ProductType> application for metal sell service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user enters access token
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<Metal_metalSell>" and row <Metal_metalSell_rowNum>
    And user update the json of "<APIName>"
    When user click on send request button
    Then Request should successfully get hit with null values with custom error in response
    Examples:
      | APIName           | ProductType   | PostApprovalWB     | Metal_metalSell | Metal_metalSell_rowNum |
      | CAS_IFIN_Metal_02 | <ProductType> | post_approval.xlsx | metal_sell      | 0                      |

#FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17920: Response message should be SUCCESS for <ProductType> application for metal sell service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user enters access token
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<Metal_metalSell>" and row <Metal_metalSell_rowNum>
    And user update the json of "<APIName>"
    When user click on send request button
    Then Api hit successfully with proper SUCCESS message for "<APIName>"
    Examples:
      | APIName           | ProductType   | PostApprovalWB     | Metal_metalSell | Metal_metalSell_rowNum |
      | CAS_IFIN_Metal_02 | <ProductType> | post_approval.xlsx | metal_sell      | 3                      |

#FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17921: Response should be customErrorResponse for <ProductType> application for metal sell service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<Metal_metalSell>" and row <Metal_metalSell_rowNum>
    And user click on try now button on API center
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with custom error response details for "<APIName>"
    Examples:
      | APIName           | ProductType   | PostApprovalWB     | Metal_metalSell | Metal_metalSell_rowNum |
      | CAS_IFIN_Metal_02 | <ProductType> | post_approval.xlsx | metal_sell      | 4                      |

#FeatureID-ACAUTOCAS-15323
Scenario: ACAUTOCAS-17922: Check expand all functionality in documentation section for metal sell service CAS_IFIN_Metal_02 header details
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on documentation section
    And user expands Islamic pack
    Then Expand All functionality should work properly

#FeatureID-ACAUTOCAS-15323
Scenario: ACAUTOCAS-17923: Check collapse all functionality in documentation section for metal sell service CAS_IFIN_Metal_02 header details
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on documentation section
    And user collapses Islamic pack
    Then Collapse All functionality should work properly

#FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17924: <ColumnLayout> samples functionality should working properly in metal sell service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user click on "<ColumnLayout>" toggle button
    Then "<ColumnLayout>" samples funcationality should working properly
    Examples:
      | APIName           | ProductType   | ColumnLayout |
      | CAS_IFIN_Metal_02 | <ProductType> | show         |
      | CAS_IFIN_Metal_02 | <ProductType> | hide         |

#FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17925: <Fields> should be present in metal sell service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Fields>" should be present in Mandate API header parameter details
    Examples:
      | APIName           | ProductType   | Fields       |
      | CAS_IFIN_Metal_02 | <ProductType> | access_token |
      | CAS_IFIN_Metal_02 | <ProductType> | Content-Type |

#FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17926: <Status> <Fields> should be present in metal sell service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Status>" "<Fields>" should be present in Mandate API header parameter details
    Examples:
      | APIName           | ProductType   | Fields       | Status   |
      | CAS_IFIN_Metal_02 | <ProductType> | access_token | required |
      | CAS_IFIN_Metal_02 | <ProductType> | Content-Type | required |

#FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17927: <Description> of <Fields> should be present in metal sell service <APIName> header details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Description>" of "<Fields>" should be present in Mandate API header parameter details
    Examples:
      | APIName           | ProductType   | Fields       | Description                                          |
      | CAS_IFIN_Metal_02 | <ProductType> | access_token | Token based authentication is used to access an API. |
      | CAS_IFIN_Metal_02 | <ProductType> | Content-Type | It represents the content type of request.           |

#FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-17928: <dataType> <Fields> should be present in metal sell service <APIName> header details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<dataType>" "<Fields>" data type should be present in Mandate API header parameter details
    Examples:
      | APIName           | ProductType   | Fields       | dataType |
      | CAS_IFIN_Metal_02 | <ProductType> | access_token | string   |
      | CAS_IFIN_Metal_02 | <ProductType> | Content-Type | string   |

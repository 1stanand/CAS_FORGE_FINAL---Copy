@Epic-UAEFTS
@PQMStory
@AuthoredBy-deep.maurya
@ReviewedBy-
@ImplementedBy-deep.maurya
@Islamic
@Release
@03AprilFix


#StoryId:CAS-195631
#FeatureID-ACAUTOCAS-15327
Feature:Islamic Banking - UAEFTS services(BankstatementExtractionRequestService)

  Background:
    Given user is on CAS Login Page
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0



      # PQM-1_CAS-195631
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-17292:<UAEFTS_Services> code with <UAEFTS_Service_Name> Service should be present as per contract
    And user click on CAS API vault
    When user search "<UAEFTS_Services>" in search bar
    Then "<UAEFTS_Services>" should be present in API center
    Examples:
      | UAEFTS_Services | UAEFTS_Service_Name                   |
      | CAS_Cred_24     | BankstatementExtractionRequestService |


     #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-17293:<UAEFTS_Service_Name> should be present in API center
    And user clicks on Documentation tab
    When user searches "<UAEFTS_Services>" in documentation and opens
    Then "<UAEFTS_Services>" should be opened
    Examples:
      | UAEFTS_Services | UAEFTS_Service_Name                   |
      | CAS_Cred_24     | BankstatementExtractionRequestService |

   # PQM-3_CAS-195631,4_CAS-195631,6_CAS-195631
   #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-17294:<Fields> should be present in <UAEFTS_Services> service request details
    And user clicks on Documentation tab
    When user searches "<UAEFTS_Services>" in documentation and opens
    Then "<Fields>" should be present in API request details
    Examples:
      | UAEFTS_Services | Fields                 |
      | CAS_Cred_24     | applicationId          |
      | CAS_Cred_24     | transactionNumber      |
      | CAS_Cred_24     | requestReferenceNumber |
      | CAS_Cred_24     | ibanNumber             |
      | CAS_Cred_24     | bankAccountNumber      |
      | CAS_Cred_24     | customerCif            |
      | CAS_Cred_24     | hostCif                |
      | CAS_Cred_24     | customerName           |
      | CAS_Cred_24     | startDate              |
      | CAS_Cred_24     | endDate                |
      | CAS_Cred_24     | tenure                 |
      | CAS_Cred_24     | dataPushObject         |

   #FeatureID-ACAUTOCAS-15327
  Scenario Outline:ACAUTOCAS-17295:Validate required <Fields> should be present in <UAEFTS_Services> request details
    And user clicks on Documentation tab
    When user searches "<UAEFTS_Services>" in documentation and opens
    Then "<Status>" "<Fields>" should be present in API request details
    Examples:
      | UAEFTS_Services | Fields                 | Status   |
      | CAS_Cred_24     | applicationId          | required |
      | CAS_Cred_24     | transactionNumber      | required |
      | CAS_Cred_24     | requestReferenceNumber | required |
      | CAS_Cred_24     | bankAccountNumber      | required |
      | CAS_Cred_24     | customerName           | required |
      | CAS_Cred_24     | startDate              | required |
      | CAS_Cred_24     | endDate                | required |

   #FeatureID-ACAUTOCAS-15327
  Scenario Outline:ACAUTOCAS-17296:<Fields> should be present in <UAEFTS_Services> service <API_Request_Response>
    And user clicks on Documentation tab
    When user searches "<UAEFTS_Services>" in documentation and opens
    And user open response details in API center
    Then "<Fields>" should be present in "<UAEFTS_Services>" service response details
    Examples:
      | UAEFTS_Services | Fields                 | API_Request_Response |
      | CAS_Cred_24     | responseCode           | Response             |
      | CAS_Cred_24     | responseMessage        | Response             |
      | CAS_Cred_24     | requestReferenceNumber | Response             |
      | CAS_Cred_24     | dynamicJson            | Response             |

    #FeatureID-ACAUTOCAS-15327
  Scenario Outline:ACAUTOCAS-17296:<Fields> name should be present in <UAEFTS_Services> service response details with <Sub_Fields>
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Documentation tab
    When user searches "<UAEFTS_Services>" in documentation and opens
    And user open response details in API center
    Then "<Fields>" should be present in "<UAEFTS_Services>" service response details with "<Sub_Fields>"
    Examples:
      | UAEFTS_Services | Fields                  | Sub_Fields                   | API_Request_Response | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | CAS_Cred_24     | responseStatus          | bankStatementReceiptResponse | Response             | bank_credit_card_details.xlsx | bank_details               | 15                                |
      | CAS_Cred_24     | acknowledgementStatus   | bankStatementReceiptResponse | Response             | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | CAS_Cred_24     | bankMessage             | bankStatementReceiptResponse | Response             | bank_credit_card_details.xlsx | bank_details               | 17                                |
      | CAS_Cred_24     | bankAcknowledgementCode | bankStatementReceiptResponse | Response             | bank_credit_card_details.xlsx | bank_details               | 18                                |

   #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-17297:Validate required <Fields> should be present in <UAEFTS_Services> Service response details
    And user clicks on Documentation tab
    When user searches "<UAEFTS_Services>" in documentation and opens
    And user open response details in API center
    Then "<Status>" "<Fields>" should be present in API response details
    Examples:
      | UAEFTS_Services | Fields                 | Status   |
      | CAS_Cred_24     | responseCode           | required |
      | CAS_Cred_24     | responseMessage        | required |
      | CAS_Cred_24     | requestReferenceNumber | required |


  # PQM-10_CAS-195631
   #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-17298:Hit the <UAEFTS_Service_Name> via try now feature in API Center
    And user clicks on Documentation tab
    And user searches "<UAEFTS_Services>" in documentation and opens
    And user click on try now button on API center
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user update the json of "<UAEFTS_Services>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<UAEFTS_Services>"
    Examples:
      | UAEFTS_Services | UAEFTS_Service_Name                   | BankCreditCardWB   | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | CAS_Cred_24     | BankstatementExtractionRequestService | post_approval.xlsx | bondAllocation             | 0                                 |

   #FeatureID-ACAUTOCAS-15327
  Scenario Outline:ACAUTOCAS-15025:Download pdf from api centre
    And user clicks on documentation section
    And user searches "<UAEFTS_Services>" in documentation and opens
    When user clicks on pdf
    Then on click PDF should be downloaded
    Examples:
      | UAEFTS_Services | UAEFTS_Service_Name                   |
      | CAS_Cred_24     | BankstatementExtractionRequestService |

   #FeatureID-ACAUTOCAS-15327
  Scenario Outline:ACAUTOCAS-17299:Proper Description should be present for <Fields> in <UAEFTS_Services> service request details
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Documentation tab
    When user searches "<UAEFTS_Services>" in documentation and opens
    Then proper description should be present for "<Fields>" as same in row "<BankCreditCard_bankDetails_rowNum>" in "<API_Request_Response>" details
    Examples:
      | UAEFTS_Services | Fields                 | API_Request_Response | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | CAS_Cred_24     | applicationId          | Request              | bank_credit_card_details.xlsx | bank_details               | 0                                 |
      | CAS_Cred_24     | transactionNumber      | Request              | bank_credit_card_details.xlsx | bank_details               | 1                                 |
      | CAS_Cred_24     | requestReferenceNumber | Request              | bank_credit_card_details.xlsx | bank_details               | 2                                 |
      | CAS_Cred_24     | ibanNumber             | Request              | bank_credit_card_details.xlsx | bank_details               | 3                                 |
      | CAS_Cred_24     | bankAccountNumber      | Request              | bank_credit_card_details.xlsx | bank_details               | 4                                 |
      | CAS_Cred_24     | customerCif            | Request              | bank_credit_card_details.xlsx | bank_details               | 5                                 |
      | CAS_Cred_24     | hostCif                | Request              | bank_credit_card_details.xlsx | bank_details               | 6                                 |
      | CAS_Cred_24     | customerName           | Request              | bank_credit_card_details.xlsx | bank_details               | 7                                 |
      | CAS_Cred_24     | startDate              | Request              | bank_credit_card_details.xlsx | bank_details               | 8                                 |
      | CAS_Cred_24     | endDate                | Request              | bank_credit_card_details.xlsx | bank_details               | 9                                 |
      | CAS_Cred_24     | tenure                 | Request              | bank_credit_card_details.xlsx | bank_details               | 10                                |
      | CAS_Cred_24     | dataPushObject         | Request              | bank_credit_card_details.xlsx | bank_details               | 11                                |

   #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-17300:Proper Description should be present for <Fields> in <UAEFTS_Services> service response details
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Documentation tab
    When user searches "<UAEFTS_Services>" in documentation and opens
    And user open response details in API center
    Then proper description should be present for "<Fields>" as same in row "<BankCreditCard_bankDetails_rowNum>" in "<API_Request_Response>" details
    Examples:
      | UAEFTS_Services | Fields                 | API_Request_Response | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | CAS_Cred_24     | responseCode           | Response             | bank_credit_card_details.xlsx | bank_details               | 12                                |
      | CAS_Cred_24     | responseMessage        | Response             | bank_credit_card_details.xlsx | bank_details               | 13                                |
      | CAS_Cred_24     | requestReferenceNumber | Response             | bank_credit_card_details.xlsx | bank_details               | 14                                |
      | CAS_Cred_24     | dynamicJson            | Response             | bank_credit_card_details.xlsx | bank_details               | 19                                |

   #FeatureID-ACAUTOCAS-15327
Scenario Outline: ACAUTOCAS-17403:Proper Description should be present for <Fields> in <UAEFTS_Services> service response details with <Sub_Fields>
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Documentation tab
    When user searches "<UAEFTS_Services>" in documentation and opens
    And user open response details in API center
    Then proper description should be present for "<Fields>" as same in row "<BankCreditCard_bankDetails_rowNum>" in "<API_Request_Response>" details with "<Sub_Fields>"
    Examples:
      | UAEFTS_Services | Fields                  | Sub_Fields                   | API_Request_Response | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | CAS_Cred_24     | responseStatus          | bankStatementReceiptResponse | Response             | bank_credit_card_details.xlsx | bank_details               | 15                                |
      | CAS_Cred_24     | acknowledgementStatus   | bankStatementReceiptResponse | Response             | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | CAS_Cred_24     | bankMessage             | bankStatementReceiptResponse | Response             | bank_credit_card_details.xlsx | bank_details               | 17                                |
      | CAS_Cred_24     | bankAcknowledgementCode | bankStatementReceiptResponse | Response             | bank_credit_card_details.xlsx | bank_details               | 18                                |
























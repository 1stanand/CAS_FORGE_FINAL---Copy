@Epic-PF_Share_Base
@PQMStory
@AuthoredBy-ankit.yadav
@ImplementedBy-ankit.yadav
@Release
@Shares
@Islamic

Feature: CAS201950_Req4 Send Customer Information Service

  Background:
    Given user is on CAS Login Page
    
#PQM-1_CAS-201950
#PMG-1_CAS-201950
  Scenario Outline: ACAUTOCAS-16127: Verify Send Customer Information Service as per contract in api documentation under Application pack
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    Then "<API Name>" should be opened
    Examples:
      | API Name       |
      | [CAS_Appl_135] |

#PQM-2_CAS-201950
#PMG-4_CAS-201950
  Scenario Outline: ACAUTOCAS-16128: Verify Send Customer Information Service in api documentation
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    And user clicks on pdf
    Then on click PDF should be downloaded
    Examples:
      | API Name       |
      | [CAS_Appl_135] |
    
#PQM-3_CAS-201950
#PMG-1_CAS-201950, 2_CAS-201950
  Scenario Outline: ACAUTOCAS-16129: Verify Send Customer Information Service in catalog
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user click on CAS API vault
    When user search "<API Code>" in search bar
    Then "<API Name>" should be present in API center for metals
    Examples:
      | API Code                  | API Name                       |
      | CAS_Appl_135              | sendCustomerInformationService |
      | Send Customer Information | sendCustomerInformationService |
    
#PQM-4_CAS-201950
#PMG-6_CAS-201950
  Scenario Outline: ACAUTOCAS-16130: Verify Send Customer Information Service URL
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    Then URL should have REST mentioned in "<API Name>"
    Examples:
      | API Name       |
      | [CAS_Appl_135] |
    
#PQM-5_CAS-201950
  Scenario Outline: ACAUTOCAS-16131: Verify <Field> in request for <API Name>
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    And user open response details in API center
    Then "<Field>" should be present in API response
    Examples:
      | API Name       | Field                    |
      | [CAS_Appl_135] | referenceNumber          |
      | [CAS_Appl_135] | hostCifNumber            |
      | [CAS_Appl_135] | customerNumber           |
      | [CAS_Appl_135] | applicationId            |
      | [CAS_Appl_135] | identificationType       |
      | [CAS_Appl_135] | identificationNumber     |
      | [CAS_Appl_135] | issueDate                |
      | [CAS_Appl_135] | expiryDate               |
      | [CAS_Appl_135] | issuingCountry           |
      | [CAS_Appl_135] | referenceNumber          |
      | [CAS_Appl_135] | isRefNumber              |
      | [CAS_Appl_135] | customerType             |
      | [CAS_Appl_135] | customerName             |
      | [CAS_Appl_135] | dateOfBirth              |
      | [CAS_Appl_135] | dateOfIncorporation      |
      | [CAS_Appl_135] | allowPromotionalActivity |
      | [CAS_Appl_135] | modeOfCommunication      |
      | [CAS_Appl_135] | emailAddress             |
      | [CAS_Appl_135] | mobileNumber             |
      | [CAS_Appl_135] | countryCode              |
      | [CAS_Appl_135] | mobileNumber             |
      | [CAS_Appl_135] | consent                  |
      | [CAS_Appl_135] | mobileNumber             |

#PQM-6_CAS-201950
  Scenario Outline: ACAUTOCAS-16132: Verify description of service fields
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user click on CAS API vault
    When user search "<API Name>" in search bar
    Then "<Column>" column should be present
    Examples:
      | API Name     | Column          |
      | CAS_Appl_135 | API description |

#PQM-7_CAS-201950
  Scenario Outline: ACAUTOCAS-16133: Verify Send Customer Information service with all data
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on documentation section
    And Check URL of the service "<ServiceCode>"
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user update the json of "<ServiceCode>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<ServiceCode>"
    Examples:
      | ServiceCode  | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_Appl_135 | sharepurchase.xlsx | share_execution              | 239                                 |


#PQM-8_CAS-201950
  Scenario Outline: ACAUTOCAS-16134: Verify data push pull object in the API
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on documentation section
    And Check URL of the service "<ServiceCode>"
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user enter data in data push object
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<ServiceCode>"
    Examples:
      | ServiceCode  | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_Appl_135 | sharepurchase.xlsx | share_execution              | 238                                 |


#PQM-10_CAS-201950
#PMG-9_CAS-201950
  Scenario Outline: ACAUTOCAS-16135: Verify service with incorrect data
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on documentation section
    And Check URL of the service "<ServiceCode>"
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    When User hit service with incorrect data
    And user enters access token
    And user click on send request button
    Then Api hit successfully with proper response details for "<ServiceCode>"
    Examples:
      | ServiceCode  | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_Appl_135 | sharepurchase.xlsx | share_execution              | 237                                 |

#PQM-13_CAS-201950
#PMG-7_CAS-201950
  Scenario Outline: ACAUTOCAS-16136: Verify try now feature
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on documentation section
    And Check URL of the service "<ServiceCode>"
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    When user try the try now feature and hit the service
    And user enters access token
    And user click on send request button
    Then Api hit successfully with proper response details for "<ServiceCode>"
    Examples:
      | ServiceCode  | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_Appl_135 | sharepurchase.xlsx | share_execution              | 236                                 |

#PQM-14_CAS-201950
#PMG-8_CAS-201950
  Scenario Outline: ACAUTOCAS-16137: Verify null pointer exception in Send Customer Information Service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on documentation section
    And Check URL of the service "<ServiceCode>"
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And User hit service with null data
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<ServiceCode>"
    Examples:
      | ServiceCode  | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | CAS_Appl_135 | sharepurchase.xlsx | share_execution              | 235                                 |
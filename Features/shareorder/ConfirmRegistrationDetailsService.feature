@Epic-PF_Share_Base
@PQMStory
@AuthoredBy-ankit.yadav
@ImplementedBy-ankit.yadav
@Release
@Shares
@Islamic

Feature: Service to confirm Registration Details

  Background:
    Given user is on CAS Login Page

#PQM-1_CAS-187620
#PMG-1_CAS-187620
#ST-4_CAS-187620
  Scenario Outline: ACAUTOCAS-14799:  Validate service contract in API Documentation
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user click on CAS API vault
    When user search "<API Name>" in search bar
    Then "<API Name>" should be present in API center
    Examples:
      | API Name                 |
      | shareConfirmationService |

#PQM-2_CAS-187620
  Scenario Outline: ACAUTOCAS-14800:  Download <Document> from api centre
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on documentation section
    And user clicks on pdf
    Then on click "<Document>" should be downloaded successfully
    Examples:
      | Document |
      | pdf      |
      | excel    |

#PQM-3_CAS-187620
#UT-3_CAS-187620
#ST-5_CAS-187620
  Scenario Outline: ACAUTOCAS-14801:  Validate service contract in API Portal
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user click on CAS API vault
    When user search "<API Name>" in search bar
    Then "<API Name>" should be present in API center
    Examples:
      | API Name                 |
      | shareConfirmationService |

#PQM-4_CAS-187620
#PMG-6_CAS-187620
#UT-5_CAS-187620
#ST-7_CAS-187620, 27_CAS-187620, 35_CAS-187620
  Scenario Outline: ACAUTOCAS-14802:  Validate <API Code> service as Rest API
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When Check URL of the service "<API Code>"
    Then URL should have REST mentioned in it
    Examples:
      | API Code                 |
      | shareConfirmationService |

#PQM-5_CAS-187620, 6_CAS-187620, 7_CAS-187620, 8_CAS-187620, 9_CAS-187620, 10_CAS-187620, 12_CAS-187620, 13_CAS-187620
#PMG-3_CAS-187620, 4_CAS-187620, 5_CAS-187620, 8_CAS-187620
#UT-10_CAS-187620, 11_CAS-187620, 6_CAS-187620
#ST-16_CAS-187620, 18_CAS-187620, 34_CAS-187620, 35_CAS-187620, 37_CAS-187620, 32_CAS-187620
  Scenario Outline: ACAUTOCAS-14803:  Hit the mock <API Name> via try now feature with <Condition>
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on documentation section
    And Check URL of the service "[CAS_IFIN_Share_04]"
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrderService_ShareOrder>" and row <ShareOrder_ShareOrderService_rowNum>
    And user update the json of "<API Name>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<API Name>"
    Examples:
      | API Name          | Condition                | ShareOrderWB    | ShareOrderService_ShareOrder | ShareOrder_ShareOrderService_rowNum |
      | CAS_IFIN_Share_04 | correct data             | shareorder.xlsx | share_order_service          | 0                                   |
      | CAS_IFIN_Share_04 | data in dynamic form     | shareorder.xlsx | share_order_service          | 1                                   |
      | CAS_IFIN_Share_04 | data in data push object | shareorder.xlsx | share_order_service          | 2                                   |
      | CAS_IFIN_Share_04 | incorrect data           | shareorder.xlsx | share_order_service          | 3                                   |
      | CAS_IFIN_Share_04 | null in reason           | shareorder.xlsx | share_order_service          | 4                                   |
      | CAS_IFIN_Share_04 | null in all fields       | shareorder.xlsx | share_order_service          | 5                                   |
      | CAS_IFIN_Share_04 | transaction id           | shareorder.xlsx | share_order_service          | 6                                   |
      | CAS_IFIN_Share_04 | platform                 | shareorder.xlsx | share_order_service          | 7                                   |
      | CAS_IFIN_Share_04 | application id           | shareorder.xlsx | share_order_service          | 8                                   |


#PQM-14_CAS-187620
  Scenario: ACAUTOCAS-14804:  Check expand all functionality in documentation section for CAS_IFIN_Share_05 service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on documentation section
    And user expands Islamic pack
    Then Expand All functionality should work properly

  Scenario: ACAUTOCAS-14805:  Check collapse all functionality in documentation section for CAS_IFIN_Share_05 service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on documentation section
    And user collapses Islamic pack
    Then Collapse All functionality should work properly



#PMG-2_CAS-187620
#ST-10_CAS-187620, 11_CAS-187620, 12_CAS-187620, 13_CAS-187620
  Scenario Outline: ACAUTOCAS-14806:  Validate <Condition> in Islamic Pack
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user click on CAS API vault
    When user search "<Condition>" in search bar
    Then Service Contract should successfully get searched via code and name
    Examples:
      | Condition                |
      | CAS_IFIN_Share_04        |
      | shareConfirmationService |


#UT-1_CAS-187620, 4_CAS-187620
#ST-6_CAS-187620
  Scenario Outline: ACAUTOCAS-14807:  Check audit data for request and response
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on documentation section
    Then "<Condition>" should visible
    Examples:
      | Condition |
      | Request   |
      | Responses |

#UT-7_CAS-187620
#ST-17_CAS-187620
  Scenario Outline: ACAUTOCAS-14808:  Hit shareConfirmationService service without access token
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on documentation section
    Then "<Condition>" should visible
    Examples:
      | Condition |
      | Request   |

#${ApplicantType:["indiv"]}
#${ProductType:["IPF"]}
#${ApplicationStage:["Reconsideration"]}
#ST-23_CAS-187620, 30_CAS-187620
  @Perishable
  Scenario Outline: ACAUTOCAS-14809:  Trigger shareConfirmationService from UI
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    Then user should be able to trigger "<API Code>" from Ui
    Examples:
      | API Code                 | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | shareConfirmationService | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

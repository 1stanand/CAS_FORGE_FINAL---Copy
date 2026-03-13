@Epic-PF_Share_Base
@PQMStory
@AuthoredBy-ankit.yadav
@ImplementedBy-ankit.yadav
@Release
@Shares
@Islamic
@Perishable
  
#${ApplicantType:["indiv"]}
#${ProductType:["IPF"]}
#${ApplicationStage:["Reconsideration"]}
  
Feature: New Share Sell Service

  Background:
    Given user is on CAS Login Page

#PQM-2_CAS-189495
#PMG-10_CAS-189495
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-15011:  Validate triggering of shareSellService and success is received
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user click Release Share button And Config.tadawul.service.isManual is False
    Then ShareSellService should successfully get executed and success response should be visible in Activity
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare sell |

#PQM-3_CAS-189495
#PMG-1_CAS-189495
#PMG-11_CAS-189495
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-15012:  Validate Release Share Button on successful execution of service
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user click on Release button
    Then Release Share Button should be Disabled
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare sell |


#PQM-1_CAS-189495
#ST-2_CAS-189495
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-15013:  Validate service contract in API Portal
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user click on CAS API vault
    When user search "<API Name>" in search bar
    Then "<API Name>" should be present in API center
    Examples:
      | API Name         |
      | shareSellService |

#PQM-4_CAS-189495
#PMG-12_CAS-189495
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-15014:  Validate visibility of response in activity tab
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user click on save button on share sell
    And user click on Release button
    When On Share Sell Stage check Activity section
    Then Service Success message should be displayed in the activity section
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key          |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | <ApplicantType> | shares   | isshare sell |


#PQM-5_CAS-189495
#PMG-13_CAS-189495
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-15015:  Validate triggering of shareSellService and failure is received
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And shareSellService is Failed
    Then Release Share Button will be enabled
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare sell |

#${ApplicantType:["indiv"]}
#PMG-14_CAS-189495
#PQM-6_CAS-189495
#@Perishable
# Scenario Outline: Validate Send back option when shareSellService is not executed
#   And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#   And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
#   And user picks an application of "<ProductType>" product type as "indiv" applicant at stage "reconsideration" for category "shares" with key "isShare Sell"
#   And user moves an application from "Reconsideration" Stage to "Share Sell" Stage
#   And user opens an application of "<ApplicationStage>" stage present in context from application grid
#   And shareSellService is Failed
#   When User Clicks on Send back option from more actions and select send back stage
#   Then Send back till PDOC should be successful
#   Examples:
#     | ProductType   | ApplicationStage   |
#     | <ProductType> | <ApplicationStage> |

#${ApplicantType:["indiv"]}
#PQM-7_CAS-189495
#PMG-15_CAS-189495
#@Perishable
# Scenario Outline: Validate Send back option when shareSellService is successfully executed
#   And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#   And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
#   And user picks an application of "<ProductType>" product type as "indiv" applicant at stage "reconsideration" for category "shares" with key "isShare Sell"
#   And user moves an application from "Reconsideration" Stage to "Share Sell" Stage
#   And user opens an application of "<ApplicationStage>" stage present in context from application grid
#   And user click on Release button
#   When User Clicks on Send back option from more actions and select send back stage
#   Then Send Back option will not be visible
#   Examples:
#     | ProductType   | ApplicationStage   |
#     | <ProductType> | <ApplicationStage> |

#${ApplicantType:["indiv"]}
#PQM-8_CAS-189495
#@Perishable
# Scenario Outline:Validate Send back option when shareSellService is executed but failed
#   And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#   And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
#   And user picks an application of "<ProductType>" product type as "indiv" applicant at stage "reconsideration" for category "shares" with key "isShare Sell"
#   And user moves an application from "Reconsideration" Stage to "Share Sell" Stage
#   And user opens an application of "<ApplicationStage>" stage present in context from application grid
#   And shareSellService is Failed
#   When User Clicks on Send back option from more actions and select send back stage
#   Then Send back till PDOC should be successful
#   Examples:
#     | ProductType   | ApplicationStage   |
#     | <ProductType> | <ApplicationStage> |

#${ApplicantType:["indiv"]}
##${ProductType:["IPF"]}
##${ApplicationStage:["Share Sell"]}
##PQM-9_CAS-189495
#PMG-17_CAS-189495
# @Perishable
# Scenario Outline: Validate performing MTNS when there is no success in shareSellService
#   And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#   And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
#   And user picks an application of "<ProductType>" product type as "indiv" applicant at stage "reconsideration" for category "shares" with key "isShare Sell"
#   And user moves an application from "Reconsideration" Stage to "Share Sell" Stage
#   And user opens an application of "<ApplicationStage>" stage present in context from application grid
#   And shareSellService is Failed
#   When User Clicks on MTNS button
#   Then Application will not move to next stage
#   Examples:
#     | ProductType   | ApplicationStage   |
#     | <ProductType> | <ApplicationStage> |

#${ApplicantType:["indiv"]}
##${ProductType:["IPF"]}
##${ApplicationStage:["Share Sell"]}
##PQM-10_CAS-189495
#PMG-18_CAS-189495
# @Perishable
# Scenario Outline: Validate performing MTNS when there is success in shareSellService
#   And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#   And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
#   And user picks an application of "<ProductType>" product type as "indiv" applicant at stage "reconsideration" for category "shares" with key "isShare Sell"
#   And user moves an application from "Reconsideration" Stage to "Share Sell" Stage
#   And user opens an application of "<ApplicationStage>" stage present in context from application grid
#   And shareSellService is successfully executed
#   When User Clicks on MTNS button
#   Then Application will successfully move to next stage
#   Examples:
#     | ProductType   | ApplicationStage   |
#     | <ProductType> | <ApplicationStage> |

#PQM-11_CAS-189495
#PMG-20_CAS-189495
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-15016:  validate correct consolidated data for executed share details
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    Then For each record consolidated executed share details should be visible
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare sell |
    
#PQM-4_CAS-189495
#PMG-2_CAS-189495
#UT-3_CAS-189495
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-15017:  Validate API Code and Name in Islamic Pack
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user click on CAS API vault
    When user search "<Condition>" in search bar
    Then Service Contract should successfully get searched via code and name
    Examples:
      | Condition         |
      | CAS_IFIN_Share_05 |
      | shareSellService  |
    
#PQM-14_CAS-189495
#PMG-7_CAS-189495
#ST-4_CAS-189495
#UT-5_CAS-189495
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-15018:  Validate service as Rest API
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When Check URL of the service "<API Code>"
    Then URL should have REST mentioned in it
    Examples:
      | API Code         |
      | shareSellService |

#PMG-16_CAS-189495
#FeatureID-ACAUTOCAS-11317
  @Perishable
  Scenario Outline: ACAUTOCAS-15019:  Validate Send back option when shareSellService is executed but failed
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And shareSellService is Failed
    When User Clicks on Send back option from more actions and select send back stage
    Then Send back option will be visible in more actions
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare sell |

#PMG-19_CAS-189495
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-15020: Validate Fulfill Percentage at<ApplicationStage> for a <ProductType> application
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Investor Details grid
    Then Percentage should be visible as per the defined logic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare sell |
    
#ST-1_CAS-189495
#UT-2_CAS-189495
#UT-2_CAS-187620
#ST-3_CAS-187620
#FeatureID-ACAUTOCAS-11317
  Scenario: ACAUTOCAS-15021:  Validate Islamic Pack
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on documentation section
    Then Islamic Pack should visible
    
#ST-3_CAS-189495
#UT-1_CAS-189495, 4_CAS-189495
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-15022:  Validate <Condition> in share sell service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on documentation section
    Then "<Condition>" should visible
    Examples:
      | Condition |
      | Request   |
      | Responses |
    
#ST-6_CAS-189495
#FeatureID-ACAUTOCAS-11317
  Scenario: ACAUTOCAS-15023:  Check expand all functionality in documentation section
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on documentation section
    And user expands Islamic pack
    Then Expand All functionality should work properly

#ST-7_CAS-189495
#FeatureID-ACAUTOCAS-11317
  Scenario: ACAUTOCAS-15024:  Check collapse all functionality in documentation section
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on documentation section
    And user collapses Islamic pack
    Then Collapse All functionality should work properly

#ST-8_CAS-189495
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-15025:  Download pdf from api centre
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user click on download "<Service>" for "<APIName>"
    Then "<Service>" is present as per contract in "<APIName>"
    Examples:
      | Service                 | ProductType   | APIName           |
      | API Documentation PDF   | <ProductType> | CAS_IFIN_Share_05 |

#ST-9_CAS-189495
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-15026:  Download excel from api centre
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user click on download "<Service>" for "<APIName>"
    Then "<Service>" is present as per contract in "<APIName>"
    Examples:
      | Service                 | ProductType   | APIName           |
      | API Documentation Excel | <ProductType> | CAS_IFIN_Share_05 |

#ST-9_CAS-189495, 10_CAS-189495, 11_CAS-189495, 12_CAS-189495, 13_CAS-189495, 14_CAS-189495, 15_CAS-189495, 16_CAS-189495, 17_CAS-189495, 18_CAS-189495, 19_CAS-189495
#UT-1_CAS-189495, 8_CAS-189495, 6_CAS-189495, 7_CAS-189495,  9_CAS-189495, 10_CAS-189495
#PQM-13_CAS-189495, 12_CAS-189495, 14_CAS-189495
#PMG-3_CAS-189495, 4_CAS-189495, 5_CAS-189495, 8_CAS-189495
#FeatureID-ACAUTOCAS-11317
  Scenario Outline: ACAUTOCAS-15027: Hit the mock <API Name> via try now feature with <Condition>
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on documentation section
    And Check URL of the service "CAS_IFIN_Share_05"
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<ShareSellWB>" under sheet "<ShareSell_home>" and row <ShareSell_home_rowNum>
    And user update the json of "<API Name>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<API Name>"
    Examples:
      | API Name          | Condition                | ShareSellWB     | ShareSell_home   | ShareSell_home_rowNum |
      | CAS_IFIN_Share_05 | correct data             | share_sell.xlsx | sharesellservice | 0                     |
      | CAS_IFIN_Share_05 | data as null             | share_sell.xlsx | sharesellservice | 1                     |
      | CAS_IFIN_Share_05 | blank data               | share_sell.xlsx | sharesellservice | 2                     |
      | CAS_IFIN_Share_05 | transaction id           | share_sell.xlsx | sharesellservice | 3                     |
      | CAS_IFIN_Share_05 | cif number               | share_sell.xlsx | sharesellservice | 4                     |
      | CAS_IFIN_Share_05 | amount                   | share_sell.xlsx | sharesellservice | 5                     |
      | CAS_IFIN_Share_05 | order type               | share_sell.xlsx | sharesellservice | 6                     |
      | CAS_IFIN_Share_05 | application id           | share_sell.xlsx | sharesellservice | 7                     |
      | CAS_IFIN_Share_05 | platform                 | share_sell.xlsx | sharesellservice | 8                     |
      | CAS_IFIN_Share_05 | data in data push object | share_sell.xlsx | sharesellservice | 9                     |
      | CAS_IFIN_Share_05 | data in dynamic form VO  | share_sell.xlsx | sharesellservice | 10                    |
      | CAS_IFIN_Share_05 | incorrect data           | share_sell.xlsx | sharesellservice | 11                    |

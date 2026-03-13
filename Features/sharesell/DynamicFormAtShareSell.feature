@Epic-PF_Share_Base
@PQMStory
@AuthoredBy-deep.maurya
@TechReviewedBy-
@ImplementedBy-deep.maurya
@ReleaseIslamicM3
@Release

@Islamic
@Shares

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Share Sell"]}
Feature:Screen Validation on Share Sell Stage

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user picks an application of "IPF" product type as "indiv" applicant at stage "reconsideration" for category "shares" with key "isshare sell"
    And user moves an application from "Reconsideration" Stage to "Share Sell" Stage

  #PQM-11_CAS-187621,
  #PMG-28_CAS-187621,
  #ST-84_CAS-187621,
  #UT-35_CAS-187621,
 #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15005: validate dynamic form on <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When user clicks on Share Sell Tab
    Then Dynamic Form should be mapped on Share Sell stage
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


  #PQM-11_CAS-187621,
  #PMG-28_CAS-187621,
  #ST-84_CAS-187621,
  #UT-36_CAS-187621,
 #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15006: Capturing dynamic form on <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user reads data from the excel file "<ShareSellWB>" under sheet "<ShareSell_home>" and row <ShareSell_home_rowNum>
    And user clicks on Share Sell Tab
    When user fills dynamic form details on Share Sell
    Then Dynamic form details should be captured successfully
    Examples:
      | ProductType   | ApplicationStage   | ShareSellWB     | ShareSell_home | ShareSell_home_rowNum |
      | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell     | 0                     |


  #PQM-26_CAS-187621,
  #PMG-29_CAS-187621,
  #ST-85-187621,
 #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15007: Click Cancel button in dynamic form at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user reads data from the excel file "<ShareSellWB>" under sheet "<ShareSell_home>" and row <ShareSell_home_rowNum>
    And user clicks on Share Sell Tab
    And user fills dynamic form details on Share Sell
    When user click on cancel button on Share Sell
    Then A warning message will come as Unsaved data will be lost. Press Ok if saved already or Close to save the data
    Examples:
      | ProductType   | ApplicationStage   | ShareSellWB     | ShareSell_home | ShareSell_home_rowNum |
      | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell     | 0                     |




  #PQM-26_CAS-187621,
  #PMG-29_CAS-187621,
  #ST-85-187621,
 #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15008: Click Ok while warning message come in dynamic form at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user reads data from the excel file "<ShareSellWB>" under sheet "<ShareSell_home>" and row <ShareSell_home_rowNum>
    And user clicks on Share Sell Tab
    When user fills dynamic form details on Share Sell
    And user click on cancel button on Share Sell
    When user click on OK button
    Then All the data captured will be removed from dynamic form on Share sell
    Examples:
      | ProductType   | ApplicationStage   | ShareSellWB     | ShareSell_home | ShareSell_home_rowNum |
      | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell     | 0                     |


      #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15009: Click close while warning message come in dynamic form at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user reads data from the excel file "<ShareSellWB>" under sheet "<ShareSell_home>" and row <ShareSell_home_rowNum>
    And user clicks on Share Sell Tab
    When user fills dynamic form details on Share Sell
    And user click on cancel button on Share Sell
    When user click on close button
    Then All the data captured will be retained in dynamic form on Share Sell
    Examples:
      | ProductType   | ApplicationStage   | ShareSellWB     | ShareSell_home | ShareSell_home_rowNum |
      | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell     | 0                     |

  #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15010: Validate changing tabs without saving data in dynamic form at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user reads data from the excel file "<ShareSellWB>" under sheet "<ShareSell_home>" and row <ShareSell_home_rowNum>
    And user clicks on Share Sell Tab
    When user fills dynamic form details on Share Sell
    When user clicks on Document Tab on Share Sell Stage
    Then A warning message will come as Unsaved data will be lost. Press Ok if saved already or Close to save the data
    Examples:
      | ProductType   | ApplicationStage   | ShareSellWB     | ShareSell_home | ShareSell_home_rowNum |
      | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell     | 0                     |















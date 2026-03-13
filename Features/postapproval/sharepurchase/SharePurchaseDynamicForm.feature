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
  
#Story-CAS-189504
Feature: Share Purchase Dynamic Form

  Background:
    Given user is on CAS Login Page
    
# UT-8_CAS-189504
# ST-13_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14683:  Click on required button <Field> fields must get hidden
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on Share Purchase Tab
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user selects Required button on share purchase
    Then "<Field>" should be hidden
    Examples:
      | ProductType   | ApplicationStage   | Field                                                   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | Relation with Applicant                                 | sharepurchase.xlsx | share_purchase             | 23                                | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Person Contacted                                        | sharepurchase.xlsx | share_purchase             | 24                                | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Permanent Address Tele-Verification Card 1 Country Code | sharepurchase.xlsx | share_purchase             | 25                                | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Permanent Address Tele-Verification Card 1 ISD Code     | sharepurchase.xlsx | share_purchase             | 26                                | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Permanent Address Tele-Verification Card 1 std code     | sharepurchase.xlsx | share_purchase             | 27                                | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Permanent Address Tele-Verification Card 1 extn number  | sharepurchase.xlsx | share_purchase             | 28                                | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Permanent Address Tele-Verification Card 1 phone number | sharepurchase.xlsx | share_purchase             | 29                                | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Permanent Address Tele-Verification Card 2 Country Code | sharepurchase.xlsx | share_purchase             | 30                                | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Permanent Address Tele-Verification Card 2 ISD Code     | sharepurchase.xlsx | share_purchase             | 31                                | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Permanent Address Tele-Verification Card 2 std code     | sharepurchase.xlsx | share_purchase             | 32                                | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Permanent Address Tele-Verification Card 2 extn number  | sharepurchase.xlsx | share_purchase             | 33                                | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Permanent Address Tele-Verification Card 2 phone number | sharepurchase.xlsx | share_purchase             | 34                                | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Name of Company                                         | sharepurchase.xlsx | share_purchase             | 35                                | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Landmark                                                | sharepurchase.xlsx | share_purchase             | 36                                | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Address                                                 | sharepurchase.xlsx | share_purchase             | 37                                | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Address                                                 | sharepurchase.xlsx | share_purchase             | 38                                | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Landmark                                                | sharepurchase.xlsx | share_purchase             | 39                                | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Permanent Address                                       | sharepurchase.xlsx | share_purchase             | 40                                | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Vintage                                                 | sharepurchase.xlsx | share_purchase             | 41                                | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Type                                                    | sharepurchase.xlsx | share_purchase             | 42                                | <ApplicantType> | shares   | ispost approval |

# ST-32_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14684:  Click on Cancel button
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on Share Purchase Tab
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user adds data in share purchase tab
    When user clicks on cancel button
    Then "<Condition>" share purchase tab
    Examples:
      | ProductType   | ApplicationStage   | Condition                | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | user will be on the      | sharepurchase.xlsx | share_purchase             | 99                                | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | data will be retained in | sharepurchase.xlsx | share_purchase             | 99                                | <ApplicantType> | shares   | ispost approval |

# ST-28_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14685:  Verify <Button> button is visible for entire page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    Then "<Button>" button should be visible for entire page
    Examples:
      | ProductType   | ApplicationStage   | Button | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | Save   | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Cancel | <ApplicantType> | shares   | ispost approval |

#PQM-9_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14686:  Dynamic form data save on Share Purchase Tab
    And user reads data from the excel file "sharepurchase.xlsx" under sheet "share_purchase" and row <ShareDetails_sharePurchase_rowNum>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on Share Purchase Tab
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user adds data in dynamic form and save
    Then dynamic form data should be saved successfully
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key             | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispost approval | sharepurchase.xlsx | share_purchase             | 99                                |


#PQM-25_CAS-189504, 8_CAS-189504
#PMG-21_CAS-189504, 20_CAS-189504, 19_CAS-189504, 18_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14687:  Validate Dynamic Form on Share Purchase Tab when all components of dynamic form are in Edit mode even when components of dynamic form are in editable mode
    And dynamic Form is attached in Share Purchase Tab using placeholder "CAS_CUSTOM_FIELDS_SCREEN_SHARE_PURCHASE" from Dynamic form Screen Mapping
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    Then dynamic form should be visible in view only mode
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare purchase |


#PQM-24_CAS-189504, 8_CAS-189504, 26_CAS-189504, 27_CAS-189504
#ST-29_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14688:  Validate Dynamic Form on Share Purchase Tab when all components of dynamic form are in view only mode
    And dynamic Form is attached in Share Purchase Tab using placeholder "CAS_CUSTOM_FIELDS_SCREEN_SHARE_PURCHASE" from Dynamic form Screen Mapping
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    Then dynamic form should not be visible in view only mode
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispost approval |

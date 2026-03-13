@Epic-PF_Share_Base
@PQMStory
@AuthoredBy-ankit.yadav
@ImplementedBy-ankit.yadav
@ReviewedBy-None
@Islamic
@ReleaseIslamicM3
@Release

@Shares
@Perishable

#${ProductType:["IPF"]}

Feature: Share Purchase Stage Modification

#  Pre-Requisites---
#  In this feature we will validate the screen layout when an share purchase stage is attached to the finance application.
# PRODUCT_TYPE
#  IPF	    Personal Finance
#  IHF	    Home Finance
#  IAF	    Auto Finance

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0

##${ProductType:["IPF"]}
##${ApplicationStage:["SHARE_PURCHASE"]}
##PMG-3_CAS-189521
###ST-11_CAS-189521
##Already Implemented
#  Scenario Outline: ACAUTOCAS-14928:  Share Purchase Stage name is configurable at <FinalStage> for a <ProductType> application
#    And user clicks on menu
#    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
#    And user click on seed data master
#    And user search the share purchase seed data
#    And user edit the share purchase seed data
#    When user updates the stage name from Share Purchase to any other value
#    Then stage name should be updated to the desired value as user updated
#    Examples:
#      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 |

#${ProductType:["IPF"]}
#${ApplicationStage:["Reconsideration"]}
#PMG-4_CAS-189521
##ST-10_CAS-189521
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14929:  Validate <TabName> tabs at <FinalStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
    And user opens an application of "<FinalStage>" stage present in context from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user add "<TabName>" on share purchase stage
    Then "<TabName>" will get added only in view mode
    Examples:
      | TabName                 | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType | Category | Key              |
      | Investor Details        | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | Share Order             | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | Documents               | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | Application Information | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | Finance Details         | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | Repayment Parameters    | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | SHARE_PURCHASE | indiv         | shares   | isshare purchase |


#PMG-7.1_CAS-189521
##ST-29.2_CAS-189521
# to be discuss with Kanika Gupta
#  Scenario Outline: Validate Notification Task on Move to Next Stage at <FinalStage> for a <ProductType> application
#    And user opens an application of "<ApplicationStage>" stage present in context from application grid
#    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
#    And User has configured one Notification Task
#    And user mapped notification tasks on Move to Next Stage
#    When User clicks Move to Next Stage button
#    Then notification will be sent to the user
#    Examples:
#      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 |


#PMG-7.2_CAS-189521
##ST-29.2_CAS-189521
# to be discuss with Kanika Gupta
#  Scenario Outline: Validate Application Assignment Task on Move to Next Stage at <FinalStage> for a <ProductType> application
#    And user opens an application of "<ApplicationStage>" stage present in context from application grid
#    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
#    And User has configured one Application Assignment Task
#    And user mapped Application Assignment Task on Move to Next Stage
#    When User clicks Move to Next Stage button
#    Then  application will assigned to user maintained in Application Assignment Task
#    Examples:
#      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 |


#PMG-7.2_CAS-189521
##ST-30_CAS-189521
# to be discuss with Kanika Gupta
#  Scenario Outline: Validate application moved to next stage at <FinalStage> for a <ProductType> application
#    And user opens an application of "<ApplicationStage>" stage present in context from application grid
#    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
#    And User has configured one Notification Task
#    And user mapped notification tasks on Move to Next Stage
#    And User has configured one Application Assignment Task
#    And user mapped Application Assignment Task on Move to Next Stage
#    When User clicks Move to Next Stage button
#    Then Application will move to Post Document Approval Stage
#    Examples:
#      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 |


#PMG-8_CAS-189521
##ST-24_CAS-189521
# to be discuss with Kanika Gupta
#  Scenario Outline: Validate custom report in Communication History at <FinalStage> for a <ProductType> application
#    And user opens an application of "<ApplicationStage>" stage present in context from application grid
#    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
#    And user click on Custom Report from more actions
#    When user has created a custom report using letter template task
#    And User see same custom report in more actions
#    Then Version wise report will successfully get saved in communication history
#    Examples:
#      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 |

#${ProductType:["IPF"]}
#${ApplicationStage:["Reconsideration"]}
#PMG-9_CAS-189521
##ST-25_CAS-189521
  #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14930:  Validate <Reports> in Communication History at <FinalStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
    And user opens an application of "<FinalStage>" stage present in context from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user check "<Reports>" latest versions in communication history
    Then "<Reports>" of latest versions should be available
    Examples:
      | Reports          | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType | Category | Key              |
      | CAM Report       | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | Sanction Letters | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | SHARE_PURCHASE | indiv         | shares   | isshare purchase |

#PMG-8_CAS-189521
#  to be discuss with Kanika Gupta
#  Scenario Outline: Validate CAM & Sanction letter in Communication History at <FinalStage> for a <ProductType> application
#    And user opens an application of "<ApplicationStage>" stage present in context from application grid
#    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
#    And user click on Custom Report from more actions
#    When user has created a custom report using letter template task
#    And User see same custom report in more actions
#    Then Version wise report will successfully get saved in communication history
#      | CAM Report      |
#      | Sanction Letter |
#    Examples:
#      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 |

#${ProductType:["IPF"]}
#${ApplicationStage:["Reconsideration"]}
##ST-33_CAS-189521
  #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14931:  Validate Required Options at <FinalStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
    And user opens an application of "<FinalStage>" stage present in context from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user click on required options on share purchase
    Then Only mandatory fields should be displayed
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType | Category | Key              |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | SHARE_PURCHASE | indiv         | shares   | isshare purchase |

#${ProductType:["IPF"]}
#${ApplicationStage:["Reconsideration"]}
##ST-35_CAS-189521
  #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14932:  Verify pre approval document in document tab at <FinalStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
    And user opens an application of "<FinalStage>" stage present in context from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user Click on document tab
    Then Pre approval documents are present in document tab
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType | Category | Key              |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | SHARE_PURCHASE | indiv         | shares   | isshare purchase |

#
###ST-36_CAS-189521
#  Scenario Outline: Check action of cancel button at <FinalStage> for a <ProductType> application
#    And user opens an application of "<ApplicationStage>" stage present in context from application grid
#    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
#    When user click on cancel button
#    Then Unsaved data will be lost after click on cancel button
#    Examples:
#      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 |
#
###ST-37_CAS-189521
#  Scenario Outline: check ok button after cancel button action remove all data before save at <FinalStage> for a <ProductType> application
#    And user opens an application of "<ApplicationStage>" stage present in context from application grid
#    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
#    When user click on cancel button
#    And user select ok on warning message
#    Then All the data captured will be removed
#    Examples:
#      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 |
#
###ST-38_CAS-189521
#  Scenario Outline: Check close button after cancel button action retain all data before save at <FinalStage> for a <ProductType> application
#    And user opens an application of "<ApplicationStage>" stage present in context from application grid
#    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
#    When user click on cancel button
#    And user select close on warning message
#    Then All the data captured will be retained
#    Examples:
#      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 |
#
#
###ST-39_CAS-189521
#  Scenario Outline: Verify changing tabs without saving data at <FinalStage> for a <ProductType> application
#    And user should have another tab maintained on this stage
#    And user opens an application of "<ApplicationStage>" stage present in context from application grid
#    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
#    When user Click on document tab
#    And user switch to another tab
#    Then user should get a proper warning message "Unsaved data will be lost. Press Ok if saved already or Close to save the data"
#    Examples:
#      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 |

##${ProductType:["IPF"]}
##${ApplicationStage:["Reconsideration"]}
###ST-43_CAS-189521
#  @Perishable
#  Scenario Outline: ACAUTOCAS-14933:  Verify user can reassign the application at <FinalStage> for a <ProductType> application
#    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
#    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
#    And user opens an application of "<FinalStage>" stage present in context from application grid
#    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
#    When User searches for an application present of "<ProductType>" application at "<FinalStage>" stage
#    And user reassign application to another user
#    And user should be successfully reassigned to another user
#    And user logout from CAS
#    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
#    And user open the application grid view
#    Then User should be able to search the application in Application grid
#    Examples:
#      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType | Category | Key              |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 19                                | SHARE_PURCHASE | indiv         | shares   | isshare purchase |

##${ProductType:["IPF"]}
##${ApplicationStage:["Reconsideration"]}
###ST-45_CAS-189521
#  @Perishable
#  Scenario Outline: ACAUTOCAS-14934:  Verify User can raise query for the application at <FinalStage> for a <ProductType> application
#    When user selects application at "<ApplicationStage>" for raising Query
#    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_home>" and row <MoreActions_home_rowNum>
#    And user raises a query
#    Then user should be able to raise Query for selected application
#    Examples:
#      | ApplicationStage   | MoreActionsWB     | MoreActions_home | MoreActions_home_rowNum | ProductType   |
#      | <ApplicationStage> | more_actions.xlsx | raise_query      | 0                       | <ProductType> |

##${ProductType:["IPF"]}
##${ApplicationStage:["Reconsideration"]}
###ST-44_CAS-189521
#  @Perishable
#  Scenario Outline: Verify User can hold the application at <FinalStage> for a <ProductType> application
#    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
#    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
#    And user opens an application of "<FinalStage>" stage present in context from application grid
#    And user reads data from the excel file "<HoldApplicationWB>" under sheet "<HoldApplication>" and row <HoldApplication_rownum>
#    When user holds the application
#    And user searches application in enquiry screen
#    Then user should be able to see the application details
#    Examples:
#      | ProductType   | ApplicationStage   | HoldApplicationWB    | HoldApplication | HoldApplication_rownum | FinalStage     | ApplicantType | Category | Key              |
#      | <ProductType> | <ApplicationStage> | HoldApplication.xlsx | HoldApplication | 0                      | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
#
##${ProductType:["IPF"]}
##${ApplicationStage:["Reconsideration"]}
###ST-47_CAS-189521
#  @Perishable
#  Scenario Outline: Check cancelled application is present in cancel grid at <FinalStage> for a <ProductType> application
#    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
#    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
#    And user opens an application of "<FinalStage>" stage present in context from application grid
#    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
#    When User searches for an application present of "<ProductType>" application at "<FinalStage>" stage
#    And user open Cancel Application option
#    And user search via application number
#    Then application should not be searched
#    Examples:
#      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType | Category | Key              |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | SHARE_PURCHASE | indiv         | shares   | isshare purchase |

#${ProductType:["IPF"]}
#${ApplicationStage:["Reconsideration"]}
  #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14935:  Able to search Customer Communication History of <FinalStage> using Mode as <mode> along with <report> in Share Purchase
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
    And user opens an application of "<FinalStage>" stage present in context from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user searches the application using mode as "<mode>" along with "<report>"
    Then application with screening "<mode>" as "<report>" are not visible
    Examples:
      | mode  | report           | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ProductType   | ApplicationStage   | FinalStage     | ApplicantType | Category | Key              |
      | Phone | CAM Report       | sharepurchase.xlsx | share_purchase             | 16                                | <ProductType> | <ApplicationStage> | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | Phone | Sanction Letters | sharepurchase.xlsx | share_purchase             | 17                                | <ProductType> | <ApplicationStage> | SHARE_PURCHASE | indiv         | shares   | isshare purchase |

#${ProductType:["IPF"]}
#${ApplicationStage:["Reconsideration"]}
    #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16100: Able to search Customer Communication History of <FinalStage> using Mode as <mode> along with <report> in Share Purchase is visible
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
    And user opens an application of "<FinalStage>" stage present in context from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user searches the application using mode as "<mode>" along with "<report>"
    Then application with screening "<mode>" as "<report>" are visible
    Examples:
      | mode  | report           | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ProductType   | ApplicationStage   | FinalStage     | ApplicantType | Category | Key              |
      |       | Sanction Letters | sharepurchase.xlsx | share_purchase             | 15                                | <ProductType> | <ApplicationStage> | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      |       | CAM Report       | sharepurchase.xlsx | share_purchase             | 16                                | <ProductType> | <ApplicationStage> | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | Email | Sanction Letters | sharepurchase.xlsx | share_purchase             | 15                                | <ProductType> | <ApplicationStage> | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | Email | CAM Report       | sharepurchase.xlsx | share_purchase             | 16                                | <ProductType> | <ApplicationStage> | SHARE_PURCHASE | indiv         | shares   | isshare purchase |

##${ProductType:["IPF"]}
##${ApplicationStage:["Reconsideration"]}
###ST-23_CAS-189521
#  @Perishable
#  Scenario Outline: ACAUTOCAS-14936:  Check exit feature at <FinalStage> for a <ProductType> application
#    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
#    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
#    And user opens an application of "<FinalStage>" stage present in context from application grid
#    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
#    When user click on exit button
#    And User fills the details of application exit prompt
#    And user open the application grid
#    And User searches for an application present of "<ProductType>" application at "<FinalStage>" stage
#    Then user is able to search application at "<FinalStage>" stage from application grid
#    Examples:
#      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType | Category | Key              |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | SHARE_PURCHASE | indiv         | shares   | isshare purchase |

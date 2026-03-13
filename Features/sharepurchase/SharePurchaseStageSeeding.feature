@Epic-PF_Share_Base
@PQMStory
@AuthoredBy-ankit.yadav
@ImplementedBy-ankit.yadav
@ReviewedBy-None
@Perishable
@Islamic
@Shares

#${ProductType:["IPF"]}
#${ApplicationStage:["Reconsideration"]}
#${ApplicantType:["indiv"]}

Feature: Share Purchase Stage Seeding Verification

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

#PQM-1_CAS-189521
#ST-7_CAS-189521
#FeatureID-ACAUTOCAS-5496
  @Release
  Scenario Outline: ACAUTOCAS-14954:  Move the PF application to Share Purchase stage at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_shareOrder>" and row <ShareDetails_shareOrder_rowNum>
    When user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user open the share purchase stage section
    Then Share Purchase tab should be present
    Examples:
      | ProductType   | ApplicationStage   | VarStage2      | ShareDetailsWB | ShareDetails_shareOrder | ShareDetails_shareOrder_rowNum | FinalStage  | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | SHARE_PURCHASE | shares.xlsx    | share_order             | 0                              | SHARE ORDER | <ApplicantType> | shares   | isshare order |

##PQM-2_CAS-189521
##ST-10_CAS-189521
# Master maintenance
#  Scenario Outline: ACAUTOCAS-14955:  Verify Share Purchase stage name is configurable at "<ApplicationStage>" for a "<ProductType>" application
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

##PQM-3_CAS-189521
# Master maintenance
#  Scenario Outline: ACAUTOCAS-14956:  Verify Share Purchase stage code is not configurable at "<ApplicationStage>" for a "<ProductType>" application
#    And user clicks on menu
#    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
#    And user click on seed data master
#    When user search the share purchase seed data
#    And user edit the share purchase seed data
#    Then user should not be able to update Share Purchase stage code
#    Examples:
#      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 |

#PQM-4.1_CAS-189521
#ST-19_CAS-189521
#FeatureID-ACAUTOCAS-5496
  @Release
  Scenario Outline: ACAUTOCAS-14957:  Verify Online Help icon at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When User open online help icon
    Then user should get open a new separate tab of online help
    Examples:
      | ProductType   | ApplicationStage   | FinalStage     | ApplicantType   | Category | Key              |
      | <ProductType> | <ApplicationStage> | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

##PQM-4.2_CAS-189521
##PMG-2_CAS-189521
##ST-20_CAS-189521
# to be discuss with kanika.gupta
#  Scenario Outline: Verify Online Help page at <FinalStage> for a <ProductType> application
#    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
#    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
#    And user opens an application of "<FinalStage>" stage present in context from application grid
#    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
#    And User clicks online help icon
#    When User open Online Help page
#    Then "<FieldName>" available on the new Separated Online Help Page
#    Examples:
#      | ProductType   | ApplicationStage   | ShareDetailsWB    | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FieldName                    |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | Tabs Information             |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 1                                 | About More Actions           |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 2                                 | Authority and Configurations |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 3                                 | Stage Path                   |

#PQM-5_CAS-189521
#PMG-5_CAS-189521
#ST-16_CAS-189521
#FeatureID-ACAUTOCAS-5496
  @Release
  Scenario Outline: ACAUTOCAS-14958:  Verify <AdditionalCapabilities> at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then user should be able to see various additional capabilities under share purchase
    Examples:
      | AdditionalCapabilities         | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | Activity                       | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 87                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Customer Communication History | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 88                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Exit                           | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 89                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#PQM-5_CAS-189521
#PMG-5_CAS-189521
#ST-16_CAS-189521
#FeatureID-ACAUTOCAS-5496
  @Release
  Scenario Outline: ACAUTOCAS-14959:  Verify <AdditionalCapabilities> in Current Stage at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user open the share purchase stage section
    Then user should be able to see various additional capabilities under share purchase
    Examples:
      | AdditionalCapabilities | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | Workflow Icon          | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 90                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#PQM-7_CAS-189521
#FeatureID-ACAUTOCAS-5496
# Invalid Scenario
#@Release#  Scenario Outline: ACAUTOCAS-17310: Verify Cancel Application option at <ApplicationStage> for a <ProductType> application
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user search application on cancel application screen
#    Then Application must be search successfully on cancel application screen
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key              |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare purchase |

#PQM-8_CAS-189521
#FeatureID-ACAUTOCAS-5496
  @Release
  Scenario Outline: ACAUTOCAS-14960:  Verify CAM Report option at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then CAM Report option should be visible
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#PQM-9_CAS-189521
#FeatureID-ACAUTOCAS-5496
  @Release
  Scenario Outline: ACAUTOCAS-14961:  Verify CAM Report at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When User clicks CAM Report option
    Then CAM report is visible
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

##PQM-10_CAS-189521
#Already covered
#  Scenario Outline: ACAUTOCAS-14962:  Verify Tab configuration at <FinalStage> for a <ProductType> application
#    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
#    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
#    And user opens an application of "<FinalStage>" stage present in context from application grid
#    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
#    When user clicks on edit workflow configuration in "CAS" for "<ProductType>"
#    And user enters the stage name
#    And user select the form configuration
#    When  user click on save and request approval
#    Then user should be able to send for approval the new record
#    And user logout from CAS
#    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
#    And user is on workflow configuration
#    And other authorised user should be able to approve the record
#    Examples:
#      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType | Category | Key              |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | SHARE_PURCHASE |<ApplicantType>| shares   | isshare purchase |

#PQM-11_CAS-189521
#FeatureID-ACAUTOCAS-5496
  @Release
  Scenario Outline: ACAUTOCAS-14963:  Verify Activity accordian option at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When User verifies Activity accordion for an application
    Then Activity accordion should be displayed on Share Purchase stage
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 1                                 | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#PQM-12_CAS-189521
#FeatureID-ACAUTOCAS-5496
  @Release
  Scenario Outline: ACAUTOCAS-14964:  Verify Activity tab at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When User verifies Activity accordion for an application
    And User verifies the activities and their timestamp in Activity tab for an application
    Then Activity tab should be displayed having correct Activity details along with timestamp
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 2                                 | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#PQM-13_CAS-189521
#FeatureID-ACAUTOCAS-5496
  @Release
  Scenario Outline: ACAUTOCAS-14965:  Verify Notes section at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When User verifies Activity accordion for an application
    And User verifies Add Note option under in activity accordian
    Then Add Note option should not be present
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 3                                 | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#PQM-14_CAS-189521
#FeatureID-ACAUTOCAS-5496
  @Release
  Scenario Outline: ACAUTOCAS-14966:  Verify Tags section at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When User verifies Activity accordion for an application
    And User verifies Add Tag option under in Activity accordian
    Then Add Tag option should not be present
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 9                                 | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#PQM-15_CAS-189521
#FeatureID-ACAUTOCAS-5496
  @Release
  Scenario Outline: ACAUTOCAS-17311: Verify Audit Trail at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user opens activity section
    When user navigates to activity Tab
    Then Audit Trail should be maintained
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

##PQM-16_CAS-189521
#  Scenario Outline: ACAUTOCAS-14967:  Verify Dynamic form configured at <FinalStage> for a <ProductType> application
#    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
#    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
#    And user opens an application of "<FinalStage>" stage present in context from application grid
#    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
#    When user clicks on edit workflow configuration in "CAS" for "<ProductType>"
#    And user enters the stage name
#    And user select the form configuration
#    When  user click on save and request approval
#    Then user should be able to send for approval the new record
#    And user logout from CAS
#    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
#    And user is on workflow configuration
#    And other authorised user should be able to approve the record
#    Examples:
#      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType | Category | Key              |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | SHARE_PURCHASE |<ApplicantType>| shares   | isshare purchase |

#PQM-17_CAS-189521
#PMG-13_CAS-189521
#FeatureID-ACAUTOCAS-5496
  @Release
  Scenario Outline: ACAUTOCAS-14968:  Verify application search through Application Manager at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When User searches for an application present on Share Order stage through Application Manager
    Then User should be able to search the application successfully through Application Manager
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 11                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#PQM-18_CAS-189521
#FeatureID-ACAUTOCAS-5496
  @Release
  Scenario Outline: ACAUTOCAS-14969:  Verify application search in Application grid at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user search for an application present of "<ProductType>" application at "<FinalStage>" stage
    Then user is able to search application at "<FinalStage>" stage from the application grid
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 12                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#PQM-19_CAS-189521
#PMG-10_CAS-189521
#FeatureID-ACAUTOCAS-5496
# Invalid Scenario
#@Release#  Scenario Outline: ACAUTOCAS-17312: Verify open application in cancel application screen at <FinalStage> for a <ProductType> application
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
#    And user search application on cancel application screen
#    When user clicks on application ID hyperlink of "<FinalStage>" stage on cancel application screen
#    Then Application must be opened successfully on cancel application screen
#    Examples:
#      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#PQM-20_CAS-189521
#PMG-11_CAS-189521
#FeatureID-ACAUTOCAS-5496
  @Release
  Scenario Outline: ACAUTOCAS-14970:  Verify Share Purchase tab at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user open the share purchase stage section
    Then Share Purchase tab should be present
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 14                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#PQM-20_CAS-189521
#PMG-11_CAS-189521
#FeatureID-ACAUTOCAS-5496
  @Release
  Scenario Outline: ACAUTOCAS-14971:  By default open Share Purchase tab at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user open the share purchase stage section
    And User click on Share Purchase Tab
    Then user should land on Share Purchase tab
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 15                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#PQM-21_CAS-189521
#PMG-12_CAS-189521
#ST-40_CAS-189521
#PMG-23_CAS-189504
#FeatureID-ACAUTOCAS-5496
  @Release
  Scenario Outline: ACAUTOCAS-14972:  Verify Application <Fields> through Enquiry screen at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user save application data "<Fields>" at post approval
    And user opens enquiry form
    When user search Application via Application Number from enquiry stage
    Then Application "<Fields>" should matched with searched application in enquiry stage
    Examples:
      | Fields         | ProductType   | ApplicationStage   | FinalStage    | ApplicantType   | Category | Key             |
      | Application ID | <ProductType> | <ApplicationStage> | POST APPROVAL | <ApplicantType> | shares   | ispost approval |
      | Full Name      | <ProductType> | <ApplicationStage> | POST APPROVAL | <ApplicantType> | shares   | ispost approval |
      | Stages         | <ProductType> | <ApplicationStage> | POST APPROVAL | <ApplicantType> | shares   | ispost approval |

#PQM-22_CAS-189521
#PMG-14_CAS-189521
#ST-42_CAS-189521
#FeatureID-ACAUTOCAS-5496
  @Release
  Scenario Outline: ACAUTOCAS-14973:  Verify search application in Assigned Applications grid at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user navigates to assigned application Grid
    Then User should be able to search the application in Application grid
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare purchase |

#PQM-23_CAS-189521
#PMG-13_CAS-189521
#ST-41_CAS-189521
#FeatureID-ACAUTOCAS-5496
  @Release
  Scenario Outline: ACAUTOCAS-14974:  Verify application reassignment at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user click on exit button
    And User fills the details of application exit prompt
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    When user reassign the application to other user
    And user open task table to edit user share purchase
    And user should be successfully reassigned to another user share purchase
    Then application should be assigned to another user share purchase
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key              | FinalStage     |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 0                            | <ApplicantType> | shares   | isshare purchase | SHARE_PURCHASE |

#PQM-24_CAS-189521
#FeatureID-ACAUTOCAS-5496
  @Release
  Scenario Outline: ACAUTOCAS-14975:  Verify Communication History section at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user click on the customer communication history section
    Then Communication History accordian should be opened for that application
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 23                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#PQM-25_CAS-189521
#FeatureID-ACAUTOCAS-5496
  @Release
  Scenario Outline: ACAUTOCAS-14976:  Verify Move to Next stage at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then Move to next stage option should not be present
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 22                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#PQM-26_CAS-189521
#FeatureID-ACAUTOCAS-5496
  @Release
  Scenario Outline: ACAUTOCAS-14977:  Verify Copy application at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When User moves to copy application page
    And User copies an existing application
    Then existing application data should be displayed in View mode
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 24                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#PQM-27_CAS-189521
#FeatureID-ACAUTOCAS-5496
  @Release
  Scenario Outline: ACAUTOCAS-14978:  Search Application through stage name at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then User search the application at "<FinalStage>" stage through stage name
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#PQM-28_CAS-189521
#FeatureID-ACAUTOCAS-5496
  @Release
  Scenario Outline: ACAUTOCAS-14979:  Bulk operation at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    And user open application manager
    And user navigate to Bulk Allocation
    And user reads data from the excel file "document.xlsx" under sheet "document_approval" and row <rowNum>
    And user search for an Multiple application where document deferral task is already initiated
    When user selects bulk allocation option
    And user reassigns the application to team with user as per application manager capabilities
    Then user should be able to reassign application through application manager
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           | rowNum |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 0                            | <ApplicantType> | shares   | isshare order | 30     |

#FeatureID-ACAUTOCAS-5496
  @Release
  Scenario Outline: ACAUTOCAS-17313: In Activity Bar User Name should be present with User Id at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens activity section
    And user navigates to activity Tab
    Then User Name should present with User Id
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare purchase |

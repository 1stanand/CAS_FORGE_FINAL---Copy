@Epic-PF_Share_Base
@PQMStory
@AuthoredBy-ankit.yadav
@ReviewedBy-None
@ImplementedBy-ankit.yadav
@Islamic
@Shares
@Release
@Perishable

#${ProductType:["IPF"]}
#${ApplicationStage:["Reconsideration"]}
#${ApplicantType:["indiv"]}


Feature: Additional Capabilities On Share Sell Stage

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0

#PQM-4_CAS-191648
#FeatureID-ACAUTOCAS-11312
  Scenario Outline: ACAUTOCAS-14989:  Check messages in Activity Section on <VarStage2> at Share Sell for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user click on save button on share sell
    And user click on Release button
    And Application sent back to PDOC from Share Sell stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And On PDOC Stage check Activity section
    Then Send Back success message should be logged in the activity section
    Examples:
      | VarStage2     | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key          |
      | Post Approval | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | <ApplicantType> | shares   | isshare sell |

#PQM-6_CAS-191648
#UT-12_CAS-191648
#FeatureID-ACAUTOCAS-11312
  Scenario Outline: ACAUTOCAS-14990:  Check messages in Activity Section after success at Share Sell for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user click on save button on share sell
    And user click on Release button
    When On Share Sell Stage check Activity section
    Then Service Success message should be displayed in the activity section
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key          |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | <ApplicantType> | shares   | isshare sell |

##${ProductType:["IPF"]}
##${ApplicationStage:["Reconsideration"]}
##PQM-8_CAS-191648
##UT-11_CAS-191648
##scenarios failed at share sell service down
#  Scenario Outline: ACAUTOCAS-14991:  Check messages in Activity Section after failed at Share Sell for a <ProductType> application
#    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
#    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
#    And user click on save button on share sell
#    And user click on Is Share Released check box
#    And user click on Release button
#    When On Share Sell Stage check Activity section
#    Then Service Failure message should be displayed in the activity section
#    Examples:
#      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType | Category | Key          |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | <ApplicantType>         | shares   | isshare sell |
#
#PQM-10_CAS-191648
#UT-16_CAS-191648,25_CAS-191648
#FeatureID-ACAUTOCAS-11312
  Scenario Outline: ACAUTOCAS-14992:  Check <TabName> checkbox at Share Sell for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user click on save button on share sell
    And user click on Release button
    And Application sent back to PDOC from Share Sell stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And Again move the application to Share Sell stage
    And user opens an application of "Share Sell" stage present in context from application grid
    And Check "<TabName>"
    Then "<TabName>" should be visible and disabled
    Examples:
      | VarStage1     | TabName            | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key          |
      | Post Approval | Is Shares Released | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | <ApplicantType> | shares   | isshare sell |
      | Post Approval | Release Shares     | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | <ApplicantType> | shares   | isshare sell |

#ST-33_CAS-191648
#UT-26_CAS-191648
#FeatureID-ACAUTOCAS-11312
  Scenario Outline: ACAUTOCAS-14993:  Check <TabName> at Share Sell for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user click on save button on share sell
    And user click on Release button
    When Application sent back to PDOC from Share Sell stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And Again move the application to Share Sell stage
    And user opens an application of "Share Sell" stage present in context from application grid
    And Check "<TabName>"
    Then "<TabName>" should be visible and enabled
    Examples:
      | VarStage1     | TabName            | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key          |
      | Post Approval | Is Shares Released | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | <ApplicantType> | shares   | isshare sell |
      | Post Approval | Release Shares     | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | <ApplicantType> | shares   | isshare sell |

#PQM-18.1_CAS-191648
#FeatureID-ACAUTOCAS-11312
  Scenario Outline: ACAUTOCAS-17309: Check Send Back activity Stamping in Activity Section on <VarStage1> at Share Sell for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user click on save button on share sell
    And user click on Release button
    And Application sent back to PDOC from Share Sell stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And On PDOC Stage check Activity section
    Then Send Back success message should be logged in the activity section
    Examples:
      | VarStage1     | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key          |
      | Post Approval | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | <ApplicantType> | shares   | isshare sell |

#PQM-18.2_CAS-191648
#FeatureID-ACAUTOCAS-11312
  Scenario Outline: ACAUTOCAS-17309: Check Send Back activity Stamping in Activity Section on <VarStage1> at Share Sell for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user click on save button on share sell
    And user click on Release button
    And Application sent back to PDOC from Share Sell stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And Again move the application to Share Sell stage
    And user opens an application of "Share Sell" stage present in context from application grid
    And Check the activity section on Share Sell Stage
    Then Send Back success message should be logged in the activity section
    Examples:
      | VarStage1     | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key          |
      | Post Approval | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | <ApplicantType> | shares   | isshare sell |

#PQM-12_CAS-191648
#FeatureID-ACAUTOCAS-11312
  Scenario Outline: ACAUTOCAS-14995:  Move To Next Stage when Release Share is successful at Share Sell for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user click on save button on share sell
    And user click on Release button
    When user move application to next stage from share sell
    And user opens an application of "<VarStage1>" stage present in context from application grid
    Then user able to perform move to next stage from share sell
    Examples:
      | VarStage1 | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key          |
      | DISBURSAL | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | <ApplicantType> | shares   | isshare sell |

#PQM-13_CAS-191648
#FeatureID-ACAUTOCAS-11312
  Scenario Outline: ACAUTOCAS-14996:  Move To Next Stage when Release Share is failed selecting is share released checkbox at Share Sell for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user click on save button on share sell
    And user click on Release button
    And user move application to next stage from share sell
    And user opens an application of "<VarStage1>" stage present in context from application grid
    Then user able to perform move to next stage from share sell
    Examples:
      | VarStage1 | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key          |
      | DISBURSAL | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | <ApplicantType> | shares   | isshare sell |

#PQM-19_CAS-191648
#FeatureID-ACAUTOCAS-11312
  Scenario Outline: ACAUTOCAS-14997:  Move To Next Stage when Release Share is failed without selecting is share released checkbox at Share Sell for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user click on save button on share sell
    And user click on Release button
    And user move application to next stage from share sell
    Then System should give validation of Either Release Shares or select Is Shares Released flag
    Examples:
      | VarStage1 | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key          |
      | DISBURSAL | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | <ApplicantType> | shares   | isshare sell |

#PQM-16_CAS-191648
#FeatureID-ACAUTOCAS-11312
  Scenario Outline: ACAUTOCAS-14998:  Validate application in cancelled Application grid at Share Sell for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user clicks on more action button
    And user click on cancel Application
    And User cancels an application from Post Approval Stage
    Then Application will land on Cancelled Applications grid
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key          |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | <ApplicantType> | shares   | isshare sell |

#PQM-17_CAS-191648
#FeatureID-ACAUTOCAS-11312
  Scenario Outline: ACAUTOCAS-14999:  Validate application in Rejected Application grid at Share Sell for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user clicks on more action button
    And user click on Reject Application
    And User reject an application from Post Approval Stage
    Then Application should be available on Rejected Application Grid
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key          |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | <ApplicantType> | shares   | isshare sell |

#ST-43_CAS-191648
#UT-20_CAS-191648
#FeatureID-ACAUTOCAS-11312
  Scenario Outline: ACAUTOCAS-16104: not check is share released with not execute release share at Share Sell for a <ProductType> application
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user move application to next stage from share sell
    Then System should give validation of Either Release Shares or select Is Shares Released flag
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key          |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | <ApplicantType> | shares   | isshare sell |

#ST-44_CAS-191648
#UT-21_CAS-191648
#FeatureID-ACAUTOCAS-11312
  Scenario Outline:ACAUTOCAS-16104: not check is share released with not move to next stage at Share Sell for a <ProductType> application
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user move application to next stage from share sell
    Then Application should not move to next stage
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key          |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | <ApplicantType> | shares   | isshare sell |

#ST-48_CAS-191648
#FeatureID-ACAUTOCAS-11312
  Scenario Outline: ACAUTOCAS-15001:  From workflow configuration Maintain Send Back Stages Before PDOC at Share Sell for a <ProductType> application
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user open the share sell stage section
    Then User should be able to configure the work flow
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key          |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | <ApplicantType> | shares   | isshare sell |

#UT-24_CAS-191648
#FeatureID-ACAUTOCAS-11312
  Scenario Outline: ACAUTOCAS-15002:  Check "<TabName>" after save at Share Sell for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user click on save button on share sell
    And Application sent back to PDOC from Share Sell stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    When Again move the application to Share Sell stage
    And user opens an application of "Share Sell" stage present in context from application grid
    And Check "<TabName>"
    Then "<TabName>" should be visible and enabled
    Examples:
      | VarStage1     | TabName            | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key          |
      | Post Approval | Is Shares Released | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | <ApplicantType> | shares   | isshare sell |
      | Post Approval | Release Shares     | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | <ApplicantType> | shares   | isshare sell |

#UT-7_CAS-191648
#FeatureID-ACAUTOCAS-11312
  Scenario Outline: ACAUTOCAS-15003:  Check <TabName> disable at Share Sell for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user click on save button on share sell
    And user click on Release button
    When Check "<TabName>"
    Then "<TabName>" should be visible and disabled
    Examples:
      | TabName            | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key          |
      | Is Shares Released | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | <ApplicantType> | shares   | isshare sell |
      | Release Shares     | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | <ApplicantType> | shares   | isshare sell |

#UT-8_CAS-191648
#FeatureID-ACAUTOCAS-11312
  Scenario Outline: ACAUTOCAS-15004:  Check <TabName> enable at Share Sell for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user click on save button on share sell
    When Check "<TabName>"
    Then "<TabName>" should be visible and enabled
    Examples:
      | TabName            | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key          |
      | Is Shares Released | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | <ApplicantType> | shares   | isshare sell |
      | Release Shares     | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | <ApplicantType> | shares   | isshare sell |

#FeatureID-ACAUTOCAS-11312
Scenario Outline: ACAUTOCAS-18133: Check Send Back Stamping on <VarStage1> at Share Sell for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user click on save button on share sell
    When user click on Release button
    And Application sent back to "<VarStage1>" from Share Sell stage
    Then user opens an application of "<VarStage1>" stage present in context from application grid
    Examples:
      | VarStage1       | ProductType   | ApplicationStage   | ApplicantType   | Category | Key          |
      | CREDIT APPROVAL | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare sell |
      | POST APPROVAL   | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare sell |
      | SHARE ORDER     | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare sell |
      | RECONSIDERATION | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare sell |
      | Sourcing        | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare sell |

#FeatureID-ACAUTOCAS-11312
Scenario Outline: ACAUTOCAS-18134: Validate Cancelling application from at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_shareSell>" and row <ShareDetails_shareSell_rowNum>
    When user clicks on more action button
    And user click on cancel Application
    And User cancels an application from Post Approval Stage
    Then Application will land on Cancelled Applications grid
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB  | ShareDetails_shareSell | ShareDetails_shareSell_rowNum | FinalStage | ApplicantType   | Category | Key          |
      | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell             | 0                             | Share Sell | <ApplicantType> | shares   | isshare sell |

#FeatureID-ACAUTOCAS-11312
Scenario Outline: ACAUTOCAS-18135: Validate application in cancelled Application grid at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_shareSell>" and row <ShareDetails_shareSell_rowNum>
    When user clicks on more action button
    And user click on cancel Application
    And User cancels an application from Post Approval Stage
    Then Application will land on Cancelled Applications grid
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB  | ShareDetails_shareSell | ShareDetails_shareSell_rowNum | FinalStage | ApplicantType   | Category | Key          |
      | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell             | 1                             | Share Sell | <ApplicantType> | shares   | isshare sell |

#FeatureID-ACAUTOCAS-11312
Scenario Outline: ACAUTOCAS-18136: Validate rejecting Application at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_shareSell>" and row <ShareDetails_shareSell_rowNum>
    When user clicks on more action button
    And user click on Reject Application
    And User reject an application from Post Approval Stage
    Then Application should be available on Rejected Application Grid
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB  | ShareDetails_shareSell | ShareDetails_shareSell_rowNum | FinalStage | ApplicantType   | Category | Key          |
      | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell             | 3                             | Share Sell | <ApplicantType> | shares   | isshare sell |

#FeatureID-ACAUTOCAS-11312
Scenario Outline: ACAUTOCAS-18137: Validate application in Rejected Application grid at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_shareSell>" and row <ShareDetails_shareSell_rowNum>
    When user clicks on more action button
    And user click on Reject Application
    And User reject an application from Post Approval Stage
    Then Application should be available on Rejected Application Grid
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB  | ShareDetails_shareSell | ShareDetails_shareSell_rowNum | FinalStage | ApplicantType   | Category | Key          |
      | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell             | 4                             | Share Sell | <ApplicantType> | shares   | isshare sell |

#FeatureID-ACAUTOCAS-11312
Scenario Outline: ACAUTOCAS-18138: Validate <ReviewAction> of an application to PDOC stage from Cancelled Application Grid at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_shareSell>" and row <ShareDetails_shareSell_rowNum>
    And user clicks on more action button
    And user click on cancel Application
    And User cancels an application from Post Approval Stage
    When User is on cancelled application grid
    And user search application on cancelled application
    And user makes action to confirm "<ReviewAction>" the application on "<Grid>" application
    Then application is "<Grid>" based on the action taken on Review application
    Examples:
      | Grid      | ReviewAction | ProductType   | ApplicationStage   | ShareDetailsWB  | ShareDetails_shareSell | ShareDetails_shareSell_rowNum | FinalStage | ApplicantType   | Category | Key          |
      | Cancelled | Send Back    | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell             | 3                             | Share Sell | <ApplicantType> | shares   | isshare sell |
      | Cancelled | Cancellation | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell             | 4                             | Share Sell | <ApplicantType> | shares   | isshare sell |

#FeatureID-ACAUTOCAS-11312
Scenario Outline: ACAUTOCAS-18139: Validate send back of an application to <VarStage> stage from Cancelled Application Grid at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_shareSell>" and row <ShareDetails_shareSell_rowNum>
    And user clicks on more action button
    And user click on cancel Application
    And User cancels an application from Post Approval Stage
    When User is on cancelled application grid
    And user search application on cancelled application
    Then application can be send back to "<VarStage>" stage
    Examples:
      | VarStage        | ProductType   | ApplicationStage   | ShareDetailsWB  | ShareDetails_shareSell | ShareDetails_shareSell_rowNum | FinalStage | ApplicantType   | Category | Key          |
      | CREDIT_APPROVAL | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell             | 5                             | Share Sell | <ApplicantType> | shares   | isshare sell |
      | SHARE_ORDER     | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell             | 6                             | Share Sell | <ApplicantType> | shares   | isshare sell |

#FeatureID-ACAUTOCAS-11312
Scenario Outline: ACAUTOCAS-18140: Validate <ReviewAction> of an application to PDOC stage from Rejected Application Grid at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_shareSell>" and row <ShareDetails_shareSell_rowNum>
    And user clicks on more action button
    And user click on Reject Application
    And User reject an application from Post Approval Stage
    When User is on Rejected application grid
    And user search application on rejected application
    And user makes action to confirm "<ReviewAction>" the application on "<Grid>" application
    Then application is "<Grid>" based on the action taken on Review application
    Examples:
      | Grid     | ReviewAction | ProductType   | ApplicationStage   | ShareDetailsWB  | ShareDetails_shareSell | ShareDetails_shareSell_rowNum | FinalStage | ApplicantType   | Category | Key          |
      | Rejected | Send Back    | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell             | 0                             | Share Sell | <ApplicantType> | shares   | isshare sell |
      | Rejected | Cancellation | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell             | 2                             | Share Sell | <ApplicantType> | shares   | isshare sell |

#FeatureID-ACAUTOCAS-11312
Scenario Outline: ACAUTOCAS-18141: Validate send back of an application to <VarStage> stage from Rejected Application Grid at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_shareSell>" and row <ShareDetails_shareSell_rowNum>
    And user clicks on more action button
    And user click on Reject Application
    And User reject an application from Post Approval Stage
    When User is on Rejected application grid
    And user search application on rejected application
    Then application can be send back to "<VarStage>" stage
    Examples:
      | VarStage        | ProductType   | ApplicationStage   | ShareDetailsWB  | ShareDetails_shareSell | ShareDetails_shareSell_rowNum | FinalStage | ApplicantType   | Category | Key          |
      | CREDIT_APPROVAL | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell             | 5                             | Share Sell | <ApplicantType> | shares   | isshare sell |
      | SHARE_ORDER     | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell             | 6                             | Share Sell | <ApplicantType> | shares   | isshare sell |


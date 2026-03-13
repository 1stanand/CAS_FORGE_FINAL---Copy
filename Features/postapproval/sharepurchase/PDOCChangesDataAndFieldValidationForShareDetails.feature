@Epic-PF_Share_Base
@PQMStory
@AuthoredBy-ankit.yadav
@ImplementedBy-ankit.yadav
@ReviewedBy-None
@Release
@Islamic
@Shares
@Perishable

#${ProductType:["IPF"]}
#${ApplicationStage:["Reconsideration"]}

Feature: Post Approval Changes Data And Field Validation For Share Details

#  Pre-Requisites---
#  In this feature we will validate the screen layout when an post approval stage is attached to the finance application.
# PRODUCT_TYPE
#  IPF	    Personal Finance
#  IHF	    Home Finance
#  IAF	    Auto Finance

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0

#ST-13_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14608:  Validate application amount field in repayment parameter screen at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When User checks Repayment Parameters on Loan details tab
    Then Application amount field in repayment parameter screen should appearing in disable mode
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#ST-14_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14609:  Validate application amount in repayment parameter screen at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When User checks Repayment Parameters on Loan details tab
    And User views Application amount field
    Then Application amount gets automatically updated with total executed amount
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#ST-15_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14610:  Validate application amount in application bar above the screen at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When User open repayment parameters on Loan details tab
    And user checks Requested Amount for application bar
    Then Application amount should be updated successfully in application info bar
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#ST-16_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14611:  Validate Capital funded amount at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When User checks Repayment Parameters on Loan details tab
    Then Capital funded amount should be updated successfully
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#ST-17_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14612:  Validate repayment schedule is generated at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user clicks on view repayment schedule on Finance details tab
    Then Repayment schedule should be generated properly
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |

##${ProductType:["IPF"]}
##${ApplicationStage:["Reconsideration"]}
#
##ST-18_CAS-189513
# invalid scenarios
#  Scenario Outline: Validate Repayment schedule download at <ApplicationStage> for a <ProductType> application
#    And user opens an application of "<FinalStage>" stage present in context from application grid
#    When user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
#    And click on repayment schedule pdf
#    Then Repayment schedule download successfully
#    Examples:
#      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 |

#ST-19_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14613:  Validate the amount in repayment schedule generated at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When User checks Repayment Parameters on Loan details tab
    And user saves finance amount with capital funded amount
    Then finance amount with capital funded should updated properly
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#ST-20_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14614:  Validate the EMI in repayment schedule generated at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user saves installment amount from repayment parameters
    Then EMI should updated properly
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#ST-21_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14615:  Validate data in instrument details tab is generated at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user open repayment instrument details tab
    Then Instrument details tab data should be generated properly
    Examples:
      | ProductType   | ApplicationStage   | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | POST APPROVAL | indiv         | shares   | ispost approval |

#ST-22_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14616:  Validate report in instrument details tab is generated at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user open repayment instrument details tab
    And user select repayment instrument type
    And user select applicant
    And user open repayment instrument to add details
    And user fills all fields to add detail for instrument type
    And user save repayment instrument mandate
    And user saves repayment instrument details
    And User open view repayment instrument report
    Then instrument details report should be generated properly
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#ST-24_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14618:  Validate DBR at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When User is on financial summary tab
    And user fill summary analysis tab
    Then DBR should be updated successfully
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |

##ST-25_CAS-189513
#already implemented
#  Scenario Outline: Validate CAM report if all fields value is updated at "<ApplicationStage>" for a "<ProductType>" application
#    And user opens an application of "<FinalStage>" stage present in context from application grid
#    When user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
#    Then All fields in CAM report should be updated successfully
#    Examples:
#      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 |

#ST-27_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14619:  Validate tab sequence of each "<TabName>" at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user add "<TabName>" on post approval stage
    Then "<TabName>" will get added on post approval stage
    Examples:
      | ProductType   | ApplicationStage   | TabName                 | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | Application Information | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Finance Details         | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Documents               | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | References              | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Conditions              | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Checklist               | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Account Details         | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | E-Stamping              | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Share Purchase          | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Repayment Instrument    | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Collateral              | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#ST-34_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14620:  Validate Work flow record at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user click on workflow record
    Then Work flow record is visible
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#ST-35_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14621:  Validate exit application at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user click on exit button
    And User fills the details of application exit prompt
    And user open the application grid
    And User searches for an application present of "<ProductType>" application at "<FinalStage>" stage
    Then user is able to search application at "<FinalStage>" stage from application grid
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#ST-36_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14622:  Validate sanction letter download at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user click on sanction letter
#    Then Sanction letter should be generate successfully
    Then Sanction letter should be generate successfully for "<ProductType>"
    Examples:
      | ProductType   | ApplicationStage   | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | POST APPROVAL | indiv         | shares   | ispost approval |

#ST-50_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14623:  Validate Amount financed displayed in the repayment schedule at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And User checks Repayment Parameters on Loan details tab
    And Loan Amount is updated on PDOC stage
    And user clicks on view repayment schedule on Finance details tab
    Then Amount financed displayed in the repayment schedule should matches the total executed amount
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#already implemented
##ST-39_CAS-189513
#  Scenario Outline: Verify reject appliation button is visible in more action at "<ApplicationStage>" for a "<ProductType>" application
#    And user opens an application of "<FinalStage>" stage present in context from application grid
#    When user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
#    Then Reject application button should be visible
#    Examples:
#      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 |
#
#already implemented
##ST-32_CAS-189513
#  Scenario Outline: Verify more action button at "<ApplicationStage>" for a "<ProductType>" application
#    And user opens an application of "<FinalStage>" stage present in context from application grid
#    When user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
#    Then More action button should be visible
#    Examples:
#      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 |
#
#already implemented
##ST-33_CAS-189513
#  Scenario Outline: Verify cancel application button is visible in more action at "<ApplicationStage>" for a "<ProductType>" application
#    And user opens an application of "<FinalStage>" stage present in context from application grid
#    When user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
#    Then Cancel application button should be visible
#    Examples:
#      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum |
#      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 |


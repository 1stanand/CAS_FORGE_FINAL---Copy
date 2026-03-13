@Epic-PF_Share_Base
@PQMStory
@AuthoredBy-ankit.yadav
@ImplementedBy-ankit.yadav
@ReviewedBy-None
@Islamic
@Deferred
@Shares
@Perishable
@LoggedBug

Feature:Validate CAM Report Details Generated

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0

#${ProductType:["IPF"]}
#FeatureID-ACAUTOCAS-5496
#PQM-9_CAS-189521,15_CAS-191648
#ST-25_CAS-189513
Scenario Outline: ACAUTOCAS-16188: Validate <Field_Name> within application details in CAM report generated at <FinalStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
    When user opens an application of "<FinalStage>" stage present in context from application grid
    And user saves the "<Field_Name>" of application details at "<FinalStage>"
    And user open CAM report at "<FinalStage>"
    And user saves the "<Field_Name>" of CAM report for "<ProductType>"
    Then "<Field_Name>" is same as above saved record
    Examples:
      | ProductType   | Field_Name                | ApplicationStage | FinalStage     | ApplicantType | Category | Key              |
      | <ProductType> | Product Type              | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | <ProductType> | Product                   | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | <ProductType> | Branch                    | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | <ProductType> | Application ID            | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | <ProductType> | Application Creation Date | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |

#${ProductType:["IPF"]}
#FeatureID-ACAUTOCAS-5496
#PQM-9_CAS-189521,15_CAS-191648
#ST-25_CAS-189513
Scenario Outline: ACAUTOCAS-16188: Validate <Field_Name> within application details in CAM report generated at <FinalStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
    When user opens an application of "<FinalStage>" stage present in context from application grid
    And user saves the "<Field_Name>" of application details at "<FinalStage>"
    And user open CAM report at "<FinalStage>"
    And user saves the "<Field_Name>" of CAM report for "<ProductType>"
    Then "<Field_Name>" is same as above saved record
    Examples:
      | ProductType   | Field_Name                | ApplicationStage | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | Product Type              | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Product                   | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Branch                    | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Application ID            | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Application Creation Date | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |

#${ProductType:["IPF"]}
#FeatureID-ACAUTOCAS-5496
#PQM-9_CAS-189521,15_CAS-191648
#ST-25_CAS-189513
Scenario Outline: ACAUTOCAS-16188: Validate <Field_Name> within application details in CAM report generated at <FinalStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
    When user opens an application of "<FinalStage>" stage present in context from application grid
    And user saves the "<Field_Name>" of application details at "<FinalStage>"
    And user open CAM report at "<FinalStage>"
    And user saves the "<Field_Name>" of CAM report for "<ProductType>"
    Then "<Field_Name>" is same as above saved record
    Examples:
      | ProductType   | Field_Name                | ApplicationStage | FinalStage | ApplicantType | Category | Key          |
      | <ProductType> | Product Type              | Reconsideration  | SHARE SELL | indiv         | shares   | isshare sell |
      | <ProductType> | Product                   | Reconsideration  | SHARE SELL | indiv         | shares   | isshare sell |
      | <ProductType> | Branch                    | Reconsideration  | SHARE SELL | indiv         | shares   | isshare sell |
      | <ProductType> | Application ID            | Reconsideration  | SHARE SELL | indiv         | shares   | isshare sell |
      | <ProductType> | Application Creation Date | Reconsideration  | SHARE SELL | indiv         | shares   | isshare sell |

#${ProductType:["IPF"]}
#FeatureID-ACAUTOCAS-5496
#PQM-9_CAS-189521
#ST-25_CAS-189513
Scenario Outline: ACAUTOCAS-16189: Validate <Field_Name> within Finance Details in CAM report generated at <FinalStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
    When user opens an application of "<FinalStage>" stage present in context from application grid
    And user saves the "<Field_Name>" of finance details at "<FinalStage>"
    And user open CAM report at "<FinalStage>"
    And user saves the "<Field_Name>" of CAM report for "<ProductType>"
    Then "<Field_Name>" is same as above saved record
    Examples:
      | ProductType   | Field_Name               | ApplicationStage | FinalStage     | ApplicantType | Category | Key              |
      | <ProductType> | Scheme                   | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | <ProductType> | Channel                  | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | <ProductType> | Finance Purpose          | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | <ProductType> | Amount Requested         | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | <ProductType> | Sourcing RM Name         | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | <ProductType> | Tenure                   | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | <ProductType> | Finance Application Type | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |

#${ProductType:["IPF"]}
#FeatureID-ACAUTOCAS-5496
#PQM-9_CAS-189521
#ST-25_CAS-189513
Scenario Outline: ACAUTOCAS-16189: Validate <Field_Name> within Finance Details in CAM report generated at <FinalStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
    When user opens an application of "<FinalStage>" stage present in context from application grid
    And user saves the "<Field_Name>" of finance details at "<FinalStage>"
    And user open CAM report at "<FinalStage>"
    And user saves the "<Field_Name>" of CAM report for "<ProductType>"
    Then "<Field_Name>" is same as above saved record
    Examples:
      | ProductType   | Field_Name               | ApplicationStage | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | Scheme                   | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Channel                  | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Finance Purpose          | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Amount Requested         | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Sourcing RM Name         | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Tenure                   | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Finance Application Type | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |


#${ProductType:["IPF"]}
#FeatureID-ACAUTOCAS-5496
#PQM-9_CAS-189521
#ST-25_CAS-189513
Scenario Outline: ACAUTOCAS-16190: Validate <Field_Name> within repayment parameters in CAM report generated at <FinalStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
    When user opens an application of "<FinalStage>" stage present in context from application grid
    And user saves the "<Field_Name>" of repayment parameters at "<FinalStage>"
    And user open CAM report at "<FinalStage>"
    And user saves the "<Field_Name>" of CAM report for "<ProductType>"
    Then "<Field_Name>" is same as above saved record
    Examples:
      | ProductType   | Field_Name         | ApplicationStage | FinalStage     | ApplicantType | Category | Key              |
      | <ProductType> | Rate Type          | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | <ProductType> | Installment Amount | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | <ProductType> | ROI(%)             | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |

#${ProductType:["IPF"]}
#FeatureID-ACAUTOCAS-5496
#PQM-9_CAS-189521
#ST-25_CAS-189513
Scenario Outline: ACAUTOCAS-16190: Validate <Field_Name> within repayment parameters in CAM report generated at <FinalStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
    When user opens an application of "<FinalStage>" stage present in context from application grid
    And user saves the "<Field_Name>" of repayment parameters at "<FinalStage>"
    And user open CAM report at "<FinalStage>"
    And user saves the "<Field_Name>" of CAM report for "<ProductType>"
    Then "<Field_Name>" is same as above saved record
    Examples:
      | ProductType   | Field_Name         | ApplicationStage | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | Rate Type          | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Installment Amount | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | ROI(%)             | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |

#${ProductType:["IPF"]}
#FeatureID-ACAUTOCAS-5496
#PQM-9_CAS-189521
#ST-25_CAS-189513
  Scenario Outline: ACAUTOCAS-14394:  Validate <Field_Name> within repayment finance details in CAM report generated at <FinalStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
    When user opens an application of "<FinalStage>" stage present in context from application grid
    And user saves the "<Field_Name>" of repayment finance details at "<FinalStage>"
    And user open CAM report at "<FinalStage>"
    And user saves the "<Field_Name>" of CAM report for "<ProductType>"
    Then "<Field_Name>" is same as above saved record
    Examples:
      | ProductType   | Field_Name                | ApplicationStage | FinalStage     | ApplicantType | Category | Key              |
      | <ProductType> | Total Finance Amount      | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | <ProductType> | Finance Amount Sanctioned | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |

#${ProductType:["IPF"]}
#FeatureID-ACAUTOCAS-5496
#PQM-9_CAS-189521
#ST-25_CAS-189513
Scenario Outline: ACAUTOCAS-16191: Validate <Field_Name> within Applicant Personal Details in CAM report generated at <FinalStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
    When user opens an application of "<FinalStage>" stage present in context from application grid
    And user saves the "<Field_Name>" of applicant profile at "<FinalStage>" stage
    And user open CAM report at "<FinalStage>"
    And user saves the "<Field_Name>" of CAM report for "<ProductType>"
    Then "<Field_Name>" is same as above saved record
    Examples:
      | ProductType   | Field_Name     | ApplicationStage | FinalStage     | ApplicantType | Category | Key              |
      | <ProductType> | Applicant Type | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | <ProductType> | Name           | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | <ProductType> | Phone no       | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | <ProductType> | Age            | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | <ProductType> | Constitution   | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |

#${ProductType:["IPF"]}
#FeatureID-ACAUTOCAS-5496
#PQM-9_CAS-189521
#ST-25_CAS-189513
Scenario Outline: ACAUTOCAS-16191: Validate <Field_Name> within Applicant Personal Details in CAM report generated at <FinalStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
    When user opens an application of "<FinalStage>" stage present in context from application grid
    And user saves the "<Field_Name>" of applicant profile at "<FinalStage>" stage
    And user open CAM report at "<FinalStage>"
    And user saves the "<Field_Name>" of CAM report for "<ProductType>"
    Then "<Field_Name>" is same as above saved record
    Examples:
      | ProductType   | Field_Name     | ApplicationStage | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | Applicant Type | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Name           | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Phone no       | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Age            | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Constitution   | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |

#${ProductType:["IPF"]}
#FeatureID-ACAUTOCAS-5496
#PQM-9_CAS-189521,15_CAS-191648
#ST-25_CAS-189513,40_CAS-191648
#UT-22_CAS-191648
  Scenario Outline: ACAUTOCAS-14396:  Validate <Field_Name> within Investor Details in CAM report generated at <FinalStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
    When user opens an application of "<FinalStage>" stage present in context from application grid
    And user saves the "<Field_Name>" of Investor Details at "<FinalStage>"
    And user open CAM report at "<FinalStage>"
    And user saves the "<Field_Name>" of CAM report for "<ProductType>"
    Then "<Field_Name>" is same as above saved record
    Examples:
      | ProductType   | Field_Name              | ApplicationStage | FinalStage     | ApplicantType | Category | Key              |
      | <ProductType> | Platform                | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | <ProductType> | Client ID               | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | <ProductType> | Company Name            | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | <ProductType> | Order Type              | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | <ProductType> | Max Original Cost       | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | <ProductType> | Requested Share Price   | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | <ProductType> | Total Max Original Cost | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |
      | <ProductType> | Unique ID               | Reconsideration  | SHARE_PURCHASE | indiv         | shares   | isshare purchase |

#${ProductType:["IPF"]}
#FeatureID-ACAUTOCAS-5496
#PQM-9_CAS-189521,15_CAS-191648
#ST-25_CAS-189513,40_CAS-191648
#UT-22_CAS-191648
  Scenario Outline: ACAUTOCAS-14396:  Validate <Field_Name> within Investor Details in CAM report generated at <FinalStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
    When user opens an application of "<FinalStage>" stage present in context from application grid
    And user saves the "<Field_Name>" of Investor Details at "<FinalStage>"
    And user open CAM report at "<FinalStage>"
    And user saves the "<Field_Name>" of CAM report for "<ProductType>"
    Then "<Field_Name>" is same as above saved record
    Examples:
      | ProductType   | Field_Name              | ApplicationStage | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | Platform                | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Client ID               | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Company Name            | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Order Type              | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Max Original Cost       | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Requested Share Price   | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Total Max Original Cost | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Unique ID               | Reconsideration  | POST APPROVAL | indiv         | shares   | ispost approval |

#${ProductType:["IPF"]}
#FeatureID-ACAUTOCAS-5496
#PQM-9_CAS-189521,15_CAS-191648
#ST-25_CAS-189513,40_CAS-191648
#UT-22_CAS-191648
  Scenario Outline: ACAUTOCAS-14396:  Validate <Field_Name> within Investor Details in CAM report generated at <FinalStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
    When user opens an application of "<FinalStage>" stage present in context from application grid
    And user saves the "<Field_Name>" of Investor Details at "<FinalStage>"
    And user open CAM report at "<FinalStage>"
    And user saves the "<Field_Name>" of CAM report for "<ProductType>"
    Then "<Field_Name>" is same as above saved record
    Examples:
      | ProductType   | Field_Name              | ApplicationStage | FinalStage | ApplicantType | Category | Key          |
      | <ProductType> | Platform                | Reconsideration  | SHARE SELL | indiv         | shares   | isshare sell |
      | <ProductType> | Client ID               | Reconsideration  | SHARE SELL | indiv         | shares   | isshare sell |
      | <ProductType> | Company Name            | Reconsideration  | SHARE SELL | indiv         | shares   | isshare sell |
      | <ProductType> | Order Type              | Reconsideration  | SHARE SELL | indiv         | shares   | isshare sell |
      | <ProductType> | Max Original Cost       | Reconsideration  | SHARE SELL | indiv         | shares   | isshare sell |
      | <ProductType> | Requested Share Price   | Reconsideration  | SHARE SELL | indiv         | shares   | isshare sell |
      | <ProductType> | Total Max Original Cost | Reconsideration  | SHARE SELL | indiv         | shares   | isshare sell |
      | <ProductType> | Unique ID               | Reconsideration  | SHARE SELL | indiv         | shares   | isshare sell |

#${ProductType:["IPF"]}
#FeatureID-ACAUTOCAS-5496
#PQM-15_CAS-191648
#ST-41_CAS-191648
#UT-23_CAS-191648
  Scenario Outline: ACAUTOCAS-14396:  Validate <Field_Name> within Investor Details in CAM report generated at <FinalStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "<ApplicationStage>" Stage to "<FinalStage>" Stage
    When user opens an application of "<FinalStage>" stage present in context from application grid
    And user saves the "<Field_Name>" of Investor Details at "<FinalStage>"
    And user open CAM report at "<FinalStage>"
    And user saves the "<Field_Name>" of CAM report for "<ProductType>"
    Then "<Field_Name>" is same as above saved record
    Examples:
      | ProductType   | Field_Name             | ApplicationStage | FinalStage | ApplicantType | Category | Key          |
      | <ProductType> | Total Executed Amount  | Reconsideration  | SHARE SELL | indiv         | shares   | isshare sell |
      | <ProductType> | Fulfillment Percentage | Reconsideration  | SHARE SELL | indiv         | shares   | isshare sell |

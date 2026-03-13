@Epic-PF_Share_Base
@PQMStory
@AuthoredBy-ankit.yadav
@ImplementedBy-ankit.yadav
@Release
@Shares
@Islamic
@Perishable

#${ProductType:["IPF"]}
#${ApplicantType:["indiv"]}
#${ApplicationStage:["Reconsideration"]}

Feature: Screen Validation on Share Purchase Stage

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#ST-21_CAS-189504
#UT-10_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14689:  Check for <SectionName> sections
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then user should be able to see various sections under share purchase
    Examples:
      | SectionName                               | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key             |
      | Share Purchase Details                    | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | <ApplicantType> | shares   | ispost approval |
      | Permanent Address Tele-Verification Card  | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 1                                 | <ApplicantType> | shares   | ispost approval |
      | Company Information                       | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 2                                 | <ApplicantType> | shares   | ispost approval |
      | Residence Information (Permanent Address) | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 3                                 | <ApplicantType> | shares   | ispost approval |
      | Customer Communication History            | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 4                                 | <ApplicantType> | shares   | ispost approval |
      | Current Stage Details                     | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 5                                 | <ApplicantType> | shares   | ispost approval |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14690:  Share purchase tab <FieldName> label validation for application at "<ApplicationStage>"
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then user should be able to see current stage details fields with label as in workbook at "<Stage_Var>"
    Examples:
      | FieldName          | Stage_Var     | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key             |
      | Branch             | Post Approval | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 7                                 | <ApplicantType> | shares   | ispost approval |
      | Application Number | Post Approval | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 8                                 | <ApplicantType> | shares   | ispost approval |
      | Primary Applicant  | Post Approval | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 9                                 | <ApplicantType> | shares   | ispost approval |
      | Product            | Post Approval | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 10                                | <ApplicantType> | shares   | ispost approval |
      | Scheme             | Post Approval | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 11                                | <ApplicantType> | shares   | ispost approval |
      | Tenure             | Post Approval | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 12                                | <ApplicantType> | shares   | ispost approval |

#PQM-13_CAS-189504
#PMG-6_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14691:  Validate Share Execution Details Grid for <FieldName> column
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then user should be able to see share purchase details fields with label as in workbook
    Examples:
      | FieldName             | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key             |
      | Serial No             | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | <ApplicantType> | shares   | ispost approval |
      | Execution Date/Time   | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 14                                | <ApplicantType> | shares   | ispost approval |
      | Total Executed Amount | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 15                                | <ApplicantType> | shares   | ispost approval |
      | Status                | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 16                                | <ApplicantType> | shares   | ispost approval |
      | Additional Details    | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 17                                | <ApplicantType> | shares   | ispost approval |

#ST-12_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14692:  Share purchase Tab <FieldName> label validation for Permanent Address Tele-Verification Card Details at "<ApplicationStage>" for a "<ProductType>" application
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then user should be able to see permanent address tele verification card details fields with label as in workbook
    Examples:
      | FieldName                              | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key             |
      | Permanent Residence Telephone Number 1 | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 18                                | <ApplicantType> | shares   | ispost approval |
      | Relation with Applicant                | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 19                                | <ApplicantType> | shares   | ispost approval |
      | Person Contacted                       | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 20                                | <ApplicantType> | shares   | ispost approval |
      | Telecalling Log                        | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 21                                | <ApplicantType> | shares   | ispost approval |
      | Permanent Residence Telephone Number 2 | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 22                                | <ApplicantType> | shares   | ispost approval |

#UT-12_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14693:  Share Purchase Tab <FieldName> validation for Permanent Address Tele-Verification Card entry at "<ApplicationStage>" for a "<ProductType>" application
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then user should be able to see field enabled in Permanent Address Tele Verification Card details
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FieldName                                               | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 23                                | Relation with Applicant                                 | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 24                                | Person Contacted                                        | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 25                                | Permanent Address Tele-Verification Card 1 Country Code | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 26                                | Permanent Address Tele-Verification Card 1 ISD Code     | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 27                                | Permanent Address Tele-Verification Card 1 std code     | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 28                                | Permanent Address Tele-Verification Card 1 extn number  | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 29                                | Permanent Address Tele-Verification Card 1 phone number | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 30                                | Permanent Address Tele-Verification Card 2 Country Code | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 31                                | Permanent Address Tele-Verification Card 2 ISD Code     | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 32                                | Permanent Address Tele-Verification Card 2 std code     | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 33                                | Permanent Address Tele-Verification Card 2 extn number  | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 34                                | Permanent Address Tele-Verification Card 2 phone number | <ApplicantType> | shares   | ispost approval |

#ST-12_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14694:  share purchase tab <FieldName> label validation for Company Information Details at "<ApplicationStage>" for a "<ProductType>" application
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then user should be able to see company information details fields with label as in workbook
    Examples:
      | FieldName       | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key             |
      | Name of Company | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 35                                | <ApplicantType> | shares   | ispost approval |
      | Landmark        | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 36                                | <ApplicantType> | shares   | ispost approval |
      | Address         | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 37                                | <ApplicantType> | shares   | ispost approval |

#UT-7_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14695:  Check for add all required button
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    Then "<Button>" must be displayed properly
    Examples:
      | ProductType   | ApplicationStage   | Button    | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | all field | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Required  | <ApplicantType> | shares   | ispost approval |

#ST-22_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14696:  Share Purchase Tab <FieldName> validation for Company Information Details at "<ApplicationStage>" for a "<ProductType>" application
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then user should be able to see field enabled in company information details fields
    Examples:
      | FieldName       | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key             |
      | Name of Company | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 35                                | <ApplicantType> | shares   | ispost approval |
      | Landmark        | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 36                                | <ApplicantType> | shares   | ispost approval |
      | Address         | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 37                                | <ApplicantType> | shares   | ispost approval |

#UT-12_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14697:  Share purchase Tab <FieldName> field label validation for Residence Information (Permanent Address) Details at "<ApplicationStage>" for a "<ProductType>" application
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then user should be able to see residence information details "<FieldName>" with label as in workbook
    Examples:
      | FieldName         | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key             |
      | Address           | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 38                                | <ApplicantType> | shares   | ispost approval |
      | Landmark          | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 39                                | <ApplicantType> | shares   | ispost approval |
      | Permanent Address | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 40                                | <ApplicantType> | shares   | ispost approval |
      | Vintage           | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 41                                | <ApplicantType> | shares   | ispost approval |
      | Type              | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 42                                | <ApplicantType> | shares   | ispost approval |

#ST-12_CAS-189504, 22_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14698:  Share Purchase Tab <FieldName> validation for Residence Information (Permanent Address) Details at "<ApplicationStage>" for a "<ProductType>" application
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then user should be able to see residence information fields in share purchase tab as in workbook
    Examples:
      | FieldName         | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key             |
      | Address           | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 38                                | <ApplicantType> | shares   | ispost approval |
      | Landmark          | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 39                                | <ApplicantType> | shares   | ispost approval |
      | Permanent Address | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 40                                | <ApplicantType> | shares   | ispost approval |
      | Vintage           | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 41                                | <ApplicantType> | shares   | ispost approval |
      | Type              | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 42                                | <ApplicantType> | shares   | ispost approval |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14699:  Share purchase tab <FieldName> label validation for customer communication history Details at "<ApplicationStage>" for a "<ProductType>" application
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user click on the customer communication history section
    Then user should be able to see customer communication history details "<FieldName>" with label as in workbook
    Examples:
      | FieldName            | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key             |
      | Reports              | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 43                                | <ApplicantType> | shares   | ispost approval |
      | Notification Name    | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 44                                | <ApplicantType> | shares   | ispost approval |
      | Attachments          | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 45                                | <ApplicantType> | shares   | ispost approval |
      | Mode                 | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 46                                | <ApplicantType> | shares   | ispost approval |
      | Contacted By         | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 47                                | <ApplicantType> | shares   | ispost approval |
      | Added By             | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 48                                | <ApplicantType> | shares   | ispost approval |
      | Added On             | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 49                                | <ApplicantType> | shares   | ispost approval |
      | Description/Messages | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 50                                | <ApplicantType> | shares   | ispost approval |
      | Action               | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 51                                | <ApplicantType> | shares   | ispost approval |
      | History              | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 52                                | <ApplicantType> | shares   | ispost approval |

# ST-22_CAS-189504
  #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14700:  Share Purchase tab <FieldName> validation for customer communication history Details at "<ApplicationStage>" for a "<ProductType>" application
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user click on the customer communication history section
    Then user should be able to see customer communication history details fields as in workbook
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FieldName              | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 43                                | Reports                | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 44                                | Search                 | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 45                                | Attachments            | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 46                                | Mode                   | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 47                                | Contacted By           | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 48                                | Added By               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 49                                | Added On               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 50                                | Messages Notifications | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 51                                | Status                 | <ApplicantType> | shares   | ispost approval |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14701:  On Share Purchase Tab <buttonName> button is disabled
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user click on the customer communication history section
    Then "<buttonName>" is enabled in customer communication history
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | buttonName                | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 53                                | Add Communication Details | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 54                                | Schedule an Appointment   | <ApplicantType> | shares   | ispost approval |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14702:  On Share Purchase Tab <Var> button is enabled
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And User click on the activity section
    Then user is able to open fields on share purchase details page
    Examples:
      | Var          | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key             |
      | CAM Report   | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 56                                | <ApplicantType> | shares   | ispost approval |
      | Exit         | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 57                                | <ApplicantType> | shares   | ispost approval |
      | Expand All   | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 58                                | <ApplicantType> | shares   | ispost approval |
      | Collapse All | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 59                                | <ApplicantType> | shares   | ispost approval |
      | Required     | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 60                                | <ApplicantType> | shares   | ispost approval |
      | All Fields   | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 61                                | <ApplicantType> | shares   | ispost approval |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14703:  On Share Purchase Tab <Var> button is enabled in activity section
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And User click on the activity section
    Then user is able to open fields on share purchase details page
    Examples:
      | Var                   | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key             |
      | Comments              | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 55                                | <ApplicantType> | shares   | ispost approval |
      | Activity              | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 56                                | <ApplicantType> | shares   | ispost approval |
      | History               | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 57                                | <ApplicantType> | shares   | ispost approval |
      | Notes                 | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 58                                | <ApplicantType> | shares   | ispost approval |
      | Tags                  | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 59                                | <ApplicantType> | shares   | ispost approval |
      | Messages              | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 60                                | <ApplicantType> | shares   | ispost approval |
      | Rule Execution Result | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 61                                | <ApplicantType> | shares   | ispost approval |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14704:  On Share Purchase Tab <Var> button is disabled in share purchase activity details comment section
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And User click on the activity section
    And user open the comment section
    Then user should be able to open fields on share purchase activity details page comment section
    Examples:
      | Var                   | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key             |
      | Comment Edit Button   | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 62                                | <ApplicantType> | shares   | ispost approval |
      | Comment Cancel button | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 63                                | <ApplicantType> | shares   | ispost approval |
      | Comment Add Button    | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 64                                | <ApplicantType> | shares   | ispost approval |
      | Comment TextArea      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 65                                | <ApplicantType> | shares   | ispost approval |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14705:  On Share Purchase Tab <Var> button is disabled in share purchase activity details Note section
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And User click on the activity section
    And user open the Note section
    Then user should "<Condition>" able to open fields on share purchase activity details page Note section
    Examples:
      | Var                 | Condition | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key             |
      | Note Code           | not be    | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 66                                | <ApplicantType> | shares   | ispost approval |
      | Note button Finance | be        | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 67                                | <ApplicantType> | shares   | ispost approval |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14706:  On Share Purchase Tab <Var> button is disabled in share purchase activity details Tag section
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And User click on the activity section
    And user open the Tag section
    Then user should be able to open fields on share purchase activity details page Tag section
    Examples:
      | Var                | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key             |
      | Text Tag Name Auto | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 68                                | <ApplicantType> | shares   | ispost approval |
      | Tag Name Add Tag   | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 69                                | <ApplicantType> | shares   | ispost approval |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14707:  Share Purchase Tab <StageName> validation on share purchase stage details section
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on Share Purchase Tab
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user open the share purchase stage section
    Then user is able to open fields on share purchase stage details section
    Examples:
      | StageName              | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key              |
      | Sourcing               | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 70                                | <ApplicantType> | shares   | isshare purchase |
      | LOGIN ACCEPTANCE       | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 71                                | <ApplicantType> | shares   | isshare purchase |
      | RCU INITIATION         | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 72                                | <ApplicantType> | shares   | isshare purchase |
      | KYC                    | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 73                                | <ApplicantType> | shares   | isshare purchase |
      | CREDIT BUREAU REFERRAL | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 74                                | <ApplicantType> | shares   | isshare purchase |
      | FII                    | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 75                                | <ApplicantType> | shares   | isshare purchase |
      | DDE                    | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 76                                | <ApplicantType> | shares   | isshare purchase |
      | CREDIT APPROVAL        | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 74                                | <ApplicantType> | shares   | isshare purchase |
      | PURCHASE PROMISE       | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 75                                | <ApplicantType> | shares   | isshare purchase |

#UT-35_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14708:  Validate <FieldName> with input value <var> in additional details section at share purchase tab
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on Share Purchase Tab
    And user reads data from the excel file "sharepurchase.xlsx" under sheet "share_purchase" and row <ShareDetails_sharePurchase_rowNum>
    And user clicks on additional details hyperlink for any record
    When user fills "<FieldName>" with "<var>" in additional details section
    Then "<FieldName>" "<ThrowsNotThrows>" in additional details section
    Examples:
      | ProductType   | ApplicationStage   | FieldName | var                            | ThrowsNotThrows          | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | field1    | more than 18 digits            | does not throw any error | 100                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field1    | less than 18 digits            | does not throw any error | 101                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field1    | character                      | does not throw any error | 102                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field1    | special character              | does not throw any error | 103                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field1    | negative values                | does not throw any error | 104                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field1    | character with space           | does not throw any error | 105                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field1    | digits with space              | does not throw any error | 106                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field1    | special characters with hyphen | does not throw any error | 107                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field1    | digits with hyphen             | does not throw any error | 108                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field1    | Both numeric and alphabet      | does not throw any error | 109                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field2    | more than 18 digits            | does not throw any error | 100                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field2    | less than 18 digits            | does not throw any error | 101                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field2    | character                      | does not throw any error | 102                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field2    | special character              | does not throw any error | 103                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field2    | negative values                | does not throw any error | 104                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field2    | character with space           | does not throw any error | 105                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field2    | digits with space              | does not throw any error | 106                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field2    | special characters with hyphen | does not throw any error | 107                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field2    | digits with hyphen             | does not throw any error | 108                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field2    | Both numeric and alphabet      | does not throw any error | 109                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field3    | more than 18 digits            | does not throw any error | 100                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field3    | less than 18 digits            | does not throw any error | 101                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field3    | character                      | does not throw any error | 102                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field3    | special character              | does not throw any error | 103                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field3    | negative values                | does not throw any error | 104                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field3    | character with space           | does not throw any error | 105                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field3    | digits with space              | does not throw any error | 106                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field3    | special characters with hyphen | does not throw any error | 107                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field3    | digits with hyphen             | does not throw any error | 108                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field3    | Both numeric and alphabet      | does not throw any error | 109                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field4    | more than 18 digits            | does not throw any error | 100                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field4    | less than 18 digits            | does not throw any error | 101                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field4    | character                      | does not throw any error | 102                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field4    | special character              | does not throw any error | 103                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field4    | negative values                | does not throw any error | 104                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field4    | character with space           | does not throw any error | 105                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field4    | digits with space              | does not throw any error | 106                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field4    | special characters with hyphen | does not throw any error | 107                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field4    | digits with hyphen             | does not throw any error | 108                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field4    | Both numeric and alphabet      | does not throw any error | 109                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field5    | more than 18 digits            | does not throw any error | 100                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field5    | less than 18 digits            | does not throw any error | 101                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field5    | character                      | does not throw any error | 102                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field5    | special character              | does not throw any error | 103                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field5    | negative values                | does not throw any error | 104                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field5    | character with space           | does not throw any error | 105                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field5    | digits with space              | does not throw any error | 106                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field5    | special characters with hyphen | does not throw any error | 107                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field5    | digits with hyphen             | does not throw any error | 108                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field5    | Both numeric and alphabet      | does not throw any error | 109                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field6    | more than 18 digits            | does not throw any error | 100                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field6    | less than 18 digits            | does not throw any error | 101                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field6    | character                      | does not throw any error | 102                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field6    | special character              | does not throw any error | 103                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field6    | negative values                | does not throw any error | 104                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field6    | character with space           | does not throw any error | 105                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field6    | digits with space              | does not throw any error | 106                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field6    | special characters with hyphen | does not throw any error | 107                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field6    | digits with hyphen             | does not throw any error | 108                               | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | field6    | Both numeric and alphabet      | does not throw any error | 109                               | <ApplicantType> | shares   | ispost approval |

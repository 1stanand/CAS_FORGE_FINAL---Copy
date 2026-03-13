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
#${ApplicationStage:["Reconsideration"]}
#${ApplicantType:["indiv"]}

Feature: Share Purchase Stage Screen Validation

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

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14937:  User is able to see <SectionName> sections at <FinalStage> for a <ProductType> application
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then user should be able to see various sections under share purchase
    Examples:
      | SectionName                               | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | Share Purchase Details                    | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Permanent Address Tele-Verification Card  | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 1                                 | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Company Information                       | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 2                                 | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Residence Information (Permanent Address) | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 3                                 | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Customer Communication History            | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 4                                 | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Current Stage Details                     | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 5                                 | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14938:  share purchase page <FieldName> label validation for Current Stage Details at <FinalStage> for a <ProductType> application
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then user should be able to see current stage details fields with label as in workbook
    Examples:
      | FieldName          | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | Share Purchase     | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 6                                 | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Branch             | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 7                                 | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Application Number | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 8                                 | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Primary Applicant  | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 9                                 | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Product            | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 10                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Scheme             | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 11                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Tenure             | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 12                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14939:  share purchase page <FieldName> label validation for Share Purchase Details at <FinalStage> for a <ProductType> application
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then user should be able to see share purchase details fields with label as in workbook
    Examples:
      | FieldName             | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | Serial No             | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Execution Date/Time   | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 14                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Total Executed Amount | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 15                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Status                | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 16                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Additional Details    | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 17                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14940:  share purchase page <FieldName> label validation for Permanent Address Tele-Verification Card Details at <FinalStage> for a <ProductType> application
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then user should be able to see permanent address tele verification card details fields with label as in workbook
    Examples:
      | FieldName                              | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | Permanent Residence Telephone Number 1 | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 18                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Relation with Applicant                | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 19                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Person Contacted                       | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 20                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Telecalling Log                        | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 21                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Permanent Residence Telephone Number 2 | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 22                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |


#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14941:  Share Purchase Page <FieldName> validation for Permanent Address Tele-Verification Card entry at <FinalStage> for a <ProductType> application
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then user should be able to see field disabled in Permanent Address Tele Verification Card details
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FieldName                                               | FinalStage     | ApplicantType   | Category | Key              |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 23                                | Relation with Applicant                                 | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 24                                | Person Contacted                                        | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 25                                | Permanent Address Tele-Verification Card 1 Country Code | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 26                                | Permanent Address Tele-Verification Card 1 ISD Code     | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 27                                | Permanent Address Tele-Verification Card 1 std code     | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 28                                | Permanent Address Tele-Verification Card 1 extn number  | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 29                                | Permanent Address Tele-Verification Card 1 phone number | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 30                                | Permanent Address Tele-Verification Card 2 Country Code | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 31                                | Permanent Address Tele-Verification Card 2 ISD Code     | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 32                                | Permanent Address Tele-Verification Card 2 std code     | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 33                                | Permanent Address Tele-Verification Card 2 extn number  | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 34                                | Permanent Address Tele-Verification Card 2 phone number | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14942:  share purchase page <FieldName> label validation for Company Information Details at <FinalStage> for a <ProductType> application
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then user should be able to see company information details fields with label as in workbook
    Examples:
      | FieldName       | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | Name of Company | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 35                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Landmark        | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 36                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Address         | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 37                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14943:  Share Purchase Page <FieldName> validation for Company Information Details at <FinalStage> for a <ProductType> application
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then user should be able to see field disabled in company information details fields
    Examples:
      | FieldName       | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | Name of Company | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 35                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Landmark        | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 36                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Address         | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 37                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14944:  share purchase page <FieldName> label validation for Residence Information (Permanent Address) Details at <FinalStage> for a <ProductType> application
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then user should be able to see residence information details "<FieldName>" with label as in workbook
    Examples:
      | FieldName         | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | Address           | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 38                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Landmark          | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 39                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Permanent Address | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 40                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Vintage           | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 41                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Type              | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 42                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14945:  Share Purchase Page <FieldName> validation for Residence Information (Permanent Address) Details at <FinalStage> for a <ProductType> application
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then user should be able to see residence information details fields as in workbook
    Examples:
      | FieldName         | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | Address           | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 38                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Landmark          | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 39                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Permanent Address | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 40                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Vintage           | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 41                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Type              | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 42                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14946:  share purchase page <FieldName> label validation for customer communication history Details at <FinalStage> for a <ProductType> application
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user click on the customer communication history section
    Then user should be able to see customer communication history details "<FieldName>" with label as in workbook
    Examples:
      | FieldName            | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | Reports              | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 43                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Notification Name    | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 44                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Attachments          | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 45                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Mode                 | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 46                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Contacted By         | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 47                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Added By             | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 48                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Added On             | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 49                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Description/Messages | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 50                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Action               | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 51                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | History              | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 52                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14947:  Share Purchase Page <FieldName> validation for customer communication history Details at <FinalStage> for a <ProductType> application
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user click on the customer communication history section
    Then user should be able to see customer communication history details fields as in workbook
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FieldName            | FinalStage     | ApplicantType   | Category | Key              |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 43                                | Reports              | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 44                                | Notification Name    | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 45                                | Attachments          | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 46                                | Mode                 | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 47                                | Contacted By         | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 48                                | Added By             | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 49                                | Added On             | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 50                                | Description/Messages | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 51                                | Status               | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-16294: On Share Purchase Page <buttonName> button is disable in customer communication history
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user click on the customer communication history section
    Then "<buttonName>" is disable in customer communication history
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | buttonName                | FinalStage     | ApplicantType   | Category | Key              |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 53                                | Add Communication Details | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 54                                | Schedule an Appointment   | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14948:  On Share Purchase Page <Var> button is enable in share purchase details
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then user is able to open fields on share purchase details page
    Examples:
      | Var                 | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | Application Summary | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 55                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | CAM Report          | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 56                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Exit                | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 57                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Expand All          | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 58                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Collapse All        | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 59                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Required            | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 60                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | All Fields          | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 61                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14949:  On Share Purchase Page <Var> button is enable in share purchase Activity section details
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And User click on the activity section
    Then user is able to open fields on share purchase details page
    Examples:
      | Var                   | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | Comments              | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 80                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Activity              | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 81                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | History               | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 82                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Notes                 | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 83                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Tags                  | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 84                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Messages              | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 85                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Rule Execution Result | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 86                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14950:  On Share Purchase Page <Var> button is disable in share purchase activity details comment section
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And User click on the activity section
    And user open the comment section
    Then user is able to open fields on share purchase activity details page comment section
    Examples:
      | Var                   | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | Comment Edit Button   | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 62                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Comment Cancel button | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 63                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Comment Add Button    | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 64                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Comment TextArea      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 65                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14951:  On Share Purchase Page <Var> button is disable in share purchase activity details Note section
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And User click on the activity section
    And user open the Note section
    Then user is able to open fields on share purchase activity details page Note section
    Examples:
      | Var                 | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | Note Code           | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 66                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Note button Finance | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 67                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14952:  On Share Purchase Page <Var> button is disable in share purchase activity details Tag section
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And User click on the activity section
    And user open the Tag section
    Then user is able to open fields on share purchase activity details page Tag section
    Examples:
      | Var                | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | Text Tag Name Auto | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 68                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | Tag Name Add Tag   | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 69                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14953:  Share Purchase Page <StageName>  validation on share purchase stage details section
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user open the share purchase stage section
    Then user is able to open fields on share purchase stage details section
    Examples:
      | StageName        | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage     | ApplicantType   | Category | Key              |
      | Sourcing         | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 70                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | RCU INITIATION   | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 71                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | FII              | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 72                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | RECONSIDERATION  | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 73                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | CREDIT APPROVAL  | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 74                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | PURCHASE PROMISE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 75                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |
      | SHARE ORDER      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 76                                | SHARE_PURCHASE | <ApplicantType> | shares   | isshare purchase |







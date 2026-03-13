@Epic-PF_Bond_Base
@PQMStory
@AuthoredBy-aniket.tripathi
@TechReviewdBy-harshprit.kumar
@ImplementedBy-aniket.tripathi
@Islamic
@Bonds
@Perishable
@ReleaseBondManualConfig
Feature: Manual mode in Bond Transfer

# ${ApplicantType:["indiv"]}

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11343
#PQM-13_CAS-189588
#PQM-14_CAS-189588
  Scenario Outline: ACAUTOCAS-14539:  Editable <fieldName> validation at <ApplicationStage> for a <ProductType> application for bond transfer manual mode
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then user should be able to verify "<fieldName>" as non editable field for bond transfer "Manual" mode
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | fieldName             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Deal Reference Number |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number Start     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number End       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Number           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Expiry Date      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Amount                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Quality               |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11343
#CAS-189588
  Scenario Outline: ACAUTOCAS-14540:  Saving bond transfer Details without <Field_Name> in bond allocation at <ApplicationStage> for a <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    When user fills the bond transfer details excluding field name
    And user saves the bond allocation details
    Then "<Field_Name>" bond transfer Details is not saved with error message
    Examples:
      | Field_Name            | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Deal Reference Number | post_approval.xlsx | bondAllocation              | 0                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Unit Number Start     | post_approval.xlsx | bondAllocation              | 1                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Unit Number End       | post_approval.xlsx | bondAllocation              | 2                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Bond Number           | post_approval.xlsx | bondAllocation              | 19                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Bond Expiry Date      | post_approval.xlsx | bondAllocation              | 4                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11343
#PQM-45_CAS-189588
  Scenario Outline: ACAUTOCAS-14541:  Validation of bond transfer details at <ApplicationStage> for a <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    When user changes the bond transfer details
    And user saves the bond allocation details
    Then bond transfer details should be saved successfully
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | post_approval.xlsx | bondAllocation              | 13                                 |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11343
#PQM-46_CAS-189588
#PQM-49_CAS-189588
  Scenario Outline: ACAUTOCAS-14542:  Visibility of bond transfer details at <ApplicationStage> for a <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    And user changes the bond transfer details
    And user saves the bond allocation details
    When user reloads the bond allocation section
    Then saved details should be visible on page reload
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | post_approval.xlsx | bondAllocation              | 13                                 |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11343
#PQM-50_CAS-189588
  Scenario Outline: ACAUTOCAS-14543:  Warning message for bond transfer details at <ApplicationStage> for a <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    And user changes the bond transfer details
    When user reloads the bond allocation section for warning message
    Then user should get warning message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | post_approval.xlsx | bondAllocation              | 13                                 |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11343
#PQM-51_CAS-189588
  Scenario Outline: ACAUTOCAS-14544:  Validation of bond transfer details for new details at <ApplicationStage> for a <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    And user changes the bond transfer details
    When user reloads the bond allocation section for warning message
    And user confirms the warning message
    Then user should not be able to new changed data
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | post_approval.xlsx | bondAllocation              | 13                                 |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11343
#PQM-22_CAS-190862
#PQM-28_CAS-190862
  Scenario Outline: ACAUTOCAS-14545:  Visibility of document upload hyperlink at <ApplicationStage> stage for <ProductType> product
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then user should be able to add document hyperlink for "<fieldName>" field
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | fieldName       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Transfer   |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11343
#PQM-33_CAS-190862
#PQM-34_CAS-190862
#PQM-35_CAS-190862
#PQM-36_CAS-190862
#PQM-37_CAS-190862
  Scenario Outline: ACAUTOCAS-14546:  Validity of <Field_Name> field at <ApplicationStage> stage for <ProductType> product
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    And user fills "<Field_Name>" field with mentioned cases
    Then user should get an expected result for "<Field_Name>" field with "<validity>"
    Examples:
      | Field_Name           | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | validity |
      | Bond Number          | post_approval.xlsx | bondAllocation              | 14                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | invalid  |
      | Bond Number          | post_approval.xlsx | bondAllocation              | 15                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | valid    |
      | Bond Expiry Date     | post_approval.xlsx | bondAllocation              | 14                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | invalid  |
      | Bond Expiry Date     | post_approval.xlsx | bondAllocation              | 15                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | valid    |
      | Bond Expiry Date     | post_approval.xlsx | bondAllocation              | 16                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | valid    |
      | Unit Issue Date      | post_approval.xlsx | bondAllocation              | 14                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | valid    |
      | Unit Issue Date      | post_approval.xlsx | bondAllocation              | 15                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | valid    |
      | Unit Issue Date      | post_approval.xlsx | bondAllocation              | 16                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | valid    |
      | Bond Number Transfer | post_approval.xlsx | bondAllocation              | 14                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | invalid  |
      | Bond Number Transfer | post_approval.xlsx | bondAllocation              | 15                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | valid    |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11343
#PQM-38_CAS-190862
#PQM-39_CAS-190862
#PQM-40_CAS-190862
#PQM-41_CAS-190862
#PQM-42_CAS-190862
#PQM-43_CAS-190862
  Scenario Outline: ACAUTOCAS-14547:  Validity of <Field_Name> field with bond purchase and bond transfer at <ApplicationStage> stage for <ProductType> product
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    And user fills "<Field_Name>" field for both sections
    Then user should get an expected result with "<validity>"
    Examples:
      | Field_Name        | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | validity |
      | Unit Number Start | post_approval.xlsx | bondAllocation              | 17                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | invalid  |
      | Unit Number Start | post_approval.xlsx | bondAllocation              | 18                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | valid    |
      | Unit Number End   | post_approval.xlsx | bondAllocation              | 17                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | invalid  |
      | Unit Number End   | post_approval.xlsx | bondAllocation              | 18                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | valid    |
      | Bond Number       | post_approval.xlsx | bondAllocation              | 17                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | invalid  |
      | Bond Number       | post_approval.xlsx | bondAllocation              | 18                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | valid    |
      | Bond Expiry Date  | post_approval.xlsx | bondAllocation              | 17                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | invalid  |
      | Bond Expiry Date  | post_approval.xlsx | bondAllocation              | 18                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | valid    |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11343
#PQM-44_CAS-190862
  Scenario Outline: ACAUTOCAS-14548:  Validity of required <Field_Name> field at <ApplicationStage> stage for <ProductType> product
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    And user clicks on required section
    Then required "<Field_Name>" field should be visible for "<category>" sections
    Examples:
      | Field_Name              | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | category      |
      | Deal Reference Number   | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Transfer |
      | Unit Number Start       | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Transfer |
      | Unit Number End         | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Transfer |
      | Bond Number             | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Transfer |
      | Bond Expiry Date        | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Transfer |
      | Amount                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Transfer |
      | Quantity                | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Transfer |
      | Deal Reference Number   | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Purchase |
      | Unit Number Start       | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Purchase |
      | Unit Number End         | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Purchase |
      | Unit Price              | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Purchase |
      | Bond Number             | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Purchase |
      | Unit Issue Date         | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Purchase |
      | Purchase Invoice Number | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Purchase |
      | Purchase Receipt Number | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Purchase |
      | Bond Expiry Date        | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Purchase |
      | Amount                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Purchase |
      | Quantity                | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Purchase |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11343
#PQM-45_CAS-190862
  Scenario Outline: ACAUTOCAS-14549:  Validity of all <Field_Name> field at <ApplicationStage> stage for <ProductType> product
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    And user clicks on all section
    Then required "<Field_Name>" field should be visible for "<category>" sections
    Examples:
      | Field_Name              | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | category      |
      | Deal Reference Number   | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Transfer |
      | Unit Number Start       | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Transfer |
      | Unit Number End         | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Transfer |
      | Bond Number             | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Transfer |
      | Bond Expiry Date        | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Transfer |
      | Amount                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Transfer |
      | Quantity                | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Transfer |
      | Documents               | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Transfer |
      | Deal Reference Number   | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Purchase |
      | Unit Number Start       | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Purchase |
      | Unit Number End         | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Purchase |
      | Unit Price              | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Purchase |
      | Bond Number             | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Purchase |
      | Unit Issue Date         | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Purchase |
      | Purchase Invoice Number | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Purchase |
      | Purchase Receipt Number | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Purchase |
      | Bond Expiry Date        | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Purchase |
      | Amount                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Purchase |
      | Quantity                | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Purchase |
      | Documents               | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Purchase |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11343
#CAS-190862
  Scenario Outline: ACAUTOCAS-14550:  Visibility of available <Field_Name> sections at <ApplicationStage> stage for <ProductType> product
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens "<Field_Name>" on Post Approval stage
    Then user should verify "<Field_Name>"
    Examples:
      | Field_Name                   | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Applicant Information        | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Documents                    | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Finance Details              | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Repayment Instrument Details | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | References                   | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Conditions                   | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Checklist                    | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | E-Stamping                   | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Account Details              | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Summary Analysis             | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Bond Allocation              | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11343
#CAS-190862
  Scenario Outline: ACAUTOCAS-14551:  Visibility of available <Field_Name> sections at <ApplicationStage> stage for <ProductType> product in disable mode
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens "<Field_Name>" on Post Approval stage
    Then user should verify "<Field_Name>"
    Examples:
      | Field_Name                   | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Applicant Information        | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Documents                    | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Finance Details              | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Repayment Instrument Details | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | References                   | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Conditions                   | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Checklist                    | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | E-Stamping                   | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Account Details              | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Summary Analysis             | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Bond Allocation              | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11343
#CAS-189588
  Scenario Outline: ACAUTOCAS-14540:  Saving bond allocation Details without <Field_Name> in bond allocation at <ApplicationStage> for a <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    When user fills the bond transfer details excluding field name
    And user saves the bond allocation details
    Then "<Field_Name>" bond transfer Details is not saved with error message
    Examples:
      | Field_Name            | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Deal Reference Number | post_approval.xlsx | bondAllocation              | 0                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Unit Number Start     | post_approval.xlsx | bondAllocation              | 1                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Unit Number End       | post_approval.xlsx | bondAllocation              | 2                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Bond Number           | post_approval.xlsx | bondAllocation              | 3                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Bond Expiry Date      | post_approval.xlsx | bondAllocation              | 4                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11343
#CAS-189588
  Scenario Outline: ACAUTOCAS-14552:  Entering <Validity> Bond Number with <validityReason> in bond transfer at <ApplicationStage> for a <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    When user fills valid invalid field details with validity reason for bond transfer
    Then Bond Number throws not throws error after entering "<Validity>" details in bond transfer
    Examples:
      | Validity | validityReason                     | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | InValid  | Special Characters                 | post_approval.xlsx | bondAllocation              | 0                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | InValid  | Characters with special characters | post_approval.xlsx | bondAllocation              | 1                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | InValid  | Alphanumeric                       | post_approval.xlsx | bondAllocation              | 2                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | InValid  | Characters                         | post_approval.xlsx | bondAllocation              | 3                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Valid    | Numbers                            | post_approval.xlsx | bondAllocation              | 4                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#${FieldName:["Deal Reference Number", "Unit Number Start", "Unit Number End"]}
#FeatureID-ACAUTOCAS-11343
#CAS-189588
  Scenario Outline: ACAUTOCAS-14553:  Entering <Validity> <FieldName> with <validityReason> in bond transfer at <ApplicationStage> for a <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    When user fills valid invalid "<FieldName>" details with validity reason for bond transfer
    And user saves the bond allocation details
    Then "<FieldName>" throws not throws error after entering details in bond transfer
    Examples:
      | Validity | validityReason                   | FieldName   | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Valid    | positive digits                  | <FieldName> | post_approval.xlsx | bondAllocation              | 5                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Valid    | characters                       | <FieldName> | post_approval.xlsx | bondAllocation              | 6                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Valid    | both digits and characters       | <FieldName> | post_approval.xlsx | bondAllocation              | 7                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Valid    | negative                         | <FieldName> | post_approval.xlsx | bondAllocation              | 8                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Valid    | hyphen                           | <FieldName> | post_approval.xlsx | bondAllocation              | 9                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Valid    | space                            | <FieldName> | post_approval.xlsx | bondAllocation              | 10                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Valid    | special characters except hyphen | <FieldName> | post_approval.xlsx | bondAllocation              | 11                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Post Approval","Disbursal"]}
#FeatureID-ACAUTOCAS-11343
Scenario Outline: ACAUTOCAS-18108: Validate <FieldName> with length <Attribute> should <AcceptedNotAccepted> in bonds at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    When user fills length "<Attribute>" set for "<FieldName>" in bonds for "<section>"
    Then "<FieldName>" with length "<Attribute>" should "<AcceptedNotAccepted>" in bonds for "<section>"
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AcceptedNotAccepted  | FieldName               | section        | Attribute | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Accepted             | Deal Reference Number   | Bond Purchase | less than | post_approval.xlsx | bondAllocation              | 20                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Accepted             | Deal Reference Number   | Bond Purchase | equal to  | post_approval.xlsx | bondAllocation              | 21                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | NotAccepted          | Deal Reference Number   | Bond Purchase | more than | post_approval.xlsx | bondAllocation              | 22                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Accepted             | Unit Number Start       | Bond Purchase | less than | post_approval.xlsx | bondAllocation              | 20                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Accepted             | Unit Number Start       | Bond Purchase | equal to  | post_approval.xlsx | bondAllocation              | 21                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | NotAccepted          | Unit Number Start       | Bond Purchase | more than | post_approval.xlsx | bondAllocation              | 22                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Accepted             | Unit Number End         | Bond Purchase | less than | post_approval.xlsx | bondAllocation              | 20                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Accepted             | Unit Number End         | Bond Purchase | equal to  | post_approval.xlsx | bondAllocation              | 21                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | NotAccepted          | Unit Number End         | Bond Purchase | more than | post_approval.xlsx | bondAllocation              | 22                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Accepted             | Bond Number             | Bond Purchase | less than | post_approval.xlsx | bondAllocation              | 20                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Accepted             | Bond Number             | Bond Purchase | equal to  | post_approval.xlsx | bondAllocation              | 21                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | NotAccepted          | Bond Number             | Bond Purchase | more than | post_approval.xlsx | bondAllocation              | 22                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Accepted             | Purchase Invoice Number | Bond Purchase | less than | post_approval.xlsx | bondAllocation              | 20                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Accepted             | Purchase Invoice Number | Bond Purchase | equal to  | post_approval.xlsx | bondAllocation              | 21                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | NotAccepted          | Purchase Invoice Number | Bond Purchase | more than | post_approval.xlsx | bondAllocation              | 22                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Accepted             | Purchase Receipt Number | Bond Purchase | less than | post_approval.xlsx | bondAllocation              | 20                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Accepted             | Purchase Receipt Number | Bond Purchase | equal to  | post_approval.xlsx | bondAllocation              | 21                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | NotAccepted          | Purchase Receipt Number | Bond Purchase | more than | post_approval.xlsx | bondAllocation              | 22                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Accepted             | Deal Reference Number   | Bond Transfer | less than | post_approval.xlsx | bondAllocation              | 20                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Accepted             | Deal Reference Number   | Bond Transfer | equal to  | post_approval.xlsx | bondAllocation              | 21                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | NotAccepted          | Deal Reference Number   | Bond Transfer | more than | post_approval.xlsx | bondAllocation              | 22                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Accepted             | Unit Number Start       | Bond Transfer | less than | post_approval.xlsx | bondAllocation              | 20                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Accepted             | Unit Number Start       | Bond Transfer | equal to  | post_approval.xlsx | bondAllocation              | 21                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | NotAccepted          | Unit Number Start       | Bond Transfer | more than | post_approval.xlsx | bondAllocation              | 22                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Accepted             | Unit Number End         | Bond Transfer | less than | post_approval.xlsx | bondAllocation              | 20                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Accepted             | Unit Number End         | Bond Transfer | equal to  | post_approval.xlsx | bondAllocation              | 21                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | NotAccepted          | Unit Number End         | Bond Transfer | more than | post_approval.xlsx | bondAllocation              | 22                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Accepted             | Bond Number             | Bond Transfer | less than | post_approval.xlsx | bondAllocation              | 20                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Accepted             | Bond Number             | Bond Transfer | equal to  | post_approval.xlsx | bondAllocation              | 21                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | NotAccepted          | Bond Number             | Bond Transfer | more than | post_approval.xlsx | bondAllocation              | 22                                 |
# ${ProductType:["IPF"]}
# ${ApplicationStage:["Post Approval","Disbursal"]}
#FeatureID-ACAUTOCAS-11343
Scenario Outline: ACAUTOCAS-18109: Validate <FieldName> should be same as filled after save in bonds at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    When user changes the bond transfer details
    And user saves the bond allocation details
    Then "<FieldName>" should be same as filled after save in bonds for "<section>"
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName               | section        | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Deal Reference Number   | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number Start       | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number End         | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Number             | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Issue Date         | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Purchase Invoice Number | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Purchase Receipt Number | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Expiry Date        | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Deal Reference Number   | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number Start       | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number End         | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Number             | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Expiry Date        | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 |

      # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  #FeatureID-ACAUTOCAS-11343
Scenario Outline: ACAUTOCAS-18110: Validate <fieldName> before 1942 should not be accepted in bond at <ApplicationStage> for <section>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    When user fills "<fieldName>" for "<section>" in bond allocation
    Then "<fieldName>" before date should not be accepted for "<section>" section
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum | section       | fieldName        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | post_approval.xlsx | bondAllocation              | 24                                 | Bond Purchase | Unit Issue Date  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | post_approval.xlsx | bondAllocation              | 24                                 | Bond Purchase | Bond Expiry Date |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | post_approval.xlsx | bondAllocation              | 24                                 | Bond Transfer | Bond Expiry Date |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  #FeatureID-ACAUTOCAS-11343
Scenario Outline: ACAUTOCAS-18111: Validate <FieldName> is in view mode at enquiry stage in bond at <ApplicationStage> for <section>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    And user changes the bond transfer details
    And user saves the bond allocation details
    When user opens an "<ProductType>" application at "<ApplicationStage>" stage from enquiry screen
    And user opens bond allocation tab
    Then "<FieldName>" should be present in view mode for "<section>" section
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName               | section       | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Deal Reference Number   | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number Start       | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number End         | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Number             | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Issue Date         | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Purchase Invoice Number | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Purchase Receipt Number | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Expiry Date        | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Deal Reference Number   | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number Start       | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number End         | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Number             | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Expiry Date        | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  #FeatureID-ACAUTOCAS-11343
Scenario Outline: ACAUTOCAS-18112: Validate <FieldName> is in view mode at hold stage in bond at <ApplicationStage> for <section>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    And user changes the bond transfer details
    And user saves the bond allocation details
    And user throw the application to the hold grid for "<ApplicationStage>"
    When user search for an application present of "<ProductType>" application at "<ApplicationStage>" stage in hold application grid
    And user opens bond allocation tab
    Then "<FieldName>" should be present in view mode for "<section>" section
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName               | section       | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Deal Reference Number   | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number Start       | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number End         | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Number             | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Issue Date         | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Purchase Invoice Number | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Purchase Receipt Number | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Expiry Date        | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Deal Reference Number   | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number Start       | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number End         | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Number             | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Expiry Date        | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  #FeatureID-ACAUTOCAS-11343
Scenario Outline: ACAUTOCAS-18113: Validate is <FieldName> hover in bond at <ApplicationStage> for <section>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    When user hover over "<FieldName>" in bond for "<section>" section
    Then tooltip should be displayed for "<FieldName>" in bond for "<section>" section
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName               | section       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Deal Reference Number   | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number Start       | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number End         | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Number             | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Purchase Invoice Number | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Purchase Receipt Number | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Deal Reference Number   | Bond Transfer |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number Start       | Bond Transfer |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number End         | Bond Transfer |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Number             | Bond Transfer |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  #FeatureID-ACAUTOCAS-11343
Scenario Outline: ACAUTOCAS-18114: Validate tooltip name by hover on <FieldName> in bond at <ApplicationStage> for <section>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    When user hover over "<FieldName>" in bond for "<section>" section
    Then tooltip name should be same as "<FieldName>" in bond for "<section>" section
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName               | section       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Deal Reference Number   | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number Start       | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number End         | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Number             | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Purchase Invoice Number | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Purchase Receipt Number | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Deal Reference Number   | Bond Transfer |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number Start       | Bond Transfer |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number End         | Bond Transfer |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Number             | Bond Transfer |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  #FeatureID-ACAUTOCAS-11343
Scenario Outline: ACAUTOCAS-18115: Validate <FieldName> data should be successfully updated after saving in bond at <ApplicationStage> for <section>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    And user changes the bond transfer details
    And user saves the bond allocation details
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum1>
    When user updates the data "<FieldName>" in bond for "<section>"
    And user saves the bond allocation details
    Then "<FieldName>" should be same as filled after save in bonds for "<section>"
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName               | section       | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum | PostApproval_BondAllocation_rowNum1 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Deal Reference Number   | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 | 25                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number Start       | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 | 25                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number End         | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 | 25                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Number             | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 | 25                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Issue Date         | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 | 25                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Purchase Invoice Number | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 | 25                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Purchase Receipt Number | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 | 25                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Expiry Date        | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 | 25                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Deal Reference Number   | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 | 25                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number Start       | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 | 25                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number End         | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 | 25                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Number             | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 | 25                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Expiry Date        | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 | 25                                  |

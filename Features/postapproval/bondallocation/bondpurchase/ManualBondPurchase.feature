@Epic-PF_Bond_Base
@PQMStory
@AuthoredBy-aryan.jain
@ImplementedBy-aryan.jain
@Islamic
@Bonds
@Perishable
@ReleaseBondManualConfig
@DBConfig-1
Feature: Manual Bond Purchase

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#${FieldName:["Deal Reference Number", "Unit Number Start", "Unit Number End","Purchase Invoice Number", "Purchase Receipt Number"]}
#FeatureID-ACAUTOCAS-11341
#CAS-185568
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14472:  Entering <Validity> <FieldName> with <validityReason> in bond purchase at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    When user fills "<Validity>" value in "<FieldName>" details with validity reason for bond purchase
    And user saves the bond allocation details
    Then "<FieldName>" throws not throws error after entering details in bond purchase
    Examples:
      | Validity | validityReason                   | FieldName   | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Valid    | positive digits                  | <FieldName> | post_approval.xlsx | bondAllocation              | 5                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Valid    | characters                       | <FieldName> | post_approval.xlsx | bondAllocation              | 6                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Valid    | both digits and characters       | <FieldName> | post_approval.xlsx | bondAllocation              | 7                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Valid    | negative                         | <FieldName> | post_approval.xlsx | bondAllocation              | 8                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Valid    | hyphen                           | <FieldName> | post_approval.xlsx | bondAllocation              | 9                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Valid    | space                            | <FieldName> | post_approval.xlsx | bondAllocation              | 10                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Valid    | special characters except hyphen | <FieldName> | post_approval.xlsx | bondAllocation              | 11                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |


#FeatureID-ACAUTOCAS-11341
# ST-CAS-185568-57,59
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14473:  Calender dialogue box open for <fieldName> in bond purchase at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    When user click on calender button inside the "<fieldName>" in bond purchase
    Then calender should get open for the "<fieldName>"
    Examples:
      | fieldName        | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Unit Issue Date  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Bond Expiry Date | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |


#FeatureID-ACAUTOCAS-11341
#CAS-185568
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14474:  Entering <Validity> Bond Number with <validityReason> in bond purchase at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    When user fills valid invalid field details with validity reason for bond purchase
    Then Bond Number throws not throws error after entering "<Validity>" details in bond purchase
    Examples:
      | Validity | validityReason                   | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Valid    | positive digits                  | post_approval.xlsx | bondAllocation              | 5                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | InValid  | characters                       | post_approval.xlsx | bondAllocation              | 6                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | InValid  | both digits and characters       | post_approval.xlsx | bondAllocation              | 7                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | InValid  | negative                         | post_approval.xlsx | bondAllocation              | 8                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | InValid  | hyphen                           | post_approval.xlsx | bondAllocation              | 9                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | InValid  | space                            | post_approval.xlsx | bondAllocation              | 10                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | InValid  | special characters except hyphen | post_approval.xlsx | bondAllocation              | 11                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#FeatureID-ACAUTOCAS-11341
#CAS-185568
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14475:  Saving bond purchase Details without <Field_Name> in bond allocation at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    When user fills the bond purchase details excluding "<Field_Name>"
    Then "<Field_Name>" bond purchase Details is not saved with error message
    Examples:
      | Field_Name              | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Deal Reference Number   | post_approval.xlsx | bondAllocation              | 5                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Unit Number Start       | post_approval.xlsx | bondAllocation              | 6                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Unit Number End         | post_approval.xlsx | bondAllocation              | 7                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Bond Expiry Date        | post_approval.xlsx | bondAllocation              | 8                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Bond Number             | post_approval.xlsx | bondAllocation              | 9                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Unit Issue Date         | post_approval.xlsx | bondAllocation              | 10                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Purchase Invoice Number | post_approval.xlsx | bondAllocation              | 11                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Purchase Receipt Number | post_approval.xlsx | bondAllocation              | 12                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |


#FeatureID-ACAUTOCAS-11341
#ST-CAS-185568-54
  Scenario: ACAUTOCAS-14476:  unable to move to next stage without executing bonds service
    And user opens an application of "IPF" product type as "indiv" applicant at "Post Approval" for "bonds" with "" from application grid
    And user opens bond allocation tab
    When user clicks on move to next stage button
    Then Application should not move to next stage if bonds purchase service is not executed

#FeatureID-ACAUTOCAS-11341
#PQM-29_CAS-185568
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14477:  editable <fieldName> validation at <ApplicationStage> of <ProductType> application for bond purchase
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then user should be able to verify "<fieldName>" as "<EditableNonEditable>" for bond purchase
    Examples:
      | fieldName               | EditableNonEditable | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Deal Reference Number   | Yes                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Unit Number Start       | Yes                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Unit Number End         | Yes                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Unit Price              | No                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Bond Number             | Yes                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Unit Issue Date         | Yes                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Purchase Invoice Number | Yes                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Purchase Receipt Number | Yes                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Bond Expiry Date        | Yes                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Amount                  | No                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Quantity                | NO                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#FeatureID-ACAUTOCAS-11341
#PQM-45_CAS-185568,48_CAS-185568
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14478:  Visibility of bond purchase details at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    And user fills all data in bond allocation
    And user saves the bond allocation details
    When user reloads the bond allocation section
    Then saved details should be visible on page reload
    Examples:
      | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | post_approval.xlsx | bondAllocation              | 17                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#FeatureID-ACAUTOCAS-11341
#PQM-44_CAS-185568,51_CAS-185568
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14479:  Validation of bond purchase details at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    When user fills all data in bond allocation
    And user saves the bond allocation details
    Then Bond purchase should happen successfully
    Examples:
      | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | post_approval.xlsx | bondAllocation              | 13                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#FeatureID-ACAUTOCAS-11341
#PQM-49_CAS-185568
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14480:  Warning message for bond purchase details at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    And user fills all data in bond allocation
    When user reloads the bond allocation section for warning message
    Then user should get warning message
    Examples:
      | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | post_approval.xlsx | bondAllocation              | 13                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#${FieldName:["Unit Price", "Amount", "Quantity"]}
#FeatureID-ACAUTOCAS-11341
#PQM-50_CAS-185568
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14481:  Availability of <FieldName> data after Warning message for bond purchase details at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    And user fills all data in bond allocation
    When user reloads the bond allocation section for warning message
    And user confirms the warning message
    Then response received from services "<FieldName>" data should still get populated
    Examples:
      | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum | FieldName   | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | post_approval.xlsx | bondAllocation              | 13                                 | <FieldName> | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#FeatureID-ACAUTOCAS-11341
#PQM-47_CAS-185568
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14482:  Bond Purchase response should be saved at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    When user fills all data in bond purchase
    And user saves the bond allocation details
    Then Bond purchase should happen successfully
    Examples:
      | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | post_approval.xlsx | bondAllocation              | 13                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11341
#PQM-56_CAS-185568
  Scenario Outline: ACAUTOCAS-14483:  Validate Disbursal Stage after performing move to next stage at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    And user fills all data in bond allocation
    And user saves the bond allocation details
    And user complete document printing
    When user clicks on move to next stage
    And user open that same application at "Disbursal" stage
    Then application should be on disbursal stage
    Examples:
      | ProductType   | ApplicationStage   | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum | applicantType | key | category |
      | <ProductType> | <ApplicationStage> | post_approval.xlsx | bondAllocation              | 13                                 | indiv         |     | bonds    |

#FeatureID-ACAUTOCAS-11341
#PQM-55_CAS-185568
 #Pre requisite: Bond Allocation tab should be present at disbursal stage
  Scenario: ACAUTOCAS-14484:  Verify Bond Purchase at UI in Disbursal stage
    And user opens an application of "IPF" product type as "indiv" applicant at "Disbursal" for "bonds" with "" from application grid
    When user opens bond allocation tab
    Then user should be able to see bond purchase section

#FeatureID-ACAUTOCAS-11341
#PQM-57_CAS-185568
   #Pre requisite: Bond Allocation tab should be present at disbursal stage
  Scenario: ACAUTOCAS-14485:  Verify Bond Transfer at UI in Disbursal stage
    And user opens an application of "IPF" product type as "indiv" applicant at "Disbursal" for "bonds" with "" from application grid
    When user opens bond allocation tab
    Then bond transfer section should be visible

#FeatureID-ACAUTOCAS-11341
# PMG-CAS-185568-8
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14486:  mandatory <fieldName> validation at <ApplicationStage> of <ProductType> application for bond purchase
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then user should be able to verify these mandatory "<fieldName>" for bond purchase
    Examples:
      | fieldName               | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Deal Reference Number   | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Unit Number Start       | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Unit Number End         | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Unit Price              | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Bond Number             | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Unit Issue Date         | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Purchase Invoice Number | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Purchase Receipt Number | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Bond Expiry Date        | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Amount                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Quantity                | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

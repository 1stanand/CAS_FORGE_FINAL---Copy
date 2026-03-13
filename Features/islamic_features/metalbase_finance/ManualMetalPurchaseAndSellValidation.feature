@Epic-PF_Metal_Base
@PQMStory
@AuthoredBy-aryan.jain
@ImplementedBy-aryan.jain
@Islamic
@Metals
@ManualConfig
@Perishable
@ReleaseIslamicMetalConfig1
@DBConfig-1
Feature: Manual Flow for Metal Purchase and Sell and Workflow changes

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

 #Prerequisite:
 #Configuration : config.metalAllocation.manualEntryAllowed

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-1_CAS-195368
  #PQM-2_CAS-195368
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15992: Validate Metal allocation tab at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    Then metal allocation tab should be opened successfully
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-2_CAS-195368
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15993:  Validate <field_name> fields on Metal allocation tab at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    Then "<field_name>" fields are visible
    Examples:
      | field_name                 | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Amount                     | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Metal Type                 | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Price Per Unit             | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Transaction Quantity Unit  | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Quantity                   | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Contract Date              | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Certificate/Warrant Number | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-3_CAS-195368
  #PQM-3_CAS-195368
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15994: Visibility of document upload hyperlink at <ApplicationStage> stage for metal
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    Then add document hyperlink is visible
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-4_CAS-195368
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15995:  Visibility of <Option> at metal allocation tab for <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    Then "<Option>" option is visible in metal allocation tab
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Option    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | required  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | all field |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-5_CAS-195368
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15996: Validate success of Save button at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And user fills all data in metal allocation
    When user click on save button
    Then success notification should be displayed
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 21                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-6_CAS-195368,8_CAS-195368
  #PQM-14_CAS-195368
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15997: Warning message for metal details at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And user fills all data in metal allocation
    When user reloads the metal allocation section for warning message
    Then user should get warning message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 21                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-7_CAS-195368
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15998: Validate <field_name> data should not be present after success of cancel button at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And user fills all data in metal allocation
    When user click on cancel button in metal
    And user confirms the warning message in metal
    Then data should not be present on "<field_name>" after metal cancel
    Examples:
      | field_name                 | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | Price Per Unit             | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 21                                  |
      | Transaction Quantity Unit  | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 21                                  |
      | Contract Date              | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 21                                  |
      | Certificate/Warrant Number | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 21                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PMG-9_CAS-195368
  #PQM-18_CAS-195368
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15999: unable to move to next stage without executing metal allocation service at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    When user clicks on move to next stage button
    Then Application should not move to next stage for metal allocation service is not executed
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 17                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PQM-2_CAS-195368
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-16000: Validate metal allocation section is visible at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    Then metal allocation section should be visible
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PQM-5_CAS-195368
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-16001: Validity of required field <Field_Name> at <ApplicationStage> stage for <ProductType> product
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    When user clicks on required button
    Then field "<Field_Name>" should be "<VisibleOrNotVisible>" in metal
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name                 | VisibleOrNotVisible |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Amount                     | Yes                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Metal Type                 | Yes                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Price Per Unit             | Yes                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Quantity Unit  | Yes                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Quantity                   | Yes                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Contract Date              | Yes                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Certificate/Warrant Number | Yes                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Upload Document            | No                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PQM-6_CAS-195368
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-16002: Validity of all Field <Field_Name> at <ApplicationStage> stage for <ProductType> product
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    When user clicks on all field button
    Then field "<Field_Name>" should be "<VisibleOrNotVisible>" in metal
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name                 | VisibleOrNotVisible |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Amount                     | Yes                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Metal Type                 | Yes                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Price Per Unit             | Yes                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Quantity Unit  | Yes                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Quantity                   | Yes                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Contract Date              | Yes                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Certificate/Warrant Number | Yes                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Upload Document            | Yes                 |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PQM-7_CAS-195368,8_CAS-195368,11_CAS-195368
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-16003: editable <fieldName> validation at <ApplicationStage> for a <ProductType> application for metal
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    Then user should be able to verify "<fieldName>" as "<EditableNonEditable>" for metal
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | fieldName                  | EditableNonEditable |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Amount                     | No                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Metal Type                 | No                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Price Per Unit             | Yes                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Quantity Unit  | Yes                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Quantity                   | No                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Contract Date              | Yes                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Certificate/Warrant Number | Yes                 |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-13_CAS-195368
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-16004: Entering <Validity> Certificate Warrant Number with <validityReason> in metal at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    When user fills "<Validity>" value in Certificate Warrant Number details with validity reason for metal
    Then Certificate Warrant Number throws not throws error after entering details in metal
    Examples:
      | Validity | validityReason                   | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | Valid    | positive digits                  | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 36                                  |
      | Valid    | characters                       | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 37                                  |
      | Valid    | both digits and characters       | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 38                                  |
      | Valid    | negative                         | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 39                                  |
      | Valid    | hyphen                           | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 40                                  |
      | Valid    | space                            | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 41                                  |
      | Valid    | special characters except hyphen | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 42                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-9_CAS-195368,12_CAS-195368
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-16005: Entering <Validity> <FieldName> with <validityReason> in metal at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    When user fills "<Validity>" value in "<FieldName>" details with validity reason for metal
    Then "<FieldName>" throws not throws error after entering "<Validity>" details in metal
    Examples:
      | Validity | validityReason                   | FieldName      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | Valid    | positive digits                  | Price Per Unit | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 22                                  |
      | InValid  | characters                       | Price Per Unit | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 23                                  |
      | InValid  | both digits and characters       | Price Per Unit | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 24                                  |
      | InValid  | negative                         | Price Per Unit | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 25                                  |
      | InValid  | hyphen                           | Price Per Unit | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 26                                  |
      | InValid  | space                            | Price Per Unit | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 27                                  |
      | InValid  | special characters except hyphen | Price Per Unit | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 28                                  |
      | Valid    | positive digits                  | Contract Date  | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 29                                  |
      | InValid  | characters                       | Contract Date  | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 30                                  |
      | InValid  | both digits and characters       | Contract Date  | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 31                                  |
      | InValid  | negative                         | Contract Date  | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 32                                  |
      | InValid  | hyphen                           | Contract Date  | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 33                                  |
      | InValid  | space                            | Contract Date  | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 34                                  |
      | InValid  | special characters except hyphen | Contract Date  | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 35                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-18054: Validate Contract date before 1942 should not be accepted in metal at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    When user fills contract date in metals
    Then date before 1942 should not be accepted
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 49                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  # ${FieldName:["Amount","Quantity","Metal Type","Price Per Unit","Transaction Quantity Unit","Contract Date","Certificate/Warrant Number"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-18055: Validate <FieldName> is in view mode at enquiry stage in metal at  <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And user fills all data in metal allocation
    And user click on save button
    When user opens an "<ProductType>" application at "<ApplicationStage>" stage from enquiry screen
    And user opens metal allocation tab
    Then "<FieldName>" should be present in view mode for metal
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum | FieldName   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 21                                  | <FieldName> |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  # ${FieldName:["Amount","Quantity","Metal Type","Price Per Unit","Transaction Quantity Unit","Contract Date","Certificate/Warrant Number"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-18056: Validate <FieldName> is in view mode at hold stage in metal at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And user fills all data in metal allocation
    And user click on save button
    And user throw the application to the hold grid for "<ApplicationStage>"
    When user search for an application present of "<ProductType>" application at "<ApplicationStage>" stage in hold application grid
    And user opens metal allocation tab
    Then "<FieldName>" should be present in view mode for metal
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum | FieldName   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 21                                  | <FieldName> |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-18057: Validate <FieldName> with length <Attribute> should <Accepted/NotAccepted> in metal at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    When user fills length "<Attribute>" set for "<FieldName>" in metals
    Then "<FieldName>" with length "<Attribute>" should "<Accepted/NotAccepted>" for metals sell
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Accepted/NotAccepted | FieldName                  | Attribute | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Accepted             | Price Per Unit             | less than | post_approval.xlsx | metalAllocation              | 50                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Accepted             | Price Per Unit             | equal to  | post_approval.xlsx | metalAllocation              | 51                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | NotAccepted          | Price Per Unit             | more than | post_approval.xlsx | metalAllocation              | 52                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Accepted             | Contract Date              | less than | post_approval.xlsx | metalAllocation              | 50                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Accepted             | Contract Date              | equal to  | post_approval.xlsx | metalAllocation              | 51                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | NotAccepted          | Contract Date              | more than | post_approval.xlsx | metalAllocation              | 52                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Accepted             | Certificate/Warrant Number | less than | post_approval.xlsx | metalAllocation              | 50                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Accepted             | Certificate/Warrant Number | equal to  | post_approval.xlsx | metalAllocation              | 51                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | NotAccepted          | Certificate/Warrant Number | more than | post_approval.xlsx | metalAllocation              | 52                                  |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  # ${FieldName:["Price Per Unit","Transaction Quantity Unit","Contract Date","Certificate/Warrant Number"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-18058: Validate <FieldName> is data should be same as previous added in metal at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And user fills all data in metal allocation
    When user click on save button
    Then "<FieldName>" data should be same as previous added in metal
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum | FieldName   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 21                                  | <FieldName> |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  # ${FieldName:["Price Per Unit","Transaction Quantity Unit","Certificate/Warrant Number"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-18059: Validate is <FieldName> hover in metal at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    When user hover over "<FieldName>" in metal
    Then tooltip should be displayed for "<FieldName>" in metal
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | <FieldName> |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  # ${FieldName:["Price Per Unit","Transaction Quantity Unit","Certificate/Warrant Number"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-18060: Validate tooltip name by hover on <FieldName> in metal at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    When user hover over "<FieldName>" in metal
    Then tooltip name should be same as "<FieldName>" in metal
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | <FieldName> |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  # ${FieldName:["Price Per Unit","Transaction Quantity Unit","Contract Date","Certificate/Warrant Number"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-18061: Validate <FieldName> data should be successfully updated after saving in metal at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And user fills all data in metal allocation
    And user click on save button
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum1>
    When user updates the data in "<FieldName>"
    And user click on save button
    Then "<FieldName>" data should be successfully updated after saving in metal
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName   | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum | PostApproval_metalAllocation_rowNum1 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | <FieldName> | post_approval.xlsx | metalAllocation              | 21                                  | 53                                   |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  # ${FieldName:["Price Per Unit","Transaction Quantity Unit","Contract Date","Certificate/Warrant Number"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-20863: Validate error message should come for excluded "<FieldName>" in metal at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    When user fills the metal details excluding "<FieldName>"
    And user click on save button
    Then error message should come for "<FieldName>" in metal
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName   | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | <FieldName> | post_approval.xlsx | metalAllocation              | 21                                  |


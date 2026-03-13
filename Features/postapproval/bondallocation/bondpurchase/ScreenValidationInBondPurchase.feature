@Epic-PF_Bond_Base
@PQMStory
@AuthoredBy-aryan.jain
@ImplementedBy-aryan.jain
@Islamic
@Bonds
@ReleaseIslamicM3
@Release

Feature: Screen Validation in Bond Purchase

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


#FeatureID-ACAUTOCAS-11341
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14499:  screen validation for sections at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then user should be able to see bond purchase section
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#FeatureID-ACAUTOCAS-11341
# PMG-CAS-185568-8
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14500:  screen validation for <FieldName> at <ApplicationStage> of <ProductType> for bond purchase
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then user should be able to see "<FieldName>" under bond purchase
    Examples:
      | FieldName               | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
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


#FeatureID-ACAUTOCAS-11341,CAS-185568
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14501:  Validate <Options> in more actions at <ApplicationStage> of <ProductType> for bond purchase
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    When User clicks on More Actions button
    Then More Action dropdown will open and user will see various "<Options>" as below in "<ApplicationStage>"
    Examples:
      | Options                  | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | CAM Report               | <ProductType> | <ApplicantType> | Post Approval      | bonds    |     |
      | Hold Application         | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Workflow History Record  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Raise Query              | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Generate Sanction Letter | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Send Back                | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Response Query           | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Re Run Priority          | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Reject Application       | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Cancel Application       | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Re-Assign Application    | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |


#FeatureID-ACAUTOCAS-11341
#PQM-CAS-185568-3,5
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14502:  Verify bond allocation tab at <ApplicationStage> of <ProductType> when commodity type is bond
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then Bond Allocation tab should be visible at "<ApplicationStage>" stage
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |


#FeatureID-ACAUTOCAS-11341
#PQM-CAS-185568-19
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14503:  Bond Allocation Tab color change
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    And user click on different tab
    Then Bond allocation tab color should change
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#FeatureID-ACAUTOCAS-11341
#PQM-CAS-185568-22
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14504:  Validating activity section <FieldName> present on bond allocation tab in bond purchase at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens activity section
    And user opens "<FieldName>" field on activity section
    Then user should be able to verify working of available "<FieldName>" field
    Examples:
      | FieldName             | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Comments              | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Activity              | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | History               | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Notes                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Tag                   | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Rule Execution Result | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Messages              | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |


#FeatureID-ACAUTOCAS-11341
#PQM-CAS-185568-23
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14505:  Validating communication history reports present on bond allocation tab in bond purchase
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens communication history section
    Then user should be able to view available past reports in history section
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#FeatureID-ACAUTOCAS-11341
#PQM-CAS-185568-24
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14506:  Validating add communication details section present on bond allocation tab in bond purchase
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens communication history section
    When user opens add communication details
    Then user should be able to view the communication details section
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#FeatureID-ACAUTOCAS-11341
#PQM-CAS-185568-24
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14507:  Validating add communication details <fieldName> present on bond allocation tab in bond purchase at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens communication history section
    When user opens add communication details
    Then user should be able to view the available "<fieldName>" communication details
    Examples:
      | fieldName                | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Mode of Communication    | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Phone Number             | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Date                     | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Contacted By             | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Added By                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Notification Type        | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Notification Description | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#FeatureID-ACAUTOCAS-11341
#PQM-CAS-185568-25
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14508:  User fills communication details section present on bond allocation tab in bond purchase at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens communication history section
    And user opens add communication details
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    When user fill details of add communication details
    And user saves the communication details
    Then communication details should be saved successfully
    Examples:
      | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | post_approval.xlsx | bondAllocation              | 0                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |


#FeatureID-ACAUTOCAS-11341
#PQM-CAS-185568-40
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14509:  non-editable field validation in unit price at <ApplicationStage> of <ProductType> for bond purchase
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then user should be able to verify "<fieldName>" in unit price as disable for bond purchase
    Examples:
      | fieldName | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Currency  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Amount    | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |


#FeatureID-ACAUTOCAS-11341
#PQM-CAS-185568-26
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14510:  Validating Schedule appointment section present on bond allocation tab in bond purchase
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens communication history section
    When user opens schedule an appointment section
    Then user should be able to view schedule an appointment section
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#FeatureID-ACAUTOCAS-11341
#PQM-CAS-185568-26
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14511:  Validating Schedule appointment <fieldName> present on bond allocation tab in bond purchase at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens communication history section
    When user opens schedule an appointment section
    Then user should be able to view the available "<fieldName>" schedule appointment details
    Examples:
      | fieldName        | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Date             | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Time             | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Party Role       | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Party Contacted  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Added By         | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Submit           | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Cancel           | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Meeting Location | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |


#FeatureID-ACAUTOCAS-11341
#PQM-CAS-185568-27
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14512:  User fills Schedule appointment section present on bond allocation tab in bond purchase at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens communication history section
    And user opens schedule an appointment section
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    When user fill details of schedule an appointment section
    And user saves the schedule an appointment details
    Then schedule an appointment details should be saved successfully
    Examples:
      | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | post_approval.xlsx | bondAllocation              | 0                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#FeatureID-ACAUTOCAS-11341
# PQM-CAS-185568-24
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14513:  Validating <fieldName> on customer communication history details present on bond allocation tab in bond purchase at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens communication history section
    Then user should be able to view the available "<fieldName>" communication details headers
    Examples:
      | fieldName            | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Reports              | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Attachments          | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Mode                 | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Contacted By         | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Added By             | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Added On             | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Description/Messages | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Notification Name    | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | History              | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Action               | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |


#FeatureID-ACAUTOCAS-11341
#PQM-CAS-185568-32
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  @Perishable
    @TestPQMStories
  Scenario Outline: ACAUTOCAS-14514:  Verify Bond Transfer section in Bond Allocation Tab
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then bond transfer section should not be visible
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#FeatureID-ACAUTOCAS-11341
#CAS-185568
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  @TestPQMStories
  Scenario Outline: ACAUTOCAS-14515: Validate search enquiry details at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user save application data "<Fields>" at "<ApplicationStage>"
    And user opens enquiry form
    When user search Application via Application Number from enquiry stage
    Then Application "<Fields>" should matched with searched application in enquiry stage
    Examples:
      | Fields         | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Application ID | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Full Name      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Stages         | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |


#FeatureID-ACAUTOCAS-11341
#PQM-CAS-185568-14
  # ${ProductType:["IPF"]}
  # ${ApplicantType:["indiv"]}
  @TestPQMStories
    @26MarFix
  Scenario Outline: ACAUTOCAS-14516: Open <Field_Name> tab from Enquiry at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user save the application number
    When user opens an "<ProductType>" application at "<ApplicationStage>" stage from enquiry screen
    And user opens "<Field_Name>" on Post Approval stage
    Then "<Field_Name>" will get open on Post Approval stage in view mode
    Examples:
      | Field_Name                   | ProductType   | ApplicantType   | ApplicationStage | Category | Key |
      | Applicant Information        | <ProductType> | <ApplicantType> | Post Approval    | bonds    |     |
      | Documents                    | <ProductType> | <ApplicantType> | Post Approval    | bonds    |     |
      | Finance Details              | <ProductType> | <ApplicantType> | Post Approval    | bonds    |     |
      | Repayment Instrument Details | <ProductType> | <ApplicantType> | Post Approval    | bonds    |     |
      | References                   | <ProductType> | <ApplicantType> | Post Approval    | bonds    |     |
      | Conditions                   | <ProductType> | <ApplicantType> | Post Approval    | bonds    |     |
      | E-Stamping                   | <ProductType> | <ApplicantType> | Post Approval    | bonds    |     |
      | Account Details              | <ProductType> | <ApplicantType> | Post Approval    | bonds    |     |
      | Summary Analysis             | <ProductType> | <ApplicantType> | Post Approval    | bonds    |     |
      | Bond Allocation              | <ProductType> | <ApplicantType> | Post Approval    | bonds    |     |
      | Applicant Information        | <ProductType> | <ApplicantType> | Disbursal        | bonds    |     |
      | Finance Details              | <ProductType> | <ApplicantType> | Disbursal        | bonds    |     |
      | Repayment Instrument Details | <ProductType> | <ApplicantType> | Disbursal        | bonds    |     |
      | Conditions                   | <ProductType> | <ApplicantType> | Disbursal        | bonds    |     |
      | Bond Allocation              | <ProductType> | <ApplicantType> | Disbursal        | bonds    |     |

#FeatureID-ACAUTOCAS-11341
#PQM-15_CAS-185568
  # ${ProductType:["IPF"]}
  # ${ApplicantType:["indiv"]}
  @26MarFix
  Scenario Outline: ACAUTOCAS-14517:  Validating <Field_Name> tab hold application at <ApplicationStage> for a IPF application for bond purchase
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user save the application number
    And user throw the application to the hold grid for "<ApplicationStage>"
    When user search for an application present of "<ProductType>" application at "<ApplicationStage>" stage in hold application grid
    And user opens "<Field_Name>" on Post Approval stage
    Then "<Field_Name>" will get open on Post Approval stage in view mode
    And user unhold the application
    Examples:
      | Field_Name                   | ProductType   | ApplicantType   | ApplicationStage | Category | Key |
      | Applicant Information        | <ProductType> | <ApplicantType> | Post Approval    | bonds    |     |
      | Documents                    | <ProductType> | <ApplicantType> | Post Approval    | bonds    |     |
      | Finance Details              | <ProductType> | <ApplicantType> | Post Approval    | bonds    |     |
      | Repayment Instrument Details | <ProductType> | <ApplicantType> | Post Approval    | bonds    |     |
      | References                   | <ProductType> | <ApplicantType> | Post Approval    | bonds    |     |
      | Conditions                   | <ProductType> | <ApplicantType> | Post Approval    | bonds    |     |
      | E-Stamping                   | <ProductType> | <ApplicantType> | Post Approval    | bonds    |     |
      | Account Details              | <ProductType> | <ApplicantType> | Post Approval    | bonds    |     |
      | Summary Analysis             | <ProductType> | <ApplicantType> | Post Approval    | bonds    |     |
      | Bond Allocation              | <ProductType> | <ApplicantType> | Post Approval    | bonds    |     |
      | Applicant Information        | <ProductType> | <ApplicantType> | Disbursal        | bonds    |     |
      | Finance Details              | <ProductType> | <ApplicantType> | Disbursal        | bonds    |     |
      | Repayment Instrument Details | <ProductType> | <ApplicantType> | Disbursal        | bonds    |     |
      | Conditions                   | <ProductType> | <ApplicantType> | Disbursal        | bonds    |     |
      | Bond Allocation              | <ProductType> | <ApplicantType> | Disbursal        | bonds    |     |





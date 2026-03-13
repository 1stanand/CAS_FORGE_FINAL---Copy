@Epic-PF_Bond_Base
@PQMStory
@AuthoredBy-aniket.tripathi
@ReviewedBy-
@ImplementedBy-aniket.tripathi
@Islamic
@Bonds
@ReleaseIslamicM3
@Release

Feature: Screen Validation in Bond Transfer

# ${ApplicantType:["indiv"]}

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11340,CAS-189588
  Scenario Outline: ACAUTOCAS-14564:  Screen validation for <fieldName> at <ApplicationStage> for a <ProductType> application for bond transfer
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    Then user should be able to see "<fieldName>" under bond transfer
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | fieldName             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Deal Reference Number |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number Start     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number End       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Number           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Expiry Date      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Amount                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Quality               |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11340,CAS-189588
  Scenario Outline: ACAUTOCAS-14565: Validate <fieldName> field in more actions on <ApplicationStage> for a <ProductType> application for bond transfer
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    When User clicks on More Actions button
    Then More Action dropdown will open and user will see various "<fieldName>" as below in "<ApplicationStage>"
    Examples:
       | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | fieldName                |
       | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Response Query           |
       | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | CAM Report               |
       | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Hold Application         |
       | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Workflow History Record  |
       | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Raise Query              |
       | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Generate Sanction Letter |
       | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Send Back                |
       | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Reject Application       |
       | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Cancel Application       |
       | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Re-Assign Application    |
       | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Re Run Priority          |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11340,CAS-189588
  Scenario Outline: ACAUTOCAS-14566:  Mandatory field validation at <ApplicationStage> for a <ProductType> application for bond transfer
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user reads data from the excel file "post_approval.xlsx" under sheet "bondAllocation" and row 0
    Then user should be able to verify mandatory "<fieldName>" field for bond transfer
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |  fieldName             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |  Deal Reference Number |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |  Unit Number Start     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |  Unit Number End       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |  Bond Number           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |  Amount                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |  Quality               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |  Bond Expiry Date      |


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11340
#PQM-CAS-189588-3
#PQM-CAS-189588-5
  Scenario Outline: ACAUTOCAS-14567:  Verify bond allocation section at <ApplicationStage> for a <ProductType> application as commodity type is bond
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    Then Bond Allocation tab should be visible at "<ApplicationStage>" stage
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11340
#PQM-CAS-189588-22
  Scenario Outline: ACAUTOCAS-14568:  Validating activity section <FieldName> present on bond allocation tab at <ApplicationStage> for a <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    When user opens activity section
    And user opens "<FieldName>" field on activity section
    Then user should be able to verify working of available "<FieldName>" field
    Examples:
      | FieldName              | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Comments               | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Activity               | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | History                | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Notes                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Tag                    | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Rule Execution Result  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Messages               | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11340
#PQM-CAS-189588-23
  Scenario Outline: ACAUTOCAS-14569:  Validating communication history reports present on bond allocation tab at <ApplicationStage> for a <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    When user opens communication history section
    Then user should be able to view available past reports
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11340
#PQM-CAS-189588-24
Scenario Outline: ACAUTOCAS-16099: Validating add communication details section present on bond allocation tab at <ApplicationStage> for a <ProductType>
  And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
  And user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user opens communication history section
    When user opens add communication details
    Then user should be able to view the communication details section
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11340
#PQM-CAS-189588-24
  Scenario Outline: ACAUTOCAS-14571:  Validating add communication details <fieldName> present on bond allocation tab at <ApplicationStage> for a <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user opens communication history section
    When user opens add communication details
    Then user should be able to view the available "<fieldName>" communication details
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | fieldName                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Mode of Communication    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Phone Number             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Date                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Contacted By             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Added By                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Notification Type        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Notification Description |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11340
#PQM-CAS-189588-25
Scenario Outline: ACAUTOCAS-16099: Validating add communication details section present on bond allocation tab at <ApplicationStage> for a <ProductType>
  And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
  And user opens communication history section
    And user opens add communication details
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    When user fill details of add communication details
    And user saves the communication details
    Then communication details should be saved successfully
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |  PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |  post_approval.xlsx | bondAllocation              | 0                                  |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11340
#PQM-CAS-189588-26
  Scenario Outline: ACAUTOCAS-14572:  Validating Schedule appointment section present on bond allocation tab at <ApplicationStage> for a <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user opens communication history section
    When user opens schedule an appointment section
    Then user should be able to view the available "<fieldName>" schedule appointment details
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | fieldName        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Date             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Time             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Party Role       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Party Contacted  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Added By         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Submit           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Cancel           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Meeting Location |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11340
#PQM-CAS-189588-27
Scenario Outline: ACAUTOCAS-16099: Validating add communication details section present on bond allocation tab at <ApplicationStage> for a <ProductType>
  And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
  And user opens communication history section
    And user opens schedule an appointment section
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    When user fill details of schedule an appointment section
    And user saves the schedule an appointment details
    Then schedule an appointment details should be saved successfully
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | post_approval.xlsx | bondAllocation              | 0                                  |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11340
#PQM-CAS-189588-26
  Scenario Outline: ACAUTOCAS-14573:  Validating Schedule appointment section present on bond allocation tab in bond transfer at <ApplicationStage> for a <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user opens communication history section
    When user opens schedule an appointment section
    Then user should be able to view schedule an appointment section
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11340
#PQM-CAS-189588
  Scenario Outline: ACAUTOCAS-14574:  non-editable field validation in unit price at <ApplicationStage> for a <ProductType> application for bond transfer
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    Then user should be able to verify "<fieldName>" in unit price as disable for bond purchase
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | fieldName |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Currency  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Amount    |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11340
#PQM-CAS-189588-24
  Scenario Outline: ACAUTOCAS-14575:  Validating history of communication details <fieldName> present for bond transfer at <ApplicationStage> for a <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    When user opens communication history section
    Then user should be able to view the available "<fieldName>" communication details headers
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | fieldName            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Reports              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Attachments          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Mode                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Contacted By         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Added By             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Added On             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Description/Messages |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | History              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Action               |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-11340
#CAS-189588
  Scenario Outline: ACAUTOCAS-14576:  Validating <fieldName> label present on bond allocation section at <ApplicationStage> for a <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    Then "<fieldName>" label should be present on bond allocation section for "<section>" category
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | fieldName               | section         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Deal Reference Number   | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number Start       | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number End         | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Price              | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Number             | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Issue Date         | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Purchase Invoice Number | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Purchase Receipt Number | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Expiry Date        | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Amount                  | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Quantity                | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Documents               | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Deal Reference Number   | Bond Transfer   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number Start       | Bond Transfer   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number End         | Bond Transfer   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Number             | Bond Transfer   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Expiry Date        | Bond Transfer   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Amount                  | Bond Transfer   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Quantity                | Bond Transfer   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Documents               | Bond Transfer   |



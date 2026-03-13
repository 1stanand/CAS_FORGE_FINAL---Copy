@Epic-PF_Bond_Base
@PQMStory
@AuthoredBy-aniket.tripathi
@ReviewedBy-
@ImplementedBy-aniket.tripathi
@Islamic
@Bonds
@Perishable
@ReleaseIslamicM3
@Release

Feature: STP mode in Bond Transfer

  # ${ApplicantType:["indiv"]}

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  #FeatureID-ACAUTOCAS-11344
  #PQM-13_CAS-189588
  #PQM-14_CAS-189588
  Scenario Outline: ACAUTOCAS-14554:  Non-editable <fieldName> validation at <ApplicationStage> for a <ProductType> application for bond transfer
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user reads data from the excel file "post_approval.xlsx" under sheet "bondAllocation" and row 0
    Then user should be able to verify "<fieldName>" as non editable field for bond transfer "STP" mode
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | fieldName             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Deal Reference Number |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number Start     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number End       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Number           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Quality               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Expiry Date      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Amount                |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  #FeatureID-ACAUTOCAS-11344
  #PQM-19_CAS-190862
  #PQM-18_CAS-190862
  Scenario Outline: ACAUTOCAS-14555:  Field validation of bond transfer at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    And user clicks on initiate bond purchase
    Then user should be able to see initiate bond transfer button
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  #FeatureID-ACAUTOCAS-11344
  #PQM-12_CAS-189588
  Scenario Outline: ACAUTOCAS-14556:  Bond Allocation section with purchase initiate button visibility at <ApplicationStage> for a <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then Bond Allocation screen with purchase initiate button should be present
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  #FeatureID-ACAUTOCAS-11344
  #PQM-32_CAS-189588
  Scenario Outline: ACAUTOCAS-14557:  Verify Bond Purchase section in Bond Allocation Tab at <ApplicationStage> for a <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then bond transfer section should not be visible
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  #FeatureID-ACAUTOCAS-11344
  #PQM-39_CAS-189588
  Scenario Outline: ACAUTOCAS-14558:  Bond Transfer section enabled in Bond Allocation Tab after bond initiated successfully at <ApplicationStage> for a <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    And user clicks on initiate bond purchase
    Then bond transfer section should be visible
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  #FeatureID-ACAUTOCAS-11344
  #PQM-40_CAS-189588
  Scenario Outline: ACAUTOCAS-14559:  unable to move to next stage for bonds purchase service is not executed at <ApplicationStage> for a <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    When user clicks on Move to Next stage
    Then Application should not move to next stage if bonds purchase service is not executed
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  #FeatureID-ACAUTOCAS-11344
  #PQM-44_CAS-189588
  @Sanity
  Scenario Outline: ACAUTOCAS-14560:  Validation of bond transfer details in STP mode at <ApplicationStage> for a <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    When user click on initiate bond transfer
    And user reads data from the excel file "post_approval.xlsx" under sheet "bondAllocation" and row 0
    Then bond transfer details should be saved successfully
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  #FeatureID-ACAUTOCAS-11344
  #PQM-21_CAS-190862
  Scenario Outline: ACAUTOCAS-14561:  Visibility of document hyperlink at <ApplicationStage> stage for <ProductType> product
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    Then user should be able to view document hyperlink for "<fieldName>" field
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | fieldName       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Transfer   |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  #FeatureID-ACAUTOCAS-11344
  #PQM-20_CAS-190862
  #PQM-26_CAS-190862
  #PQM-27_CAS-190862
  Scenario Outline: ACAUTOCAS-14562:  Visibility of document at <ApplicationStage> stage for <ProductType> product
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    Then user should be able to view "<documentName>" document for "<fieldName>" field
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | fieldName       | documentName |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Initiation | Doc1         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Initiation | Doc2         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Initiation | Doc3         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Transfer   | Doc1         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Transfer   | Doc2         |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  #FeatureID-ACAUTOCAS-11344
  #PQM-29_CAS-190862
  Scenario Outline: ACAUTOCAS-14563:  Visibility of additional field section at <ApplicationStage> stage for <ProductType> product
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user opens additional details section for "<fieldName>" field
    And user reads data from the excel file "post_approval.xlsx" under sheet "bondAllocation" and row 0
    Then user should be able to view additional section
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | fieldName       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Transfer   |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  #FeatureID-ACAUTOCAS-11344
Scenario Outline: ACAUTOCAS-18106: Validate <FieldName> is in view mode at hold stage in bond at <ApplicationStage> for <section> STP mode
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user throw the application to the hold grid for "<ApplicationStage>"
    When user search for an application present of "<ProductType>" application at "<ApplicationStage>" stage in hold application grid
    And user opens bond allocation tab
    Then "<FieldName>" should be present in view mode for "<section>" section
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
  # ${ApplicationStage:["Post Approval"]}
  #FeatureID-ACAUTOCAS-11344
Scenario Outline: ACAUTOCAS-18107: Validate <FieldName> is in view mode at enquiry stage in bond at <ApplicationStage> for <section> STP mode
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    When user opens an "<ProductType>" application at "<ApplicationStage>" stage from enquiry screen
    And user opens bond allocation tab
    Then "<FieldName>" should be present in view mode for "<section>" section
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName               | section        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Deal Reference Number   | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number Start       | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number End         | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Number             | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Issue Date         | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Purchase Invoice Number | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Purchase Receipt Number | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Expiry Date        | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Deal Reference Number   | Bond Transfer |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number Start       | Bond Transfer |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number End         | Bond Transfer |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Number             | Bond Transfer |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Expiry Date        | Bond Transfer |

@Epic-PF_Metal_Base
@PQMStory
@AuthoredBy-himanshi.sharma
@TechReviewedBy-harshprit.kumar
@ImplementedBy-aniket.tripathi
@Islamic
@Metals
@Perishable
@ReleaseIslamicM4
@Release
@31MarFix
Feature: Triggering Of Trade And Get Document For Metal Purchase And Sell

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PMG-1_CAS-195359
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15786: Validate <fieldName> on the metal screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    Then "<fieldName>" buttons should be visible to user
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | fieldName                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal purchase                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | view purchase details               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal purchase generate certificate |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal cancel                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal sell                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | view sell details                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal sell generate certificate     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PMG-2_CAS-195359
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15787: Validate document certificate for <Button> should be generated
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user clicks on metal sell button
    When user hits "<Button>" on metal allocation tab
    Then document certificate for "<Button>" should be generated
    Examples:
      | Button                              | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | metal purchase generate certificate | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | metal sell generate certificate     | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PMG-5_CAS-195359
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15788: Validate both the service run successfully on <Button>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user clicks on metal sell button
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    When user hits "<Button>" on metal allocation tab
    Then success notification should be displayed
    Examples:
      | Button                              | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | metal purchase generate certificate | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 43                                  |
      | metal sell generate certificate     | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 44                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PMG-6_CAS-195359
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15789: validate message gets stamped on success of <Button>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user clicks on metal sell button
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    When user hits "<Button>" on metal allocation tab
    And On PDOC Stage check Activity section
    Then success messages gets stamped in Activity
    Examples:
      | Button                              | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | metal purchase generate certificate | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 45                                  |
      | metal sell generate certificate     | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 46                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PMG-7_CAS-195359
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15790: Validate <Button> is disabled when both the service run successfully
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user clicks on metal sell button
    When user hits "<Button>" on metal allocation tab
    Then "<Button>" button is "<enabled_disabled>"
    Examples:
      | Button                              | enabled_disabled | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | metal purchase generate certificate | disabled         | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | metal sell generate certificate     | disabled         | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PMG-8_CAS-195359
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15791: Validate the data received in response will get stamped on <field_name> present in Metal purchase section
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user clicks on metal purchase button
    Then data should be present on "<field_name>" for metal purchase
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
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PMG-13_CAS-195359
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15792: Validate metal purchase certificate removed after clicking on metal cancel button
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user generate certificates for metal purchase
    When user clicks on Metal Cancel button
    Then All the certificates will get removed
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
   # PQM-12_CAS-200406
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15793: Validate <Button> is enabled when both the service run successfully
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    When user clicks on metal sell button
    Then "<Button>" button is "<enabled_disabled>"
    Examples:
      | Button                              | enabled_disabled | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | metal purchase generate certificate | enabled          | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | metal sell generate certificate     | enabled          | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |



  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-37_CAS-200406
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15794: Validate the data received in response will get stamped on <field_name> present in Metal sell section
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    When user clicks on metal sell button
    Then data should be present on "<field_name>" for metal sell
    Examples:
      | field_name                 | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Amount                     | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Metal Type                 | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Price Per Unit             | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Transaction Quantity Unit  | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Quantity                   | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Contract Date              | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Certificate/Warrant Number | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

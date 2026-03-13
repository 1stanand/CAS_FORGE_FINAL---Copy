@Epic-PF_Metal_Base
@PQMStory
@AuthoredBy-piyush.agnihotri
@ReviewedBy-
@TechReviewedBy-
@ImplementedBy-piyush.agnihotri
@Islamic
@Metals
@Perishable


Feature: Metal Cancellation API Triggering

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-6_CAS-200415
  #PMG-1_CAS-195999
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15814: Validate Metal Purchase Cancel button when user has its authority at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    Then Metal Purchase Cancel Button will be visible
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PMG-3_CAS-195999,5_CAS-195999
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15815: Validate Metal Purchase Cancel button when user has authority both metal purchase & sell sections at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    Then Metal Cancel Button will be visible in Metal Purchase Section only
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PMG-6_CAS-195999
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15816: Validate Metal cancel button getting enabled after metal purchase at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    When user clicks on metal purchase button
    Then Metal Cancel Button will be enabled
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PMG-7_CAS-195999
  #PQM-27_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15817: Validate Metal cancel button getting disabled after metal sell at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    When user clicks on metal sell button
    Then Metal Cancel Button will be disabled
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PMG-8_CAS-195999
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15818: Validate Metal cancel button getting disabled if generate certificate is in progress at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    When user generates certificate for metal purchase
    Then Metal Cancel Button will be disabled
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PMG-9_CAS-195999
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15819: Validate Metal cancel button getting enabled if generate certificate is completed at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    When user generate certificates for metal purchase
    Then Metal Cancel Button will be enabled
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PMG-10_CAS-195999
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15820: Validate invoking metal cancellation API on metal cancel button at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    When user clicks on metal purchase button
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And user clicks on Metal Cancel button
    Then Metal Cancellation API should successfully get invoked
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 13                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PMG-11_CAS-195999
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15821: Validate Metal cancel button getting disabled if user has successfully executed metal cancellation API at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    When user clicks on Metal Cancel button
    Then Metal Cancel Button will be disabled
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PMG-11_CAS-195999,17_CAS-195999
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15822: Validate Pnotify on successful execution of metal cancellation API at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    When user clicks on Metal Cancel button
    Then success notification should be displayed
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 13                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PMG-11_CAS-195999
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15823: Validate Activity Logging on successful execution of metal cancellation API at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user opens metal allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    When user clicks on Metal Cancel button
    And On PDOC Stage check Activity section
    Then success messages gets stamped in Activity
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 14                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PMG-12_CAS-195999
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15824: Validate metal purchase <field_name> details getting removed on successful execution of metal cancellation API at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    When user clicks on metal purchase button
    And user clicks on Metal Cancel button
    Then data should not be present on "<field_name>" after metal cancel for metal purchase
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
  #PMG-12_CAS-195999
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15825: Validate certificates getting removed on successful execution of metal cancellation API at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    When user clicks on metal purchase button
    And user generates certificate for metal purchase
    And user clicks on Metal Cancel button
    Then All the certificates will get removed
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PMG-13_CAS-195999
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15826: Validate <field> button <enabled_disabled> after metal cancellation at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    When user clicks on metal purchase button
    And user clicks on Metal Cancel button
    Then "<field>" button is "<enabled_disabled>"
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | field                               | enabled_disabled |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal purchase                      | enabled          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | view purchase details               | disabled         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal purchase generate certificate | disabled         |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PMG-18_CAS-195999
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15827: Validate send back option in more actions when metal sell is not done at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    When User clicks on More Actions button
    Then Send back option is visible in more actions
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-43_CAS-200415
  #PMG-19_CAS-195999
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15828: Validate send back option in more actions when metal sell is done at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    When user clicks on metal sell button
    And User clicks on More Actions button
    Then Send back option is not visible in more actions
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PMG-20_CAS-195999
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15829: Validate send back of an application with no change in data at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    When user clicks on metal purchase button
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 9
    And user send back above application to "Credit Approval" stage
    And user opens an application from "Credit Approval" from its respective grid
    And user reads data from the excel file "credit_approval.xlsx" under sheet "kyc_details" and row 8
    And user navigates to view details
    And user fills kyc details at Credit Approval Stage
    And user fills credit approval stage
    And user selects document tab
    And user submit the documents with wait
    And user switch and close next tab
    And user clicks on move to next stage
    And user verify application at "Reconsideration"
    And user opens an application of "Reconsideration" stage present in context from application grid
    And Application is further moved back to PDOC stage
    And user verify application at "Post Approval"
    And user opens an application of "Post Approval" stage present in context from application grid
    Then Metal Sell Button will be enabled
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PMG-21_CAS-195999
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15830: Validate send back of an application with change in data at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 9
    And user send back above application to "Credit Approval" stage
    And user opens an application from "Credit Approval" from its respective grid
    And user change Applicant Information details
    And user reads data from the excel file "credit_approval.xlsx" under sheet "kyc_details" and row 8
    And user navigates to view details
    And user fills kyc details at Credit Approval Stage
    When user fills credit approval stage with new Sanction Amount
    And user selects document tab
    And user submit the documents with wait
    And user switch and close next tab
    And user clicks on move to next stage
    And user verify application at "Reconsideration"
    And user opens an application of "Reconsideration" stage present in context from application grid
    And Application is moved back on PDOC stage
    And user verify application at "Post Approval"
    And user opens an application of "Post Approval" stage present in context from application grid
    Then Metal Sell Button will be disabled

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-9_CAS-200415,4_CAS-200415,3_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15831: Validate <var> section at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    Then "<var>" section should be displayed
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | var            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal sell     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-8_CAS-200415,2_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15832: Validate metal allocation tab at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    Then metal allocation tab should be opened successfully
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-5_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15833: Validate only one metal cancel button visible at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    Then only one metal cancel button should be visible
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-12_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15834: Validate <fieldName> buttons at <ApplicationStage> of <ProductType>
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
  #PQM-13_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15835: Validate Metal Purchase Cancel Button should be in disable mode at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    Then Metal Cancel Button will be disabled
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

#Not possible to validate metal purchase cancel button as response is received very fast
#  # ${ProductType:["IPF"]}
#  # ${ApplicationStage:["Post Approval"]}
#  # ${ApplicantType:["indiv"]}
#  #PQM-14_CAS-200415
#  #PMG-
#  #UT-
#  #FeatureID-ACAUTOCAS-
#  Scenario Outline: Validate Metal Purchase Cancel Button should be in disable mode until response is not received at <ApplicationStage> of <ProductType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens metal allocation tab
#    And user clicks on metal purchase button
#    Then Metal Purchase Cancel Button should be in disable mode until response is not received
#    Examples:
#      | ProductType | ApplicantType | ApplicationStage | Category | Key |
#      | IPF         | indiv         | Post Approval    | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-15_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15836: Validate Metal Purchase Cancel Button should be in enable mode after response is received at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user clicks on metal purchase button
    Then Metal Purchase Cancel Button should be in enable mode after response is received
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-16_CAS-200415,34_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15837: Validate success message in activity at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user clicks on metal purchase button
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And user clicks on Metal Cancel button
    And On PDOC Stage check Activity section
    Then success messages gets stamped in Activity
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 14                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-17_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15838: Validate Metal Purchase Cancel Button without receiving response of generate certificate button at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user clicks on metal purchase button
    And user generates certificate for metal purchase
    Then Metal Cancel button will be disabled till the time Generate Certificates is successful
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-20_CAS-200415,29_CAS-200415
  #PMG-17_CAS-195999
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15839: Validate success notification after cancellation of metal purchase at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user clicks on metal purchase button
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And user clicks on Metal Cancel button
    Then success notification should be displayed
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 13                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-24_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15840: Validate after metal purchase <field_name> field received in response of service will get stamped at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    When user clicks on view purchase details button
    Then data received in response of service will get stamped on "<field_name>" for metal purchase
    Examples:
      | field_name                  | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Currency                    | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Principal Amount            | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Client Name                 | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Client Code                 | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Transaction Key             | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Transaction Number          | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | class                       | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Commodity Allocation Number | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Input User                  | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Initial Seller              | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | End Buyer                   | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Price                       | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Quantity                    | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Quantity Unit               | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Exchange Rate               | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Tenor                       | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | URI                         | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Document URI                | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Principal and Commission    | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Deferred Price              | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Deferred Amount             | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Settlement Date             | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Input Time Stamp            | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Trade Date                  | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Maturity Date               | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Fee Currency                | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Fee                         | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Fee Exchange Rate           | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | BCDT Code                   | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | BCDT URI                    | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Stage Code                  | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Bank Code                   | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Location                    | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Transaction Your Reference  | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Transaction Tre Type        | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Transaction Deal Type       | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Next Stage                  | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |



#  @config
#  # ${ProductType:["IPF"]}
#  # ${ApplicationStage:["Post Approval"]}
#  # ${ApplicantType:["indiv"]}
#  #PQM-25_CAS-200415
#  #PMG-
#  #UT-
#  #FeatureID-ACAUTOCAS-
#  Scenario Outline: Validate failure response of metal cancellation at <ApplicationStage> of <ProductType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens metal allocation tab
#    And user receives failure response of metal cancellation API
#    Then metal cancel button should be in enable mode with all other are in disable mode
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |


#  @config
#  # ${ProductType:["IPF"]}
#  # ${ApplicationStage:["Post Approval"]}
#  # ${ApplicantType:["indiv"]}
#  #PQM-26_CAS-200415
#  #PMG-
#  #UT-
#  #FeatureID-ACAUTOCAS-
#  Scenario Outline: Validate activity message after failure response of metal cancellation at <ApplicationStage> of <ProductType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens metal allocation tab
#    And user receives failure response of metal cancellation API
#    Then in activity message of failure should be visible
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-28_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15841: Validate metal allocation is required before proceeding to next stage at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user clicks on metal purchase button
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And user clicks on Metal Cancel button
    And user complete document printing tab
    And user clicks on Move to Next stage
    Then error notification should be displayed

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 15                                  |


#  @config
#  # ${ProductType:["IPF"]}
#  # ${ApplicationStage:["Post Approval"]}
#  # ${ApplicantType:["indiv"]}
#  #PQM-30_CAS-200415
#  #PMG-
#  #UT-
#  #FeatureID-ACAUTOCAS-
#  Scenario Outline: Validate failure message for metal cancel at <ApplicationStage> of <ProductType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens metal allocation tab
#    And user clicks on Metal Cancel button
#    Then failure message should be received by user
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

#  @config
#  # ${ProductType:["IPF"]}
#  # ${ApplicationStage:["Post Approval"]}
#  # ${ApplicantType:["indiv"]}
#  #PQM-32_CAS-200415
#  #PMG-
#  #UT-
#  #FeatureID-ACAUTOCAS-
#  Scenario Outline: Validate changed message in activity after metal cancel service is fail at <ApplicationStage> of <ProductType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens metal allocation tab
#    And user clicks on metal purchase button
#    And user clicks on Metal Cancel button
#    And metal cancel service is fail
#    Then changed message should be visible in activity
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-35_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15842: Validate send back to the selected stage without metal purchase API executed at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 9
    And user send back above application to "Credit Approval" stage
    Then Application should get sent back to "Credit Approval" stage
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-37_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15843: Validate send back to the selected stage with metal purchase API executed at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user clicks on metal purchase button
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 9
    And user send back above application to "Credit Approval" stage
    Then Application should get sent back to "Credit Approval" stage
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-39_CAS-200415,69_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15844: Validate send back to Credit Approval stage at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And user clicks on metal purchase button
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 9
    And user send back above application to "Credit Approval" stage
    And user opens an application from "Credit Approval" from its respective grid
    And user change Applicant Information details
    And user reads data from the excel file "credit_approval.xlsx" under sheet "kyc_details" and row 8
    And user navigates to view details
    And user fills kyc details at Credit Approval Stage
    And user fills credit approval stage
    And user selects document tab
    And user submit the documents with wait
    And user switch and close next tab
    And user clicks on move to next stage
    And user verify application at "Reconsideration"
    And user opens an application of "Reconsideration" stage present in context from application grid
    And Application is moved back on PDOC stage
    And user verify application at "Post Approval"
    And user opens an application of "Post Approval" stage present in context from application grid
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    Then application should successfully return at post approval with proper message

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 19                                  |

# ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-38_CAS-200415,45_CAS-200415,52_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15845: Validate sell button is enabled in PDOC Stage without changing anything in previous stage at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user clicks on metal purchase button
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 9
    And user send back above application to "Credit Approval" stage
    And user opens an application from "Credit Approval" from its respective grid
    And user reads data from the excel file "credit_approval.xlsx" under sheet "kyc_details" and row 8
    And user navigates to view details
    And user fills kyc details at Credit Approval Stage
    And user fills credit approval stage
    And user selects document tab
    And user submit the documents with wait
    And user switch and close next tab
    And user clicks on move to next stage
    And user verify application at "Reconsideration"
    And user opens an application of "Reconsideration" stage present in context from application grid
    And Application is moved back on PDOC stage
    And user verify application at "Post Approval"
    And user opens an application of "Post Approval" stage present in context from application grid
    Then Metal Sell Button will be enabled
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-40_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15846: Validate sell button is disable after changing customer details in previous stage at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 9
    And user send back above application to "Credit Approval" stage
    And user opens an application from "Credit Approval" from its respective grid
    And user change Applicant Information details
    And user reads data from the excel file "credit_approval.xlsx" under sheet "kyc_details" and row 8
    And user navigates to view details
    And user fills kyc details at Credit Approval Stage
    When user fills credit approval stage with new Sanction Amount
    And user selects document tab
    And user submit the documents with wait
    And user switch and close next tab
    And user clicks on move to next stage
    And user verify application at "Reconsideration"
    And user opens an application of "Reconsideration" stage present in context from application grid
    And Application is moved back on PDOC stage
    And user verify application at "Post Approval"
    And user opens an application of "Post Approval" stage present in context from application grid
    Then Metal Sell Button will be disabled
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-41_CAS-200415,36_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15847: Validate notification message on post approval stage after changing customer details in previous stage at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And user clicks on metal purchase button
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 9
    And user send back above application to "Credit Approval" stage
    And user opens an application from "Credit Approval" from its respective grid
    And user change Applicant Information details
    And user reads data from the excel file "credit_approval.xlsx" under sheet "kyc_details" and row 8
    And user navigates to view details
    And user fills kyc details at Credit Approval Stage
    When user fills credit approval stage with new Sanction Amount
    And user selects document tab
    And user submit the documents with wait
    And user switch and close next tab
    And user clicks on move to next stage
    And user verify application at "Reconsideration"
    And user opens an application of "Reconsideration" stage present in context from application grid
    And Application is moved back on PDOC stage
    And user verify application at "Post Approval"
    And user opens an application of "Post Approval" stage present in context from application grid
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    Then application should successfully return at post approval with proper message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 19                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-42_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15848: Validate sell button is disable in post approval stage after changing applicant first name in credit approval stage at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user clicks on metal purchase button
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 9
    And user send back above application to "Credit Approval" stage
    And user opens an application from "Credit Approval" from its respective grid
    And user change Applicant Information details
    And user reads data from the excel file "credit_approval.xlsx" under sheet "kyc_details" and row 8
    And user navigates to view details
    And user fills kyc details at Credit Approval Stage
    And user fills credit approval stage
    And user selects document tab
    And user submit the documents with wait
    And user switch and close next tab
    And user clicks on move to next stage
    And user verify application at "Reconsideration"
    And user opens an application of "Reconsideration" stage present in context from application grid
    And Application is moved back on PDOC stage
    And user verify application at "Post Approval"
    And user opens an application of "Post Approval" stage present in context from application grid
    Then Metal Sell Button will be disabled
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-44_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15849: Validate application should be cancelled successfully with metal purchase API not executed at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user reads data from the excel file "cancel_application.xlsx" under sheet "cancel_application" and row 23
    And user cancels the application
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    Then application should move to "Cancellation" stage
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 0                                   |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-46_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15850: Validate application should be cancelled successfully with metal purchase API executed at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user clicks on metal purchase button
    And user reads data from the excel file "cancel_application.xlsx" under sheet "cancel_application" and row 23
    And user cancels the application
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    Then application should move to "Cancellation" stage
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 0                                   |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-50_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15851: Validate metal cancellation API should not get executed after application cancellation
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user reads data from the excel file "cancel_application.xlsx" under sheet "cancel_application" and row 42
    And user cancel the application present in context of "Post Approval" stage
    When user opens an application from cancelled application grid
    And user confirms cancellation from review cancelled application screen
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And User searches for an application present in context on Application Manager screen
    And user opens activity in activity section
    Then metal cancellation API should not be invoked
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 14                                  |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-49_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15852: Validate application successfully reach at application cancellation grid
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user clicks on metal purchase button
    And user clicks on metal sell button
    And user reads data from the excel file "cancel_application.xlsx" under sheet "cancel_application" and row 23
    And user cancels the application
    Then application should move to "Cancellation" stage
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-51_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15853: Validate reject application with metal purchase API not executed successfully at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user reads data from the excel file "cancel_application.xlsx" under sheet "cancel_application" and row 23
    And user reject the application
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    Then application should move to "REJECTION" stage
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 1                                   |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-53_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15854: Validate reject application with metal purchase API executed successfully at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user clicks on metal purchase button
    And user reads data from the excel file "cancel_application.xlsx" under sheet "cancel_application" and row 23
    And user reject the application
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    Then application should move to "REJECTION" stage
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 1                                   |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-54_CAS-200415,55_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15855: Validate reject metal purchase with metal cancellation API executed successfully at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 12
    When user rejects application
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And User searches for an application present in context on Application Manager screen
    And user opens activity in activity section
    Then user should able to validate proper message stamped in Activity
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 11                                  |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-56_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15856: Validate application successfully reach at application rejected grid
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user clicks on metal purchase button
    And user clicks on metal sell button
    And user clicks on more action button
    And user click on Reject Application
    And User reject an application from Post Approval Stage
    Then Application should be available on Rejected Application Grid
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-57_CAS-200415
  #PMG-
  #UT-
  @ReleaseIslamicM4
@Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15857: Validate reject metal purchase with metal cancellation API not executed successfully at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 12
    When user rejects application
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And User searches for an application present in context on Application Manager screen
    And user opens activity in activity section
    Then metal cancellation API should not be invoked
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 11                                  |



# ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PMG-22_CAS-195999
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15858: Validate send back to processing from cancellation grid when metal sell is not done
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user reads data from the excel file "cancel_application.xlsx" under sheet "cancel_application" and row 33
    And user cancel the application present in context of "Post Approval" stage
    When user opens an application from cancelled application grid
    And user select action in cancelled application
    Then All previous stages should be visible in the dropdown of review cancelled application screen

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

# ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PMG-23_CAS-195999
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15859: Validate send back to processing from cancellation grid when metal sell is done
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user clicks on metal sell button
    And user reads data from the excel file "cancel_application.xlsx" under sheet "cancel_application" and row 33
    And user cancel the application present in context of "Post Approval" stage
    When user opens an application from cancelled application grid
    And user select action in cancelled application
    Then Post Approval stage should be visible in the dropdown of review cancelled application screen
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-47_CAS-200415
  #PMG-24_CAS-195999
  @ReleaseIslamicM4
  @Release


  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15860: Validate auto invocation of metal cancellation API on confirm cancellation when metal sell is not done
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user reads data from the excel file "cancel_application.xlsx" under sheet "cancel_application" and row 42
    And user cancel the application present in context of "Post Approval" stage
    When user opens an application from cancelled application grid
    And user confirms cancellation from review cancelled application screen
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And User searches for an application present in context on Application Manager screen
    And On PDOC Stage check Activity section
    Then success messages gets stamped in Activity of metal cancellation API
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 14                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-47_CAS-200415,48_CAS-200415
  #PMG-25_CAS-195999
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15861: Validate auto invocation of metal cancellation API on confirm cancellation when metal sell is done
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user clicks on metal sell button
    And user reads data from the excel file "cancel_application.xlsx" under sheet "cancel_application" and row 42
    And user cancel the application present in context of "Post Approval" stage
    When user opens an application from cancelled application grid
    And user confirms cancellation from review cancelled application screen
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And User searches for an application present in context on Application Manager screen
    And On PDOC Stage check Activity section
    Then metal cancellation API should not be invoked

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 14                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-24_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15862: Validate after metal sell <field_name> field received in response of service will get stamped at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user clicks on metal sell button
    When user clicks on view sell details button
    Then data received in response of service will get stamped on "<field_name>" for metal sell
    Examples:
      | field_name                  | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Currency                    | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Principal Amount            | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Client Name                 | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Client Code                 | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Transaction Key             | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Transaction Number          | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | class                       | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Commodity Allocation Number | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Input User                  | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Initial Seller              | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | End Buyer                   | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Price                       | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Quantity                    | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Quantity Unit               | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Exchange Rate               | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Tenor                       | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | URI                         | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Document URI                | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Principal and Commission    | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Deferred Price              | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Deferred Amount             | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Settlement Date             | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Input Time Stamp            | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Trade Date                  | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Maturity Date               | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Fee Currency                | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Fee                         | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Fee Exchange Rate           | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | BCDT Code                   | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | BCDT URI                    | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Stage Code                  | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Bank Code                   | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Location                    | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Transaction Your Reference  | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Transaction Tre Type        | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Transaction Deal Type       | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | Next Stage                  | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-12_CAS-200415
  @ReleaseIslamicM4
  @Release

  #FeatureID-ACAUTOCAS-15322
  Scenario Outline: ACAUTOCAS-15863: Validate <field> button <enabled_disabled> before successful execution of metal purchase at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    Then "<field>" button is "<enabled_disabled>"
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | field                               | enabled_disabled |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal purchase                      | enabled          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | view purchase details               | disabled         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal purchase generate certificate | disabled         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal cancel                        | disabled         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal sell                          | disabled         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | view sell details                   | disabled         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal sell generate certificate     | disabled         |

#  @Schedular
#  # ${ProductType:["IPF"]}
#  # ${ApplicationStage:["Post Approval"]}
#  # ${ApplicantType:["indiv"]}
#  #PQM-59_CAS-200415
#  #FeatureID-ACAUTOCAS-
#    @ReleaseIslamicM4
#@Release
#  Scenario Outline: Vaildate metal purchase should be cancelled after 2 days of metal purchase at <ApplicationStage> of <ProductType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens metal allocation tab
#    When user clicks on metal purchase button
#    Then Metal Cancel Button will be disabled
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
#
#  @Schedular
#  # ${ProductType:["IPF"]}
#  # ${ApplicationStage:["Post Approval"]}
#  # ${ApplicantType:["indiv"]}
#  #PQM-60_CAS-200415
#  #FeatureID-ACAUTOCAS-
#    @ReleaseIslamicM4
#@Release
#  Scenario Outline: Verify metal purchase cancellation after 2 days at <ApplicationStage> of <ProductType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens metal allocation tab
#    And user clicks on metal purchase button
#    And user reads data from the excel file "cancel_application.xlsx" under sheet "cancel_application" and row 23
#    And user cancels the application
#    When user opens an application from cancelled application grid
#    And user send back that application from review cancelled application screen
#    And user opens an application of "Post Approval" stage present in context from application grid
#    Then Metal Cancel Button will be disabled
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

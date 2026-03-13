@Epic-PF_Metal_Base
@PQMStory
@AuthoredBy-aryan.jain
@ImplementedBy-aryan.jain
@Islamic
@Metals
@Perishable
@ReleaseIslamicM4
@Release
@31MarFix
Feature: Provision for triggering of Metal Purchase and Metal Sell services

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-1_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15925: Validate metal purchase service at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    When user clicks on metal purchase button
    Then "<var>" service gets triggered
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | var            | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal purchase | post_approval.xlsx | metalAllocation              | 9                                   |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-1_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15926: Validate metal sell service at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And user clicks on metal purchase button
    When user clicks on metal sell button
    Then "<var>" service gets triggered
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | var        | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal sell | post_approval.xlsx | metalAllocation              | 10                                  |


    #Configuration is needed for defining whether Purchase service execution is to be done or not. Configuration is done through the property file. MetalPurchase - Enable/ Disable, with default behavior as Enable

    #Configuration is enabled
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-2_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15927: Validate <var> section is displayed when configuration is enabled at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    Then "<var>" section should be displayed
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | var            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal sell     |

#    #Configuration is disabled
#  # ${ProductType:["IPF"]}
#  # ${ApplicationStage:["Post Approval","Disbursal"]}
#  # ${ApplicantType:["indiv"]}
#  #PMG-3_CAS-191764
#  #FeatureID-ACAUTOCAS-
#  Scenario Outline: Validate <var> section is <displayed_notdisplayed> when configuration is enabled at <ApplicationStage> of <ProductType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens metal allocation tab
#    Then "<var>" section should be "<displayed_notdisplayed>"
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | var            | displayed_notdisplayed |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal purchase | not displayed          |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal sell     | displayed              |

  #Configuration is enabled
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-4_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15928: Validate Metal sell section is enabled when configuration is enabled at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    When user clicks on metal purchase button
    And user generate certificates for metal purchase
    Then metal sell section should be enabled
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  #Configuration is disabled
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-5_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15929: Validate Metal sell section is enabled when configuration is disabled at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    Then metal sell section should be enabled
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

#    #Configuration is disabled
#  # ${ProductType:["IPF"]}
#  # ${ApplicationStage:["Post Approval","Disbursal"]}
#  # ${ApplicantType:["indiv"]}
#  #PMG-6_CAS-191764
#  #FeatureID-ACAUTOCAS-
#  Scenario Outline: Validate Metal Purchase cancel button is not present when configuration is disabled at <ApplicationStage> of <ProductType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens metal allocation tab
#    Then metal purchase cancel button should be "not displayed"
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-7_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15930: Validate additional details section is visible in <button> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user clicks on metal sell button
    When user click on "<button>" button
    Then additional details window is displayed for "<button>"
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | button                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | view sell details     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-8_CAS-191764
  #PQM-23_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15931: Validate <field> button <enabled_disabled> after successful metal purchase at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    When user clicks on metal purchase button
    Then "<field>" button is "<enabled_disabled>"
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | field                               | enabled_disabled |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal purchase                      | disabled         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | view purchase details               | enabled          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal purchase generate certificate | enabled          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal cancel                        | enabled          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal sell                          | enabled          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | view sell details                   | disabled         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal sell generate certificate     | disabled         |

#    #Service failure
#  # ${ProductType:["IPF"]}
#  # ${ApplicationStage:["Post Approval","Disbursal"]}
#  # ${ApplicantType:["indiv"]}
#  #PMG-9_CAS-191764
#  #FeatureID-ACAUTOCAS-
#  Scenario Outline: Validate metal purchase
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens metal allocation tab
#    When user clicks on metal purchase button
#    Then Metal Purchase button will get enabled and user can retry by clicking on the same button
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-10_CAS-191764
  #PQM-11_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15932: Validate success messages to be stamped in Activity for metal purchase at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    When user clicks on metal purchase button
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And On PDOC Stage check Activity section
    Then success messages gets stamped in Activity
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 11                                  |

# ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-10_CAS-191764
  #PQM-32_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15933: Validate success messages to be stamped in Activity for metal sell at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    When user clicks on metal sell button
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And On PDOC Stage check Activity section
    Then success messages gets stamped in Activity
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 12                                  |


#  # ${ProductType:["IPF"]}
#  # ${ApplicationStage:["Post Approval","Disbursal"]}
#  # ${ApplicantType:["indiv"]}
#  #PMG-11_CAS-191764
#  #FeatureID-ACAUTOCAS-
#  Scenario Outline: Validate failure messages to be stamped in Activity
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens metal allocation tab
#    When service executes
#    Then failure messages gets stamped in Activity
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-12_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15934: Notification for success message at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    When user clicks on metal purchase button
    Then success notification should be displayed
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 9                                   |

#  # ${ProductType:["IPF"]}
#  # ${ApplicationStage:["Post Approval","Disbursal"]}
#  # ${ApplicantType:["indiv"]}
#  #PMG-13_CAS-191764
#  #FeatureID-ACAUTOCAS-
#  Scenario Outline: Notification for failure message
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens metal allocation tab
#    And Metal Service is triggered
#    When failure response is received
#    Then failure message as PNotify appears
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-14_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15935: Validate the data received in response will get stamped on <field_name> present in Metal purchase section at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    When user clicks on metal purchase button
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
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-15_CAS-191764
  #PQM-26_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15936: Validate the data received in response will get stamped on <field_name> present in Additional details window in Metal purchase section at <ApplicationStage> of <ProductType>
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


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-16_CAS-191764
    #Service is enabled
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15937: Validate success of Generate certificates button at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    When user generates certificate for metal purchase
    Then Metal Cancel button will be disabled till the time Generate Certificates is successful
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

#  # ${ProductType:["IPF"]}
#  # ${ApplicationStage:["Post Approval","Disbursal"]}
#  # ${ApplicantType:["indiv"]}
#  #PMG-17_CAS-191764
#  #FeatureID-ACAUTOCAS-
#    #Service is disabled
#  Scenario Outline: Validate failure of Generate certificates button
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens metal allocation tab
#    And user is on Metal purchase section on Metal allocation tab
#    When user clicks on Generate certificates button
#    Then Generate Certificates and Metal Cancel button will be enabled
#
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-18_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15938: Validate metal purchase <field_name> details removed on metal cancel button at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    When user clicks on Metal Cancel button
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
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-18_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15939: Validate metal purchase certificate removed on metal cancel button at <ApplicationStage> of <ProductType>
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
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-19_CAS-191764
  #PQM-14_CAS-191764,16_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15940: Validate success of Metal cancel button in Metal purchase section at <ApplicationStage> of <ProductType>
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
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-19_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15941: Validate metal cancel button getting disabled after clicking on metal cancel button at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    When user clicks on Metal Cancel button
    Then Metal Cancel Button will be disabled
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |


#  # ${ProductType:["IPF"]}
#  # ${ApplicationStage:["Post Approval","Disbursal"]}
#  # ${ApplicantType:["indiv"]}
#  #PMG-20_CAS-191764
#  #FeatureID-ACAUTOCAS-
#  Scenario Outline: Validate failure of Metal cancel button in Metal purchase section
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens metal allocation tab
#    And user is on Metal purchase section on Metal allocation tab
#    When user clicks on Metal cancel button
#    Then Metal cancel button will be enabled and user can retry. Data will not be removed from Metal Purchase section.
#
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-21_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15942: Validate Metal sell button at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    When user clicks on metal sell button
    Then Metal Sell Button will be disabled
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-22_CAS-191764
  #PQM-31_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15943: Notification for success message for metal sell button at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And user clicks on metal purchase button
    When user clicks on metal sell button
    Then success notification should be displayed
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 10                                  |

# ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-22_CAS-191764
  #PQM-35_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15944: Validate the data received in response will get stamped on <field_name> present in Additional details window in Metal sell section at <ApplicationStage> of <ProductType>
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
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-22_CAS-191764
  #PQM-24_CAS-191764,33_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15945: Validate <field> button <enabled_disabled> after successful metal sell at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    When user clicks on metal sell button
    Then "<field>" button is "<enabled_disabled>"
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | field                               | enabled_disabled |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal purchase                      | disabled         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | view purchase details               | enabled          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal purchase generate certificate | enabled          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal cancel                        | disabled         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal sell                          | disabled         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | view sell details                   | enabled          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal sell generate certificate     | enabled          |


#  # ${ProductType:["IPF"]}
#  # ${ApplicationStage:["Post Approval","Disbursal"]}
#  # ${ApplicantType:["indiv"]}
#  #PMG-23_CAS-191764
#  #FeatureID-ACAUTOCAS-
#  Scenario Outline: Validate failure of Metal sell button in Metal sell section
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens metal allocation tab
#    And user is on Metal sell section on Metal allocation tab
#    When user clicks on Metal sell button
#    Then Metal Sell API is failed and userwill have an option to either retry Metal Sell by clicking Metal Sell button or one can cancel metal by clicking Metal Sell button
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-25_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15946: Validate the data received in response will get stamped on <field_name> present in Metal sell section at <ApplicationStage> of <ProductType>
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

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-26_CAS-191764
  #PQM-39_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15947: Validate send back option is visible in more actions when metal sell is not done at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    When User clicks on More Actions button
    Then Send back option is visible in more actions
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-26_CAS-191764
  #PQM-40_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15948: Validate send back option is not visible in more actions when metal sell is done at <ApplicationStage> of <ProductType>
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
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PQM-3_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15949: Validate all required field option is not visible in metal service mode at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    Then all required option is not visible in metal service mode
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PQM-4_CAS-191764,5_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15950: Validate <fieldName> buttons visibility at <ApplicationStage> of <ProductType>
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
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PQM-7_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15951: Validate <field> button <enabled_disabled> before successful metal purchase at <ApplicationStage> of <ProductType>
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

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-10_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15952: Validate send back of an application with change in amount before metal purchase is executed at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
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
    And user opens an application of "Reconsideration" stage present in context from application grid
    And Application is moved back on PDOC stage
    And user opens an application of "Post Approval" stage present in context from application grid
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And user clicks on metal purchase button
    Then success notification should be displayed
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 9                                   |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PQM-15_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15953: Validate the data received on metal type after metal purchase successfully present in Metal purchase section at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    When user clicks on metal purchase button
    Then data should be present on "<field_name>" for metal purchase
    Examples:
      | field_name | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Metal Type | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-17_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15954: Validate send back of application to the Credit Approval stage from <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 9
    When user send back above application to "Credit Approval" stage
    Then Application should get sent back to "Credit Approval" stage
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-18_CAS-191764,19_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15955: Validate send back of an application with change in details before move to post approval stage of <ProductType>
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
    And user opens an application of "Reconsideration" stage present in context from application grid
    And Application is moved back on PDOC stage
    And user opens an application of "Post Approval" stage present in context from application grid
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    Then application should successfully return at post approval with proper message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 19                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-22_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15956: Validate send back of an application with change in details before metal sell is executed at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And user clicks on metal purchase button
    And user clicks on Metal Cancel button
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
    And user opens an application of "Reconsideration" stage present in context from application grid
    And Application is moved back on PDOC stage
    And user opens an application of "Post Approval" stage present in context from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    When user clicks on metal sell button
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    Then success notification should be displayed
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 10                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PQM-25_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15957:  Validate <var> tab is displayed in view purchase details at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    When user clicks on view purchase details button
    Then "<var>" tab should be displayed
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | var                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Metal Purchase Additional Details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Custom Details                    |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PQM-27_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15958: Verify custom details tab in metal purchase at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And user clicks on view purchase details button
    When user clicks on custom details tab
    Then Blank page should be visible for no maintenance
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 16                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PQM-34_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15959:  Validate <var> tab is displayed in view sell details at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user clicks on metal sell button
    When user clicks on view sell details button
    Then "<var>" tab should be displayed for metal sell
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | var                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Metal Sell Additional Details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Custom Details                |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PQM-36_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15960: Verify custom details tab in metal sell at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user clicks on metal sell button
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    And user clicks on view purchase details button
    When user clicks on custom details tab
    Then Blank page should be visible for no maintenance
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 16                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-37_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15961: unable to move to next stage without executing metal allocation service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    When user clicks on move to next stage button
    Then Application should not move to next stage for metal allocation service is not executed
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 17                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-38_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15962: unable to move to next stage without executing metal sell service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    When user clicks on move to next stage button
    Then Application should not move to next stage for metal allocation service is not executed
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 18                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PQM-47_CAS-191764
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15963: Verify Finance Amount field on Repayment Parameters at <ApplicationStage> of <ProductType> should be disabled
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user clicks on metal sell button
    And user open disbursal details page
    Then finance amount field from repayment parameter at "<ApplicationStage>" must be disabled
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #PMG-8_CAS-195349
  #FeatureID-ACAUTOCAS-15323
  Scenario Outline: ACAUTOCAS-15964: Validate success message in activity for metal cancellation at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    When user clicks on Metal Cancel button
    And On PDOC Stage check Activity section
    Then success messages gets stamped in Activity
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 14                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-18099: Validate <FieldName> is in view mode at enquiry stage in metals at <ApplicationStage> for <section> STP mode
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user generate certificates for metal purchase
    And user clicks on metal sell button
    And user generate certificates for metal sell
    When user opens an "<ProductType>" application at "<ApplicationStage>" stage from enquiry screen
    And user opens metal allocation tab
    Then "<FieldName>" should be present in view mode for "<section>" section in metals
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName                           | section               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Amount                              | metal purchase        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Metal Type                          | metal purchase        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Price Per Unit                      | metal purchase        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Quantity Unit           | metal purchase        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Quantity                            | metal purchase        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Contract Date                       | metal purchase        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Certificate/Warrant Number          | metal purchase        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Amount                              | metal sell            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Metal Type                          | metal sell            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Price Per Unit                      | metal sell            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Quantity Unit           | metal sell            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Quantity                            | metal sell            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Contract Date                       | metal sell            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Certificate/Warrant Number          | metal sell            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal purchase                      |                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal purchase generate certificate |                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal cancel                        |                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal sell                          |                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal sell generate certificate     |                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Currency                            | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Principal Amount                    | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Client Name                         | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Client Code                         | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Key                     | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Number                  | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Sub Transaction Number              | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | class                               | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Department                          | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Branch                              | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Commodity                           | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Commodity Allocation Number         | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Input User                          | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Initial Seller                      | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | End Buyer                           | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Price                               | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Quantity                            | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Quantity Unit                       | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Exchange Rate                       | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Tenor                               | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | URI                                 | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Document URI                        | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Agreed Profit Rate                  | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Principal and Commission            | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Deferred Price                      | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Deferred Amount                     | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Settlement Date                     | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Input Time Stamp                    | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Trade Date                          | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Maturity Date                       | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Fee Currency                        | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Fee                                 | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Fee Exchange Rate                   | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Exchange Rate Inverse               | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | BCDT Code                           | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | BCDT URI                            | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Structure Code                      | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Stage Code                          | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Bank Code                           | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Location                            | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Your Reference          | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Tre Type                | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Deal Type               | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Cycle Identifier                    | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Next Stage                          | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Extra Reference1                    | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Extra Reference2                    | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Currency                            | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Principal Amount                    | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Client Name                         | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Client Code                         | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Key                     | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Number                  | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Sub Transaction Number              | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | class                               | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Department                          | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Branch                              | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Commodity                           | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Commodity Allocation Number         | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Input User                          | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Initial Seller                      | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | End Buyer                           | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Price                               | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Quantity                            | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Quantity Unit                       | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Exchange Rate                       | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Tenor                               | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | URI                                 | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Document URI                        | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Agreed Profit Rate                  | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Principal and Commission            | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Deferred Price                      | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Deferred Amount                     | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Settlement Date                     | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Input Time Stamp                    | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Trade Date                          | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Maturity Date                       | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Fee Currency                        | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Fee                                 | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Fee Exchange Rate                   | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Exchange Rate Inverse               | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | BCDT Code                           | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | BCDT URI                            | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Structure Code                      | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Stage Code                          | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Bank Code                           | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Location                            | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Your Reference          | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Tre Type                | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Deal Type               | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Cycle Identifier                    | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Next Stage                          | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Extra Reference1                    | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Extra Reference2                    | view sell details     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-18100: Validate <FieldName> is in view mode at hold stage in metal at <ApplicationStage> for <section> STP mode
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user generate certificates for metal purchase
    And user clicks on metal sell button
    And user generate certificates for metal sell
    And user throw the application to the hold grid for "<ApplicationStage>"
    When user search for an application present of "<ProductType>" application at "<ApplicationStage>" stage in hold application grid
    And user opens metal allocation tab
    Then "<FieldName>" should be present in view mode for "<section>" section in metals
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName                           | section               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Amount                              | metal purchase        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Metal Type                          | metal purchase        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Price Per Unit                      | metal purchase        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Quantity Unit           | metal purchase        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Quantity                            | metal purchase        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Contract Date                       | metal purchase        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Certificate/Warrant Number          | metal purchase        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Amount                              | metal sell            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Metal Type                          | metal sell            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Price Per Unit                      | metal sell            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Quantity Unit           | metal sell            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Quantity                            | metal sell            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Contract Date                       | metal sell            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Certificate/Warrant Number          | metal sell            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal purchase                      |                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal purchase generate certificate |                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal cancel                        |                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal sell                          |                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal sell generate certificate     |                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Currency                            | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Principal Amount                    | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Client Name                         | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Client Code                         | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Key                     | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Number                  | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Sub Transaction Number              | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | class                               | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Department                          | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Branch                              | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Commodity                           | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Commodity Allocation Number         | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Input User                          | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Initial Seller                      | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | End Buyer                           | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Price                               | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Quantity                            | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Quantity Unit                       | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Exchange Rate                       | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Tenor                               | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | URI                                 | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Document URI                        | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Agreed Profit Rate                  | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Principal and Commission            | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Deferred Price                      | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Deferred Amount                     | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Settlement Date                     | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Input Time Stamp                    | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Trade Date                          | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Maturity Date                       | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Fee Currency                        | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Fee                                 | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Fee Exchange Rate                   | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Exchange Rate Inverse               | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | BCDT Code                           | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | BCDT URI                            | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Structure Code                      | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Stage Code                          | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Bank Code                           | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Location                            | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Your Reference          | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Tre Type                | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Deal Type               | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Cycle Identifier                    | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Next Stage                          | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Extra Reference1                    | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Extra Reference2                    | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Currency                            | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Principal Amount                    | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Client Name                         | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Client Code                         | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Key                     | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Number                  | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Sub Transaction Number              | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | class                               | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Department                          | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Branch                              | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Commodity                           | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Commodity Allocation Number         | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Input User                          | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Initial Seller                      | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | End Buyer                           | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Price                               | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Quantity                            | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Quantity Unit                       | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Exchange Rate                       | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Tenor                               | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | URI                                 | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Document URI                        | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Agreed Profit Rate                  | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Principal and Commission            | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Deferred Price                      | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Deferred Amount                     | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Settlement Date                     | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Input Time Stamp                    | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Trade Date                          | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Maturity Date                       | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Fee Currency                        | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Fee                                 | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Fee Exchange Rate                   | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Exchange Rate Inverse               | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | BCDT Code                           | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | BCDT URI                            | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Structure Code                      | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Stage Code                          | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Bank Code                           | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Location                            | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Your Reference          | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Tre Type                | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Transaction Deal Type               | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Cycle Identifier                    | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Next Stage                          | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Extra Reference1                    | view sell details     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | Extra Reference2                    | view sell details     |


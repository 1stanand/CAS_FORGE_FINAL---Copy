@Epic-PF_Metal_Base
@PQMStory
@AuthoredBy-aniket.tripathi
@TechReviewedBy-harshprit.kumar
@ImplementedBy-aniket.tripathi
@Islamic
@Metals
@Perishable
@ReleaseIslamicM4
@Release
@31MarFix
Feature: Services Available for Metal Purchase And Sell on PDOC stage

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15795: Validate <fieldName> for Metal Purchase And Sell on PDOC stage
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
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15796: Validate <fieldName> for Metal Purchase And Sell on PDOC stage before metal purchase
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    Then "<fieldName>" button is "<enabled_disabled>"
    Examples:
      | fieldName                           | enabled_disabled | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | metal purchase                      | enabled          | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | view purchase details               | disabled         | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | metal cancel                        | disabled         | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | metal purchase generate certificate | disabled         | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | metal sell                          | disabled         | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15797: Validate <field> for Metal Purchase And Sell on PDOC stage after metal purchase
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user clicks on metal purchase button
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

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15798: Availability of metal allocation section at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user reads data from the excel file "post_approval.xlsx" under sheet "metalAllocation" and row 0
    Then user should be able to view metal allocation section
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15799: Availability of metal purchase section at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user reads data from the excel file "post_approval.xlsx" under sheet "metalAllocation" and row 0
    Then user should be able to view metal purchase section
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15800: Availability of metal sell section at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user reads data from the excel file "post_approval.xlsx" under sheet "metalAllocation" and row 0
    Then user should be able to view metal sell section
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15801: Visibility of <fieldName> at <ApplicationStage> on selection of metal allocation
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    Then "<fieldName>" buttons should be visible to user
    Examples:
      | fieldName      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | metal purchase | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
      | metal sell     | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15802: Validation of error message at <ApplicationStage> on selection of move to next stage without required data
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And click on move to next stage
    And user reads data from the excel file "post_approval.xlsx" under sheet "metalAllocation" and row 2
    Then user should be able to get errorMessage on metal allocation section
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15803: Validation of success message at <ApplicationStage> on selection of metal purchase
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user clicks on metal purchase button
    And user reads data from the excel file "post_approval.xlsx" under sheet "metalAllocation" and row 1
    Then user should be able to get success message on metal purchase section
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15804: Validation of success message at <ApplicationStage> on selection of generate certificate for activity section
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user clicks on metal purchase button
    And user generate certificates for metal purchase
    And user opens activity section
    And user opens "Activity" field on activity section
    And user reads data from the excel file "post_approval.xlsx" under sheet "metalAllocation" and row 2
    Then user should be able to get success message on generate certificate option for activity section
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15805: Validation of success message at <ApplicationStage> on selection of generate certificate
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user clicks on metal purchase button
    And user generate certificates for metal purchase
    And user reads data from the excel file "post_approval.xlsx" under sheet "metalAllocation" and row 3
    Then user should be able to get success message on generate certificate option
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15806: Visibility of available document at <ApplicationStage> on selection of generate certificate
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user clicks on metal purchase button
    And user generate certificates for metal purchase
    And user reads data from the excel file "post_approval.xlsx" under sheet "metalAllocation" and row 0
    Then user should be able to view list of documents
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15807: Opening of available document at <ApplicationStage> after selection of generate certificate
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user clicks on metal purchase button
    And user generate certificates for metal purchase
    And user reads data from the excel file "post_approval.xlsx" under sheet "metalAllocation" and row 0
    Then user should be able to view list of documents
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15808: Removal of available details at <ApplicationStage> on selection of metal purchase cancel
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user clicks on metal purchase button
    And user generate certificates for metal purchase
    And user clicks on Metal Cancel button
    Then available details should be removed
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15809: Validation of error message at <ApplicationStage> on selection of metal purchase not metal sell
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user clicks on metal purchase button
    And user clicks on move to next stage for error message validation
    And user reads data from the excel file "post_approval.xlsx" under sheet "metalAllocation" and row 1
    Then user should be able to get errorMessage on metal allocation section
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15810: Validate <fieldName> at <ApplicationStage> for Metal Purchase And Sell on PDOC stage after metal sell
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user clicks on metal purchase button
    And user clicks on metal sell button
    Then "<fieldName>" button is "<enabled_disabled>"
    Examples:
      | fieldName                       | enabled_disabled | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | Metal Sell                      | disabled         | <ApplicationStage> | <ProductType> | <ApplicantType> | metals   |     |
      | View Sell Details               | enabled          | <ApplicationStage> | <ProductType> | <ApplicantType> | metals   |     |
      | metal sell generate certificate | enabled          | <ApplicationStage> | <ProductType> | <ApplicantType> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15811: Visibility of <fieldName> at <ApplicationStage> on selection of view details section for metal sell
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    And user clicks on metal purchase button
    And user clicks on metal sell button
    And user click on "<fieldName>" button
    Then additional details window is displayed for "<fieldName>"
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | fieldName             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | view purchase details |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | view sell details     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15812: Data validation received in response will get stamped on <field_name> present in Additional details window in Metal sell section
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
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15813: Data validation received in response will get stamped on <field_name> present in Additional details window in Metal purchase section
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

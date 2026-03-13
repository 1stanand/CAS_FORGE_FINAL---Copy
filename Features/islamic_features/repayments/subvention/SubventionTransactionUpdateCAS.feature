@Epic-Loan_Application_Details
@AuthoredBy-aniket.tripathi
@NotImplemented
Feature: Subvention Transaction Update

  Background:
    Given user is on CAS Login Page
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

   # ${ProductType:["IHF"]}
   # ${ApplicationStage:["Sourcing"]}
   # ${ApplicationType:["Property Identified"]}
   # ${PropertyDetails:["Builder Property Under Construction", "Purchase a Plot", "Ready Property"]}
   # ${ApplicantType:["indiv"]}
   # PQM-15_CAS-199229_CAS-213388
   # PQM-16_CAS-199229_CAS-213388
   # PQM-18_CAS-199229_CAS-213388
   # PQM-21_CAS-199229_CAS-213388
  Scenario Outline: verify subvention related accordian and details for subvention at transaction for home finance
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user navigate to financial details tab
    And user navigates to property details page of "<ApplicationStage>"
    And user reads data from the excel file "<SubventionWB>" under sheet "<Subvention_Transaction>" and row <Subvention_Transaction_rowNum>
    And user fills the application type details for "<ApplicationType>"
    And user fills the property details for "<PropertyDetails>"
    And user fills the builder details for property details
    And user opens the subvention details accordian
    Then verify subvention related "<fieldName>" details present at property details
    Examples:
      | PropertyDetails   | ApplicationType   | fieldName             | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | SubventionWB    | Subvention_Transaction | Subvention_Transaction_rowNum |
      | <PropertyDetails> | <ApplicationType> | Subvention Applicable | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Subvention.xlsx | subvention_transaction | 0                             |
      | <PropertyDetails> | <ApplicationType> | Subvention Code       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Subvention.xlsx | subvention_transaction | 0                             |
      | <PropertyDetails> | <ApplicationType> | Subvention Basis      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Subvention.xlsx | subvention_transaction | 0                             |
      | <PropertyDetails> | <ApplicationType> | Subvention BP         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Subvention.xlsx | subvention_transaction | 0                             |
      | <PropertyDetails> | <ApplicationType> | Subvention Percentage | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Subvention.xlsx | subvention_transaction | 0                             |
      | <PropertyDetails> | <ApplicationType> | Subvention End Date   | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Subvention.xlsx | subvention_transaction | 0                             |

   # ${ProductType:[""]}
   # ${ApplicationStage:[""]}
   # ${ApplicantType:[""]}
   # PQM-24_CAS-199229_CAS-213388
  Scenario Outline: Subvention details should be populated successfully
    Given Punch an application and in sourcing add promocode details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When Go to asset details and select Manufacturer and verify subvention details
    Then Subvention details should be populated successfully

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

       # ${ProductType:[""]}
   # ${ApplicationStage:[""]}
   # ${ApplicantType:[""]}
   # PQM-25_CAS-199229_CAS-213388
  Scenario Outline: Subvention details should not be populated as promocode is not selected
    Given Punch an application and in sourcing do not add promocode details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When Go to asset details and select Manufacturer and verify subvention details
    Then Subvention details should not be populated as promocode is not selected

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

       # ${ProductType:[""]}
   # ${ApplicationStage:[""]}
   # ${ApplicantType:[""]}
   # PQM-30_CAS-199229_CAS-213388
  Scenario Outline: Subvention percentage field should be visible with prefilled data as 12%
    Given Punch an application and move till asset details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When Select Manufacturer radio button and verify Subvention percentage field
    Then Subvention percentage field should be visible with prefilled data as 12%

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

       # ${ProductType:[""]}
   # ${ApplicationStage:[""]}
   # ${ApplicantType:[""]}
   # PQM-36_CAS-199229_CAS-213388
  Scenario Outline: Subvention percentage field should be visible with prefilled data as 12%
    Given Punch an application and move till asset details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When Select Dealer radio button and verify Subvention percentage field
    Then Subvention percentage field should be visible with prefilled data as 12%

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

       # ${ProductType:[""]}
   # ${ApplicationStage:[""]}
   # ${ApplicantType:[""]}
   # PQM-42_CAS-199229_CAS-213388
  Scenario Outline: Subvention percent field should be non editable and by default 2% should be populated
    Given User is at asset details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When Open subvention details and verify subvention percent field
    Then Subvention percent field should be non editable and by default 2% should be populated

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

   # ${ProductType:[""]}
   # ${ApplicationStage:[""]}
   # ${ApplicantType:[""]}
   # PQM-46_CAS-199229_CAS-213388
  Scenario Outline: Subvention details should be visible
    Given User is at asset details
    When User selects manufacturer radio button and verifies subvention details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    Then Subvention details should be visible

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

       # ${ProductType:[""]}
   # ${ApplicationStage:[""]}
   # ${ApplicantType:[""]}
   # PQM-55_CAS-199229_CAS-213388
  Scenario Outline: Asset details should be saved successfully
    Given Open asset details
    When Select manufacturer and save subvention details and asset details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    Then Asset details should be saved successfully

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

       # ${ProductType:[""]}
   # ${ApplicationStage:[""]}
   # ${ApplicantType:[""]}
   # PQM-59_CAS-199229_CAS-213388
  Scenario Outline: Sub2 master details should be visible in subvention details as it was the latest master record to be updated
    Given Open asset details
    When Verify subvention data
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    Then Sub2 master details should be visible in subvention details as it was the latest master record to be updated

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

       # ${ProductType:[""]}
   # ${ApplicationStage:[""]}
   # ${ApplicantType:[""]}
   # PQM-60_CAS-199229_CAS-213388
  Scenario Outline: Subvention details should be visible in all the stages After credit approval subvention details should be in disabled mode
    Given Punch an application for consumer loan
    When fetch subvention details and save asset detailsNow traverse the application to different stages like DDE, Credit approval, reconsideration, recommendation, post approval, disbursal , disbursal author and verify subvention details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    Then Subvention details should be visible in all the stages After credit approval subvention details should be in disabled mode

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

       # ${ProductType:[""]}
   # ${ApplicationStage:[""]}
   # ${ApplicantType:[""]}
   # PQM-61_CAS-199229_CAS-213388
  Scenario Outline: Subvention details should be visible in non editable mode
    Given Open application in which subvention details are saved
    When Verify subvention details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    Then Subvention details should be visible in non editable mode

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

       # ${ProductType:[""]}
   # ${ApplicationStage:[""]}
   # ${ApplicantType:[""]}
   # PQM-66_CAS-199229_CAS-213388
  Scenario Outline: Subvention details section should be present
    Given Go to API Documentation
    When Open application create API and verify subvention details section
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    Then Subvention details section should be present

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

   # ${ProductType:[""]}
   # ${ApplicationStage:[""]}
   # ${ApplicantType:[""]}
   # PQM-85_CAS-199229_CAS-213388
  Scenario Outline: Subvention details should be retained and data should not be lost once application is send back
    Given Open application with subvention data at disbursal
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When Send back application from disbursal to dde Verify subvention details
    Then Subvention details should be retained and data should not be lost once application is send back

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

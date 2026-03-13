@Epic-CollateralDetails
@AuthoredBy-priyanshu.kashyap
@ImplementedBy-priyanshu.kashyap
@PQMStory
@Order
@Release
@Perishable

  #Story-CAS-113104_116530 , CAS-69553
Feature: CAS113104_116530_Fetch FD Enhancements

  @CMSModule
  # PQM-01_CAS-113104
  Scenario Outline: ACAUTOCAS-21186: user selects collateral type and subtype in CMS module with LogicalID <LogicalID>
    Given user is on CAS Login Page
    And user logged in "CMS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user starts creating application of logical id "<LogicalID>"
    When user navigates to create collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then set Application ID in the thread context
    Examples:
      | LogicalID     | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | CMS_113104_01 | collateral.xlsx | default            | 16                        |

  @CMSModule
    # PQM-01_CAS-113104
  Scenario Outline: ACAUTOCAS-21187: Collateral creation with fixed deposit subtype should exist in Cms LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "CollateralCms" logical id "<LogicalID>"
    When user logged in "CMS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then application should allow only the collateral type which is linked to the product
    Examples:
      | LogicalID     | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | CMS_113104_01 | collateral.xlsx | default            | 16                        |

  @CMSModule
   # PQM-02_CAS-113104, 04_CAS-69553
  Scenario Outline: ACAUTOCAS-21188: Verify mandatory and non mandatory fields on fixed deposit collateral screen for <CollateralSubtype> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "CollateralCms" logical id "<LogicalID>"
    And user logged in "CMS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on add nominee on nominee details fd cms
    Then user should be able to see mandatory field tagging in collateral details:
      | Fields                                     | Mandatory |
      | Issuer Bank                                | Yes       |
      | Fixed Deposit Number                       | Yes       |
      | Name of Fixed Deposit Holder               | Yes       |
      | Maturity date                              | Yes       |
      | Deposit Amount                             | Yes       |
      | Nominee Name                               | Yes       |
      | Nominee Relationship                       | Yes       |
      | Nominee Gender                             | Yes       |
      | Date Of Birth                              | Yes       |
      | Maturity Amount                            | No        |
      | Account Number                             | No        |
      | Rate Of Interest                           | No        |
      | Percentage Of Entitlement(Nominee Details) | Yes       |
    Examples:
      | LogicalID     | CollateralSubtype |
      | CMS_113104_01 | Fixed Deposit     |

  @CMSModule
  # PQM-02_CAS-113104, 04_CAS-69553
  Scenario Outline: ACAUTOCAS-21189: Verify field Fixed Deposit Number and Issuer Bank mandatory on collateral dedupe check <CollateralSubtype> and <Description> for <Fields> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "CollateralCms" logical id "<LogicalID>"
    And user logged in "CMS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user fills mandatory fields of collateral details for fixed Deposit
    And user checks for duplicate collateral
    Then user is able to validate the addition of new collateral for "<Validity>" data
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Description                  | Fields               | Validity | LogicalID     | CollateralSubtype |
      | collateral.xlsx | fixed_deposit           | 344                            | without Issuer Bank          | Issuer Bank          | invalid  | CMS_113104_01 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 345                            | without Fixed Deposit Number | Fixed Deposit Number | invalid  | CMS_113104_01 | Fixed Deposit     |

  @CMSModule
  # PQM-02_CAS-113104, 04_CAS-69553
  Scenario Outline: ACAUTOCAS-21190: Verify mandatory fields on fixed deposit collateral screen and save for <CollateralSubtype> and <Description> for <FieldName> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "CollateralCms" logical id "<LogicalID>"
    And user logged in "CMS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user navigates to create collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user enters nominee detils in cms
    And user checks the duplicates on collateral dedupe check in CMS
    And user click on save collateral in CMS
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Description                                        | FieldName                                      | Throws_NotThrows                | LogicalID     | CollateralSubtype |
      | collateral.xlsx | fixed_deposit           | 367                            | without Name of Fixed Deposit Holder               | Name of Fixed Deposit Holder                   | throws error with error message | CMS_113104_01 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 368                            | without Maturity Date                              | Maturity Date(Fixed Deposit)                   | throws error with error message | CMS_113104_01 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 369                            | without Deposit Amount                             | Deposit Amount                                 | throws error with error message | CMS_113104_01 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 370                            | without Nominee Name                               | Nominee Name(Fixed Deposit)                    | throws error with error message | CMS_113104_01 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 371                            | without Nominee Relationship                       | Nominee Relationship                           | throws error with error message | CMS_113104_01 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 372                            | without Nominee Gender                             | Nominee Gender                                 | throws error with error message | CMS_113104_01 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 373                            | without Date Of Birth                              | Date Of Birth(Nominee Details)                 | throws error with error message | CMS_113104_01 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 374                            | without Percentage Of Entitlement(Nominee Details) | Percentage Of Entitlement(Nominee Details Tab) | throws error with error message | CMS_113104_01 | Fixed Deposit     |


  @CMSModule
  # PQM-02_CAS-113104, 04_CAS-69553
  Scenario Outline: Verify non mandatory fields on fixed deposit collateral screen and save for <CollateralSubtype> and <Description> for <Fields> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "CollateralCms" logical id "<LogicalID>"
    And user logged in "CMS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user navigates to create collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user enters nominee detils in cms
    And user checks the duplicates on collateral dedupe check in CMS
    And user click on save collateral in CMS
    Then user validate the addition of new collateral in CMS
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Description              | Fields           |LogicalID     | CollateralSubtype |
      | collateral.xlsx | fixed_deposit           | 355                            | without Account Number   | Account Number   |CMS_113104_01 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 356                            | without Rate Of Interest | Rate Of Interest |CMS_113104_01 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 354                            | without Maturity Amount  | Maturity Amount  |CMS_113104_01 | Fixed Deposit     |

  @CMSModule
   # PQM-02_CAS-113104
  Scenario Outline: ACAUTOCAS-21191: Validation of mandatory field - value available for pledge in lien details LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "CollateralCms" logical id "<LogicalID>"
    And user logged in "CMS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user navigates to create collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user checks the duplicates on collateral dedupe check in CMS
    And user click on save collateral in CMS
    And user opened lien details tab
    And user reads data from the excel file "<LienDetailsWB>" under sheet "<LienDetails_homePage>" and row <LienDetails_homePage_rowNum>
    And user fills lien details home page
    Then "<DependentFieldMandatory>" in lien detail validate successfully
    Examples:
      | LogicalID     | DependentFieldMandatory                        | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | LienDetailsWB   | LienDetails_homePage | LienDetails_homePage_rowNum |
      | CMS_113104_01 | Value Available for Pledge (Lien Details Home) | collateral.xlsx | fixed_deposit           | 1                              | collateral.xlsx | lien_details_home    | 0                           |

  @CMSModule
       # PQM-03_CAS-113104
  Scenario Outline: ACAUTOCAS-21192: Fetch details button should be present and shall be authority based LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "CollateralCms" logical id "<LogicalID>"
    And user logged in "CMS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on collateral details in cms
    Then fetch details button should be available based on authority should be "<AddedNotAdded>"
    Examples:
      | LogicalID     | AddedNotAdded |
      | CMS_113104_01 | Added         |

  @CMSModule
   # PQM-04_CAS-113104
  Scenario Outline: ACAUTOCAS-21193: Bank and Fd number added with unique combination all other details should fetch from third party LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "CollateralCms" logical id "<LogicalID>"
    And user logged in "CMS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to create collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills issuer bank and unique fixed deposit number
    And user click on fetch fd details
    Then details should get fetched from third party in CMS with new global collateral number
    Examples:
      | LogicalID     | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum |
      | CMS_113104_01 | collateral.xlsx | fixed_deposit           | 357                            |

  @CMSModule
   # PQM-07_CAS-113104
  Scenario Outline: ACAUTOCAS-21194: Global collateral number should be same as in previous test case only data should get updated LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "CollateralCms" logical id "<LogicalID>"
    And user logged in "CMS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user navigates to create collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills same issuer bank and fixed deposit number as filled earlier
    And user click on fetch fd details
    Then user gets same global collateral number as in previous test case
    Examples:
      | LogicalID     | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum |
      | CMS_113104_01 | collateral.xlsx | fixed_deposit           | 357                            |

  @CMSModule
  # PQM-05_CAS-113104
  Scenario Outline: ACAUTOCAS-21195: Lien details should be available with data fetched from third party LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "CollateralCms" logical id "<LogicalID>"
    When user logged in "CMS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opened lien details tab
    And user open Lien Details accordion
    Then lien details should be available with data fetched from third party
    Examples:
      | LogicalID     |
      | CMS_113104_01 |

  @CMSModule
  # PQM-09_CAS-69553
  Scenario Outline: ACAUTOCAS-21196: Maturity amount greater than the deposit amount on fixed deposit collateral screen IN CMS LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "CollateralCms" logical id "<LogicalID>"
    And user logged in "CMS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user navigates to create collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for fixed deposit in cms
    And user checks the duplicates on collateral dedupe check in CMS
    And user saves collateral data
    Then user is able to validate the addition of new collateral for "<Validity>" data
    Examples:
      | LogicalID     | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Validity |
      | CMS_113104_01 | collateral.xlsx | fixed_deposit           | 400                            | invalid  |

  @CMSModule
       # PQM-03_CAS-113104
  Scenario Outline: ACAUTOCAS-21197: Fetch details button should be present and shall be authority based having no authority LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "CollateralCms" logical id "<LogicalID>"
    And user logged in "CMS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user logout from CAS
    And user logged in "CMS" with username and password present in "LoginDetailsCAS.xlsx" under "LimitedAccessUser" and 1
    When user navigates to create collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    Then fetch details button should be available based on authority should be "<AddedNotAdded>"
    Examples:
      | LogicalID     | AddedNotAdded | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum |
      | CMS_113104_01 | notAdded      | collateral.xlsx | fixed_deposit           | 359                            |


#-----------------------------CAS------------------------CAS-------------------------------CAS---------------------
  @STP @Collateral
  Scenario Outline: ACAUTOCAS-21198: pick STP application of <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user starts creating application of logical id "<LogicalID>"
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<category>" with key "<key>"
    Then set Application ID in the thread context
    @DDE
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | category | key | ApplicantType |
      | HL00CAS_113104_Fetch_Fd0  | HL          | dde              |          |     | indiv         |
      | PL00CAS_113104_Fetch_Fd1  | PL          | dde              |          |     | indiv         |
      | MAL00CAS_113104_Fetch_Fd2 | MAL         | dde              |          |     | indiv         |

    @CreditApproval
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | category | key | ApplicantType |
      | HL00CAS_113104_Fetch_Fd3  | HL          | Credit Approval  |          |     | indiv         |
      | PL00CAS_113104_Fetch_Fd4  | PL          | Credit Approval  |          |     | indiv         |
      | MAL00CAS_113104_Fetch_Fd5 | MAL         | Credit Approval  |          |     | indiv         |

    @Reconsideration
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | category | key | ApplicantType |
      | HL00CAS_113104_Fetch_Fd6  | HL          | Reconsideration  |          |     | indiv         |
      | PL00CAS_113104_Fetch_Fd7  | PL          | Reconsideration  |          |     | indiv         |
      | MAL00CAS_113104_Fetch_Fd8 | MAL         | Reconsideration  |          |     | indiv         |

    @Recommendation
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | category | key | ApplicantType |
      | HL00CAS_113104_Fetch_Fd9   | HL          | Recommendation   |          |     | indiv         |
      | PL00CAS_113104_Fetch_Fd10  | PL          | Recommendation   |          |     | indiv         |
      | MAL00CAS_113104_Fetch_Fd11 | MAL         | Recommendation   |          |     | indiv         |

    @Disbursal
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | category | key | ApplicantType |
      | HL00CAS_113104_Fetch_Fd12  | HL          | Disbursal        |          |     | indiv         |
      | PL00CAS_113104_Fetch_Fd13  | PL          | Disbursal        |          |     | indiv         |
      | MAL00CAS_113104_Fetch_Fd14 | MAL         | Disbursal        |          |     | indiv         |

#PQM-01_CAS-113104
  @Collateral
  Scenario Outline: ACAUTOCAS-21187: Collateral creation with fixed deposit subtype should exist in LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then application should allow only the collateral type which is linked to the product

    @DDE
    Examples:
      | LogicalID                 | ProductType | CollateralWB    | Collateral_default | Collateral_default_rowNum | ApplicationStage | category | key | ApplicantType |
      | HL00CAS_113104_Fetch_Fd0  | HL          | collateral.xlsx | default            | 16                        | dde              |          |     | indiv         |
      | PL00CAS_113104_Fetch_Fd1  | PL          | collateral.xlsx | default            | 16                        | dde              |          |     | indiv         |
      | MAL00CAS_113104_Fetch_Fd2 | MAL         | collateral.xlsx | default            | 16                        | dde              |          |     | indiv         |

    @CreditApproval
    Examples:
      | LogicalID                 | ProductType | CollateralWB    | Collateral_default | Collateral_default_rowNum | ApplicationStage | category | key | ApplicantType |
      | HL00CAS_113104_Fetch_Fd3  | HL          | collateral.xlsx | default            | 16                        | Credit Approval  |          |     | indiv         |
      | PL00CAS_113104_Fetch_Fd4  | PL          | collateral.xlsx | default            | 16                        | Credit Approval  |          |     | indiv         |
      | MAL00CAS_113104_Fetch_Fd5 | MAL         | collateral.xlsx | default            | 16                        | Credit Approval  |          |     | indiv         |

    @Reconsideration
    Examples:
      | LogicalID                 | ProductType | CollateralWB    | Collateral_default | Collateral_default_rowNum | ApplicationStage | category | key | ApplicantType |
      | HL00CAS_113104_Fetch_Fd6  | HL          | collateral.xlsx | default            | 16                        | Reconsideration  |          |     | indiv         |
      | PL00CAS_113104_Fetch_Fd7  | PL          | collateral.xlsx | default            | 16                        | Reconsideration  |          |     | indiv         |
      | MAL00CAS_113104_Fetch_Fd8 | MAL         | collateral.xlsx | default            | 16                        | Reconsideration  |          |     | indiv         |

    @Recommendation
    Examples:
      | LogicalID                  | ProductType | CollateralWB    | Collateral_default | Collateral_default_rowNum | ApplicationStage | category | key | ApplicantType |
      | HL00CAS_113104_Fetch_Fd9   | HL          | collateral.xlsx | default            | 16                        | Recommendation   |          |     | indiv         |
      | PL00CAS_113104_Fetch_Fd10  | PL          | collateral.xlsx | default            | 16                        | Recommendation   |          |     | indiv         |
      | MAL00CAS_113104_Fetch_Fd11 | MAL         | collateral.xlsx | default            | 16                        | Recommendation   |          |     | indiv         |

    @Disbursal
    Examples:
      | LogicalID                  | ProductType | CollateralWB    | Collateral_default | Collateral_default_rowNum | ApplicationStage | category | key | ApplicantType |
      | HL00CAS_113104_Fetch_Fd12  | HL          | collateral.xlsx | default            | 16                        | Disbursal        |          |     | indiv         |
      | PL00CAS_113104_Fetch_Fd13  | PL          | collateral.xlsx | default            | 16                        | Disbursal        |          |     | indiv         |
      | MAL00CAS_113104_Fetch_Fd14 | MAL         | collateral.xlsx | default            | 16                        | Disbursal        |          |     | indiv         |

  # PQM-4_CAS-69553
  @Collateral
  Scenario Outline: ACAUTOCAS-21188: Verify mandatory and non mandatory fields on fixed deposit collateral screen for <CollateralSubtype> in Cas LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on add nominee on nominee details
    Then user should be able to see mandatory field tagging in collateral details:
      | Fields                                     | Mandatory |
      | Issuer Bank                                | Yes       |
      | Fixed Deposit Number                       | Yes       |
      | Name of Fixed Deposit Holder               | Yes       |
      | Maturity date                              | Yes       |
      | Deposit Amount                             | Yes       |
      | Nominee Name                               | Yes       |
      | Nominee Relationship                       | Yes       |
      | Nominee Gender                             | Yes       |
      | Date Of Birth                              | Yes       |
      | Maturity Amount                            | No        |
      | Account Number                             | No        |
      | Rate Of Interest                           | No        |
      | Percentage Of Entitlement(Nominee Details) | Yes       |
    @DDE
    Examples:
      | LogicalID                 | ProductType | CollateralSubtype |
      | HL00CAS_113104_Fetch_Fd0  | HL          | Fixed Deposit     |
      | PL00CAS_113104_Fetch_Fd1  | PL          | Fixed Deposit     |
      | MAL00CAS_113104_Fetch_Fd2 | MAL         | Fixed Deposit     |

    @CreditApproval
    Examples:
      | LogicalID                 | ProductType | CollateralSubtype |
      | HL00CAS_113104_Fetch_Fd3  | HL          | Fixed Deposit     |
      | PL00CAS_113104_Fetch_Fd4  | PL          | Fixed Deposit     |
      | MAL00CAS_113104_Fetch_Fd5 | MAL         | Fixed Deposit     |

    @Reconsideration
    Examples:
      | LogicalID                 | ProductType | CollateralSubtype |
      | HL00CAS_113104_Fetch_Fd6  | HL          | Fixed Deposit     |
      | PL00CAS_113104_Fetch_Fd7  | PL          | Fixed Deposit     |
      | MAL00CAS_113104_Fetch_Fd8 | MAL         | Fixed Deposit     |

    @Recommendation
    Examples:
      | LogicalID                  | ProductType | CollateralSubtype |
      | HL00CAS_113104_Fetch_Fd9   | HL          | Fixed Deposit     |
      | PL00CAS_113104_Fetch_Fd10  | PL          | Fixed Deposit     |
      | MAL00CAS_113104_Fetch_Fd11 | MAL         | Fixed Deposit     |

    @Disbursal
    Examples:
      | LogicalID                  | ProductType | CollateralSubtype |
      | HL00CAS_113104_Fetch_Fd12  | HL          | Fixed Deposit     |
      | PL00CAS_113104_Fetch_Fd13  | PL          | Fixed Deposit     |
      | MAL00CAS_113104_Fetch_Fd14 | MAL         | Fixed Deposit     |


      #PQM-4_CAS-69553, 2_CAS-22772, 3_CAS-22772
  @Collateral
  Scenario Outline: ACAUTOCAS-21199: Verify field Fixed Deposit Number and Issuer Bank mandatory on collateral dedupe check <CollateralSubtype> <Description> for <Fields> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user is on home page of "<ApplicationStage>"
    And user selects ok on warning pop up
    When user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user checks for duplicate collateral
    Then user is able to validate the addition of new collateral for "<Validity>" data
    @DDE
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType | Description                  | Fields               | Validity | LogicalID                 | ApplicationStage | CollateralSubtype |
      | collateral.xlsx | fixed_deposit           | 344                            | HL          | without Issuer Bank          | Issuer Bank          | invalid  | HL00CAS_113104_Fetch_Fd0  | dde              | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 344                            | PL          | without Issuer Bank          | Issuer Bank          | invalid  | PL00CAS_113104_Fetch_Fd1  | dde              | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 344                            | MAL         | without Issuer Bank          | Issuer Bank          | invalid  | MAL00CAS_113104_Fetch_Fd2 | dde              | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 345                            | HL          | without Fixed Deposit Number | Fixed Deposit Number | invalid  | HL00CAS_113104_Fetch_Fd0  | dde              | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 345                            | PL          | without Fixed Deposit Number | Fixed Deposit Number | invalid  | PL00CAS_113104_Fetch_Fd1  | dde              | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 345                            | MAL         | without Fixed Deposit Number | Fixed Deposit Number | invalid  | MAL00CAS_113104_Fetch_Fd2 | dde              | Fixed Deposit     |

    @CreditApproval
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType | Description                  | Fields               | Validity | LogicalID                 | ApplicationStage | CollateralSubtype |
      | collateral.xlsx | fixed_deposit           | 344                            | HL          | without Issuer Bank          | Issuer Bank          | invalid  | HL00CAS_113104_Fetch_Fd3  | Credit Approval  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 344                            | PL          | without Issuer Bank          | Issuer Bank          | invalid  | PL00CAS_113104_Fetch_Fd4  | Credit Approval  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 344                            | MAL         | without Issuer Bank          | Issuer Bank          | invalid  | MAL00CAS_113104_Fetch_Fd5 | Credit Approval  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 345                            | HL          | without Fixed Deposit Number | Fixed Deposit Number | invalid  | HL00CAS_113104_Fetch_Fd3  | Credit Approval  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 345                            | PL          | without Fixed Deposit Number | Fixed Deposit Number | invalid  | PL00CAS_113104_Fetch_Fd4  | Credit Approval  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 345                            | MAL         | without Fixed Deposit Number | Fixed Deposit Number | invalid  | MAL00CAS_113104_Fetch_Fd5 | Credit Approval  | Fixed Deposit     |

    @Reconsideration
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType | Description                  | Fields               | Validity | LogicalID                 | ApplicationStage | CollateralSubtype |
      | collateral.xlsx | fixed_deposit           | 344                            | HL          | without Issuer Bank          | Issuer Bank          | invalid  | HL00CAS_113104_Fetch_Fd6  | Reconsideration  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 344                            | PL          | without Issuer Bank          | Issuer Bank          | invalid  | PL00CAS_113104_Fetch_Fd7  | Reconsideration  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 344                            | MAL         | without Issuer Bank          | Issuer Bank          | invalid  | MAL00CAS_113104_Fetch_Fd8 | Reconsideration  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 345                            | HL          | without Fixed Deposit Number | Fixed Deposit Number | invalid  | HL00CAS_113104_Fetch_Fd6  | Reconsideration  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 345                            | PL          | without Fixed Deposit Number | Fixed Deposit Number | invalid  | PL00CAS_113104_Fetch_Fd7  | Reconsideration  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 345                            | MAL         | without Fixed Deposit Number | Fixed Deposit Number | invalid  | MAL00CAS_113104_Fetch_Fd8 | Reconsideration  | Fixed Deposit     |

    @Recommendation
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType | Description                  | Fields               | Validity | LogicalID                  | ApplicationStage | CollateralSubtype |
      | collateral.xlsx | fixed_deposit           | 344                            | HL          | without Issuer Bank          | Issuer Bank          | invalid  | HL00CAS_113104_Fetch_Fd9   | Recommendation   | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 344                            | PL          | without Issuer Bank          | Issuer Bank          | invalid  | PL00CAS_113104_Fetch_Fd10  | Recommendation   | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 344                            | MAL         | without Issuer Bank          | Issuer Bank          | invalid  | MAL00CAS_113104_Fetch_Fd11 | Recommendation   | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 345                            | HL          | without Fixed Deposit Number | Fixed Deposit Number | invalid  | HL00CAS_113104_Fetch_Fd9   | Recommendation   | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 345                            | PL          | without Fixed Deposit Number | Fixed Deposit Number | invalid  | PL00CAS_113104_Fetch_Fd10  | Recommendation   | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 345                            | MAL         | without Fixed Deposit Number | Fixed Deposit Number | invalid  | MAL00CAS_113104_Fetch_Fd11 | Recommendation   | Fixed Deposit     |

    @Disbursal
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType | Description                  | Fields               | Validity | LogicalID                  | ApplicationStage | CollateralSubtype |
      | collateral.xlsx | fixed_deposit           | 344                            | HL          | without Issuer Bank          | Issuer Bank          | invalid  | HL00CAS_113104_Fetch_Fd12  | Disbursal        | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 344                            | PL          | without Issuer Bank          | Issuer Bank          | invalid  | PL00CAS_113104_Fetch_Fd13  | Disbursal        | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 344                            | MAL         | without Issuer Bank          | Issuer Bank          | invalid  | MAL00CAS_113104_Fetch_Fd14 | Disbursal        | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 345                            | HL          | without Fixed Deposit Number | Fixed Deposit Number | invalid  | HL00CAS_113104_Fetch_Fd12  | Disbursal        | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 345                            | PL          | without Fixed Deposit Number | Fixed Deposit Number | invalid  | PL00CAS_113104_Fetch_Fd13  | Disbursal        | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 345                            | MAL         | without Fixed Deposit Number | Fixed Deposit Number | invalid  | MAL00CAS_113104_Fetch_Fd14 | Disbursal        | Fixed Deposit     |


  #PQM-04_CAS-69553, 2_CAS-22772, 3_CAS-22772
  @Collateral
  Scenario Outline: ACAUTOCAS-21200: Verify mandatory fields on fixed deposit collateral screen and save for <CollateralSubtype> and <Description> for <FieldName>  LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user is on home page of "<ApplicationStage>"
    And user selects ok on warning pop up
    When user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user enters nominee details
    And user checks the duplicates on collateral dedupe check
    And user saves the data
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    @DDE
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Description                                        | FieldName                                      | Throws_NotThrows                | ProductType | ApplicationStage | LogicalID                 | CollateralSubtype |
      | collateral.xlsx | fixed_deposit           | 367                            | without Name of Fixed Deposit Holder               | Name of Fixed Deposit Holder                   | throws error with error message | HL          | DDE              | HL00CAS_113104_Fetch_Fd0  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 367                            | without Name of Fixed Deposit Holder               | Name of Fixed Deposit Holder                   | throws error with error message | PL          | DDE              | PL00CAS_113104_Fetch_Fd1  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 367                            | without Name of Fixed Deposit Holder               | Name of Fixed Deposit Holder                   | throws error with error message | MAL         | DDE              | MAL00CAS_113104_Fetch_Fd2 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 368                            | without Maturity Date                              | Maturity Date(Fixed Deposit)                   | throws error with error message | HL          | DDE              | HL00CAS_113104_Fetch_Fd0  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 368                            | without Maturity Date                              | Maturity Date(Fixed Deposit)                   | throws error with error message | PL          | DDE              | PL00CAS_113104_Fetch_Fd1  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 368                            | without Maturity Date                              | Maturity Date(Fixed Deposit)                   | throws error with error message | MAL         | DDE              | MAL00CAS_113104_Fetch_Fd2 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 369                            | without Deposit Amount                             | Deposit Amount                                 | throws error with error message | HL          | DDE              | HL00CAS_113104_Fetch_Fd0  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 369                            | without Deposit Amount                             | Deposit Amount                                 | throws error with error message | PL          | DDE              | PL00CAS_113104_Fetch_Fd1  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 369                            | without Deposit Amount                             | Deposit Amount                                 | throws error with error message | MAL         | DDE              | MAL00CAS_113104_Fetch_Fd2 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 370                            | without Nominee Name                               | Nominee Name(Fixed Deposit)                    | throws error with error message | HL          | DDE              | HL00CAS_113104_Fetch_Fd0  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 370                            | without Nominee Name                               | Nominee Name(Fixed Deposit)                    | throws error with error message | PL          | DDE              | PL00CAS_113104_Fetch_Fd1  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 370                            | without Nominee Name                               | Nominee Name(Fixed Deposit)                    | throws error with error message | MAL         | DDE              | MAL00CAS_113104_Fetch_Fd2 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 371                            | without Nominee Relationship                       | Nominee Relationship                           | throws error with error message | HL          | DDE              | HL00CAS_113104_Fetch_Fd0  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 371                            | without Nominee Relationship                       | Nominee Relationship                           | throws error with error message | PL          | DDE              | PL00CAS_113104_Fetch_Fd1  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 371                            | without Nominee Relationship                       | Nominee Relationship                           | throws error with error message | MAL         | DDE              | MAL00CAS_113104_Fetch_Fd2 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 372                            | without Nominee Gender                             | Nominee Gender                                 | throws error with error message | HL          | DDE              | HL00CAS_113104_Fetch_Fd0  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 372                            | without Nominee Gender                             | Nominee Gender                                 | throws error with error message | PL          | DDE              | PL00CAS_113104_Fetch_Fd1  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 372                            | without Nominee Gender                             | Nominee Gender                                 | throws error with error message | MAL         | DDE              | MAL00CAS_113104_Fetch_Fd2 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 373                            | without Date Of Birth                              | Date Of Birth(Nominee Details)                 | throws error with error message | HL          | DDE              | HL00CAS_113104_Fetch_Fd0  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 373                            | without Date Of Birth                              | Date Of Birth(Nominee Details)                 | throws error with error message | PL          | DDE              | PL00CAS_113104_Fetch_Fd1  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 373                            | without Date Of Birth                              | Date Of Birth(Nominee Details)                 | throws error with error message | MAL         | DDE              | MAL00CAS_113104_Fetch_Fd2 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 374                            | without Percentage Of Entitlement(Nominee Details) | Percentage Of Entitlement(Nominee Details Tab) | throws error with error message | HL          | DDE              | HL00CAS_113104_Fetch_Fd0  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 374                            | without Percentage Of Entitlement(Nominee Details) | Percentage Of Entitlement(Nominee Details Tab) | throws error with error message | PL          | DDE              | PL00CAS_113104_Fetch_Fd1  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 374                            | without Percentage Of Entitlement(Nominee Details) | Percentage Of Entitlement(Nominee Details Tab) | throws error with error message | MAL         | DDE              | MAL00CAS_113104_Fetch_Fd2 | Fixed Deposit     |

    @CreditApproval
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Description                                        | FieldName                                      | Throws_NotThrows                | ProductType | ApplicationStage | LogicalID                 | CollateralSubtype |
      | collateral.xlsx | fixed_deposit           | 367                            | without Name of Fixed Deposit Holder               | Name of Fixed Deposit Holder                   | throws error with error message | HL          | Credit Approval  | HL00CAS_113104_Fetch_Fd3  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 367                            | without Name of Fixed Deposit Holder               | Name of Fixed Deposit Holder                   | throws error with error message | PL          | Credit Approval  | PL00CAS_113104_Fetch_Fd4  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 367                            | without Name of Fixed Deposit Holder               | Name of Fixed Deposit Holder                   | throws error with error message | MAL         | Credit Approval  | MAL00CAS_113104_Fetch_Fd5 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 368                            | without Maturity Date                              | Maturity Date(Fixed Deposit)                   | throws error with error message | HL          | Credit Approval  | HL00CAS_113104_Fetch_Fd3  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 368                            | without Maturity Date                              | Maturity Date(Fixed Deposit)                   | throws error with error message | PL          | Credit Approval  | PL00CAS_113104_Fetch_Fd4  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 368                            | without Maturity Date                              | Maturity Date(Fixed Deposit)                   | throws error with error message | MAL         | Credit Approval  | MAL00CAS_113104_Fetch_Fd5 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 369                            | without Deposit Amount                             | Deposit Amount                                 | throws error with error message | HL          | Credit Approval  | HL00CAS_113104_Fetch_Fd3  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 369                            | without Deposit Amount                             | Deposit Amount                                 | throws error with error message | PL          | Credit Approval  | PL00CAS_113104_Fetch_Fd4  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 369                            | without Deposit Amount                             | Deposit Amount                                 | throws error with error message | MAL         | Credit Approval  | MAL00CAS_113104_Fetch_Fd5 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 370                            | without Nominee Name                               | Nominee Name(Fixed Deposit)                    | throws error with error message | HL          | Credit Approval  | HL00CAS_113104_Fetch_Fd3  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 370                            | without Nominee Name                               | Nominee Name(Fixed Deposit)                    | throws error with error message | PL          | Credit Approval  | PL00CAS_113104_Fetch_Fd4  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 370                            | without Nominee Name                               | Nominee Name(Fixed Deposit)                    | throws error with error message | MAL         | Credit Approval  | MAL00CAS_113104_Fetch_Fd5 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 371                            | without Nominee Relationship                       | Nominee Relationship                           | throws error with error message | HL          | Credit Approval  | HL00CAS_113104_Fetch_Fd3  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 371                            | without Nominee Relationship                       | Nominee Relationship                           | throws error with error message | PL          | Credit Approval  | PL00CAS_113104_Fetch_Fd4  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 371                            | without Nominee Relationship                       | Nominee Relationship                           | throws error with error message | MAL         | Credit Approval  | MAL00CAS_113104_Fetch_Fd5 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 372                            | without Nominee Gender                             | Nominee Gender                                 | throws error with error message | HL          | Credit Approval  | HL00CAS_113104_Fetch_Fd3  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 372                            | without Nominee Gender                             | Nominee Gender                                 | throws error with error message | PL          | Credit Approval  | PL00CAS_113104_Fetch_Fd4  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 372                            | without Nominee Gender                             | Nominee Gender                                 | throws error with error message | MAL         | Credit Approval  | MAL00CAS_113104_Fetch_Fd5 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 373                            | without Date Of Birth                              | Date Of Birth(Nominee Details)                 | throws error with error message | HL          | Credit Approval  | HL00CAS_113104_Fetch_Fd3  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 373                            | without Date Of Birth                              | Date Of Birth(Nominee Details)                 | throws error with error message | PL          | Credit Approval  | PL00CAS_113104_Fetch_Fd4  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 373                            | without Date Of Birth                              | Date Of Birth(Nominee Details)                 | throws error with error message | MAL         | Credit Approval  | MAL00CAS_113104_Fetch_Fd5 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 374                            | without Percentage Of Entitlement(Nominee Details) | Percentage Of Entitlement(Nominee Details Tab) | throws error with error message | HL          | Credit Approval  | HL00CAS_113104_Fetch_Fd3  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 374                            | without Percentage Of Entitlement(Nominee Details) | Percentage Of Entitlement(Nominee Details Tab) | throws error with error message | PL          | Credit Approval  | PL00CAS_113104_Fetch_Fd4  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 374                            | without Percentage Of Entitlement(Nominee Details) | Percentage Of Entitlement(Nominee Details Tab) | throws error with error message | MAL         | Credit Approval  | MAL00CAS_113104_Fetch_Fd5 | Fixed Deposit     |


    @Reconsideration
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Description                                        | FieldName                                      | Throws_NotThrows                | ProductType | ApplicationStage | LogicalID                 | CollateralSubtype |
      | collateral.xlsx | fixed_deposit           | 367                            | without Name of Fixed Deposit Holder               | Name of Fixed Deposit Holder                   | throws error with error message | HL          | Reconsideration  | HL00CAS_113104_Fetch_Fd6  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 367                            | without Name of Fixed Deposit Holder               | Name of Fixed Deposit Holder                   | throws error with error message | PL          | Reconsideration  | PL00CAS_113104_Fetch_Fd7  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 367                            | without Name of Fixed Deposit Holder               | Name of Fixed Deposit Holder                   | throws error with error message | MAL         | Reconsideration  | MAL00CAS_113104_Fetch_Fd8 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 368                            | without Maturity Date                              | Maturity Date(Fixed Deposit)                   | throws error with error message | HL          | Reconsideration  | HL00CAS_113104_Fetch_Fd6  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 368                            | without Maturity Date                              | Maturity Date(Fixed Deposit)                   | throws error with error message | PL          | Reconsideration  | PL00CAS_113104_Fetch_Fd7  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 368                            | without Maturity Date                              | Maturity Date(Fixed Deposit)                   | throws error with error message | MAL         | Reconsideration  | MAL00CAS_113104_Fetch_Fd8 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 369                            | without Deposit Amount                             | Deposit Amount                                 | throws error with error message | HL          | Reconsideration  | HL00CAS_113104_Fetch_Fd6  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 369                            | without Deposit Amount                             | Deposit Amount                                 | throws error with error message | PL          | Reconsideration  | PL00CAS_113104_Fetch_Fd7  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 369                            | without Deposit Amount                             | Deposit Amount                                 | throws error with error message | MAL         | Reconsideration  | MAL00CAS_113104_Fetch_Fd8 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 370                            | without Nominee Name                               | Nominee Name(Fixed Deposit)                    | throws error with error message | HL          | Reconsideration  | HL00CAS_113104_Fetch_Fd6  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 370                            | without Nominee Name                               | Nominee Name(Fixed Deposit)                    | throws error with error message | PL          | Reconsideration  | PL00CAS_113104_Fetch_Fd7  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 370                            | without Nominee Name                               | Nominee Name(Fixed Deposit)                    | throws error with error message | MAL         | Reconsideration  | MAL00CAS_113104_Fetch_Fd8 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 371                            | without Nominee Relationship                       | Nominee Relationship                           | throws error with error message | HL          | Reconsideration  | HL00CAS_113104_Fetch_Fd6  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 371                            | without Nominee Relationship                       | Nominee Relationship                           | throws error with error message | PL          | Reconsideration  | PL00CAS_113104_Fetch_Fd7  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 371                            | without Nominee Relationship                       | Nominee Relationship                           | throws error with error message | MAL         | Reconsideration  | MAL00CAS_113104_Fetch_Fd8 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 372                            | without Nominee Gender                             | Nominee Gender                                 | throws error with error message | HL          | Reconsideration  | HL00CAS_113104_Fetch_Fd6  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 372                            | without Nominee Gender                             | Nominee Gender                                 | throws error with error message | PL          | Reconsideration  | PL00CAS_113104_Fetch_Fd7  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 372                            | without Nominee Gender                             | Nominee Gender                                 | throws error with error message | MAL         | Reconsideration  | MAL00CAS_113104_Fetch_Fd8 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 373                            | without Date Of Birth                              | Date Of Birth(Nominee Details)                 | throws error with error message | HL          | Reconsideration  | HL00CAS_113104_Fetch_Fd6  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 373                            | without Date Of Birth                              | Date Of Birth(Nominee Details)                 | throws error with error message | PL          | Reconsideration  | PL00CAS_113104_Fetch_Fd7  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 373                            | without Date Of Birth                              | Date Of Birth(Nominee Details)                 | throws error with error message | MAL         | Reconsideration  | MAL00CAS_113104_Fetch_Fd8 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 374                            | without Percentage Of Entitlement(Nominee Details) | Percentage Of Entitlement(Nominee Details Tab) | throws error with error message | HL          | Reconsideration  | HL00CAS_113104_Fetch_Fd6  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 374                            | without Percentage Of Entitlement(Nominee Details) | Percentage Of Entitlement(Nominee Details Tab) | throws error with error message | PL          | Reconsideration  | PL00CAS_113104_Fetch_Fd7  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 374                            | without Percentage Of Entitlement(Nominee Details) | Percentage Of Entitlement(Nominee Details Tab) | throws error with error message | MAL         | Reconsideration  | MAL00CAS_113104_Fetch_Fd8 | Fixed Deposit     |


    @Recommendation
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Description                                        | FieldName                                      | Throws_NotThrows                | ProductType | ApplicationStage | LogicalID                  | CollateralSubtype |
      | collateral.xlsx | fixed_deposit           | 367                            | without Name of Fixed Deposit Holder               | Name of Fixed Deposit Holder                   | throws error with error message | HL          | Recommendation   | HL00CAS_113104_Fetch_Fd9   | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 367                            | without Name of Fixed Deposit Holder               | Name of Fixed Deposit Holder                   | throws error with error message | PL          | Recommendation   | PL00CAS_113104_Fetch_Fd10  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 367                            | without Name of Fixed Deposit Holder               | Name of Fixed Deposit Holder                   | throws error with error message | MAL         | Recommendation   | MAL00CAS_113104_Fetch_Fd11 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 368                            | without Maturity Date                              | Maturity Date(Fixed Deposit)                   | throws error with error message | HL          | Recommendation   | HL00CAS_113104_Fetch_Fd9   | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 368                            | without Maturity Date                              | Maturity Date(Fixed Deposit)                   | throws error with error message | PL          | Recommendation   | PL00CAS_113104_Fetch_Fd10  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 368                            | without Maturity Date                              | Maturity Date(Fixed Deposit)                   | throws error with error message | MAL         | Recommendation   | MAL00CAS_113104_Fetch_Fd11 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 369                            | without Deposit Amount                             | Deposit Amount                                 | throws error with error message | HL          | Recommendation   | HL00CAS_113104_Fetch_Fd9   | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 369                            | without Deposit Amount                             | Deposit Amount                                 | throws error with error message | PL          | Recommendation   | PL00CAS_113104_Fetch_Fd10  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 369                            | without Deposit Amount                             | Deposit Amount                                 | throws error with error message | MAL         | Recommendation   | MAL00CAS_113104_Fetch_Fd11 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 370                            | without Nominee Name                               | Nominee Name(Fixed Deposit)                    | throws error with error message | HL          | Recommendation   | HL00CAS_113104_Fetch_Fd9   | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 370                            | without Nominee Name                               | Nominee Name(Fixed Deposit)                    | throws error with error message | PL          | Recommendation   | PL00CAS_113104_Fetch_Fd10  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 370                            | without Nominee Name                               | Nominee Name(Fixed Deposit)                    | throws error with error message | MAL         | Recommendation   | MAL00CAS_113104_Fetch_Fd11 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 371                            | without Nominee Relationship                       | Nominee Relationship                           | throws error with error message | HL          | Recommendation   | HL00CAS_113104_Fetch_Fd9   | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 371                            | without Nominee Relationship                       | Nominee Relationship                           | throws error with error message | PL          | Recommendation   | PL00CAS_113104_Fetch_Fd10  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 371                            | without Nominee Relationship                       | Nominee Relationship                           | throws error with error message | MAL         | Recommendation   | MAL00CAS_113104_Fetch_Fd11 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 372                            | without Nominee Gender                             | Nominee Gender                                 | throws error with error message | HL          | Recommendation   | HL00CAS_113104_Fetch_Fd9   | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 372                            | without Nominee Gender                             | Nominee Gender                                 | throws error with error message | PL          | Recommendation   | PL00CAS_113104_Fetch_Fd10  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 372                            | without Nominee Gender                             | Nominee Gender                                 | throws error with error message | MAL         | Recommendation   | MAL00CAS_113104_Fetch_Fd11 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 373                            | without Date Of Birth                              | Date Of Birth(Nominee Details)                 | throws error with error message | HL          | Recommendation   | HL00CAS_113104_Fetch_Fd9   | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 373                            | without Date Of Birth                              | Date Of Birth(Nominee Details)                 | throws error with error message | PL          | Recommendation   | PL00CAS_113104_Fetch_Fd10  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 373                            | without Date Of Birth                              | Date Of Birth(Nominee Details)                 | throws error with error message | MAL         | Recommendation   | MAL00CAS_113104_Fetch_Fd11 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 374                            | without Percentage Of Entitlement(Nominee Details) | Percentage Of Entitlement(Nominee Details Tab) | throws error with error message | HL          | Recommendation   | HL00CAS_113104_Fetch_Fd9   | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 374                            | without Percentage Of Entitlement(Nominee Details) | Percentage Of Entitlement(Nominee Details Tab) | throws error with error message | PL          | Recommendation   | PL00CAS_113104_Fetch_Fd10  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 374                            | without Percentage Of Entitlement(Nominee Details) | Percentage Of Entitlement(Nominee Details Tab) | throws error with error message | MAL         | Recommendation   | MAL00CAS_113104_Fetch_Fd11 | Fixed Deposit     |

    @Disbursal
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Description                                        | FieldName                                      | Throws_NotThrows                | ProductType | ApplicationStage | LogicalID                  | CollateralSubtype |
      | collateral.xlsx | fixed_deposit           | 367                            | without Name of Fixed Deposit Holder               | Name of Fixed Deposit Holder                   | throws error with error message | HL          | Disbursal        | HL00CAS_113104_Fetch_Fd12  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 367                            | without Name of Fixed Deposit Holder               | Name of Fixed Deposit Holder                   | throws error with error message | PL          | Disbursal        | PL00CAS_113104_Fetch_Fd13  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 367                            | without Name of Fixed Deposit Holder               | Name of Fixed Deposit Holder                   | throws error with error message | MAL         | Disbursal        | MAL00CAS_113104_Fetch_Fd14 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 368                            | without Maturity Date                              | Maturity Date(Fixed Deposit)                   | throws error with error message | HL          | Disbursal        | HL00CAS_113104_Fetch_Fd12  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 368                            | without Maturity Date                              | Maturity Date(Fixed Deposit)                   | throws error with error message | PL          | Disbursal        | PL00CAS_113104_Fetch_Fd13  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 368                            | without Maturity Date                              | Maturity Date(Fixed Deposit)                   | throws error with error message | MAL         | Disbursal        | MAL00CAS_113104_Fetch_Fd14 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 369                            | without Deposit Amount                             | Deposit Amount                                 | throws error with error message | HL          | Disbursal        | HL00CAS_113104_Fetch_Fd12  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 369                            | without Deposit Amount                             | Deposit Amount                                 | throws error with error message | PL          | Disbursal        | PL00CAS_113104_Fetch_Fd13  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 369                            | without Deposit Amount                             | Deposit Amount                                 | throws error with error message | MAL         | Disbursal        | MAL00CAS_113104_Fetch_Fd14 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 370                            | without Nominee Name                               | Nominee Name(Fixed Deposit)                    | throws error with error message | HL          | Disbursal        | HL00CAS_113104_Fetch_Fd12  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 370                            | without Nominee Name                               | Nominee Name(Fixed Deposit)                    | throws error with error message | PL          | Disbursal        | PL00CAS_113104_Fetch_Fd13  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 370                            | without Nominee Name                               | Nominee Name(Fixed Deposit)                    | throws error with error message | MAL         | Disbursal        | MAL00CAS_113104_Fetch_Fd14 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 371                            | without Nominee Relationship                       | Nominee Relationship                           | throws error with error message | HL          | Disbursal        | HL00CAS_113104_Fetch_Fd12  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 371                            | without Nominee Relationship                       | Nominee Relationship                           | throws error with error message | PL          | Disbursal        | PL00CAS_113104_Fetch_Fd13  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 371                            | without Nominee Relationship                       | Nominee Relationship                           | throws error with error message | MAL         | Disbursal        | MAL00CAS_113104_Fetch_Fd14 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 372                            | without Nominee Gender                             | Nominee Gender                                 | throws error with error message | HL          | Disbursal        | HL00CAS_113104_Fetch_Fd12  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 372                            | without Nominee Gender                             | Nominee Gender                                 | throws error with error message | PL          | Disbursal        | PL00CAS_113104_Fetch_Fd13  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 372                            | without Nominee Gender                             | Nominee Gender                                 | throws error with error message | MAL         | Disbursal        | MAL00CAS_113104_Fetch_Fd14 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 373                            | without Date Of Birth                              | Date Of Birth(Nominee Details)                 | throws error with error message | HL          | Disbursal        | HL00CAS_113104_Fetch_Fd12  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 373                            | without Date Of Birth                              | Date Of Birth(Nominee Details)                 | throws error with error message | PL          | Disbursal        | PL00CAS_113104_Fetch_Fd13  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 373                            | without Date Of Birth                              | Date Of Birth(Nominee Details)                 | throws error with error message | MAL         | Disbursal        | MAL00CAS_113104_Fetch_Fd14 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 374                            | without Percentage Of Entitlement(Nominee Details) | Percentage Of Entitlement(Nominee Details Tab) | throws error with error message | HL          | Disbursal        | HL00CAS_113104_Fetch_Fd12  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 374                            | without Percentage Of Entitlement(Nominee Details) | Percentage Of Entitlement(Nominee Details Tab) | throws error with error message | PL          | Disbursal        | PL00CAS_113104_Fetch_Fd13  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 374                            | without Percentage Of Entitlement(Nominee Details) | Percentage Of Entitlement(Nominee Details Tab) | throws error with error message | MAL         | Disbursal        | MAL00CAS_113104_Fetch_Fd14 | Fixed Deposit     |


      #PQM-04_CAS-69553, 2_CAS-22772, 3_CAS-22772
  @Collateral
  Scenario Outline: Verify non mandatory fields on fixed deposit collateral screen and save for <CollateralSubtype> and <Description> for <Fields>  LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user is on home page of "<ApplicationStage>"
    And user selects ok on warning pop up
    When user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user enters nominee details
    And user checks the duplicates on collateral dedupe check
    And user saves the data
    Then user is able to validate the addition of new collateral for "<Validity>" data
    @DDE
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Description              | Fields           | Validity | ProductType | ApplicationStage | LogicalID                 | CollateralSubtype |
      | collateral.xlsx | fixed_deposit           | 354                            | without Maturity Amount  | Maturity Amount  | Valid    | HL          | DDE              | HL00CAS_113104_Fetch_Fd0  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 354                            | without Maturity Amount  | Maturity Amount  | Valid    | PL          | DDE              | PL00CAS_113104_Fetch_Fd1  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 354                            | without Maturity Amount  | Maturity Amount  | Valid    | MAL         | DDE              | MAL00CAS_113104_Fetch_Fd2 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 355                            | without Account Number   | Account Number   | Valid    | HL          | DDE              | HL00CAS_113104_Fetch_Fd0  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 355                            | without Account Number   | Account Number   | Valid    | PL          | DDE              | PL00CAS_113104_Fetch_Fd1  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 355                            | without Account Number   | Account Number   | Valid    | MAL         | DDE              | MAL00CAS_113104_Fetch_Fd2 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 356                            | without Rate Of Interest | Rate Of Interest | Valid    | HL          | DDE              | HL00CAS_113104_Fetch_Fd0  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 356                            | without Rate Of Interest | Rate Of Interest | Valid    | PL          | DDE              | PL00CAS_113104_Fetch_Fd1  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 356                            | without Rate Of Interest | Rate Of Interest | Valid    | MAL         | DDE              | MAL00CAS_113104_Fetch_Fd2 | Fixed Deposit     |

    @CreditApproval
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Description              | Fields           | Validity | ProductType | ApplicationStage | LogicalID                 | CollateralSubtype |
      | collateral.xlsx | fixed_deposit           | 354                            | without Maturity Amount  | Maturity Amount  | Valid    | HL          | Credit Approval  | HL00CAS_113104_Fetch_Fd3  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 354                            | without Maturity Amount  | Maturity Amount  | Valid    | PL          | Credit Approval  | PL00CAS_113104_Fetch_Fd4  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 354                            | without Maturity Amount  | Maturity Amount  | Valid    | MAL         | Credit Approval  | MAL00CAS_113104_Fetch_Fd5 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 355                            | without Account Number   | Account Number   | Valid    | HL          | Credit Approval  | HL00CAS_113104_Fetch_Fd3  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 355                            | without Account Number   | Account Number   | Valid    | PL          | Credit Approval  | PL00CAS_113104_Fetch_Fd4  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 355                            | without Account Number   | Account Number   | Valid    | MAL         | Credit Approval  | MAL00CAS_113104_Fetch_Fd5 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 356                            | without Rate Of Interest | Rate Of Interest | Valid    | HL          | Credit Approval  | HL00CAS_113104_Fetch_Fd3  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 356                            | without Rate Of Interest | Rate Of Interest | Valid    | PL          | Credit Approval  | PL00CAS_113104_Fetch_Fd4  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 356                            | without Rate Of Interest | Rate Of Interest | Valid    | MAL         | Credit Approval  | MAL00CAS_113104_Fetch_Fd5 | Fixed Deposit     |


    @Reconsideration
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Description              | Fields           | Validity | ProductType | ApplicationStage | LogicalID                 | CollateralSubtype |
      | collateral.xlsx | fixed_deposit           | 354                            | without Maturity Amount  | Maturity Amount  | Valid    | HL          | Reconsideration  | HL00CAS_113104_Fetch_Fd6  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 354                            | without Maturity Amount  | Maturity Amount  | Valid    | PL          | Reconsideration  | PL00CAS_113104_Fetch_Fd7  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 354                            | without Maturity Amount  | Maturity Amount  | Valid    | MAL         | Reconsideration  | MAL00CAS_113104_Fetch_Fd8 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 355                            | without Account Number   | Account Number   | Valid    | HL          | Reconsideration  | HL00CAS_113104_Fetch_Fd6  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 355                            | without Account Number   | Account Number   | Valid    | PL          | Reconsideration  | PL00CAS_113104_Fetch_Fd7  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 355                            | without Account Number   | Account Number   | Valid    | MAL         | Reconsideration  | MAL00CAS_113104_Fetch_Fd8 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 356                            | without Rate Of Interest | Rate Of Interest | Valid    | HL          | Reconsideration  | HL00CAS_113104_Fetch_Fd6  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 356                            | without Rate Of Interest | Rate Of Interest | Valid    | PL          | Reconsideration  | PL00CAS_113104_Fetch_Fd7  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 356                            | without Rate Of Interest | Rate Of Interest | Valid    | MAL         | Reconsideration  | MAL00CAS_113104_Fetch_Fd8 | Fixed Deposit     |


    @Recommendation
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Description              | Fields           | Validity | ProductType | ApplicationStage | LogicalID                  | CollateralSubtype |
      | collateral.xlsx | fixed_deposit           | 354                            | without Maturity Amount  | Maturity Amount  | Valid    | HL          | Recommendation   | HL00CAS_113104_Fetch_Fd9   | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 354                            | without Maturity Amount  | Maturity Amount  | Valid    | PL          | Recommendation   | PL00CAS_113104_Fetch_Fd10  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 354                            | without Maturity Amount  | Maturity Amount  | Valid    | MAL         | Recommendation   | MAL00CAS_113104_Fetch_Fd11 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 355                            | without Account Number   | Account Number   | Valid    | HL          | Recommendation   | HL00CAS_113104_Fetch_Fd9   | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 355                            | without Account Number   | Account Number   | Valid    | PL          | Recommendation   | PL00CAS_113104_Fetch_Fd10  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 355                            | without Account Number   | Account Number   | Valid    | MAL         | Recommendation   | MAL00CAS_113104_Fetch_Fd11 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 356                            | without Rate Of Interest | Rate Of Interest | Valid    | HL          | Recommendation   | HL00CAS_113104_Fetch_Fd9   | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 356                            | without Rate Of Interest | Rate Of Interest | Valid    | PL          | Recommendation   | PL00CAS_113104_Fetch_Fd10  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 356                            | without Rate Of Interest | Rate Of Interest | Valid    | MAL         | Recommendation   | MAL00CAS_113104_Fetch_Fd11 | Fixed Deposit     |

    @Disbursal
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Description              | Fields           | Validity | ProductType | ApplicationStage | LogicalID                  | CollateralSubtype |
      | collateral.xlsx | fixed_deposit           | 354                            | without Maturity Amount  | Maturity Amount  | Valid    | HL          | Disbursal        | HL00CAS_113104_Fetch_Fd12  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 354                            | without Maturity Amount  | Maturity Amount  | Valid    | PL          | Disbursal        | PL00CAS_113104_Fetch_Fd13  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 354                            | without Maturity Amount  | Maturity Amount  | Valid    | MAL         | Disbursal        | MAL00CAS_113104_Fetch_Fd14 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 355                            | without Account Number   | Account Number   | Valid    | HL          | Disbursal        | HL00CAS_113104_Fetch_Fd12  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 355                            | without Account Number   | Account Number   | Valid    | PL          | Disbursal        | PL00CAS_113104_Fetch_Fd13  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 355                            | without Account Number   | Account Number   | Valid    | MAL         | Disbursal        | MAL00CAS_113104_Fetch_Fd14 | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 356                            | without Rate Of Interest | Rate Of Interest | Valid    | HL          | Disbursal        | HL00CAS_113104_Fetch_Fd12  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 356                            | without Rate Of Interest | Rate Of Interest | Valid    | PL          | Disbursal        | PL00CAS_113104_Fetch_Fd13  | Fixed Deposit     |
      | collateral.xlsx | fixed_deposit           | 356                            | without Rate Of Interest | Rate Of Interest | Valid    | MAL         | Disbursal        | MAL00CAS_113104_Fetch_Fd14 | Fixed Deposit     |


   # PQM-6_CAS-113104, 8_CAS-113104, 6_CAS-69553
  @Collateral
  Scenario Outline: ACAUTOCAS-21201: Fetching data from third party is available in disable mode LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user is on home page of "<ApplicationStage>"
    And user selects ok on warning pop up
    And user opens Collateral Page for adding new collateral at "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills issuer bank and unique fixed deposit number
    And user click on fetch fd details for saving collateral
    And user views the recently added collateral
    Then user should be able to see fields with enabled status in collateral details:
      | Fields                       | Enabled |
      | Issuer Bank                  | No      |
      | Fixed Deposit Number         | No      |
      | Name of Fixed Deposit Holder | No      |
      | Maturity Date                | No      |
      | Maturity Amount              | No      |
      | Deposit Amount               | No      |
      | Account Number               | No      |
      | Rate of Interest             | No      |

    @DDE
    Examples:
      | LogicalID                 | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType |
      | HL00CAS_113104_Fetch_Fd0  | dde              | collateral.xlsx | fixed_deposit           | 357                            | HL          |
      | PL00CAS_113104_Fetch_Fd1  | dde              | collateral.xlsx | fixed_deposit           | 357                            | PL          |
      | MAL00CAS_113104_Fetch_Fd2 | dde              | collateral.xlsx | fixed_deposit           | 357                            | MAL         |

    @CreditApproval
    Examples:
      | LogicalID                 | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType |
      | HL00CAS_113104_Fetch_Fd3  | Credit Approval  | collateral.xlsx | fixed_deposit           | 357                            | HL          |
      | PL00CAS_113104_Fetch_Fd4  | Credit Approval  | collateral.xlsx | fixed_deposit           | 357                            | PL          |
      | MAL00CAS_113104_Fetch_Fd5 | Credit Approval  | collateral.xlsx | fixed_deposit           | 357                            | MAL         |

    @Reconsideration
    Examples:
      | LogicalID                 | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType |
      | HL00CAS_113104_Fetch_Fd6  | Reconsideration  | collateral.xlsx | fixed_deposit           | 357                            | HL          |
      | PL00CAS_113104_Fetch_Fd7  | Reconsideration  | collateral.xlsx | fixed_deposit           | 357                            | PL          |
      | MAL00CAS_113104_Fetch_Fd8 | Reconsideration  | collateral.xlsx | fixed_deposit           | 357                            | MAL         |

    @Recommendation
    Examples:
      | LogicalID                  | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType |
      | HL00CAS_113104_Fetch_Fd9   | Recommendation   | collateral.xlsx | fixed_deposit           | 357                            | HL          |
      | PL00CAS_113104_Fetch_Fd10  | Recommendation   | collateral.xlsx | fixed_deposit           | 357                            | PL          |
      | MAL00CAS_113104_Fetch_Fd11 | Recommendation   | collateral.xlsx | fixed_deposit           | 357                            | MAL         |

    @Disbursal
    Examples:
      | LogicalID                  | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType |
      | HL00CAS_113104_Fetch_Fd12  | Disbursal        | collateral.xlsx | fixed_deposit           | 357                            | HL          |
      | PL00CAS_113104_Fetch_Fd13  | Disbursal        | collateral.xlsx | fixed_deposit           | 357                            | PL          |
      | MAL00CAS_113104_Fetch_Fd14 | Disbursal        | collateral.xlsx | fixed_deposit           | 357                            | MAL         |

        # PQM-9_CAS-69553, 07-CAS_22772
  @Collateral
  Scenario Outline: ACAUTOCAS-21205: Maturity amount greater than the deposit amount on fixed deposit collateral screen LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user is on home page of "<ApplicationStage>"
    And user selects ok on warning pop up
    When user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for Fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    Then user is able to validate the addition of new collateral for "<Validity>" data
    @DDE
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Validity |
      | HL00CAS_113104_Fetch_Fd0  | HL          | dde              | collateral.xlsx | fixed_deposit           | 359                            | invalid  |
      | PL00CAS_113104_Fetch_Fd1  | PL          | dde              | collateral.xlsx | fixed_deposit           | 359                            | invalid  |
      | MAL00CAS_113104_Fetch_Fd2 | MAL         | dde              | collateral.xlsx | fixed_deposit           | 359                            | invalid  |

    @CreditApproval
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Validity |
      | HL00CAS_113104_Fetch_Fd3  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit           | 359                            | invalid  |
      | PL00CAS_113104_Fetch_Fd4  | PL          | Credit Approval  | collateral.xlsx | fixed_deposit           | 359                            | invalid  |
      | MAL00CAS_113104_Fetch_Fd5 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit           | 359                            | invalid  |

    @Reconsideration
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Validity |
      | HL00CAS_113104_Fetch_Fd6  | HL          | Reconsideration  | collateral.xlsx | fixed_deposit           | 359                            | invalid  |
      | PL00CAS_113104_Fetch_Fd7  | PL          | Reconsideration  | collateral.xlsx | fixed_deposit           | 359                            | invalid  |
      | MAL00CAS_113104_Fetch_Fd8 | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit           | 359                            | invalid  |

    @Recommendation
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Validity |
      | HL00CAS_113104_Fetch_Fd9   | HL          | Recommendation   | collateral.xlsx | fixed_deposit           | 359                            | invalid  |
      | PL00CAS_113104_Fetch_Fd10  | PL          | Recommendation   | collateral.xlsx | fixed_deposit           | 359                            | invalid  |
      | MAL00CAS_113104_Fetch_Fd11 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit           | 359                            | invalid  |

    @Disbursal
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Validity |
      | HL00CAS_113104_Fetch_Fd12  | HL          | Disbursal        | collateral.xlsx | fixed_deposit           | 359                            | invalid  |
      | PL00CAS_113104_Fetch_Fd13  | PL          | Disbursal        | collateral.xlsx | fixed_deposit           | 359                            | invalid  |
      | MAL00CAS_113104_Fetch_Fd14 | MAL         | Disbursal        | collateral.xlsx | fixed_deposit           | 359                            | invalid  |

        # PQM-01_CAS-113104, 02-CAS_113104
  @Collateral
  Scenario Outline: User is able to add a new collateral as Fixed Deposit application on <ProductType> on <ApplicationStage> <Validity> for dataset <Collateral_fixedDeposit_rowNum>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user is on home page of "<ApplicationStage>"
    And user selects ok on warning pop up
    When user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for Fixed Deposit
    And user clicks on add nominee on nominee details
    And user fills nominee details in collateral fixed deposit
    And user add the address on the nominee details
    And user reads data from the excel file "collateral.xlsx" under sheet "nominee_address" and row 12
    And user fills nominee address detail
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    Then user is able to validate the addition of new collateral for "<Validity>" data
    @DDE
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Validity |
      | HL00CAS_113104_Fetch_Fd0  | HL          | dde              | collateral.xlsx | fixed_deposit           | 391                            | valid    |
      | PL00CAS_113104_Fetch_Fd1  | PL          | dde              | collateral.xlsx | fixed_deposit           | 391                            | valid    |
      | MAL00CAS_113104_Fetch_Fd2 | MAL         | dde              | collateral.xlsx | fixed_deposit           | 391                            | valid    |


    @CreditApproval
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Validity |
      | HL00CAS_113104_Fetch_Fd3  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit           | 391                            | valid    |
      | PL00CAS_113104_Fetch_Fd4  | PL          | Credit Approval  | collateral.xlsx | fixed_deposit           | 391                            | valid    |
      | MAL00CAS_113104_Fetch_Fd5 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit           | 391                            | valid    |

    @Reconsideration
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Validity |
      | HL00CAS_113104_Fetch_Fd6  | HL          | Reconsideration  | collateral.xlsx | fixed_deposit           | 391                            | valid    |
      | PL00CAS_113104_Fetch_Fd7  | PL          | Reconsideration  | collateral.xlsx | fixed_deposit           | 391                            | valid    |
      | MAL00CAS_113104_Fetch_Fd8 | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit           | 391                            | valid    |

    @Recommendation
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Validity |
      | HL00CAS_113104_Fetch_Fd9   | HL          | Recommendation   | collateral.xlsx | fixed_deposit           | 391                            | valid    |
      | PL00CAS_113104_Fetch_Fd10  | PL          | Recommendation   | collateral.xlsx | fixed_deposit           | 391                            | valid    |
      | MAL00CAS_113104_Fetch_Fd11 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit           | 391                            | valid    |

    @Disbursal
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Validity |
      | HL00CAS_113104_Fetch_Fd12  | HL          | Disbursal        | collateral.xlsx | fixed_deposit           | 391                            | valid    |
      | PL00CAS_113104_Fetch_Fd13  | PL          | Disbursal        | collateral.xlsx | fixed_deposit           | 391                            | valid    |
      | MAL00CAS_113104_Fetch_Fd14 | MAL         | Disbursal        | collateral.xlsx | fixed_deposit           | 391                            | valid    |

    # PQM-01_CAS-113104
  @Collateral
  Scenario Outline: User is able to add a new collateral as Fixed Deposit without nominee tab for application on <ProductType> on <ApplicationStage> for dataset <Collateral_fixedDeposit_rowNum>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user is on home page of "<ApplicationStage>"
    And user selects ok on warning pop up
    When user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for Fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    Then user is able to validate the addition of new collateral for "<Validity>" data
    @DDE
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Validity |
      | HL00CAS_113104_Fetch_Fd0  | HL          | dde              | collateral.xlsx | fixed_deposit           | 392                            | valid    |
      | PL00CAS_113104_Fetch_Fd1  | PL          | dde              | collateral.xlsx | fixed_deposit           | 392                            | valid    |
      | MAL00CAS_113104_Fetch_Fd2 | MAL         | dde              | collateral.xlsx | fixed_deposit           | 392                            | valid    |


    @CreditApproval
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Validity |
      | HL00CAS_113104_Fetch_Fd3  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit           | 392                            | valid    |
      | PL00CAS_113104_Fetch_Fd4  | PL          | Credit Approval  | collateral.xlsx | fixed_deposit           | 392                            | valid    |
      | MAL00CAS_113104_Fetch_Fd5 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit           | 392                            | valid    |

    @Reconsideration
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Validity |
      | HL00CAS_113104_Fetch_Fd6  | HL          | Reconsideration  | collateral.xlsx | fixed_deposit           | 392                            | valid    |
      | PL00CAS_113104_Fetch_Fd7  | PL          | Reconsideration  | collateral.xlsx | fixed_deposit           | 392                            | valid    |
      | MAL00CAS_113104_Fetch_Fd8 | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit           | 392                            | valid    |

    @Recommendation
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Validity |
      | HL00CAS_113104_Fetch_Fd9   | HL          | Recommendation   | collateral.xlsx | fixed_deposit           | 392                            | valid    |
      | PL00CAS_113104_Fetch_Fd10  | PL          | Recommendation   | collateral.xlsx | fixed_deposit           | 392                            | valid    |
      | MAL00CAS_113104_Fetch_Fd11 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit           | 392                            | valid    |

    @Disbursal
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Validity |
      | HL00CAS_113104_Fetch_Fd12  | HL          | Disbursal        | collateral.xlsx | fixed_deposit           | 392                            | valid    |
      | PL00CAS_113104_Fetch_Fd13  | PL          | Disbursal        | collateral.xlsx | fixed_deposit           | 392                            | valid    |
      | MAL00CAS_113104_Fetch_Fd14 | MAL         | Disbursal        | collateral.xlsx | fixed_deposit           | 392                            | valid    |


#PQM-4_CAS-69553
  @Collateral
  Scenario Outline: ACAUTOCAS-21206: Validation of mandatory field - value available for pledge in lien details in cas at <ApplicationStage> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user modifies the saved collateral details
    And user opened lien details tab
    And user reads data from the excel file "<LienDetailsWB>" under sheet "<LienDetails_homePage>" and row <LienDetails_homePage_rowNum>
    And user fills lien details home page
    Then "<DependentFieldMandatory>" in lien detail validate successfully
    @DDE
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | DependentFieldMandatory                        | LienDetailsWB     | LienDetails_homePage | LienDetails_homePage_rowNum |
      | HL00CAS_113104_Fetch_Fd0  | HL          | DDE              | Value Available for Pledge (Lien Details Home) | lien_details.xlsx | lien_details_home    | 0                           |
      | PL00CAS_113104_Fetch_Fd1  | PL          | DDE              | Value Available for Pledge (Lien Details Home) | lien_details.xlsx | lien_details_home    | 0                           |
      | MAL00CAS_113104_Fetch_Fd2 | MAL         | DDE              | Value Available for Pledge (Lien Details Home) | lien_details.xlsx | lien_details_home    | 0                           |

    @CreditApproval
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | DependentFieldMandatory                        | LienDetailsWB     | LienDetails_homePage | LienDetails_homePage_rowNum |
      | HL00CAS_113104_Fetch_Fd3  | HL          | Credit Approval  | Value Available for Pledge (Lien Details Home) | lien_details.xlsx | lien_details_home    | 0                           |
      | PL00CAS_113104_Fetch_Fd4  | PL          | Credit Approval  | Value Available for Pledge (Lien Details Home) | lien_details.xlsx | lien_details_home    | 0                           |
      | MAL00CAS_113104_Fetch_Fd5 | MAL         | Credit Approval  | Value Available for Pledge (Lien Details Home) | lien_details.xlsx | lien_details_home    | 0                           |

    @Reconsideration
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | DependentFieldMandatory                        | LienDetailsWB     | LienDetails_homePage | LienDetails_homePage_rowNum |
      | HL00CAS_113104_Fetch_Fd6  | HL          | Reconsideration  | Value Available for Pledge (Lien Details Home) | lien_details.xlsx | lien_details_home    | 0                           |
      | PL00CAS_113104_Fetch_Fd7  | PL          | Reconsideration  | Value Available for Pledge (Lien Details Home) | lien_details.xlsx | lien_details_home    | 0                           |
      | MAL00CAS_113104_Fetch_Fd8 | MAL         | Reconsideration  | Value Available for Pledge (Lien Details Home) | lien_details.xlsx | lien_details_home    | 0                           |

    @Recommendation
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | DependentFieldMandatory                        | LienDetailsWB     | LienDetails_homePage | LienDetails_homePage_rowNum |
      | HL00CAS_113104_Fetch_Fd9   | HL          | Recommendation   | Value Available for Pledge (Lien Details Home) | lien_details.xlsx | lien_details_home    | 0                           |
      | PL00CAS_113104_Fetch_Fd10  | PL          | Recommendation   | Value Available for Pledge (Lien Details Home) | lien_details.xlsx | lien_details_home    | 0                           |
      | MAL00CAS_113104_Fetch_Fd11 | MAL         | Recommendation   | Value Available for Pledge (Lien Details Home) | lien_details.xlsx | lien_details_home    | 0                           |

    @Disbursal
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | DependentFieldMandatory                        | LienDetailsWB     | LienDetails_homePage | LienDetails_homePage_rowNum |
      | HL00CAS_113104_Fetch_Fd12  | HL          | Disbursal        | Value Available for Pledge (Lien Details Home) | lien_details.xlsx | lien_details_home    | 0                           |
      | PL00CAS_113104_Fetch_Fd13  | PL          | Disbursal        | Value Available for Pledge (Lien Details Home) | lien_details.xlsx | lien_details_home    | 0                           |
      | MAL00CAS_113104_Fetch_Fd14 | MAL         | Disbursal        | Value Available for Pledge (Lien Details Home) | lien_details.xlsx | lien_details_home    | 0                           |



           # PQM-10_CAS-113104
  @Collateral
  Scenario Outline: ACAUTOCAS-21202: Details should get fetched from 3rd Party with new Global Collateral Number in CAS LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user is on home page of "<ApplicationStage>"
    And user selects ok on warning pop up
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills issuer bank and unique fixed deposit number
    When user click on fetch fd details
    Then details should get fetched from third party in CAS with new global collateral number
    @DDE
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum |
      | HL00CAS_113104_Fetch_Fd0  | HL          | dde              | collateral.xlsx | fixed_deposit           | 357                            |
      | PL00CAS_113104_Fetch_Fd1  | PL          | dde              | collateral.xlsx | fixed_deposit           | 357                            |
      | MAL00CAS_113104_Fetch_Fd2 | MAL         | dde              | collateral.xlsx | fixed_deposit           | 357                            |

    @CreditApproval
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum |
      | HL00CAS_113104_Fetch_Fd3  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit           | 357                            |
      | PL00CAS_113104_Fetch_Fd4  | PL          | Credit Approval  | collateral.xlsx | fixed_deposit           | 357                            |
      | MAL00CAS_113104_Fetch_Fd5 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit           | 357                            |

    @Reconsideration
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum |
      | HL00CAS_113104_Fetch_Fd6  | HL          | Reconsideration  | collateral.xlsx | fixed_deposit           | 357                            |
      | PL00CAS_113104_Fetch_Fd7  | PL          | Reconsideration  | collateral.xlsx | fixed_deposit           | 357                            |
      | MAL00CAS_113104_Fetch_Fd8 | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit           | 357                            |

    @Recommendation
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum |
      | HL00CAS_113104_Fetch_Fd9   | HL          | Recommendation   | collateral.xlsx | fixed_deposit           | 357                            |
      | PL00CAS_113104_Fetch_Fd10  | PL          | Recommendation   | collateral.xlsx | fixed_deposit           | 357                            |
      | MAL00CAS_113104_Fetch_Fd11 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit           | 357                            |

    @Disbursal
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum |
      | HL00CAS_113104_Fetch_Fd12  | HL          | Disbursal        | collateral.xlsx | fixed_deposit           | 357                            |
      | PL00CAS_113104_Fetch_Fd13  | PL          | Disbursal        | collateral.xlsx | fixed_deposit           | 357                            |
      | MAL00CAS_113104_Fetch_Fd14 | MAL         | Disbursal        | collateral.xlsx | fixed_deposit           | 357                            |


  # PQM-13_CAS-113104
  @Collateral
  Scenario Outline: ACAUTOCAS-21203:Details should get fetched from 3rd Party with new Collateral Id in CAS LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user is on home page of "<ApplicationStage>"
    And user selects ok on warning pop up
    When user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills same issuer bank and fixed deposit number as filled earlier
    And user click on fetch fd details for saving collateral
    Then user gets same global collateral number as in previous test case in CAS
    @DDE
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum |
      | HL00CAS_113104_Fetch_Fd0  | HL          | dde              | collateral.xlsx | fixed_deposit           | 358                            |
      | PL00CAS_113104_Fetch_Fd1  | PL          | dde              | collateral.xlsx | fixed_deposit           | 358                            |
      | MAL00CAS_113104_Fetch_Fd2 | MAL         | dde              | collateral.xlsx | fixed_deposit           | 358                            |

    @CreditApproval
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum |
      | HL00CAS_113104_Fetch_Fd3  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit           | 358                            |
      | PL00CAS_113104_Fetch_Fd4  | PL          | Credit Approval  | collateral.xlsx | fixed_deposit           | 358                            |
      | MAL00CAS_113104_Fetch_Fd5 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit           | 358                            |

    @Reconsideration
    Examples:
      | LogicalID                 | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum |
      | HL00CAS_113104_Fetch_Fd6  | HL          | Reconsideration  | collateral.xlsx | fixed_deposit           | 358                            |
      | PL00CAS_113104_Fetch_Fd7  | PL          | Reconsideration  | collateral.xlsx | fixed_deposit           | 358                            |
      | MAL00CAS_113104_Fetch_Fd8 | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit           | 358                            |

    @Recommendation
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum |
      | HL00CAS_113104_Fetch_Fd9   | HL          | Recommendation   | collateral.xlsx | fixed_deposit           | 358                            |
      | PL00CAS_113104_Fetch_Fd10  | PL          | Recommendation   | collateral.xlsx | fixed_deposit           | 358                            |
      | MAL00CAS_113104_Fetch_Fd11 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit           | 358                            |

    @Disbursal
    Examples:
      | LogicalID                  | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum |
      | HL00CAS_113104_Fetch_Fd12  | HL          | Disbursal        | collateral.xlsx | fixed_deposit           | 358                            |
      | PL00CAS_113104_Fetch_Fd13  | PL          | Disbursal        | collateral.xlsx | fixed_deposit           | 358                            |
      | MAL00CAS_113104_Fetch_Fd14 | MAL         | Disbursal        | collateral.xlsx | fixed_deposit           | 358                            |


   #PQM-11_CAS-113104
  @Collateral
  Scenario Outline: ACAUTOCAS-21204: Lien details should be available with data fetched from 3rd party in CAS LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user modifies the saved collateral details
    And user opened lien details tab
    When user open Lien Details accordion
    Then lien details should be available with data fetched from third party
    @DDE
    Examples:
      | LogicalID                 | ProductType |
      | HL00CAS_113104_Fetch_Fd0  | HL          |
      | PL00CAS_113104_Fetch_Fd1  | PL          |
      | MAL00CAS_113104_Fetch_Fd2 | MAL         |

    @CreditApproval
    Examples:
      | LogicalID                 | ProductType |
      | HL00CAS_113104_Fetch_Fd3  | HL          |
      | PL00CAS_113104_Fetch_Fd4  | PL          |
      | MAL00CAS_113104_Fetch_Fd5 | MAL         |

    @Reconsideration
    Examples:
      | LogicalID                 | ProductType |
      | HL00CAS_113104_Fetch_Fd6  | HL          |
      | PL00CAS_113104_Fetch_Fd7  | PL          |
      | MAL00CAS_113104_Fetch_Fd8 | MAL         |

    @Recommendation
    Examples:
      | LogicalID                  | ProductType |
      | HL00CAS_113104_Fetch_Fd9   | HL          |
      | PL00CAS_113104_Fetch_Fd10  | PL          |
      | MAL00CAS_113104_Fetch_Fd11 | MAL         |

    @Disbursal
    Examples:
      | LogicalID                  | ProductType |
      | HL00CAS_113104_Fetch_Fd12  | HL          |
      | PL00CAS_113104_Fetch_Fd13  | PL          |
      | MAL00CAS_113104_Fetch_Fd14 | MAL         |

# PQM-3_CAS-69553
  @Collateral
  Scenario Outline: ACAUTOCAS-21207: Fetch details button should be present and shall be authority based having no authority in CAS LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LimitedAccessUser" and 0
    And user starts creating application of logical id "<LogicalID>"
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "" with key ""
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    When user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    Then fetch details button should be available based on authority should be "<AddedNotAdded>"
    @DDE
    Examples:
      | LogicalID                     | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | AddedNotAdded | ApplicantType |
      | HL00CAS_113104_Fetch_Fd_Set0  | HL          | dde              | collateral.xlsx | fixed_deposit           | 359                            | Notadded      | indiv         |
      | PL00CAS_113104_Fetch_Fd_Set1  | PL          | dde              | collateral.xlsx | fixed_deposit           | 359                            | Notadded      | indiv         |
      | MAL00CAS_113104_Fetch_Fd_Set2 | MAL         | dde              | collateral.xlsx | fixed_deposit           | 359                            | Notadded      | indiv         |

    @CreditApproval
    Examples:
      | LogicalID                     | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | AddedNotAdded | ApplicantType |
      | HL00CAS_113104_Fetch_Fd_Set3  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit           | 359                            | Notadded      | indiv         |
      | PL00CAS_113104_Fetch_Fd_Set4  | PL          | Credit Approval  | collateral.xlsx | fixed_deposit           | 359                            | Notadded      | indiv         |
      | MAL00CAS_113104_Fetch_Fd_Set5 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit           | 359                            | Notadded      | indiv         |

    @Reconsideration
    Examples:
      | LogicalID                     | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | AddedNotAdded | ApplicantType |
      | HL00CAS_113104_Fetch_Fd_Set6  | HL          | Reconsideration  | collateral.xlsx | fixed_deposit           | 359                            | Notadded      | indiv         |
      | PL00CAS_113104_Fetch_Fd_Set7  | PL          | Reconsideration  | collateral.xlsx | fixed_deposit           | 359                            | Notadded      | indiv         |
      | MAL00CAS_113104_Fetch_Fd_Set8 | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit           | 359                            | Notadded      | indiv         |

    @Recommendation
    Examples:
      | LogicalID                      | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | AddedNotAdded | ApplicantType |
      | HL00CAS_113104_Fetch_Fd_Set9   | HL          | Recommendation   | collateral.xlsx | fixed_deposit           | 359                            | Notadded      | indiv         |
      | PL00CAS_113104_Fetch_Fd_Set10  | PL          | Recommendation   | collateral.xlsx | fixed_deposit           | 359                            | Notadded      | indiv         |
      | MAL00CAS_113104_Fetch_Fd_Set11 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit           | 359                            | Notadded      | indiv         |

    @Disbursal
    Examples:
      | LogicalID                      | ProductType | ApplicationStage | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | AddedNotAdded | ApplicantType |
      | HL00CAS_113104_Fetch_Fd_Set12  | HL          | Disbursal        | collateral.xlsx | fixed_deposit           | 359                            | Notadded      | indiv         |
      | PL00CAS_113104_Fetch_Fd_Set13  | PL          | Disbursal        | collateral.xlsx | fixed_deposit           | 359                            | Notadded      | indiv         |
      | MAL00CAS_113104_Fetch_Fd_Set14 | MAL         | Disbursal        | collateral.xlsx | fixed_deposit           | 359                            | Notadded      | indiv         |

#------------------------------------------------Dynamic Form Scenario Before All (Config Needed)------------------------------------------------------------------------------------------------------
  @collateralFDDynamicFormConfig
    @LoggedBug-ATDDFW-1443
  Scenario Outline: Validate response of collateral create service API for dynamicfield data in CMS LogicalID <LogicalID>
    Given user starts creating application of logical id "<LogicalID>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum>
    When user creates the collateral directly through GCC with collateral Type as Deposit with dynamic form attached
    Then response of application creation service API should be "<SuccessError>"
    Examples:
      | LogicalID                     | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | SuccessError |
      | CMS_113104_Fetch_Fd_Dynamic_1 | collateral.xlsx | fixed_deposit      | 398                        | Success      |

  @collateralFDDynamicFormConfig
    @LoggedBug-ATDDFW-1443
  Scenario Outline: Validate response of collateral create service API for dynamicfield data in CMS ui LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in "CMS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When navigates to Search Collateral Page in CMS
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum>
    And user searches for an existing internal collateral using Global Collateral Number in CMS
    And user views the searched collateral
    Then dynamic form data should be same as filled in service
    Examples:
      | LogicalID                     | ProductType | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | CMS_113104_Fetch_Fd_Dynamic_1 | HL          | collateral.xlsx | fixed_deposit      | 398                        |

  @collateralFDDynamicFormConfig
    @LoggedBug-ATDDFW-1443
  Scenario Outline: Validate response of collateral update service API for dynamicfield data in CMS LogicalID <LogicalID>
    Given user starts creating application of logical id "<LogicalID>"
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum>
    And user updates the collateral directly through GCC with collateral Type as Deposit and dynamic form attached
    Then response of application creation service API should be "<SuccessError>"
    Examples:
      | LogicalID                     | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | SuccessError |
      | CMS_113104_Fetch_Fd_Dynamic_2 | collateral.xlsx | fixed_deposit      | 399                        | Success      |

  @collateralFDDynamicFormConfig
    @LoggedBug-ATDDFW-1443
  Scenario Outline: Validate response of collateral update application service API for dynamicfield data in CMS ui LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in "CMS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When navigates to Search Collateral Page in CMS
    And user searches for an existing internal collateral using Global Collateral Number in CMS
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum>
    And user finds collateral matching the search criteria
    And user views the searched collateral
    Then dynamic form data should be same as filled in service
    Examples:
      | LogicalID                     | ProductType | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | CMS_113104_Fetch_Fd_Dynamic_2 | HL          | collateral.xlsx | fixed_deposit      | 399                        |

#PQM-15_CAS-113104
  #pre-requisite dynamic form to be created on collateral screen Fixed Deposit
  @collateralFDDynamicFormConfig
    @LoggedBug-ATDDFW-1443
  Scenario Outline: Validate response of collateral create application service API for dynamicfield data in CAS LogicalID <LogicalID>
    Given user starts creating application of logical id "<LogicalID>"
    And user creates stage variant for an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum>
    When user hits Application Creation Service API for collateral Type as Deposit collateral Subtype as fixed deposit with dynamic form attached
    And set Application ID in the thread context
    Then response of application creation service API should be "<SuccessError>"
    @DDE
    Examples:
      | LogicalID                         | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | SuccessError |
      | HL00CAS_113104_Fetch_Fd_Dynamic1  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 398                        | indiv         |          |     | Success      |
      | MAL00CAS_113104_Fetch_Fd_Dynamic2 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 398                        | indiv         |          |     | Success      |
      | PL00CAS_113104_Fetch_Fd_Dynamic3  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 398                        | indiv         |          |     | Success      |

    @CreditApproval
    Examples:
      | LogicalID                         | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | SuccessError |
      | HL00CAS_113104_Fetch_Fd_Dynamic4  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit      | 398                        | indiv         |          |     | Success      |
      | MAL00CAS_113104_Fetch_Fd_Dynamic5 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit      | 398                        | indiv         |          |     | Success      |
      | PL00CAS_113104_Fetch_Fd_Dynamic6  | PF          | Credit Approval  | collateral.xlsx | fixed_deposit      | 398                        | indiv         |          |     | Success      |

    @Reconsideration
    Examples:
      | LogicalID                         | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | SuccessError |
      | HL00CAS_113104_Fetch_Fd_Dynamic7  | HL          | Reconsideration  | collateral.xlsx | fixed_deposit      | 398                        | indiv         |          |     | Success      |
      | MAL00CAS_113104_Fetch_Fd_Dynamic8 | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit      | 398                        | indiv         |          |     | Success      |
      | PL00CAS_113104_Fetch_Fd_Dynamic9  | PF          | Reconsideration  | collateral.xlsx | fixed_deposit      | 398                        | indiv         |          |     | Success      |

    @Recommendation
    Examples:
      | LogicalID                          | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | SuccessError |
      | HL00CAS_113104_Fetch_Fd_Dynamic10  | HL          | Recommendation   | collateral.xlsx | fixed_deposit      | 398                        | indiv         |          |     | Success      |
      | MAL00CAS_113104_Fetch_Fd_Dynamic11 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit      | 398                        | indiv         |          |     | Success      |
      | PL00CAS_113104_Fetch_Fd_Dynamic12  | PF          | Recommendation   | collateral.xlsx | fixed_deposit      | 398                        | indiv         |          |     | Success      |

    @Disbursal
    Examples:
      | LogicalID                          | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | Category | Key | SuccessError |
      | HL00CAS_113104_Fetch_Fd_Dynamic13  | HL          | Disbursal        | collateral.xlsx | fixed_deposit      | 398                        | indiv         |          |     | Success      |
      | MAL00CAS_113104_Fetch_Fd_Dynamic14 | MAL         | Disbursal        | collateral.xlsx | fixed_deposit      | 398                        | indiv         |          |     | Success      |
      | PL00CAS_113104_Fetch_Fd_Dynamic15  | PF          | Disbursal        | collateral.xlsx | fixed_deposit      | 398                        | indiv         |          |     | Success      |

    #PQM-15-CAS-113104
  @collateralFDDynamicFormConfig
    @LoggedBug-ATDDFW-1443
  Scenario Outline: Validate response of collateral create application service API for dynamicfield data in CAS on UI LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When Application should move to "<ApplicationStage>" Stage using "Search" service
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum>
    And user opens the collateral in the edit mode
    Then dynamic form data should be same as filled in service
    @DDE
    Examples:
      | LogicalID                         | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | HL00CAS_113104_Fetch_Fd_Dynamic1  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 398                        |
      | MAL00CAS_113104_Fetch_Fd_Dynamic2 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 398                        |
      | PL00CAS_113104_Fetch_Fd_Dynamic3  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 398                        |

    @CreditApproval
    Examples:
      | LogicalID                         | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | HL00CAS_113104_Fetch_Fd_Dynamic4  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit      | 398                        |
      | MAL00CAS_113104_Fetch_Fd_Dynamic5 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit      | 398                        |
      | PL00CAS_113104_Fetch_Fd_Dynamic6  | PF          | Credit Approval  | collateral.xlsx | fixed_deposit      | 398                        |

    @Reconsideration
    Examples:
      | LogicalID                         | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | HL00CAS_113104_Fetch_Fd_Dynamic7  | HL          | Reconsideration  | collateral.xlsx | fixed_deposit      | 398                        |
      | MAL00CAS_113104_Fetch_Fd_Dynamic8 | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit      | 398                        |
      | PL00CAS_113104_Fetch_Fd_Dynamic9  | PF          | Reconsideration  | collateral.xlsx | fixed_deposit      | 398                        |

    @Recommendation
    Examples:
      | LogicalID                          | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | HL00CAS_113104_Fetch_Fd_Dynamic10  | HL          | Recommendation   | collateral.xlsx | fixed_deposit      | 398                        |
      | MAL00CAS_113104_Fetch_Fd_Dynamic11 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit      | 398                        |
      | PL00CAS_113104_Fetch_Fd_Dynamic12  | PF          | Recommendation   | collateral.xlsx | fixed_deposit      | 398                        |

    @Disbursal
    Examples:
      | LogicalID                          | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | HL00CAS_113104_Fetch_Fd_Dynamic13  | HL          | Disbursal        | collateral.xlsx | fixed_deposit      | 398                        |
      | MAL00CAS_113104_Fetch_Fd_Dynamic14 | MAL         | Disbursal        | collateral.xlsx | fixed_deposit      | 398                        |
      | PL00CAS_113104_Fetch_Fd_Dynamic15  | PF          | Disbursal        | collateral.xlsx | fixed_deposit      | 398                        |

#PQM-15-CAS-113104
  @collateralFDDynamicFormConfig
    @LoggedBug-ATDDFW-1443
  Scenario Outline: Validate response of collateral update application service API for dynamicfield data in CAS LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user starts creating application of logical id "<LogicalID>"
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<category>" with key "<key>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum>
    And user hits Application update Service API with collateral Type as Deposit collateral Subtype as Fixed Deposit Collateral Details with dynamic form attached
    Then response of application update service API should be "<SuccessError>"
    @DDE
    Examples:
      | LogicalID                          | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | SuccessError | category | key |
      | HL00CAS_113104_Fetch_Fd_Dynamic16  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 399                        | indiv         | Success      |          |     |
      | MAL00CAS_113104_Fetch_Fd_Dynamic17 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 399                        | indiv         | Success      |          |     |
      | PL00CAS_113104_Fetch_Fd_Dynamic18  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 399                        | indiv         | Success      |          |     |

    @CreditApproval
    Examples:
      | LogicalID                          | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | SuccessError | category | key |
      | HL00CAS_113104_Fetch_Fd_Dynamic19  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit      | 399                        | indiv         | Success      |          |     |
      | MAL00CAS_113104_Fetch_Fd_Dynamic20 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit      | 399                        | indiv         | Success      |          |     |
      | PL00CAS_113104_Fetch_Fd_Dynamic21  | PF          | Credit Approval  | collateral.xlsx | fixed_deposit      | 399                        | indiv         | Success      |          |     |

    @Reconsideration
    Examples:
      | LogicalID                          | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | SuccessError | category | key |
      | HL00CAS_113104_Fetch_Fd_Dynamic22  | HL          | Reconsideration  | collateral.xlsx | fixed_deposit      | 399                        | indiv         | Success      |          |     |
      | MAL00CAS_113104_Fetch_Fd_Dynamic23 | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit      | 399                        | indiv         | Success      |          |     |
      | PL00CAS_113104_Fetch_Fd_Dynamic24  | PF          | Reconsideration  | collateral.xlsx | fixed_deposit      | 399                        | indiv         | Success      |          |     |

    @Recommendation
    Examples:
      | LogicalID                          | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | SuccessError | category | key |
      | HL00CAS_113104_Fetch_Fd_Dynamic25  | HL          | Recommendation   | collateral.xlsx | fixed_deposit      | 399                        | indiv         | Success      |          |     |
      | MAL00CAS_113104_Fetch_Fd_Dynamic26 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit      | 399                        | indiv         | Success      |          |     |
      | PL00CAS_113104_Fetch_Fd_Dynamic27  | PF          | Recommendation   | collateral.xlsx | fixed_deposit      | 399                        | indiv         | Success      |          |     |

    @Disbursal
    Examples:
      | LogicalID                          | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum | ApplicantType | SuccessError | category | key |
      | HL00CAS_113104_Fetch_Fd_Dynamic28  | HL          | Disbursal        | collateral.xlsx | fixed_deposit      | 399                        | indiv         | Success      |          |     |
      | MAL00CAS_113104_Fetch_Fd_Dynamic29 | MAL         | Disbursal        | collateral.xlsx | fixed_deposit      | 399                        | indiv         | Success      |          |     |
      | PL00CAS_113104_Fetch_Fd_Dynamic30  | PF          | Disbursal        | collateral.xlsx | fixed_deposit      | 399                        | indiv         | Success      |          |     |

#PQM-15-CAS-113104
  @collateralFDDynamicFormConfig
    @LoggedBug-ATDDFW-1443
  Scenario Outline: Validate response of collateral update application service API for dynamicfield data in CAS on UI LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When Application should move to "<ApplicationStage>" Stage using "Search" service
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_FdSheet>" and row <Collateral_dFdSheet_rowNum>
    And user opens the collateral in the edit mode
    Then dynamic form data should be same as filled in service
    @DDE
    Examples:
      | LogicalID                          | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | HL00CAS_113104_Fetch_Fd_Dynamic16  | HL          | DDE              | collateral.xlsx | fixed_deposit      | 399                        |
      | MAL00CAS_113104_Fetch_Fd_Dynamic17 | MAL         | DDE              | collateral.xlsx | fixed_deposit      | 399                        |
      | PL00CAS_113104_Fetch_Fd_Dynamic18  | PF          | DDE              | collateral.xlsx | fixed_deposit      | 399                        |

    @CreditApproval
    Examples:
      | LogicalID                          | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | HL00CAS_113104_Fetch_Fd_Dynamic19  | HL          | Credit Approval  | collateral.xlsx | fixed_deposit      | 399                        |
      | MAL00CAS_113104_Fetch_Fd_Dynamic20 | MAL         | Credit Approval  | collateral.xlsx | fixed_deposit      | 399                        |
      | PL00CAS_113104_Fetch_Fd_Dynamic21  | PF          | Credit Approval  | collateral.xlsx | fixed_deposit      | 399                        |

    @Reconsideration
    Examples:
      | LogicalID                          | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | HL00CAS_113104_Fetch_Fd_Dynamic22  | HL          | Reconsideration  | collateral.xlsx | fixed_deposit      | 399                        |
      | MAL00CAS_113104_Fetch_Fd_Dynamic23 | MAL         | Reconsideration  | collateral.xlsx | fixed_deposit      | 399                        |
      | PL00CAS_113104_Fetch_Fd_Dynamic24  | PF          | Reconsideration  | collateral.xlsx | fixed_deposit      | 399                        |

    @Recommendation
    Examples:
      | LogicalID                          | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | HL00CAS_113104_Fetch_Fd_Dynamic25  | HL          | Recommendation   | collateral.xlsx | fixed_deposit      | 399                        |
      | MAL00CAS_113104_Fetch_Fd_Dynamic26 | MAL         | Recommendation   | collateral.xlsx | fixed_deposit      | 399                        |
      | PL00CAS_113104_Fetch_Fd_Dynamic27  | PF          | Recommendation   | collateral.xlsx | fixed_deposit      | 399                        |

    @Disbursal
    Examples:
      | LogicalID                          | ProductType | ApplicationStage | CollateralWB    | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | HL00CAS_113104_Fetch_Fd_Dynamic28  | HL          | Disbursal        | collateral.xlsx | fixed_deposit      | 399                        |
      | MAL00CAS_113104_Fetch_Fd_Dynamic29 | MAL         | Disbursal        | collateral.xlsx | fixed_deposit      | 399                        |
      | PL00CAS_113104_Fetch_Fd_Dynamic30  | PF          | Disbursal        | collateral.xlsx | fixed_deposit      | 399                        |


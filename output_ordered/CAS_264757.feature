@Epic-CAS
@AuthoredBy-CASForge
@ImplementedBy-CASForge
@ReviewedBy-CASForge
@Order
@AppInfo
@CreditApproval
@CAS-264757

Feature: Separate Credit Approval decision at the sub loan level under OMNI Loan - Recommendation

    Scenario Outline: For App with [ <LogicalID> ] The Recommendation screen should display a checkbox column for the 'decision' field in the product type decision list for all sub loans in an omni loan
        Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
        And user is on CAS Login Page
        And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
        When user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
        And user opens an application of "Recommendation" stage present in context from application grid
        And user clicks on Product Type Decision List Tab
        Then user should be able to see the new column "<ColumnName>"

        Examples:
            | LogicalID | ProductType | ColumnName |
            | CAS-264757_1 | <ProductType> | <ColumnName> |

    Scenario Outline: For App with [ <LogicalID> ] The Recommendation screen should display a checkbox column for the 'decision' field in the product type decision list for all sub loans in an omni loan - Variant 2
        Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
        And all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
        When user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
        And user opens an application of "Credit Approval" stage present in context from application grid
        And user reads data from the excel file "committee_approval_grid.xlsx" under sheet "committee_approval" and row 1
        Then committee of "Minimum Approvals" should get initiated successfully

        Examples:
            | LogicalID | ProductType |
            | CAS-264757_2 | <ProductType> |

    Scenario Outline: For App with [ <LogicalID> ] The Recommendation screen should display the recommended amount field only when at least one sub loan is recommended
        Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
        And user logged in Common Masters with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
        When user open application at recommendation stage
        And the View details hyperlink should be available
        And Application at <ApplicationStage> in <ProductType>
        Then Personal information should be open

        Examples:
            | LogicalID | ProductType | SourceDataFile | SheetName | RowNumber |
            | CAS-264757_3 | <ProductType> | <SourceDataFile> | <SheetName> | <RowNumber> |

    Scenario Outline: For App with [ <LogicalID> ] The Recommendation screen should display the recommended amount field only when at least one sub loan is recommended - Variant 2
        Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
        And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
        And user picks an application of "Omni Loan" product type as "individual" applicant at stage "Recommendation" for category "" with key ""
        And user opens an application of "Recommendation" stage present in context from application grid
        And user clicks on Product Type Decision List Tab
        When user Check all mapped printing master for any product
        And user makes checkbox as "<PrimaryCardStatus>" for Primary Card
        Then Recommendation Decision dropdown field value should be "Recommended"

        Examples:
            | LogicalID | ProductType | PrimaryCardStatus |
            | CAS-264757_4 | <ProductType> | <PrimaryCardStatus> |

    Scenario Outline: For App with [ <LogicalID> ] The Recommendation screen should disable the recommended limit field when any sub loan is not recommended
        Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
        And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
        And user picks an application of "Omni Loan" product type as "individual" applicant at stage "Recommendation" for category "" with key ""
        And user opens an application of "Recommendation" stage present in context from application grid
        And user clicks on Product Type Decision List Tab
        When user Check all mapped printing master for any product
        And user makes checkbox as "<PrimaryCardStatus>" for Primary Card
        Then Recommendation Decision dropdown field value should be "Recommended"

        Examples:
            | LogicalID | ProductType | PrimaryCardStatus |
            | CAS-264757_5 | <ProductType> | <PrimaryCardStatus> |

    Scenario Outline: For App with [ <LogicalID> ] The Recommendation screen should disable the recommended limit field when any sub loan is not recommended - Variant 2
        Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
        And user logged in Common Masters with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
        When user open application at recommendation stage
        And the View details hyperlink should be available
        And Application at <ApplicationStage> in <ProductType>
        Then Personal information should be open

        Examples:
            | LogicalID | ProductType | SourceDataFile | SheetName | RowNumber |
            | CAS-264757_6 | <ProductType> | <SourceDataFile> | <SheetName> | <RowNumber> |

    Scenario Outline: For App with [ <LogicalID> ] The Recommendation screen should update the application level decision to 'recommended' when at least one sub loan is selected as recommended
        Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
        And user logged in Common Masters with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
        When user open application at recommendation stage
        And the View details hyperlink should be available
        And Application at <ApplicationStage> in <ProductType>
        Then Personal information should be open

        Examples:
            | LogicalID | ProductType | SourceDataFile | SheetName | RowNumber |
            | CAS-264757_7 | <ProductType> | <SourceDataFile> | <SheetName> | <RowNumber> |

    Scenario Outline: For App with [ <LogicalID> ] The Recommendation screen should disable the application level decision field when at least one sub loan is selected as recommended
        Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
        And user logged in Common Masters with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
        When user open application at recommendation stage
        And the View details hyperlink should be available
        And Application at <ApplicationStage> in <ProductType>
        Then Personal information should be open

        Examples:
            | LogicalID | ProductType | SourceDataFile | SheetName | RowNumber |
            | CAS-264757_8 | <ProductType> | <SourceDataFile> | <SheetName> | <RowNumber> |

    Scenario Outline: For App with [ <LogicalID> ] The Recommendation screen should update the application level decision to 'not recommended' when all sub loans are marked not recommended
        Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
        And user logged in Common Masters with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
        When user open application at recommendation stage
        And the View details hyperlink should be available
        And Application at <ApplicationStage> in <ProductType>
        Then Personal information should be open

        Examples:
            | LogicalID | ProductType | SourceDataFile | SheetName | RowNumber |
            | CAS-264757_9 | <ProductType> | <SourceDataFile> | <SheetName> | <RowNumber> |

    Scenario Outline: For App with [ <LogicalID> ] The Recommendation screen should move the application to the next stage on MTNS when all sub loans are marked not recommended
        Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
        And user logged in Common Masters with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
        When user open application at recommendation stage
        And the View details hyperlink should be available
        And Application at <ApplicationStage> in <ProductType>
        Then Personal information should be open

        Examples:
            | LogicalID | ProductType | SourceDataFile | SheetName | RowNumber |
            | CAS-264757_10 | <ProductType> | <SourceDataFile> | <SheetName> | <RowNumber> |

    Scenario Outline: For App with [ <LogicalID> ] The Recommendation screen should move the application to the next stage on MTNS when all sub loans are marked not recommended - Variant 2
        Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
        And user has already added property details for underlying collateral
        And user has not updated CERSAI details for underlying collateral
        And user has already added "<CollateralSubType>" as security collateral
        And user has not updated CERSAI details for security collateral
        When user send back above application to "credit approval" stage
        And user opens an application from "Credit Approval" from its respective grid
        And user moves the "<ProductType>" application to next stage
        Then user should get an error to fill CERSAI details for underlying collateral

        Examples:
            | LogicalID | ProductType | CollateralSubType |
            | CAS-264757_11 | <ProductType> | <CollateralSubType> |

    Scenario Outline: For App with [ <LogicalID> ] The Recommendation screen should display the 'decision' field as checked by default for all sub loans
        Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
        And user logged in Common Masters with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
        When user open application at recommendation stage
        And the View details hyperlink should be available
        And Application at <ApplicationStage> in <ProductType>
        Then Personal information should be open

        Examples:
            | LogicalID | ProductType | SourceDataFile | SheetName | RowNumber |
            | CAS-264757_12 | <ProductType> | <SourceDataFile> | <SheetName> | <RowNumber> |

    Scenario Outline: For App with [ <LogicalID> ] The Recommendation screen should display the 'decision' field as checked by default for all sub loans - Variant 2
        Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
        And all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
        And user opens an application of "Credit Approval" stage present in context from application grid
        And user opens Credit Decisions Tab in Credit Approval Decision Drawer
        And user clicks on Product Type Decision List Tab
        When user fills the decision details for "<ProductType>"
        And user makes checkbox as "<PrimaryCardStatus>" for Primary Card
        And user opens Credit Decisions Tab in Credit Approval Decision Drawer
        Then Credit Approval Decision dropdown field value should be "Approved"

        Examples:
            | LogicalID | ProductType | PrimaryCardStatus |
            | CAS-264757_13 | <ProductType> | <PrimaryCardStatus> |

    Scenario Outline: For App with [ <LogicalID> ] The Recommendation screen should allow users to uncheck the 'decision' field for individual sub loans
        Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
        And user logged in Common Masters with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
        When user open application at recommendation stage
        And the View details hyperlink should be available
        And Application at <ApplicationStage> in <ProductType>
        Then Personal information should be open

        Examples:
            | LogicalID | ProductType | SourceDataFile | SheetName | RowNumber |
            | CAS-264757_14 | <ProductType> | <SourceDataFile> | <SheetName> | <RowNumber> |

    Scenario Outline: For App with [ <LogicalID> ] The Recommendation screen should allow users to uncheck the 'decision' field for individual sub loans - Variant 2
        Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
        And all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
        And user opens an application of "Credit Approval" stage present in context from application grid
        And user opens Credit Decisions Tab in Credit Approval Decision Drawer
        And user clicks on Product Type Decision List Tab
        When user fills the decision details for "<ProductType>"
        And user makes checkbox as "Un-Checked" for Primary Card
        And user saves the Product Type Decision details
        Then Total Sanction Amount should be updated to "0"

        Examples:
            | LogicalID | ProductType |
            | CAS-264757_15 | <ProductType> |

    Scenario Outline: For App with [ <LogicalID> ] The Recommendation screen should apply the same behavior for both sub loan and credit card grids
        Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
        And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
        And user reads data from the excel file "<CardDetailsWB>" under sheet "<CardDetails_sheet>" and row <CardDetails_rowNum>
        When user navigates to receipts details section at "<Var_Stage>" stage
        And user update card details to "increase" card limit
        And user save the "<CreditCard>" details
        Then credit card details should be updated successfully

        Examples:
            | LogicalID | ProductType | CardDetailsWB | CardDetails_sheet | CardDetails_rowNum | CreditCard |
            | CAS-264757_16 | <ProductType> | <CardDetailsWB> | <CardDetails_sheet> | <CardDetails_rowNum> | <CreditCard> |

    Scenario Outline: For App with [ <LogicalID> ] The Recommendation screen should update the application level decision based on the sub loan level decisions
        Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
        And user logged in Common Masters with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
        When user open application at recommendation stage
        And the View details hyperlink should be available
        And Application at <ApplicationStage> in <ProductType>
        Then Personal information should be open

        Examples:
            | LogicalID | ProductType | SourceDataFile | SheetName | RowNumber |
            | CAS-264757_17 | <ProductType> | <SourceDataFile> | <SheetName> | <RowNumber> |

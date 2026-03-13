@Epic-CAS
@AuthoredBy-CASForge
@ImplementedBy-CASForge
@ReviewedBy-CASForge
@AppInfo
@UnorderedFlow
@CAS-264757

#${ProductType:["HL","PL"]}
#${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
#${ApplicantType:["indiv","nonindiv"]}   ## If needed

Feature: Separate Credit Approval decision at the sub loan level under OMNI Loan - Recommendation

    Background:
        Given user is on CAS Login Page
        And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


    Scenario Outline: The Recommendation screen should display a checkbox column for the 'decision' field in the product type decision list for all sub loans in an omni loan
        Given user is on CAS Login Page
        And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
        When user picks an application of "Omni Loan" product type as "individual" applicant at stage "Recommendation" for category "" with key ""
        And user opens an application of "Recommendation" stage present in context from application grid
        And user clicks on Product Type Decision List accordion to expand it
        Then user should be able to see a "CheckBox" type input field in "Decision" Column for "<SubProductType>" sub product
        And user picks an application of "Omni Loan" product type as "individual" applicant at stage "Recommendation" for category "" with key ""

        @CreditApproval
        Examples:
            | ProductType | ApplicationStage | SubProductType |
            | <ProductType> | <ApplicationStage> | <SubProductType> |

    Scenario Outline: The Recommendation screen should display a checkbox column for the 'decision' field in the product type decision list for all sub loans in an omni loan - Variant 2
        Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
        And user opens an application of "Credit Approval" stage present in context from application grid
        And user opens Credit Decisions Tab in Credit Approval Decision Drawer
        And user clicks on Product Type Decision List Tab
        When user fills the decision details for "<ProductType>"
        And user makes checkbox as "<CheckBoxStatus>" for Primary Card
        And user opens Credit Decisions Tab in Credit Approval Decision Drawer
        Then Credit Approval Decision dropdown field value should be "<Decision>"

        @CreditApproval
        Examples:
            | ProductType | ApplicationStage | CheckBoxStatus | Decision |
            | <ProductType> | <ApplicationStage> | <CheckBoxStatus> | <Decision> |

    Scenario Outline: The Recommendation screen should display the recommended amount field only when at least one sub loan is recommended
        Given user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
        And user picks an application of "Omni Loan" product type as "individual" applicant at stage "Recommendation" for category "" with key ""
        And user opens an application of "Recommendation" stage present in context from application grid
        And user clicks on Product Type Decision List accordion to expand it
        When user sets recommended checkbox for following sub products
        And user makes checkbox as "<PrimaryCardStatus>" for Primary Card
        Then Recommendation Decision dropdown field value should be "Recommended"

        @CreditApproval
        Examples:
            | ProductType | ApplicationStage | PrimaryCardStatus |
            | <ProductType> | <ApplicationStage> | <PrimaryCardStatus> |

    Scenario Outline: The Recommendation screen should display the recommended amount field only when at least one sub loan is recommended - Variant 2
        Given user picks an application of "Omni Loan" product type as "individual" applicant at stage "Recommendation" for category "" with key ""
        And user opens an application of "Recommendation" stage present in context from application grid
        And user clicks on Product Type Decision List accordion to expand it
        And user sets recommended checkbox for following sub products
        When user enters "0" in Recommended amount for "<SubProductType>"
        And user saves the Product Type Decision details
        Then user should be able to see validation popup with message Recommended amount for "<SubProductType>" can not be 0

        @CreditApproval
        Examples:
            | ProductType | ApplicationStage | SubProductType |
            | <ProductType> | <ApplicationStage> | <SubProductType> |

    Scenario Outline: The Recommendation screen should update the application level decision to 'recommended' when at least one sub loan is selected as recommended
        Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
        When User selects Loan application at App Update Recommendation Stage
        And user select view details hyper link
        And Application at <ApplicationStage> in <ProductType>
        Then application should move to "Recommendation" stage
        And User selects Loan application at App Update Recommendation Stage

        @CreditApproval
        Examples:
            | ProductType | ApplicationStage | SourceDataFile | SheetName | RowNumber |
            | <ProductType> | <ApplicationStage> | <SourceDataFile> | <SheetName> | <RowNumber> |

    Scenario Outline: The Recommendation screen should disable the application level decision field when at least one sub loan is selected as recommended
        Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
        And user opens an application of "Credit Approval" stage present in context from application grid
        And user opens Credit Decisions Tab in Credit Approval Decision Drawer
        And user clicks on Product Type Decision List Tab
        When user fills the decision details for "<ProductType>"
        And user makes checkbox as "<PrimaryCardStatus>" for Primary Card
        And user opens Credit Decisions Tab in Credit Approval Decision Drawer
        Then Credit Approval Decision dropdown field value should be "Approved"

        @CreditApproval
        Examples:
            | ProductType | ApplicationStage | PrimaryCardStatus |
            | <ProductType> | <ApplicationStage> | <PrimaryCardStatus> |

    Scenario Outline: The Recommendation screen should move the application to the next stage on MTNS when all sub loans are marked not recommended - Variant 2
        Given user has already added property details for underlying collateral
        And user has not updated CERSAI details for underlying collateral
        And user has already added "<CollateralSubType>" as security collateral
        And user has not updated CERSAI details for security collateral
        When user has moved the application to credit approval stage
        And user opens the application from credit approval menu
        And user moves the "<ProductType>" application to next stage
        Then user should get an error to fill CERSAI details for underlying collateral

        @CreditApproval
        Examples:
            | ProductType | ApplicationStage | CollateralSubType |
            | <ProductType> | <ApplicationStage> | <CollateralSubType> |

    Scenario Outline: The Recommendation screen should display the 'decision' field as checked by default for all sub loans - Variant 2
        Given maker logged in "CAS" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
        And user opens an application at "<Var_Stage>" stage from application grid
        And user is on Decision Justification details at recommendation
        And user reads data from the excel file "<RecommendationWB>" under sheet "<Recommendation_default>" and row <Recommendation_default_rowNum>
        When user enters "<FieldName>" "<var>" in Decision Justification Details at recommendation for "<Applicant>" at "<Loan_Type>"
        Then "<FieldName>" field with "<Throws_notThrows>" "<ErrorMessage>" in Decision Justification Details at recommendation

        @CreditApproval
        Examples:
            | ProductType | ApplicationStage | SourceDataFile | SheetName | Var_Stage | RecommendationWB | Recommendation_default | Recommendation_default_rowNum | FieldName | var | Applicant | Loan_Type | Throws_notThrows | ErrorMessage |
            | <ProductType> | <ApplicationStage> | <SourceDataFile> | <SheetName> | <Var_Stage> | <RecommendationWB> | <Recommendation_default> | <Recommendation_default_rowNum> | <FieldName> | <var> | <Applicant> | <Loan_Type> | <Throws_notThrows> | <ErrorMessage> |

    Scenario Outline: The Recommendation screen should allow users to uncheck the 'decision' field for individual sub loans
        Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
        And user opens an application of "Credit Approval" stage present in context from application grid
        And user opens Credit Decisions Tab in Credit Approval Decision Drawer
        And user clicks on Product Type Decision List Tab
        When user fills the decision details for "<ProductType>"
        And user makes checkbox as "Un-Checked" for Primary Card
        And user saves the Product Type Decision details
        Then Total Sanction Amount should be updated to "0"

        @CreditApproval
        Examples:
            | ProductType | ApplicationStage |
            | <ProductType> | <ApplicationStage> |

    Scenario Outline: The Recommendation screen should allow users to uncheck the 'decision' field for individual sub loans - Variant 2
        Given user is on CAS Login Page
        And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
        When user picks an application of "Omni Loan" product type as "individual" applicant at stage "Recommendation" for category "" with key ""
        And user opens an application of "Recommendation" stage present in context from application grid
        And user clicks on Product Type Decision List accordion to expand it
        Then user should not be able to modifies the data

        @CreditApproval
        Examples:
            | ProductType | ApplicationStage |
            | <ProductType> | <ApplicationStage> |

    Scenario Outline: The Recommendation screen should apply the same behavior for both sub loan and credit card grids
        Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
        And user reads data from the excel file "<CardDetailsWB>" under sheet "<CardDetails_sheet>" and row <CardDetails_rowNum>
        When user navigates to credit card details at Recommendation stage
        And user updates card limit of "<CreditCard>"
        And user save the "<CreditCard>" details
        Then credit card details should be updated successfully

        @CreditApproval
        Examples:
            | ProductType | ApplicationStage | CardDetailsWB | CardDetails_sheet | CardDetails_rowNum | CreditCard |
            | <ProductType> | <ApplicationStage> | <CardDetailsWB> | <CardDetails_sheet> | <CardDetails_rowNum> | <CreditCard> |

    Scenario Outline: The Recommendation screen should update the application level decision based on the sub loan level decisions
        Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
        When User selects Loan application at App Update Recommendation Stage
        And user select view details hyper link
        And Application at <ApplicationStage> in <ProductType>
        Then the modal window Score Card details appear on the screen on App update recommendation stage
        And User selects Loan application at App Update Recommendation Stage

        @CreditApproval
        Examples:
            | ProductType | ApplicationStage | SourceDataFile | SheetName | RowNumber |
            | <ProductType> | <ApplicationStage> | <SourceDataFile> | <SheetName> | <RowNumber> |

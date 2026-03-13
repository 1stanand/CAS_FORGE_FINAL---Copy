@Epic-CAS
@AuthoredBy-CASForge
@ImplementedBy-CASForge
@ReviewedBy-CASForge
@AppInfo
@UnorderedFlow
@CAS-264757
@<ExampleBlockTag1>
@<OptionalSecondExampleBlockTag>
@<ExampleBlockTag>

#${ProductType:["HL","PL"]}
#${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
#${ApplicantType:["indiv","nonindiv"]}   ## If needed

Feature: Separate Credit Approval decision at the sub loan level under OMNI Loan - Recommendation

    Background:
        Given user is on CAS Login Page
        And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


    Scenario Outline: The Recommendation screen should display a checkbox column 'decision' for all sub loans in an omni loan
        Given user makes checkbox as "Checked" for Primary Card
        And user saves the Product Type Decision details
        And user opens Credit Decisions Tab in Credit Approval Decision Drawer
        And user reads data from the excel file "credit_approval_end_flow.xlsx" under sheet "underwriter_decision" and row 3
        When user fills the decision details for "Omni Loan"
        And credit approval decision saved successfully
        And user clicks on move to next stage
        Then Collateral should get de-linked from rejected sub loan "Home Loan"   ### How It will be checked is implementation decision, test case remains

        @CreditApproval
        Examples:
            | ProductType | ApplicationStage |
            | <ProductType> | <ApplicationStage> |

    Scenario Outline: The Recommendation screen should display a checkbox column 'decision' for all sub loans in an omni loan - Variant 2
        Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
        And user opens an application of "Credit Approval" stage present in context from application grid
        And user opens the Decision Drawer at Credit Approval Stage
        And user clicks on Product Type Decision List Tab
        When user fills the decision details for "<ProductType>"
| Home Loan     | <CheckBoxStatus> |
| Personal Loan | <CheckBoxStatus> |
| Auto Loan     | <CheckBoxStatus> |
        Then Approved Amount field should be "<isEnabled>" for following sub products
| Home Loan     |
| Personal Loan |
| Auto Loan     |
| Home Loan     |
| Personal Loan |
| Auto Loan     |

        @CreditApproval
        Examples:
            | ProductType | ApplicationStage | CheckBoxStatus | isEnabled |
            | <ProductType> | <ApplicationStage> | <CheckBoxStatus> | <isEnabled> |

    Scenario Outline: The Recommendation screen should display the recommended amount field only when all sub loans are recommended
        Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
        When User selects Loan application at App Update Recommendation Stage
        And user select view details hyper link
        And Application at <ApplicationStage> in <ProductType>
        Then Personal information should be open

        @CreditApproval
        Examples:
            | ProductType | ApplicationStage | SourceDataFile | SheetName | RowNumber |
            | <ProductType> | <ApplicationStage> | <SourceDataFile> | <SheetName> | <RowNumber> |

    Scenario Outline: The Recommendation screen should display the recommended amount field only when all sub loans are recommended - Variant 2
        Given the user is logged in as a Credit Approver
        And the user clicks on the Re-Initiate RCU button under the RCU tab
        When the user is on the Credit Application screen at <Credit Approval> stage
        And the application has both previously verified and newly uploaded documents
        And the documents have the following RCU statuses:
| Document Name      | RCU Status     |
| Income Proof       | Completed      |
| Address Proof      | Non-Initiated  |
| ID Proof           | In Progress    |
| Document Name      | RCU Status     |
| Income Proof       | Completed      |
| Address Proof      | Non-Initiated  |
| ID Proof           | In Progress    |
        Then the RCU modal screen should open

        @CreditApproval
        Examples:
            | ProductType | ApplicationStage | Credit Approval |
            | <ProductType> | <ApplicationStage> | <Credit Approval> |

    Scenario Outline: The Recommendation screen should disable the recommended limit field when any sub loan is not recommended
        Given user is on CAS Login Page
        And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7
        And user logout from CAS
        And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
        When user selects the "<Loan_Type>" application of credit approval stage
        And user records the "<var>" of above application
        And user click on CAM report
        Then "<var>" is same as above record

        @CreditApproval
        Examples:
            | ProductType | ApplicationStage | Loan_Type | var |
            | <ProductType> | <ApplicationStage> | <Loan_Type> | <var> |

    Scenario Outline: The Recommendation screen should disable the recommended limit field when any sub loan is not recommended - Variant 2
        Given enter Product Code on Create Scheme screen
        And enter Scheme start date on Create Scheme screen
        And select Default Scheme checkbox on Create Scheme screen
        And enter Minimum Loan Value on Create Scheme screen
        When enter Maximum Loan Value on Create Scheme screen
        And enter LTV value on Create Scheme screen
        And select currency mapping on Create Scheme screen
        Then Bill Discounting Type should be "<NewType>" in scheme

        @CreditApproval
        Examples:
            | ProductType | ApplicationStage | NewType |
            | <ProductType> | <ApplicationStage> | <NewType> |

    Scenario Outline: The Recommendation screen should update the application level decision to 'recommended' when at least one sub loan is recommended
        Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
        When User selects Loan application at App Update Recommendation Stage
        And user select view details hyper link
        And Application at <ApplicationStage> in <ProductType>
        Then Personal information should be open

        @CreditApproval
        Examples:
            | ProductType | ApplicationStage | SourceDataFile | SheetName | RowNumber |
            | <ProductType> | <ApplicationStage> | <SourceDataFile> | <SheetName> | <RowNumber> |

    Scenario Outline: The Recommendation screen should update the application level decision to 'not recommended' when all sub loans are not recommended and move to the next stage
        Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
        When User selects Loan application at App Update Recommendation Stage
        And user select view details hyper link
        And Application at <ApplicationStage> in <ProductType>
        Then Personal information should be open

        @CreditApproval
        Examples:
            | ProductType | ApplicationStage | SourceDataFile | SheetName | RowNumber |
            | <ProductType> | <ApplicationStage> | <SourceDataFile> | <SheetName> | <RowNumber> |

    Scenario Outline: The Recommendation screen should disable the application level decision field when at least one sub loan is recommended
        Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
        When User selects Loan application at App Update Recommendation Stage
        And user select view details hyper link
        And Application at <ApplicationStage> in <ProductType>
        Then Personal information should be open

        @CreditApproval
        Examples:
            | ProductType | ApplicationStage | SourceDataFile | SheetName | RowNumber |
            | <ProductType> | <ApplicationStage> | <SourceDataFile> | <SheetName> | <RowNumber> |

    Scenario Outline: The Recommendation screen should disable the application level decision field when at least one sub loan is recommended - Variant 2
        Given user is on CAS Login Page
        And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7
        And user logout from CAS
        And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
        When user selects the "<Loan_Type>" application of credit approval stage
        And user records the "<var>" of above application
        And user click on CAM report
        Then "<var>" is same as above record

        @CreditApproval
        Examples:
            | ProductType | ApplicationStage | Loan_Type | var |
            | <ProductType> | <ApplicationStage> | <Loan_Type> | <var> |

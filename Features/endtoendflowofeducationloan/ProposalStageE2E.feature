@Epic-E2E
@AuthoredBy-vaishnavi.agrawal
@ImplementedBy-ashutosh.kumar2
@Conventional
@Proposal
@E2EOrder
@Release

Feature: End to end work flow of Consumer Durable

  #----------------------------------------- SOURCING DETAILS TAB ---------------------#
Scenario Outline: ACAUTOCAS-19923: Fill sourcing details in proposal stage for <ProductType> LogicalID <LogicalID>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user starts creating application of logical id "<LogicalID>"
    And user create new application for "<ProductType>"
    And user reads data from the excel file "consume_durable_end_flow.xlsx" under sheet "sourcing_details" and row 0
    When user fills sourcing details on proposal stage
    And user reads data from the excel file "consume_durable_end_flow.xlsx" under sheet "asset_details" and row 0
    And user enters asset details on proposal stage
    And user clicks on save button of asset details information
    Then Proposal Id should be display at top of screen
    Examples:
      | LogicalID | ProductType      |
      | CD00001   | Consumer Durable |

    #------------------------------ LOAN DETAILS TAB --------------------#

Scenario Outline: ACAUTOCAS-19924: Fill loan details in proposal stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sheet>" and row <Loan_details_rowNum>
    And user fills loan details in loan details section
    When user clicks on save button in loan details
    Then Loan details should be saved successfully

    Examples:
      | LogicalID | LoanDetailsWB                 | LoanDetails_sheet | Loan_details_rowNum | ProductType      |
      | CD00001   | consume_durable_end_flow.xlsx | loan_details      | 0                   | Consumer Durable |

     #---------------------- APPLICANT DETAILS --------------------------#

Scenario Outline: ACAUTOCAS-19925: Save personal details after filling mandatory data for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user select "New Customer" applicant Type
    When user reads data from the excel file "consume_durable_end_flow.xlsx" under sheet "personal_details" and row 0
    And user fills personal details in applicant details section
    And user reads data from the excel file "consume_durable_end_flow.xlsx" under sheet "family_details" and row 0
    And user fills family details in family details section
    And user reads data from the excel file "consume_durable_end_flow.xlsx" under sheet "communication_details" and row 0
    And user fills communication details in communication details section
    Then User check data filled Successfully in personal details

    Examples:
      | LogicalID | ProductType      |
      | CD00001   | Consumer Durable |

Scenario Outline: ACAUTOCAS-19926: Add identification Type <IdentificationType> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<ConsumerDurableWB>" under sheet "<ConsumerDurableSheet>" and row <ConsumerDurableRowNum>
    When user fills identification details in identification details section
    And user clicks on save button in identification details
    Then identification details should be saved successfully

    Examples:
      | LogicalID | ProductType      | ConsumerDurableWB             | ConsumerDurableSheet   | ConsumerDurableRowNum |
      | CD00001   | Consumer Durable | consume_durable_end_flow.xlsx | identification_details | 1                     |
      | CD00001   | Consumer Durable | consume_durable_end_flow.xlsx | identification_details | 0                     |


Scenario Outline: ACAUTOCAS-19927: Save address details after filling mandatory data for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<AddressDetailsWB>" under sheet "<AddressDetails_sheet>" and row <Address_details_rowNum>
    When user click on Add button of Address grid
    And user fills address details in address grid section
    And user clicks on checks for duplicate
    Then dedupe initiated successfully
    Examples:
      | LogicalID | AddressDetailsWB              | AddressDetails_sheet | Address_details_rowNum | ProductType      |
      | CD00001   | consume_durable_end_flow.xlsx | address_details      | 0                      | Consumer Durable |
      | CD00001   | consume_durable_end_flow.xlsx | address_details      | 1                      | Consumer Durable |


Scenario Outline: ACAUTOCAS-19928: Save employment details manually of applicant of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "consume_durable_end_flow.xlsx" under sheet "finance_details" and row 0
    And user fills employment details in employment details section
    And user fills income details in income details section
    And user reads data from the excel file "consume_durable_end_flow.xlsx" under sheet "assets" and row 0
    And user click on Add button of assets Details
    When user fills assets details in assets details section
    And user reads data from the excel file "consume_durable_end_flow.xlsx" under sheet "liabilities" and row 0
    And user click on Add button of liability Details
    And user fills liabilities details in liability section
    And user clicks on done button to save liability details
    And user clicks on save details
    Then employment details should be saved successfully
    Examples:
      | LogicalID | ProductType      |
      | CD00001   | Consumer Durable |

    #---------------------------- BANK AND CARD DETAILS -----------------------------#

Scenario Outline: ACAUTOCAS-19929: Save bank details of an applicant of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<BankDetailsWB>" under sheet "<BankDetails_sheet>" and row <BankDetails_rowNum>
    And user click on Add button of Bank Details
    When user fills the Bank details for proposal stage
    And user saves the bank details in proposal stage
    Then bank details should be saved successfully

    Examples:
      | LogicalID | BankDetailsWB                  | BankDetails_sheet | BankDetails_rowNum | ProductType      |
      | CD00001   | consume_durable_end_flow.xlsx | bank_details      | 8                  | Consumer Durable |

Scenario Outline: ACAUTOCAS-19930: Save Card details of an applicant of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<CardDetailsWB>" under sheet "<CardDetails_sheet>" and row <CardDetails_rowNum>
    And user click on Add button of Card Details
    When user adds credit card details for proposal
    And user saves the bank details in proposal stage
    Then Card details should be saved successfully

    Examples:
      | LogicalID | CardDetailsWB                  | CardDetails_sheet | CardDetails_rowNum | ProductType      |
      | CD00001   | consume_durable_end_flow.xlsx | card_details      | 0                  | Consumer Durable |

Scenario Outline: ACAUTOCAS-19931: Submit documents in Documents section at proposal stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<DocumentWB>" under sheet "<Document_sheet>" and row <Document_rowNum>
    And user selects the document
    And user select document status as "Received"
    When user uploads document with "<document_format>" format
    And user saves the document in proposal
    Then documents should be submitted successfully

    Examples:
      | LogicalID | DocumentWB    | Document_sheet | Document_rowNum | ProductType      | document_format |
      | CD00001   | document.xlsx | home           | 476             | Consumer Durable | pdf             |
      | CD00001   | document.xlsx | home           | 365             | Consumer Durable | jpg             |
      | CD00001   | document.xlsx | home           | 367             | Consumer Durable | txt             |

Scenario Outline: ACAUTOCAS-19932:  Validate application number after submitting data at proposal stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks submit button on proposal
    Then application should move to "Recommendation" stage

    Examples:
      | LogicalID | ProductType      |
      | CD00001   | Consumer Durable |



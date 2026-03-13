@Epic-PF_Share_Base
@PQMStory
@AuthoredBy-ankit.yadav
@ImplementedBy-ankit.yadav
@Islamic
@Release
@Shares
@Perishable

#${ProductType:["IPF"]}
#${ApplicationStage:["Reconsideration"]}
#${ApplicantType:["indiv"]}


Feature: Share Purchase Details At Single Requested Share Price Validation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0

Scenario Outline: ACAUTOCAS-18195: Verify <Fields> with Required Button for order type Single Requested share price at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 104 |
      | sharepurchase.xlsx | share_execution | 105 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 106 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    When user selects Required button on share purchase
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then user should be able to see share purchase details fields with label as in workbook
    Examples:
      | Fields                | ProductType | ApplicationStage | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType | Category | Key                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | VarStage1   | VarStage2      | VarStage3     |
      | Serial No             | IPF         | Reconsideration  | share_purchase             | 13                                | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |
      | Execution Date/Time   | IPF         | Reconsideration  | share_purchase             | 14                                | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |
      | Total Executed Amount | IPF         | Reconsideration  | share_purchase             | 15                                | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |
      | Status                | IPF         | Reconsideration  | share_purchase             | 16                                | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |
      | Additional Details    | IPF         | Reconsideration  | share_purchase             | 17                                | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |

Scenario Outline: ACAUTOCAS-18196: Check Expand All functionality with <Section> for order type Single Requested share price at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 104 |
      | sharepurchase.xlsx | share_execution | 105 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 106 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    When user clicks on Expand All button
    Then "<Section>" in the share purchase tab should be expanded
    Examples:
      | ProductType | ApplicationStage | Section                     | ApplicantType | Category | Key                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | VarStage1   | VarStage2      | VarStage3     |
      | IPF         | Reconsideration  | Share Purchase Details Grid | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |

Scenario Outline: ACAUTOCAS-18197: Validate collapse All functionality with <Section> for order type Single Requested share price at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 104 |
      | sharepurchase.xlsx | share_execution | 105 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 106 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    When user clicks on collapse "<Section>" while all tabs are bydefault opened
    Then "<Section>" in the share purchase tab should be collapsed
    Examples:
      | ProductType | ApplicationStage | Section                     | ApplicantType | Category | Key                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | VarStage1   | VarStage2      | VarStage3     |
      | IPF         | Reconsideration  | Share Purchase Details Grid | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |

Scenario Outline: ACAUTOCAS-18198: Verify if Share Exceution grid is <condition> for order type Single Requested share price at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 104 |
      | sharepurchase.xlsx | share_execution | 105 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 106 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    When user is on Share Purchase Tab
    Then share execution details grid should be "<condition>"
    Examples:
      | ProductType | ApplicationStage | condition | ApplicantType | Category | Key                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | VarStage1   | VarStage2      | VarStage3     |
      | IPF         | Reconsideration  | visible   | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |

Scenario Outline: ACAUTOCAS-18199: Share Execution Grid <ColumnName> verification for order type Single Requested share price at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 104 |
      | sharepurchase.xlsx | share_execution | 105 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 106 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    When user is on Share Purchase Tab
    Then "<ColumnName>" should be present at proper position
    Examples:
      | ProductType | ApplicationStage | ColumnName            | ApplicantType | Category | Key                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | VarStage1   | VarStage2      | VarStage3     |
      | IPF         | Reconsideration  | Serial No             | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |
      | IPF         | Reconsideration  | Execution Date/Time   | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |
      | IPF         | Reconsideration  | Total Executed Amount | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |
      | IPF         | Reconsideration  | Status                | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |
      | IPF         | Reconsideration  | Additional Details    | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |

Scenario Outline: ACAUTOCAS-18200: Validate + icon on share execution details to be <Condition> for order type Single Requested share price at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 104 |
      | sharepurchase.xlsx | share_execution | 105 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 106 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    When user clicks on + Icon corresponding to any record
    Then plus icon should be "<Condition>" next to each record in the grid
    Examples:
      | ProductType | ApplicationStage | Condition | ApplicantType | Category | Key                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | VarStage1   | VarStage2      | VarStage3     |  |
      | IPF         | Reconsideration  | displayed | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |  |
      | IPF         | Reconsideration  | enabled   | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |  |

Scenario Outline: ACAUTOCAS-18201: Validate clicking + Icon <Condition> for order type Single Requested share price at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 104 |
      | sharepurchase.xlsx | share_execution | 105 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 106 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    When user clicks on + Icon corresponding to any record
    Then "<Condition>" on share purchase tab
    Examples:
      | ProductType | ApplicationStage | Condition                                | ApplicantType | Category | Key                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | VarStage1   | VarStage2      | VarStage3     |  |
      | IPF         | Reconsideration  | details will get opened in expanded mode | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |  |
      | IPF         | Reconsideration  | plus icon will change into minus icon    | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |  |

Scenario Outline: ACAUTOCAS-18202: Validate grid in Expand All mode and <Condition> for order type Single Requested share price at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 104 |
      | sharepurchase.xlsx | share_execution | 105 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 106 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    When user clicks on Expand All button
    Then "<Condition>" on share purchase tab
    Examples:
      | ProductType | ApplicationStage | Condition                                | ApplicantType | Category | Key                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | VarStage1   | VarStage2      | VarStage3     |
      | IPF         | Reconsideration  | details will get opened in expanded mode | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |
      | IPF         | Reconsideration  | plus icon will change into minus icon    | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |

Scenario Outline: ACAUTOCAS-18203: Validate <Column> by clicking + button for order type Single Requested share price at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 104 |
      | sharepurchase.xlsx | share_execution | 105 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 106 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    When user clicks on + Icon corresponding to any record
    Then investor details "<Column>" should be present along with data
    Examples:
      | ProductType | ApplicationStage | Column               | ApplicantType | Category | Key                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | VarStage1   | VarStage2      | VarStage3     |
      | IPF         | Reconsideration  | Company Name         | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |
      | IPF         | Reconsideration  | Order Number         | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |
      | IPF         | Reconsideration  | Executed Quantity    | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |
      | IPF         | Reconsideration  | Executed Share Price | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |
      | IPF         | Reconsideration  | VAT Amount           | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |
      | IPF         | Reconsideration  | Executed Amount      | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |
      | IPF         | Reconsideration  | Execution Flag       | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |

Scenario Outline: ACAUTOCAS-18204: Validate number of records for order type Single Requested share price at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 104 |
      | sharepurchase.xlsx | share_execution | 105 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 106 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    When user clicks on + Icon corresponding to any record
    Then single or multiple records can be present in the grid
    Examples:
      | ProductType | ApplicationStage | ApplicantType | Category | Key                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | VarStage1   | VarStage2      | VarStage3     |
      | IPF         | Reconsideration  | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |

Scenario Outline: ACAUTOCAS-18204: Validate number of records for order type Single Requested share price at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 104 |
      | sharepurchase.xlsx | share_execution | 105 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 106 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    When user clicks on + Icon corresponding to any record
    Then single or multiple records can be present in the grid
    Examples:
      | ProductType | ApplicationStage | ApplicantType | Category | Key                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | VarStage1   | VarStage2      | VarStage3     |
      | IPF         | Reconsideration  | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |

Scenario Outline: ACAUTOCAS-18205: Validate Additional Details hyper link to be <Condition> for order type Single Requested share price at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 104 |
      | sharepurchase.xlsx | share_execution | 105 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 106 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    When user is on Share Purchase Tab
    Then additional details hyperlink corresponding to each record should be "<Condition>"
    Examples:
      | ProductType | ApplicationStage | Condition | ApplicantType | Category | Key                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | VarStage1   | VarStage2      | VarStage3     |
      | IPF         | Reconsideration  | displayed | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |

Scenario Outline: ACAUTOCAS-18206: Validate Additional details modal window for order type Single Requested share price at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 104 |
      | sharepurchase.xlsx | share_execution | 105 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 106 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    When user clicks on additional details hyperlink for any record
    Then additional Details modal window will open
    Examples:
      | ProductType | ApplicationStage | ApplicantType | Category | Key                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | VarStage1   | VarStage2      | VarStage3     |
      | IPF         | Reconsideration  | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |

Scenario Outline: ACAUTOCAS-18207: Validate closing of Additional details modal window for order type Single Requested share price at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 104 |
      | sharepurchase.xlsx | share_execution | 105 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 106 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    And user clicks on additional details hyperlink for any record
    When user click on cancel button
    Then modal window should get closed
    Examples:
      | ProductType | ApplicationStage | ApplicantType | Category | Key                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | VarStage1   | VarStage2      | VarStage3     |
      | IPF         | Reconsideration  | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |

Scenario Outline: ACAUTOCAS-18208: In Additional Field section verify first field should be RFF value for order type Single Requested share price at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 104 |
      | sharepurchase.xlsx | share_execution | 105 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 106 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    When user clicks on additional details hyperlink for any record
    Then first field should be RFF value
    Examples:
      | ProductType | ApplicationStage | ApplicantType | Category | Key                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | VarStage1   | VarStage2      | VarStage3     |
      | IPF         | Reconsideration  | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |

Scenario Outline: ACAUTOCAS-18209: Verify option Show Entry with <NoOfRecords> records for order type Single Requested share price at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 104 |
      | sharepurchase.xlsx | share_execution | 105 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 106 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    When user clicks on show entry and select "<NoOfRecords>" records
    Then upto "<NoOfRecords>" records should be visible in grid
    Examples:
      | ProductType | ApplicationStage | NoOfRecords | ApplicantType | Category | Key                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | VarStage1   | VarStage2      | VarStage3     |
      | IPF         | Reconsideration  | 10          | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |
      | IPF         | Reconsideration  | 25          | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |
      | IPF         | Reconsideration  | 50          | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |
      | IPF         | Reconsideration  | 100         | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |

Scenario Outline: ACAUTOCAS-18210: Verify <FieldValue> should come from Investor details for order type Single Requested share price at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 104 |
      | sharepurchase.xlsx | share_execution | 105 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 106 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user clicks on + Icon corresponding to any record
    Then investor details "<FieldValue>" should be present along with data
    Examples:
      | ProductType | ApplicationStage | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FieldValue           | ApplicantType | Category | Key                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | VarStage1   | VarStage2      | VarStage3     |
      | IPF         | Reconsideration  | share_purchase             | 99                                | Company Name         | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |
      | IPF         | Reconsideration  | share_purchase             | 99                                | Executed Share Price | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |
      | IPF         | Reconsideration  | share_purchase             | 99                                | Executed Amount      | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 | Share Order | SHARE_PURCHASE | Post Approval |

Scenario Outline: ACAUTOCAS-18211: Validate Total Executed Amount and <Field> for order type Single Requested share price at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 104 |
      | sharepurchase.xlsx | share_execution | 105 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 106 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    When user clicks on + Icon corresponding to any record
    Then total executed Amount should be greater than equal to "<Field>"
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | Field                | ApplicantType | Category | Key                | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | Executed Share Price | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | VAT Amount           | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | Executed Amount      | indiv         | shares   | ispurchase promise | sharepurchase.xlsx | share_execution              | 103                                 |


Scenario Outline: ACAUTOCAS-18212: Share Purchase of investor details data for order type Requested share price 106 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 104 |
      | sharepurchase.xlsx | share_execution | 105 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 106 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 103                                 | indiv         | shares   | ispurchase promise |

#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18213: Share Purchase of investor details data for order type Requested share price 103 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 104 |
      | sharepurchase.xlsx | share_execution | 105 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 109 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 103                                 | indiv         | shares   | ispurchase promise |

#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18214: Share Purchase of investor details data for order type Requested share price at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 104 |
      | sharepurchase.xlsx | share_execution | 105 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 109 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 103                                 | indiv         | shares   | ispurchase promise |

#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18215: Share Purchase of investor details data for order type Requested share price 112 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 104 |
      | sharepurchase.xlsx | share_execution | 105 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 112 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 103                                 | indiv         | shares   | ispurchase promise |


#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18216: Share Purchase of investor details data for order type Requested share price 115 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 115 |
      | sharepurchase.xlsx | share_execution | 116 |
      | sharepurchase.xlsx | share_execution | 117 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 115 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 115                                 | indiv         | shares   | ispurchase promise |

#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18217: Share Purchase of investor details data for order type Requested share price 118 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 115 |
      | sharepurchase.xlsx | share_execution | 116 |
      | sharepurchase.xlsx | share_execution | 117 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 115 |
      | sharepurchase.xlsx | share_execution | 118 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 115                                 | indiv         | shares   | ispurchase promise |

#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18218: Share Purchase of investor details data for order type Requested share price 121 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 115 |
      | sharepurchase.xlsx | share_execution | 116 |
      | sharepurchase.xlsx | share_execution | 117 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 124 |
      | sharepurchase.xlsx | share_execution | 121 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 115                                 | indiv         | shares   | ispurchase promise |

#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18219: Share Purchase of investor details data for order type Requested share price 124 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 115 |
      | sharepurchase.xlsx | share_execution | 116 |
      | sharepurchase.xlsx | share_execution | 117 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 124 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 115                                 | indiv         | shares   | ispurchase promise |


#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18220: Share Purchase of investor details data for order type Requested share price 139 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 139 |
      | sharepurchase.xlsx | share_execution | 140 |
      | sharepurchase.xlsx | share_execution | 141 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 139 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 139                                 | indiv         | shares   | ispurchase promise |


#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18221: Share Purchase of investor details data for order type Requested share price 142 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 139 |
      | sharepurchase.xlsx | share_execution | 140 |
      | sharepurchase.xlsx | share_execution | 141 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 142 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 139                                 | indiv         | shares   | ispurchase promise |


#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18222: Share Purchase of investor details data for order type Requested share price 145 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 139 |
      | sharepurchase.xlsx | share_execution | 140 |
      | sharepurchase.xlsx | share_execution | 141 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 145 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 139                                 | indiv         | shares   | ispurchase promise |


#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18223: Share Purchase of investor details data for order type Requested share price 148 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 139 |
      | sharepurchase.xlsx | share_execution | 140 |
      | sharepurchase.xlsx | share_execution | 141 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 148 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 139                                 | indiv         | shares   | ispurchase promise |


#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18224: Share Purchase of investor details data for order type Requested share price 151 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 151 |
      | sharepurchase.xlsx | share_execution | 152 |
      | sharepurchase.xlsx | share_execution | 153 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 151 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 151                                 | indiv         | shares   | ispurchase promise |


#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18225: Share Purchase of investor details data for order type Requested share price 154 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 151 |
      | sharepurchase.xlsx | share_execution | 152 |
      | sharepurchase.xlsx | share_execution | 153 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 154 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 151                                 | indiv         | shares   | ispurchase promise |


#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18226: Share Purchase of investor details data for order type Requested share price 157 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 151 |
      | sharepurchase.xlsx | share_execution | 152 |
      | sharepurchase.xlsx | share_execution | 153 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 157 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 151                                 | indiv         | shares   | ispurchase promise |


#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18227: Share Purchase of investor details data for order type Requested share price 160 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 151 |
      | sharepurchase.xlsx | share_execution | 152 |
      | sharepurchase.xlsx | share_execution | 153 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 160 |
      | sharepurchase.xlsx | share_execution | 169 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 151                                 | indiv         | shares   | ispurchase promise |


#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18228: Share Purchase of investor details data for order type Requested share price 163 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 151 |
      | sharepurchase.xlsx | share_execution | 152 |
      | sharepurchase.xlsx | share_execution | 153 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 169 |
      | sharepurchase.xlsx | share_execution | 166 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 151                                 | indiv         | shares   | ispurchase promise |


#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18229: Share Purchase of investor details data for order type Requested share price 166 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 166 |
      | sharepurchase.xlsx | share_execution | 167 |
      | sharepurchase.xlsx | share_execution | 168 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 166 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 166                                 | indiv         | shares   | ispurchase promise |

#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18230: Share Purchase of investor details data for order type Requested share price 169 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 166 |
      | sharepurchase.xlsx | share_execution | 167 |
      | sharepurchase.xlsx | share_execution | 168 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 169 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 166                                 | indiv         | shares   | ispurchase promise |

#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18231: Share Purchase of investor details data for order type Requested share price 172 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 166 |
      | sharepurchase.xlsx | share_execution | 167 |
      | sharepurchase.xlsx | share_execution | 168 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 175 |
      | sharepurchase.xlsx | share_execution | 169 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 166                                 | indiv         | shares   | ispurchase promise |


#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18232: Share Purchase of investor details data for order type Requested share price 175 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 175 |
      | sharepurchase.xlsx | share_execution | 176 |
      | sharepurchase.xlsx | share_execution | 177 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 175 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 175                                 | indiv         | shares   | ispurchase promise |

#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18233: Share Purchase of investor details data for order type Requested share price 178 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 175 |
      | sharepurchase.xlsx | share_execution | 176 |
      | sharepurchase.xlsx | share_execution | 177 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 178 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 175                                 | indiv         | shares   | ispurchase promise |

#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18234: Share Purchase of investor details data for order type Requested share price 181 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 175 |
      | sharepurchase.xlsx | share_execution | 176 |
      | sharepurchase.xlsx | share_execution | 177 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 181 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 175                                 | indiv         | shares   | ispurchase promise |

#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18235: Share Purchase of investor details data for order type Requested share price 184 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 175 |
      | sharepurchase.xlsx | share_execution | 176 |
      | sharepurchase.xlsx | share_execution | 177 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 184 |
      | sharepurchase.xlsx | share_execution | 181 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 175                                 | indiv         | shares   | ispurchase promise |

#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18236: Share Purchase of investor details data for order type Requested share price 187 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 175 |
      | sharepurchase.xlsx | share_execution | 176 |
      | sharepurchase.xlsx | share_execution | 177 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 187 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 175                                 | indiv         | shares   | ispurchase promise |


#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18237: Share Purchase of investor details data for order type Requested share price 190 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 190 |
      | sharepurchase.xlsx | share_execution | 191 |
      | sharepurchase.xlsx | share_execution | 192 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 190 |
      | sharepurchase.xlsx | share_execution | 193 |
      | sharepurchase.xlsx | share_execution | 196 |
      | sharepurchase.xlsx | share_execution | 199 |
      | sharepurchase.xlsx | share_execution | 202 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 190                                 | indiv         | shares   | ispurchase promise |

#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18238: Share Purchase of investor details data for order type Requested share price 193 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 190 |
      | sharepurchase.xlsx | share_execution | 191 |
      | sharepurchase.xlsx | share_execution | 192 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 190 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 190                                 | indiv         | shares   | ispurchase promise |


#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18214: Share Purchase of investor details data for order type Requested share price at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 190 |
      | sharepurchase.xlsx | share_execution | 191 |
      | sharepurchase.xlsx | share_execution | 192 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 190 |
      | sharepurchase.xlsx | share_execution | 193 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 190                                 | indiv         | shares   | ispurchase promise |

#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18239: Share Purchase of investor details data for order type Requested share price 192 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 190 |
      | sharepurchase.xlsx | share_execution | 191 |
      | sharepurchase.xlsx | share_execution | 192 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 190 |
      | sharepurchase.xlsx | share_execution | 193 |
      | sharepurchase.xlsx | share_execution | 196 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 190                                 | indiv         | shares   | ispurchase promise |

#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18240: Share Purchase of investor details data for order type Requested share price 199 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 190 |
      | sharepurchase.xlsx | share_execution | 191 |
      | sharepurchase.xlsx | share_execution | 192 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 190 |
      | sharepurchase.xlsx | share_execution | 193 |
      | sharepurchase.xlsx | share_execution | 196 |
      | sharepurchase.xlsx | share_execution | 199 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 190                                 | indiv         | shares   | ispurchase promise |

#FeatureID-ACAUTOCAS-16523
Scenario Outline: ACAUTOCAS-18241: Share Purchase of investor details data for order type Requested share price 202 at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 190 |
      | sharepurchase.xlsx | share_execution | 191 |
      | sharepurchase.xlsx | share_execution | 192 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 190 |
      | sharepurchase.xlsx | share_execution | 193 |
      | sharepurchase.xlsx | share_execution | 196 |
      | sharepurchase.xlsx | share_execution | 199 |
      | sharepurchase.xlsx | share_execution | 202 |
    And user check application of "<VarStage2>" with "<VarStage3>" stage present in context from application grid
    And user is on Share Purchase Tab
    Then Same investor details data should be present on share purchase stage
    Examples:
      | VarStage1   | VarStage2      | VarStage3     | ProductType | ApplicationStage | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | Post Approval | IPF         | Reconsideration  | sharepurchase.xlsx | share_execution              | 190                                 | indiv         | shares   | ispurchase promise |



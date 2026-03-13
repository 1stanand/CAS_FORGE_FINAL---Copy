@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ImplementedBy-ankit.yadav
@Reconciled
@ReviewedBy-None
@Release3
@ReviewedByDEV
@ReviewedSecCollateral

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
#${CollateralSubType:["Stock and Book Debts"]}

Feature: Addition of Stock And Book Debts

#  Pre-Requisites---
#  In this feature we will attach an CurrentAssets Type Collateral-Stock And Book Debts to the loan application.
#  Ensure the Product Type Collateral Mapping is available in Collateral_Setup.xlsx using the query Collateral_Setup.sql
#  Ensure the Product Collateral Mapping is available in Prod_Collateral_Setup.xlsx using the query Prod_Collateral_Setup.sql

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#${ProductType:["PF","EDU"]}
  @Perishable
  #PF(Secured),EDU(Scecured)
  Scenario Outline: ACAUTOCAS-3629: user moves to the next stage without collateral for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When user moves to the next stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stockAndBookDebts>" and row <Collateral_stockAndBookDebts_rowNum>
    Then user should get error message without adding collateral
    Examples:
      | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | ProductType   | ApplicationStage   | key     | category | applicantType | CollateralSubType   |
      | collateral.xlsx | stock_details                | 163                                 | <ProductType> | <ApplicationStage> | nocolla |          | indiv         | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2978:  Stock details <MandatoryField> validations to fail for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <Collateral_stockAndBookDebts_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stockAndBookDebts>" and row <Collateral_stockAndBookDebts_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters data in stock details of current assets
    And user saves the data of collateral subtype
    Then user should receive a failure "<MandatoryField>" missing message
    Examples:
      | MandatoryField                                                                                    | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | unit_stock, rate_per_unit_stock                                                                   | collateral.xlsx | stock_details                | 0                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | quantity_stock, value_stock, remarks_stock                                                        | collateral.xlsx | stock_details                | 1                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | unit_stock, rate_per_unit_stock, value_stock, remarks_stock                                       | collateral.xlsx | stock_details                | 2                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | quantity_stock, unit_stock, remarks_stock                                                         | collateral.xlsx | stock_details                | 3                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | particular_of_goods, quantity_stock, remarks_stock                                                | collateral.xlsx | stock_details                | 4                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | stock_placed_in, unit_stock, rate_per_unit_stock, value_stock, remarks_stock                      | collateral.xlsx | stock_details                | 5                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | particular_of_goods, quantity_stock, value_stock, remarks_stock                                   | collateral.xlsx | stock_details                | 6                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | rate_per_unit_stock, value_stock, remarks_stock                                                   | collateral.xlsx | stock_details                | 7                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | rate_per_unit_stock, value_stock, remarks_stock                                                   | collateral.xlsx | stock_details                | 8                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | quantity_stock, unit_stock, remarks_stock                                                         | collateral.xlsx | stock_details                | 9                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | particular_of_goods, quantity_stock, value_stock, remarks_stock                                   | collateral.xlsx | stock_details                | 10                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | particular_of_goods, stock_placed_in, unit_stock, rate_per_unit_stock, value_stock, remarks_stock | collateral.xlsx | stock_details                | 11                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | quantity_stock, unit_stock, remarks_stock                                                         | collateral.xlsx | stock_details                | 12                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | quantity_stock, rate_per_unit_stock, value_stock, remarks_stock                                   | collateral.xlsx | stock_details                | 13                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | particular_of_goods, stock_placed_in, rate_per_unit_stock, value_stock, remarks_stock             | collateral.xlsx | stock_details                | 14                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | particular_of_goods, quantity_stock, value_stock, remarks_stock                                   | collateral.xlsx | stock_details                | 15                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | quantity_stock, rate_per_unit_stock, value_stock, remarks_stock                                   | collateral.xlsx | stock_details                | 16                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | particular_of_goods, stock_placed_in, rate_per_unit_stock, value_stock, remarks_stock             | collateral.xlsx | stock_details                | 17                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | particular_of_goods, stock_placed_in, unit_stock, value_stock, remarks_stock                      | collateral.xlsx | stock_details                | 18                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | particular_of_goods, quantity_stock, value_stock, remarks_stock                                   | collateral.xlsx | stock_details                | 19                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | particular_of_goods, stock_placed_in, unit_stock, value_stock, remarks_stock                      | collateral.xlsx | stock_details                | 20                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | particular_of_goods, stock_placed_in, rate_per_unit_stock, value_stock, remarks_stock             | collateral.xlsx | stock_details                | 21                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | rate_per_unit_stock, value_stock, remarks_stock                                                   | collateral.xlsx | stock_details                | 22                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | rate_per_unit_stock, remarks_stock                                                                | collateral.xlsx | stock_details                | 23                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | quantity_stock, unit_stock, remarks_stock                                                         | collateral.xlsx | stock_details                | 24                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | particular_of_goods, stock_placed_in, rate_per_unit_stock, value_stock, remarks_stock             | collateral.xlsx | stock_details                | 25                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | particular_of_goods, stock_placed_in, unit_stock, rate_per_unit_stock, value_stock, remarks_stock | collateral.xlsx | stock_details                | 26                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | quantity_stock, unit_stock, value_stock, remarks_stock                                            | collateral.xlsx | stock_details                | 27                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | stock_placed_in, rate_per_unit_stock, value_stock, remarks_stock                                  | collateral.xlsx | stock_details                | 28                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | particular_of_goods, stock_placed_in, unit_stock, rate_per_unit_stock, value_stock, remarks_stock | collateral.xlsx | stock_details                | 29                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | particular_of_goods, stock_placed_in, unit_stock, remarks_stock                                   | collateral.xlsx | stock_details                | 30                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | quantity_stock, unit_stock, value_stock, remarks_stock                                            | collateral.xlsx | stock_details                | 31                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | particular_of_goods, stock_placed_in, rate_per_unit_stock, value_stock, remarks_stock             | collateral.xlsx | stock_details                | 32                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | particular_of_goods, stock_placed_in, unit_stock, value_stock, remarks_stock                      | collateral.xlsx | stock_details                | 33                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | quantity_stock, unit_stock, value_stock, remarks_stock                                            | collateral.xlsx | stock_details                | 34                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | particular_of_goods, stock_placed_in, unit_stock, value_stock, remarks_stock                      | collateral.xlsx | stock_details                | 35                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | particular_of_goods, stock_placed_in, unit_stock, value_stock, remarks_stock                      | collateral.xlsx | stock_details                | 36                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | particular_of_goods, stock_placed_in, unit_stock, value_stock, remarks_stock                      | collateral.xlsx | stock_details                | 37                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | particular_of_goods, stock_placed_in, unit_stock, value_stock, remarks_stock                      | collateral.xlsx | stock_details                | 38                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | stock_placed_in, quantity_stock, unit_stock, rate_per_unit_stock, value_stock                     | collateral.xlsx | stock_details                | 39                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | stock_placed_in, quantity_stock, unit_stock, rate_per_unit_stock, value_stock                     | collateral.xlsx | stock_details                | 40                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | unit_stock, rate_per_unit_stock, value_stock                                                      | collateral.xlsx | stock_details                | 41                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | quantity_stock, unit_stock, rate_per_unit_stock, value_stock                                      | collateral.xlsx | stock_details                | 42                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | unit_stock, rate_per_unit_stock, value_stock                                                      | collateral.xlsx | stock_details                | 43                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | unit_stock, rate_per_unit_stock, value_stock                                                      | collateral.xlsx | stock_details                | 44                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | quantity_stock, unit_stock, rate_per_unit_stock, value_stock                                      | collateral.xlsx | stock_details                | 45                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | rate_per_unit_stock, value_stock                                                                  | collateral.xlsx | stock_details                | 46                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | unit_stock, rate_per_unit_stock, value_stock                                                      | collateral.xlsx | stock_details                | 47                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | unit_stock, rate_per_unit_stock, value_stock                                                      | collateral.xlsx | stock_details                | 48                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | stock_placed_in, quantity_stock, unit_stock, rate_per_unit_stock, value_stock                     | collateral.xlsx | stock_details                | 49                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | quantity_stock, unit_stock, rate_per_unit_stock, value_stock                                      | collateral.xlsx | stock_details                | 50                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | stock_placed_in, quantity_stock, unit_stock, rate_per_unit_stock                                  | collateral.xlsx | stock_details                | 51                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | stock_placed_in, quantity_stock, unit_stock, rate_per_unit_stock                                  | collateral.xlsx | stock_details                | 52                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | stock_placed_in, quantity_stock, unit_stock, rate_per_unit_stock                                  | collateral.xlsx | stock_details                | 53                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | particular_of_goods, stock_placed_in, unit_stock, quantity_stock, remarks_stock                   | collateral.xlsx | stock_details                | 54                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | particular_of_goods, stock_placed_in, unit_stock, quantity_stock, remarks_stock                   | collateral.xlsx | stock_details                | 55                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | particular_of_goods, stock_placed_in, unit_stock, quantity_stock, remarks_stock                   | collateral.xlsx | stock_details                | 56                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2979:  Stock details validations to for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage with <Dataset> to <Result>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stockAndBookDebts>" and row <Collateral_stockAndBookDebts_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters data in stock details of current assets
    And user saves the data of collateral subtype
    Then User should receive a proper "<Result>" message
    Examples:
      | Result  | CollateralWB    | Dataset | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | Success | collateral.xlsx | 0       | stock_details                | 57                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 1       | stock_details                | 58                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 2       | stock_details                | 59                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 3       | stock_details                | 60                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 4       | stock_details                | 61                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 5       | stock_details                | 62                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 6       | stock_details                | 63                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 7       | stock_details                | 64                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 8       | stock_details                | 65                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 9       | stock_details                | 66                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 10      | stock_details                | 67                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 11      | stock_details                | 68                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 12      | stock_details                | 69                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 13      | stock_details                | 70                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 14      | stock_details                | 71                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 15      | stock_details                | 72                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 16      | stock_details                | 73                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-3630:  Stock details validations with drawing power computation for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stockAndBookDebts>" and row <Collateral_stockAndBookDebts_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters multiple data in stock details validation for drawing power computation
      | collateral.xlsx | stock_details | 74 |
      | collateral.xlsx | stock_details | 75 |
      | collateral.xlsx | stock_details | 76 |
    Then Drawing Power Computation entity should show stock and book debts value
    Examples:
      | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | stock_details                | 74                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2980:  Sundry Debtors Details <DebtorsAsPerAge> validations to <Result> for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stockAndBookDebts>" and row <Collateral_stockAndBookDebts_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters multiple data in stock details validation for drawing power computation
      | collateral.xlsx | stock_details | 74 |
      | collateral.xlsx | stock_details | 75 |
      | collateral.xlsx | stock_details | 76 |
    And user enters data in sundry debtors entity under book debts section
    And user saves the data of collateral subtype
    Then User should receive a proper "<Result>" message
    Examples:
      | Result  | DebtorsAsPerAge    | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | Success | Upto 90 Days       | collateral.xlsx | stock_details                | 74                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | 90 to 180 Days     | collateral.xlsx | stock_details                | 75                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | More than 180 days | collateral.xlsx | stock_details                | 76                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2981: <NumberOfBills> Bills Discounted validations to <Result> for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stockAndBookDebts>" and row <Collateral_stockAndBookDebts_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters multiple data in stock details validation for drawing power computation
      | collateral.xlsx | stock_details | 74 |
      | collateral.xlsx | stock_details | 75 |
      | collateral.xlsx | stock_details | 76 |
    And user enters data in sundry debtors entity under book debts section
    And user enters data in bills discounted entity under book debts section
    And user saves the data of collateral subtype
    Then User should receive a proper "<Result>" message
    Examples:
      | Result  | NumberOfBills | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | Success | 8             | collateral.xlsx | stock_details                | 74                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | 3             | collateral.xlsx | stock_details                | 75                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | 2             | collateral.xlsx | stock_details                | 76                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2982:  <NumberOfCreditors> Sundry Creditors validations to <Result> for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stockAndBookDebts>" and row <Collateral_stockAndBookDebts_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters multiple data in stock details validation for drawing power computation
      | collateral.xlsx | stock_details | 74 |
      | collateral.xlsx | stock_details | 75 |
      | collateral.xlsx | stock_details | 76 |
    And user enters data in sundry debtors entity under book debts section
    And user enters data in bills discounted entity under book debts section
    And user enters data in sundry creditors entity under book debts section
    And user saves the data of collateral subtype
    Then User should receive a proper "<Result>" message
    Examples:
      | Result  | NumberOfCreditors | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | Success | 2                 | collateral.xlsx | stock_details                | 74                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | 4                 | collateral.xlsx | stock_details                | 75                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | 6                 | collateral.xlsx | stock_details                | 76                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-3631:  Drawing power computation Stock Value Eligible For DP A for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stockAndBookDebts>" and row <Collateral_stockAndBookDebts_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters multiple data in stock details validation for drawing power computation
      | collateral.xlsx | stock_details | 77 |
      | collateral.xlsx | stock_details | 78 |
      | collateral.xlsx | stock_details | 79 |
    And user enters multiple data in sundry debtors entity under book debts section
      | collateral.xlsx | stock_details | 77 |
      | collateral.xlsx | stock_details | 78 |
      | collateral.xlsx | stock_details | 79 |
    And user enters data in bills discounted entity under book debts section
    And user enters data in sundry creditors entity under book debts section
    Then Drawing Power Computation entity should show stock and book debts with total stock value
    Examples:
      | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | stock_details                | 77                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-3632:  Drawing power computation Debtor Value Eligible For DP B for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stockAndBookDebts>" and row <Collateral_stockAndBookDebts_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters multiple data in stock details validation for drawing power computation
      | collateral.xlsx | stock_details | 77 |
      | collateral.xlsx | stock_details | 78 |
      | collateral.xlsx | stock_details | 79 |
    And user enters multiple data in sundry debtors entity under book debts section
      | collateral.xlsx | stock_details | 77 |
      | collateral.xlsx | stock_details | 78 |
      | collateral.xlsx | stock_details | 79 |
    And user enters data in bills discounted entity under book debts section
    And user enters data in sundry creditors entity under book debts section
    Then Drawing Power Computation entity should show stock and book debts with total debtors value
    Examples:
      | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | stock_details                | 77                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-8918: Drawing power computation Stock Value Eligible For DP C for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stockAndBookDebts>" and row <Collateral_stockAndBookDebts_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters multiple data in stock details validation for drawing power computation
      | collateral.xlsx | stock_details | 77 |
      | collateral.xlsx | stock_details | 78 |
      | collateral.xlsx | stock_details | 79 |
    And user enters multiple data in sundry debtors entity under book debts section
      | collateral.xlsx | stock_details | 77 |
      | collateral.xlsx | stock_details | 78 |
      | collateral.xlsx | stock_details | 79 |
    And user enters data in bills discounted entity under book debts section
    And user enters data in sundry creditors entity under book debts section
    Then Drawing Power Computation entity should show stock and book debts with total debtors value
    Examples:
      | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | stock_details                | 77                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2983:  User is able to add a new collateral for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage with <Result> for <Dataset>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stockAndBookDebts>" and row <Collateral_stockAndBookDebts_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters data in stock and book debts details
    And user saves the data of collateral subtype
    Then User should receive a proper "<Result>" message
    Examples:
      | Result  | CollateralWB    | Dataset | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | Success | collateral.xlsx | 0       | stock_details                | 137                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 1       | stock_details                | 138                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 2       | stock_details                | 139                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 3       | stock_details                | 140                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 4       | stock_details                | 141                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 5       | stock_details                | 142                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 6       | stock_details                | 143                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 7       | stock_details                | 144                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 8       | stock_details                | 145                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 9       | stock_details                | 146                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 10      | stock_details                | 147                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 11      | stock_details                | 148                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 12      | stock_details                | 149                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Faliure | collateral.xlsx | 13      | stock_details                | 150                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Faliure | collateral.xlsx | 14      | stock_details                | 151                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Faliure | collateral.xlsx | 15      | stock_details                | 152                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Faliure | collateral.xlsx | 16      | stock_details                | 153                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Faliure | collateral.xlsx | 17      | stock_details                | 154                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Faliure | collateral.xlsx | 18      | stock_details                | 155                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Faliure | collateral.xlsx | 19      | stock_details                | 156                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Faliure | collateral.xlsx | 20      | stock_details                | 157                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Faliure | collateral.xlsx | 21      | stock_details                | 158                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Faliure | collateral.xlsx | 22      | stock_details                | 159                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Faliure | collateral.xlsx | 23      | stock_details                | 160                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Faliure | collateral.xlsx | 24      | stock_details                | 161                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Faliure | collateral.xlsx | 25      | stock_details                | 162                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

#create another after this one
  Scenario Outline: ACAUTOCAS-2984:  Capture <CollateralSubType> against an application with create another after this one to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stockAndBookDebts>" and row <Collateral_stockAndBookDebts_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters data in stock and book debts details
    And user selects create another after this one option
    And user saves the collateral data
    Then CollateralPage remains available to create another collateral
    Examples:
      | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | stock_details                | 74                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

#Squash:137607
#Story:CAS-23473
  @Sanity
#FeatureID-ACAUTOCAS-243,ACAUTOCAS-2
Scenario Outline: ACAUTOCAS-16741: user adds multiple collateral to <ProductType> application at <ApplicationStage> stage with sub type as <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    When user adds current asset type collateral of "<CollateralSubType>" subtype
      | collateral.xlsx | stock_details | 137 |
      | collateral.xlsx | stock_details | 138 |
      | collateral.xlsx | stock_details | 139 |
      | collateral.xlsx | stock_details | 140 |
      | collateral.xlsx | stock_details | 141 |
      | collateral.xlsx | stock_details | 142 |
      | collateral.xlsx | stock_details | 143 |
      | collateral.xlsx | stock_details | 144 |
      | collateral.xlsx | stock_details | 145 |
      | collateral.xlsx | stock_details | 146 |
      | collateral.xlsx | stock_details | 147 |
    Then user check the all added collateral to application
    Examples:
      | ProductType   | ApplicationStage   | CollateralSubType   | key | category | applicantType |
      | <ProductType> | <ApplicationStage> | <CollateralSubType> |     |          | indiv         |

#Squash:137607
#Story:CAS-23473
#FeatureID-ACAUTOCAS-243,ACAUTOCAS-2
Scenario Outline: ACAUTOCAS-16742: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as <CollateralSubType> with <Dataset>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stockAndBookDebts>" and row <Collateral_stockAndBookDebts_rowNum>
    When user adds current asset type collateral based on "<CollateralSubType>" subtype
    And user views the already added collateral
    Then user should be able to reconcile current asset type collateral based on "<CollateralSubType>" data successfully
    Examples:
      | Dataset | ProductType   | ApplicationStage   | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | CollateralSubType   | key | category | applicantType |
      | 0       | <ProductType> | <ApplicationStage> | collateral.xlsx | stock_details                | 137                                 | <CollateralSubType> |     |          | indiv         |
      | 1       | <ProductType> | <ApplicationStage> | collateral.xlsx | stock_details                | 138                                 | <CollateralSubType> |     |          | indiv         |
      | 2       | <ProductType> | <ApplicationStage> | collateral.xlsx | stock_details                | 139                                 | <CollateralSubType> |     |          | indiv         |
      | 3       | <ProductType> | <ApplicationStage> | collateral.xlsx | stock_details                | 140                                 | <CollateralSubType> |     |          | indiv         |
      | 4       | <ProductType> | <ApplicationStage> | collateral.xlsx | stock_details                | 141                                 | <CollateralSubType> |     |          | indiv         |
      | 5       | <ProductType> | <ApplicationStage> | collateral.xlsx | stock_details                | 142                                 | <CollateralSubType> |     |          | indiv         |
      | 6       | <ProductType> | <ApplicationStage> | collateral.xlsx | stock_details                | 143                                 | <CollateralSubType> |     |          | indiv         |
      | 7       | <ProductType> | <ApplicationStage> | collateral.xlsx | stock_details                | 144                                 | <CollateralSubType> |     |          | indiv         |
      | 8       | <ProductType> | <ApplicationStage> | collateral.xlsx | stock_details                | 145                                 | <CollateralSubType> |     |          | indiv         |
      | 9       | <ProductType> | <ApplicationStage> | collateral.xlsx | stock_details                | 146                                 | <CollateralSubType> |     |          | indiv         |
      | 10      | <ProductType> | <ApplicationStage> | collateral.xlsx | stock_details                | 147                                 | <CollateralSubType> |     |          | indiv         |
      | 11      | <ProductType> | <ApplicationStage> | collateral.xlsx | stock_details                | 148                                 | <CollateralSubType> |     |          | indiv         |

#Squash:137607
#Story:CAS-23473
#FeatureID-ACAUTOCAS-243,ACAUTOCAS-2
Scenario Outline: ACAUTOCAS-16743: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as <CollateralSubType> at Enquiry with <Dataset>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stockAndBookDebts>" and row <Collateral_stockAndBookDebts_rowNum>
    When user adds current asset type collateral based on "<CollateralSubType>" subtype
    And user opens application from enquiry menu
    And user opens Collateral Page for viewing attached collaterals at "<ApplicationStage>"
    When user views the collateral from enquiry menu
    Then user should be able to reconcile current asset type collateral based on "<CollateralSubType>" data successfully
    Examples:
      | Dataset | ProductType   | ApplicationStage   | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | CollateralSubType   | key | category | applicantType |
      | 0       | <ProductType> | <ApplicationStage> | collateral.xlsx | stock_details                | 137                                 | <CollateralSubType> |     |          | indiv         |
      | 1       | <ProductType> | <ApplicationStage> | collateral.xlsx | stock_details                | 138                                 | <CollateralSubType> |     |          | indiv         |
      | 2       | <ProductType> | <ApplicationStage> | collateral.xlsx | stock_details                | 139                                 | <CollateralSubType> |     |          | indiv         |
      | 3       | <ProductType> | <ApplicationStage> | collateral.xlsx | stock_details                | 140                                 | <CollateralSubType> |     |          | indiv         |
      | 4       | <ProductType> | <ApplicationStage> | collateral.xlsx | stock_details                | 141                                 | <CollateralSubType> |     |          | indiv         |
      | 5       | <ProductType> | <ApplicationStage> | collateral.xlsx | stock_details                | 142                                 | <CollateralSubType> |     |          | indiv         |
      | 6       | <ProductType> | <ApplicationStage> | collateral.xlsx | stock_details                | 143                                 | <CollateralSubType> |     |          | indiv         |
      | 7       | <ProductType> | <ApplicationStage> | collateral.xlsx | stock_details                | 144                                 | <CollateralSubType> |     |          | indiv         |
      | 8       | <ProductType> | <ApplicationStage> | collateral.xlsx | stock_details                | 145                                 | <CollateralSubType> |     |          | indiv         |
      | 9       | <ProductType> | <ApplicationStage> | collateral.xlsx | stock_details                | 146                                 | <CollateralSubType> |     |          | indiv         |
      | 10      | <ProductType> | <ApplicationStage> | collateral.xlsx | stock_details                | 147                                 | <CollateralSubType> |     |          | indiv         |
      | 11      | <ProductType> | <ApplicationStage> | collateral.xlsx | stock_details                | 148                                 | <CollateralSubType> |     |          | indiv         |

Scenario Outline: ACAUTOCAS-16744: User is able to add a new collateral for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to <Dataset> with <Result> with new Global Collateral No
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stockAndBookDebts>" and row <Collateral_stockAndBookDebts_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters data in stock and book debts details
    And user saves the data of collateral subtype
    Then user check the global collateral number for newly added collateral to application
    Examples:
      | Result  | CollateralWB    | Dataset | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | Success | collateral.xlsx | 0       | stock_details                | 137                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 1       | stock_details                | 138                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 2       | stock_details                | 139                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 3       | stock_details                | 140                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 4       | stock_details                | 141                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 5       | stock_details                | 142                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 6       | stock_details                | 143                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 7       | stock_details                | 144                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 8       | stock_details                | 145                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 9       | stock_details                | 146                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 10      | stock_details                | 147                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 11      | stock_details                | 148                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Success | collateral.xlsx | 12      | stock_details                | 149                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

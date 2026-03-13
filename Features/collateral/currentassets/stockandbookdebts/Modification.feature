@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@Reconciled
@ReviewedSecCollateral
@Sanity
#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
#${CollateralSubType:["Stock and Book Debts"]}
Feature: Stock And Book Debts Modification

#  Pre-Requisites---
#  In this feature we will attach an   Deposit Stock And Book Debts to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-aman.verma
    @Release3
  Scenario Outline: ACAUTOCAS-2985:  Deleting a Stock And Book Debts attached to the application
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 439
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "stock_details" and row 77
    And user enters data in stock details validation for drawing power computation
    And user saves the data of collateral subtype to edit collateral
    When user deletes the saved collateral
    Then user should be able to successfully deletes the collateral based on sub type
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType |
      | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-aman.verma
    @Release3
  Scenario Outline: ACAUTOCAS-2986:  Stock And Book Debts Data Modification of <FieldName> in Collateral Details
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 439
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "stock_details" and row 77
    And user enters data in stock details validation for drawing power computation
    And user saves the data of collateral subtype to edit collateral
    When user modifies the saved collateral
    Then user should be able to modify the data in field "<FieldName>"
    Examples:
      | FieldName                         | ProductType   | ApplicationStage   | key | category | applicantType |
      | Collateral Ref No                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Description                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Customer Name in Stocks And Books | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Stock As On                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Margin on Stocks (%)              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Margin on Book Debts (%)          | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Currency                          | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-aman.verma
    @Release3
  Scenario Outline: ACAUTOCAS-2987:  Stock And Book Debts Data Modification of <FieldName> in Stock Details
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 439
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "stock_details" and row 77
    And user enters data in stock details validation for drawing power computation
    And user saves the data of collateral subtype to edit collateral
    When user modifies the saved collateral
    And user opens stock details section
    Then user should be able to modify the data in field "<FieldName>"
    Examples:
      | FieldName            | ProductType   | ApplicationStage   | key | category | applicantType |
      | S.No.                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Particulars of Goods | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Stock Placed in      | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Quantity             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unit                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Rate Per Unit        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Value                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Remarks(Stock)       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-aman.verma
    @Release3
  Scenario Outline: ACAUTOCAS-2988:  Stock And Book Debts Data Modification of <FieldName> in Sundry Debtors
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 439
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "stock_details" and row 77
    And user enters data in stock details validation for drawing power computation
    And user saves the data of collateral subtype to edit collateral
    And user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stockDetails>" and row <Collateral_stockDetails_rowNum>
    And user opens stock details section
    And user enters mandatory data in stock details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_bookDebts>" and row <Collateral_bookDebts_rowNum>
    And user opens book debts section
    And user enters mandatory data of book debts in Sundry Debtors
    And user saves the collateral data
    When user modifies the saved collateral
    And user opens book debts section
    Then user should be able to modify the data in field "<FieldName>"
    Examples:
      | FieldName                | CollateralWB    | Collateral_stockDetails | Collateral_stockDetails_rowNum | Collateral_bookDebts | Collateral_bookDebts_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | S.No.                    | collateral.xlsx | stock_details           | 201                            | book_debts           | 96                          | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Debtors As Per Age       | collateral.xlsx | stock_details           | 201                            | book_debts           | 96                          | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Amount                   | collateral.xlsx | stock_details           | 201                            | book_debts           | 96                          | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Consider For Computation | collateral.xlsx | stock_details           | 201                            | book_debts           | 97                          | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-aman.verma
    @Release3
  Scenario Outline: ACAUTOCAS-2989:  Stock And Book Debts Data Modification of <FieldName> in Bills Discounted
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 439
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "stock_details" and row 77
    And user enters data in stock details validation for drawing power computation
    And user saves the data of collateral subtype to edit collateral
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user click on modify collateral subtype
    And user opens book debts details section
    Then user should be able to modify the data in field "<FieldName>"
    Examples:
      | FieldName       | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Number Of Bills | collateral.xlsx | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Amount          | collateral.xlsx | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-aman.verma
    @Release3
  Scenario Outline: ACAUTOCAS-2990:  Stock And Book Debts Data Modification of <FieldName> in Sundry Creditors
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 439
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "stock_details" and row 77
    And user enters data in stock details validation for drawing power computation
    And user saves the data of collateral subtype to edit collateral
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user click on modify collateral subtype
    And user opens book debts details section
    Then user should be able to modify the data in field "<FieldName>"
    Examples:
      | FieldName                  | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Number Of Sundry Creditors | collateral.xlsx | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Sundry Creditors Amount    | collateral.xlsx | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-aman.verma
    @Release3
  Scenario Outline: ACAUTOCAS-2991:  Stock And Book Debts Data Modification of <FieldName> in Drawing Power Computation
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 439
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "stock_details" and row 77
    And user enters data in stock details validation for drawing power computation
    And user saves the data of collateral subtype to edit collateral
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user click on modify collateral subtype
    Then user should not able to modify drawing computation field "<FieldName>"
    Examples:
      | FieldName                        | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Total Stock Value                | collateral.xlsx | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Less: Sundry Creditors           | collateral.xlsx | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Paid Stock                       | collateral.xlsx | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Less: Margin @                   | collateral.xlsx | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Stock value eligible for DP (A)  | collateral.xlsx | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Total Debtors                    | collateral.xlsx | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Less: Bills Discounted           | collateral.xlsx | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Debtor value considered          | collateral.xlsx | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Debtor value eligible for DP (B) | collateral.xlsx | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Maximum Drawing Power (A + B)    | collateral.xlsx | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-aman.verma
    @Release3
  Scenario Outline: ACAUTOCAS-2992:  Stock And Book Debts restrictions in Data Modification of <FieldName>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 439
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "stock_details" and row 77
    And user enters data in stock details validation for drawing power computation
    And user saves the data of collateral subtype to edit collateral
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user click on modify collateral subtype
    Then user should not be able to modify the data in "<FieldName>" field
    Examples:
      | FieldName                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Collateral ID            | collateral.xlsx | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Global Collateral Number | collateral.xlsx | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Collateral Type          | collateral.xlsx | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Collateral SubType       | collateral.xlsx | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-aman.verma
    @Release3
  Scenario Outline: ACAUTOCAS-3633:  Insurance Tab for Stock And Book Debts Collateral
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 439
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "stock_details" and row 77
    And user enters data in stock details validation for drawing power computation
    And user saves the data of collateral subtype to edit collateral
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user click on modify collateral subtype
    Then user should not see Insurance Tab
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 439                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @NotImplemented
  Scenario Outline: ACAUTOCAS-3634:  Modification History
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 439
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "stock_details" and row 77
    And user enters data in stock details validation for drawing power computation
    And user saves the data of collateral subtype to edit collateral
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user click on modify collateral subtype
    And changes the previous data
    And user saves the data
    And user open the history of stock book debts
    Then user should be able to see the previous data in history of stocks book debts
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @NotImplemented
    #FeatureID-ACAUTOCAS-243
  Scenario Outline: ACAUTOCAS-4334:  Stock And Book Debts Data Modification
    Given user has captured a "Stock And Book Debts" against an application
    And user has added "Stock And Book Debts" from the excel file
    And "CollateralPage" is showing already added "Stock And Book Debts"
    When user modifies the "Stock And Book Debts"
    And user sees the "Asset Details"
    And user modifies "Asset Details" using "<CollateralWB>" under sheet "<ConsumerVehicleDetails>" row <ConsumerVehicle_rowNum>
    Then user should be able to save successfully
    Examples:
      | CollateralWB              | ConsumerVehicleDetails | ConsumerVehicle_rowNum |
      | AssetConsumerVehicle.xlsx | AssetConsumerVehicle   | 0                      |

  @NotImplemented
  #FeatureID-ACAUTOCAS-243
  Scenario Outline: ACAUTOCAS-4335:  Consumer Vehicle Data Modification in Vehicle Details
    Given user has captured a "Consumer Vehicle" against an application
    And user has added "Consumer Vehicle" from the excel file
    And "CollateralPage" is showing newly added "Consumer Vehicle"
    When user modifies the "Consumer Vehicle"
    And user modifies "Vehicle Details" using "<CollateralWB>" under sheet "<ConsumerVehicleDetails>" row <ConsumerVehicle_rowNum>
    Then user should be able to save successfully
    Examples:
      | CollateralWB              | ConsumerVehicleDetails | ConsumerVehicle_rowNum |
      | AssetConsumerVehicle.xlsx | AssetConsumerVehicle   | 1                      |


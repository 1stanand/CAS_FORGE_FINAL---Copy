@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@new
@ImplementedBy-priyanshu.kashyap
@Conventional
#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${CollType:["Current Assets"]}

Feature: Stock And Book Debts Viewer

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @Sanity
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-2998:  "Stock And Book Debts" data reconcile to validate if data was saved properly
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stock_details>" and row <Collateral_stock_details_row_num>
    And user enters data in stock details validation for drawing power computation
    And user saves the data of collateral subtype
    When user views the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then user should be able to view the data of saved collateral as filled earlier
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | Collateral_stock_details | Collateral_stock_details_row_num |
      | collateral.xlsx | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | indiv         | stock_details            | 77                               |

  
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-2999:  CollateralPage should not allow to modify data in viewer mode
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stock_details>" and row <Collateral_stock_details_row_num>
    And user enters data in stock details validation for drawing power computation
    And user saves the data of collateral subtype
    When user views the saved collateral
    Then user should not be able to modify the data of saved collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_stock_details | Collateral_stock_details_row_num |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | collateral.xlsx | default            | 425                       | stock_details            | 77                               |

 
#FeatureID-ACAUTOCAS-243
  @Perishable
  Scenario Outline: ACAUTOCAS-11570:  At "<ApplicationStage>" stage user should not be able to modify security collateral attached to "<ProductType>" application
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "DDE" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stock_details>" and row <Collateral_stock_details_row_num>
    And user enters data in stock details validation for drawing power computation
    And user saves the data of collateral subtype
    And user moves application from "DDE" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to collateral tab
    When user modifies the saved collateral
    Then user should not be able to modify the data of saved collateral
    Examples:
      | ProductType   | ApplicationStage | Key | Category  | applicantType | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_stock_details | Collateral_stock_details_row_num |
      | <ProductType> | Post Approval    |     |           | indiv         | collateral.xlsx | default            | 425                       | stock_details            | 77                               |
      | <ProductType> | Disbursal Author |     | appupdate | indiv         | collateral.xlsx | default            | 425                       | stock_details            | 77                               |
      | <ProductType> | Disbursal Author |     | approve   | indiv         | collateral.xlsx | default            | 425                       | stock_details            | 77                               |

 
#FeatureID-ACAUTOCAS-243
  @Perishable
  Scenario Outline: ACAUTOCAS-11571:  At "<ApplicationStage>" stage user should not be able to delink security collateral attached to "<ProductType>" application
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "DDE" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stock_details>" and row <Collateral_stock_details_row_num>
    And user enters data in stock details validation for drawing power computation
    When user saves the data of collateral subtype
    And user moves application from "DDE" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to collateral tab
    Then user should not be able to delete the saved collateral
    Examples:
      | ProductType   | ApplicationStage | Key | Category  | applicantType | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_stock_details | Collateral_stock_details_row_num |
      | <ProductType> | Post Approval    |     |           | indiv         | collateral.xlsx | default            | 425                       | stock_details            | 77                               |
      | <ProductType> | Disbursal Author |     | appupdate | indiv         | collateral.xlsx | default            | 425                       | stock_details            | 77                               |
      | <ProductType> | Disbursal Author |     | approve   | indiv         | collateral.xlsx | default            | 425                       | stock_details            | 77                               |

  
#FeatureID-ACAUTOCAS-243
  @Perishable
  Scenario Outline: ACAUTOCAS-11572:  At "<ApplicationStage>" stage user should not be able to add security collateral attached to "<ProductType>" application
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "DDE" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stock_details>" and row <Collateral_stock_details_row_num>
    And user enters data in stock details validation for drawing power computation
    When user saves the data of collateral subtype
    And user moves application from "DDE" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to collateral tab
    Then user should not be able to add the collateral
    Examples:
      | ProductType   | ApplicationStage | Key | Category  | applicantType | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_stock_details | Collateral_stock_details_row_num |
      | <ProductType> | Post Approval    |     |           | indiv         | collateral.xlsx | default            | 425                       | stock_details            | 77                               |
      | <ProductType> | Disbursal Author |     | appupdate | indiv         | collateral.xlsx | default            | 425                       | stock_details            | 77                               |
      | <ProductType> | Disbursal Author |     | approve   | indiv         | collateral.xlsx | default            | 425                       | stock_details            | 77                               |

  @Sanity
#FeatureID-ACAUTOCAS-243
    @Perishable
  Scenario Outline: ACAUTOCAS-11573:  At "<ApplicationStage>" stage user should be able to view same data of "<CollSubType>" attached to "<ProductType>" application as originally entered
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "DDE" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stock_details>" and row <Collateral_stock_details_row_num>
    And user enters data in stock details validation for drawing power computation
    When user saves the data of collateral subtype
    And user moves application from "DDE" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to collateral tab
    And user views the saved collateral
    Then user should be able to see the same data as entered earlier
    Examples:
      | ProductType   | ApplicationStage | Key | Category  | applicantType | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_stock_details | Collateral_stock_details_row_num |
      | <ProductType> | Post Approval    |     |           | indiv         | collateral.xlsx | default            | 425                       | stock_details            | 77                               |
      | <ProductType> | Disbursal Author |     | appupdate | indiv         | collateral.xlsx | default            | 425                       | stock_details            | 77                               |
      | <ProductType> | Disbursal Author |     | approve   | indiv         | collateral.xlsx | default            | 425                       | stock_details            | 77                               |


#${ApplicationStage:["Disbursal Author"]}
#FeatureID-ACAUTOCAS-243
  Scenario Outline: ACAUTOCAS-11574:  At Disbursal Author stage user should not be able to modify security collateral attached to "<ProductType>" application
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stock_details>" and row <Collateral_stock_details_row_num>
    And user enters data in stock details validation for drawing power computation
    And user saves the data of collateral subtype
    When user modifies the saved collateral
    Then user should not be able to modify the data of saved collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_stock_details | Collateral_stock_details_row_num |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | collateral.xlsx | default            | 425                       | stock_details            | 77                               |


#${ApplicationStage:["Disbursal Author"]}
#FeatureID-ACAUTOCAS-243
  Scenario Outline: ACAUTOCAS-11575:  At Disbursal Author stage user should not be able to delink security collateral attached to "<ProductType>" application
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stock_details>" and row <Collateral_stock_details_row_num>
    And user enters data in stock details validation for drawing power computation
    When user saves the data of collateral subtype
    Then user should not be able to delete the saved collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_stock_details | Collateral_stock_details_row_num |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | collateral.xlsx | default            | 425                       | stock_details            | 77                               |


#${ApplicationStage:["Disbursal Author"]}
#FeatureID-ACAUTOCAS-243
  Scenario Outline: ACAUTOCAS-11576:  At Disbursal Author stage user should not be able to add security collateral attached to "<ProductType>" application
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stock_details>" and row <Collateral_stock_details_row_num>
    And user enters data in stock details validation for drawing power computation
    When user saves the data of collateral subtype
    Then user should not be able to add the collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_stock_details | Collateral_stock_details_row_num |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | collateral.xlsx | default            | 425                       | stock_details            | 77                               |

  @Sanity
#${ApplicationStage:["Disbursal Author"]}
#FeatureID-ACAUTOCAS-243
  Scenario Outline: ACAUTOCAS-11577:  At Disbursal Author stage user should be able to view same data of "<CollSubType>" attached to "<ProductType>" application as originally entered
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stock_details>" and row <Collateral_stock_details_row_num>
    And user enters data in stock details validation for drawing power computation
    When user saves the data of collateral subtype
    And user views the saved collateral
    Then user should be able to see the same data as entered earlier
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_stock_details | Collateral_stock_details_row_num |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | collateral.xlsx | default            | 425                       | stock_details            | 77                               |

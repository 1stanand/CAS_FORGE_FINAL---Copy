@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ImplementedBy-harshprit.kumar
@Release2
@ReviewedByDEV
@ReviewedSecCollateral
#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
#${CollateralSubType:["Commercial Equipment"]}

Feature: Commercial Equipment Viewer

#  Pre-Requisites---
#  In this feature we will view a Commercial Equipment attached to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-1040: <CollateralSubType> data reconcile to validate if data was saved properly for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills all fields of vehicle details of collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    When user views the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user see the data of Asset Details as filled earlier
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user see the data in Vehicle Details as filled earlier
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user see the data of Invoice Details as filled earlier
    Then user ensure the data is same in view mode
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | applicantType | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | default            | 618                       | vehicle_details           | 254                              | invoice_details           | 114                              | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-1041:  CollateralPage should not allow to modify data of <CollateralSubType> Collateral in viewer mode for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills all fields of vehicle details of collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    When user views the saved collateral
    Then user should not be able to modify the data of saved asset collateral
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | applicantType | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | default            | 618                       | vehicle_details           | 254                              | invoice_details           | 114                              | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |

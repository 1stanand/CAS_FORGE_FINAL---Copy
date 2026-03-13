@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-
@ReviewedByDEV
@Reconciled
@Release
@Part-2
  #${ApplicantType:["indiv","nonindiv"]}
Feature: Collateral Auto Initiation for Asset type collateral when Auto Initiation flag is set to No

#  The DB parameter 'cas.autoInit.config' is set to N in configuration table
#  select * from configuration where PROPERTY_KEY = 'cas.autoInit.config';

#User Story references
#  CAS-122570 - Auto-Initiation : Collateral Investigation (CAS and CMS)
#  CAS-123921 - CLONE - Auto-Initiation : Collateral Investigation (CAS and CMS)
#  CAS-165882 - Logged By: JYOTI.GUPTA - The system (CAS) must auto-allocate the Verification/Valuation of Collateral based on the Rules that are set in the system

  Scenario Outline: ACAUTOCAS-4821:  Collateral investigation initiation for Asset <Collateral_SubType> at Stage <Stage>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_sheetName>" and row <Collateral_sheet_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details for "<Collateral_SubType>" subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_sheetName>" and row <Collateral_sheet_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user records the application number at "<ApplicationStage>"
    When user opens collateral investigation initiation screen
    And user search the application with already attached collateral
    Then user should be able to see the attached collateral subtype "<Collateral_SubType>"
#    			${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#	${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-rishabh.garg
    Examples:
      | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum | Collateral_SubType   | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | collateral.xlsx | default              | 3                       | Commercial Equipment | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default              | 3                       | Commercial Vehicle   | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default              | 3                       | Consumer Durable     | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | default              | 3                       | Tractor              | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

#  ${ProductType:["IPF"]}
#  ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#  ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum | Collateral_SubType   | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | collateral.xlsx | asset_details        | 115                     | Commercial Equipment | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | collateral.xlsx | asset_details        | 71                      | Commercial Vehicle   | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | collateral.xlsx | asset_details        | 77                      | Consumer Durable     | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | collateral.xlsx | asset_details        | 73                      | Consumer Vehicle     | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | collateral.xlsx | asset_details        | 59                      | Tractor              | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

#
#  # ${ProductType:["IAF","IHF"]}
#   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum | Collateral_SubType   | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | collateral.xlsx | asset_details        | 115                     | Commercial Equipment | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | asset_details        | 71                      | Commercial Vehicle   | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | asset_details        | 77                      | Consumer Durable     | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | asset_details        | 73                      | Consumer Vehicle     | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | collateral.xlsx | asset_details        | 59                      | Tractor              | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

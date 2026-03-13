@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@Release
@Part-2
@ReviewedByDEV
@ReviewedSecCollateral

#${CollateralSubType:["Commercial Vehicle"]}
#${ApplicantType:["indiv","nonindiv"]}
Feature: Commercial Vehicle Viewer

#  Pre-Requisites---
#  In this feature we will view a Commercial Vehicle attached to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-1114: <CollateralSubType> data reconcile to validate if data was saved properly for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills all fields of vehicle details of collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    When user views the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user see the data of Asset Details as filled earlier
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user see the data in Vehicle Details as filled earlier
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user see the data of Invoice Details as filled earlier
    Then user ensure the data is same in view mode
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 619                       | vehicle_details           | 255                              | invoice_details           | 119                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 619                       | vehicle_details           | 255                              | invoice_details           | 119                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 619                       | vehicle_details           | 255                              | invoice_details           | 119                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-1115:  CollateralPage should not allow to modify data of <CollateralSubType> Collateral in viewer mode for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills all fields of vehicle details of collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    When user views the saved collateral
    Then user should not be able to modify the data of saved asset collateral
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 619                       | vehicle_details           | 255                              | invoice_details           | 121                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 619                       | vehicle_details           | 255                              | invoice_details           | 121                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 619                       | vehicle_details           | 255                              | invoice_details           | 121                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

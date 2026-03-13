@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedByDEV
@ReviewedSecCollateral
@Release
@Part-2
#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
#${CollateralSubType:["Tractor"]}
#${ApplicantType:["indiv","nonindiv"]}

Feature: Tractor Viewer

#  Pre-Requisites---
#  In this feature we will view a Tractor attached to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-1295: <CollateralSubType> data reconcile to validate if data was saved properly for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills all fields of tractor details of collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    When user views the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user see the data of Asset Details as filled earlier
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user see the data in Tractor Details as filled earlier
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user see the data of Invoice Details as filled earlier
    Then user ensure the data is same in view mode
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | default            | 658                       | tractor_details           | 210                              | invoice_details           | 121                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category   | key | CollateralSubType   |
      | collateral.xlsx | default            | 658                       | tractor_details           | 210                              | invoice_details           | 121                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | default            | 658                       | tractor_details           | 210                              | invoice_details           | 121                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-1296:  CollateralPage should not allow to modify data of <CollateralSubType> Collateral in viewer mode for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills all fields of vehicle details of collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    When user views the saved collateral
    Then user should not be able to modify the data of saved asset collateral
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | default            | 658                       | tractor_details           | 210                              | invoice_details           | 121                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category   | key | CollateralSubType   |
      | collateral.xlsx | default            | 658                       | tractor_details           | 210                              | invoice_details           | 121                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | default            | 658                       | tractor_details           | 210                              | invoice_details           | 121                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

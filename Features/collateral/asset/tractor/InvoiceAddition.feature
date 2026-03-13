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
Feature: Tractor Invoice Additions

#  Pre-Requisites---
#  In this feature we will attach invoice to the Tractor.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#Screen Validation
  Scenario Outline: ACAUTOCAS-2965: User is able to see <FieldName> for new collateral <CollateralSubType> in Invoice Details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When opens Invoice Details section
    Then user should be able to see "<FieldName>" marked as "<Mandatory>"
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | FieldName                     | Mandatory     | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | Invoice Number                | mandatory     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice Date                  | mandatory     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice Value                 | mandatory     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Hypothecation                 | non mandatory | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice Type                  | non mandatory | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice For                   | mandatory     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice Item Reference Number | non mandatory | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | FieldName                     | Mandatory     | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | Invoice Number                | mandatory     | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice Date                  | mandatory     | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice Value                 | mandatory     | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Hypothecation                 | non mandatory | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice Type                  | non mandatory | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice For                   | mandatory     | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice Item Reference Number | non mandatory | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | FieldName                     | Mandatory     | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | Invoice Number                | mandatory     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice Date                  | mandatory     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice Value                 | mandatory     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Hypothecation                 | non mandatory | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice Type                  | non mandatory | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice For                   | mandatory     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice Item Reference Number | non mandatory | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2180: CollateralPage invoice details <Validity> data type validation for collateral Sub Type <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens invoice details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    @ImplementedBy-ankit.yadav
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | Validity | FieldName      | Throws_NotThrows                | CollateralWB    | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 42                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 43                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 44                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 45                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 46                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 47                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 48                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 35                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 36                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 37                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 38                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 39                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 40                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 41                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 49                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 50                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 51                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 52                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 53                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 54                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 55                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 56                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 57                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 58                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 59                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 60                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 61                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName      | Throws_NotThrows                | CollateralWB    | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 42                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 43                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 44                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 45                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 46                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 47                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 48                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 35                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 36                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 37                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 38                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 39                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 40                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 41                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 49                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 50                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 51                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 52                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 53                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 54                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 55                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 56                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 57                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 58                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 59                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 60                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 61                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName      | Throws_NotThrows                | CollateralWB    | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 42                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 43                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 44                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 45                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 46                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 47                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 48                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 35                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 36                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 37                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 38                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 39                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 40                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 41                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 49                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 50                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 51                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 52                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 53                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 54                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 55                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 56                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 57                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 58                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 59                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 60                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 61                               | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


    # Data Format scenarios not to be implement now
#  @ImplementedBy-harshprit.kumar
#    @Release2
#  Scenario Outline: ACAUTOCAS-2181: CollateralPage invoice details format validation for collateral Sub Type <CollateralSubType>
#    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens Collateral Page for adding new collateral
#    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
#    And user selects collateral type along with collateral sub type
#    When opens Invoice Details section
#    Then user should be able to see "<FieldName>" with proper format of Invoice Details
#    Examples:
#      | CollateralWB    | Collateral_default | Collateral_default_rowNum | FieldName    | ProductType   | ApplicantType | ApplicationStage   | Category | Key | CollateralSubType   |
#      | collateral.xlsx | default            | 4                         | Invoice Date | <ProductType> | <ApplicantType>         | <ApplicationStage> |          |     | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2506: CollateralPage invoice details label of <FieldName> for collateral Sub Type <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" of invoice details with proper labels
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | FieldName                     | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | Invoice Number                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice Date                  | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice Value                 | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Hypothecation                 | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice Type                  | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice For                   | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice Item Reference Number | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Actions                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | FieldName                     | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | Invoice Number                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice Date                  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice Value                 | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Hypothecation                 | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice Type                  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice For                   | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice Item Reference Number | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Actions                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | FieldName                     | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | Invoice Number                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice Date                  | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice Value                 | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Hypothecation                 | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice Type                  | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice For                   | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Invoice Item Reference Number | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | Actions                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

# Dedupe on invoice number works only to identify the duplicate invoice number within the application
# The impact is not across the application
# Positive Scenarios
  @Sanity
  Scenario Outline: ACAUTOCAS-2966: User saves invoice details with <Dataset> for new collateral <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And opens Invoice Details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_InvoiceDetails>" and row <Collateral_InvoiceDetails_rowNum>
    When user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 106 |
      | collateral.xlsx | invoice_details | 107 |
      | collateral.xlsx | invoice_details | 108 |
      | collateral.xlsx | invoice_details | 109 |
      | collateral.xlsx | invoice_details | 110 |
      | collateral.xlsx | invoice_details | 111 |
      | collateral.xlsx | invoice_details | 112 |
      | collateral.xlsx | invoice_details | 113 |
    Then expect success status in invoice details section
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | Dataset | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_InvoiceDetails | Collateral_InvoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | 1       | collateral.xlsx | default            | 4                         | invoice_details           | 18                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | Dataset | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_InvoiceDetails | Collateral_InvoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | 1       | collateral.xlsx | default            | 4                         | invoice_details           | 18                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Dataset | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_InvoiceDetails | Collateral_InvoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | 1       | collateral.xlsx | default            | 4                         | invoice_details           | 18                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

#Invoice Modification Validation
    @Sanity
  Scenario Outline: ACAUTOCAS-2967: <CollateralSubType> Invoice Data Modification of <FieldName> in Invoice Details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
      And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
      And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills mandatory fields of Tractor Details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    When user modifies the saved collateral
    Then user should be able to modify the invoice data in "<FieldName>" field
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
      Examples:
      | FieldName                     | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Invoice Number                | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Date                  | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Value                 | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Hypothecation                 | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Type                  | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice For                   | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Item Reference Number | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
      Examples:
        | FieldName                     | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
        | Invoice Number                | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
        | Invoice Date                  | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
        | Invoice Value                 | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
        | Hypothecation                 | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
        | Invoice Type                  | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
        | Invoice For                   | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
        | Invoice Item Reference Number | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
      Examples:
      | FieldName                     | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Invoice Number                | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Date                  | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Value                 | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Hypothecation                 | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Type                  | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice For                   | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Item Reference Number | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

#Invoice Deletion Validation
  @Sanity
  Scenario Outline: ACAUTOCAS-2968: User modifies invoice details and deletes the invoices in <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills mandatory fields of Tractor Details section
    And user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 106 |
      | collateral.xlsx | invoice_details | 107 |
      | collateral.xlsx | invoice_details | 108 |
      | collateral.xlsx | invoice_details | 109 |
      | collateral.xlsx | invoice_details | 110 |
      | collateral.xlsx | invoice_details | 111 |
      | collateral.xlsx | invoice_details | 112 |
      | collateral.xlsx | invoice_details | 113 |
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    When user modifies the saved collateral
    And deletes all the invoices linked to the collateral
    And user saves the Collateral Details
    Then collateral should saved successfully
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

#Additional Invoice capturing
  @Sanity
  Scenario Outline: ACAUTOCAS-2969: User modifies invoice details and adds more invoices in Collateral sub type <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills mandatory fields of Tractor Details section
    And user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 106 |
      | collateral.xlsx | invoice_details | 107 |
      | collateral.xlsx | invoice_details | 108 |
      | collateral.xlsx | invoice_details | 109 |
      | collateral.xlsx | invoice_details | 110 |
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user modifies the saved collateral
    When user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 111 |
      | collateral.xlsx | invoice_details | 112 |
      | collateral.xlsx | invoice_details | 113 |
    And user saves the Collateral Details
    Then collateral should saved successfully
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

  @Sanity
  Scenario Outline: ACAUTOCAS-16694: user modifies invoice details and adds second final invoice in <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of Tractor Details section
    And user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 106 |
      | collateral.xlsx | invoice_details | 107 |
      | collateral.xlsx | invoice_details | 108 |
      | collateral.xlsx | invoice_details | 109 |
      | collateral.xlsx | invoice_details | 110 |
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    When user modifies the saved collateral
    And user opens invoice details section
    And clicks on plus icon to add invoice details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user saves the Collateral Details
    Then user receives a proper error message
    @ImplementedBy-ankit.yadav
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | vehicle_details           | 1                                | invoice_details           | 117                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | vehicle_details           | 1                                | invoice_details           | 118                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | vehicle_details           | 1                                | invoice_details           | 117                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | vehicle_details           | 1                                | invoice_details           | 118                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | vehicle_details           | 1                                | invoice_details           | 117                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 4                         | vehicle_details           | 1                                | invoice_details           | 118                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


#Duplicate invoice identification
#This is to be performed on the same application
  Scenario Outline: ACAUTOCAS-2970: User dedupes invoice details to check duplicate invoice in application in <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And opens Invoice Details section
    And user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 33 |
      | collateral.xlsx | invoice_details | 34 |
    And user checks for duplicate in invoice details
    Then user gets a proper notification

    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-5124:  user modifies commercial equipment to add a duplicate invoice for collateral sub type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills mandatory fields of Tractor Details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user closes duplicate check result box after checking the duplicates
    And user fills reason section
    And user saves the data
    When user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum_1>
    And user fills another Invoice Details
    And user checks for duplicate in invoice details
    Then user gets a notification message
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   | Collateral_invoiceDetails_rowNum_1 |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> | 11                                 |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   | Collateral_invoiceDetails_rowNum_1 |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> | 11                                 |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   | Collateral_invoiceDetails_rowNum_1 |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> | 11                                 |

  Scenario Outline: ACAUTOCAS-16695: user modifies commercial equipment to add a duplicate invoice for collateral sub type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills mandatory fields of Tractor Details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user closes duplicate check result box after checking the duplicates
    And user fills reason section
    And user saves the data
    When user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum_1>
    And user fills another Invoice Details
    Then user should not be able to add additional final invoice type
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   | Collateral_invoiceDetails_rowNum_1 |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> | 11                                 |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   | Collateral_invoiceDetails_rowNum_1 |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> | 11                                 |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   | Collateral_invoiceDetails_rowNum_1 |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> | 11                                 |


#Duplicate Invoice Check
#Note the application Ids
  Scenario Outline: ACAUTOCAS-1287: User dedupes invoice details to check duplicate invoice across application for <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And opens Invoice Details section
    When user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 33 |
      | collateral.xlsx | invoice_details | 34 |
    And user checks for duplicate in invoice details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    Then user should get error message
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | invoice_details           | 35                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | invoice_details           | 35                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | invoice_details           | 35                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

#Data Combination Validation
  @Sanity
  Scenario Outline: ACAUTOCAS-2971: User attempts to save <NumberOfProformaInvoiceType> Proforma and <NumberOfFinalInvoiceType> Final invoice details for collateral <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills mandatory fields of Tractor Details section
    And opens Invoice Details section
    When user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 26 |
      | collateral.xlsx | invoice_details | 27 |
      | collateral.xlsx | invoice_details | 28 |
      | collateral.xlsx | invoice_details | 29 |
      | collateral.xlsx | invoice_details | 30 |
      | collateral.xlsx | invoice_details | 31 |
    And user closes duplicate check result box after checking the duplicates
    And user fills reason section
    And user saves the data
    Then user receives a proper error message
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | NumberOfProformaInvoiceType | NumberOfFinalInvoiceType | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | 4                           | 2                        | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | NumberOfProformaInvoiceType | NumberOfFinalInvoiceType | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | 4                           | 2                        | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | NumberOfProformaInvoiceType | NumberOfFinalInvoiceType | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | 4                           | 2                        | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

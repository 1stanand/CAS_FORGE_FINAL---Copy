@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedByDEV
@ReviewedSecCollateral
@Part-2

# ${CollateralSubType:["Consumer Vehicle"]}
# ${ApplicantType:["indiv","nonindiv"]}

Feature: Consumer Vehicle Invoice Additions

#  Pre-Requisites---
#  In this feature we will attach invoice to the Consumer Vehicle.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#Screen Validation
  Scenario Outline: ACAUTOCAS-2942: User is able to see <FieldName> field for new collateral <CollateralSubType> in Invoice Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When opens Invoice Details section
    Then user should be able to see "<FieldName>" marked as "<Mandatory_NonMandatory>"

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @Release
    @ImplementedBy-harshprit.kumar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | FieldName                     | Mandatory_NonMandatory | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | Invoice Number                | mandatory              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice Date                  | mandatory              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice Value                 | mandatory              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Hypothecation                 | non mandatory          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice Type                  | mandatory              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice For                   | mandatory              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice Item Reference Number | non mandatory          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @Release
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | FieldName                     | Mandatory_NonMandatory | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | Invoice Number                | mandatory              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice Date                  | mandatory              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice Value                 | mandatory              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Hypothecation                 | non mandatory          | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice Type                  | mandatory              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice For                   | mandatory              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice Item Reference Number | non mandatory          | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | FieldName                     | Mandatory_NonMandatory | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | Invoice Number                | mandatory              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice Date                  | mandatory              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice Value                 | mandatory              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Hypothecation                 | non mandatory          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice Type                  | mandatory              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice For                   | mandatory              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice Item Reference Number | non mandatory          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2148: CollateralPage invoice details <Validity> data type validation for collateral Sub Type <CollateralSubType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens invoice details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @Release
    @ImplementedBy-ankit.yadav
    Examples:
      | Validity | FieldName      | Throws_NotThrows                | CollateralWB    | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 42                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 43                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 44                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 45                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 46                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 47                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 48                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 35                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 36                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 37                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 38                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 39                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 40                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 41                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 49                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 50                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 51                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 52                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 53                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 54                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 55                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 56                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 57                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 58                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 59                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 60                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 61                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @Release
    @ImplementedBy-tanya
    Examples:
      | Validity | FieldName      | Throws_NotThrows                | CollateralWB    | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 42                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 43                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 44                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 45                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 46                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 47                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 48                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 35                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 36                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 37                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 38                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 39                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 40                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 41                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 49                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 50                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 51                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 52                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 53                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 54                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 55                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 56                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 57                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 58                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 59                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 60                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 61                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @ImplementedBy-tanya
    Examples:
      | Validity | FieldName      | Throws_NotThrows                | CollateralWB    | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 42                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 43                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 44                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 45                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 46                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 47                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 48                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 35                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 36                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 37                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 38                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 39                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 40                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 41                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 49                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 50                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 51                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 52                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 53                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 54                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 55                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 56                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 57                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 58                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 59                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 60                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 61                               | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # Data Format scenarios not to be implement now
#  @ImplementedBy-harshprit.kumar
#    @Release2
#  Scenario Outline: ACAUTOCAS-2149: CollateralPage invoice details format validation for collateral Sub Type <CollateralSubType>
#    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
#    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
#    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
#    And user selects collateral type along with collateral sub type
#    When opens Invoice Details section
#    Then user should be able to see "<FieldName>" with proper format of Invoice Details
#    Examples:
#      | CollateralWB    | Collateral_default | Collateral_default_rowNum | FieldName    |ProductType   | applicantType | ApplicationStage   | category | key | CollateralSubType   |
#      | collateral.xlsx | default            | 0                         | Invoice Date |<ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2500: CollateralPage invoice details label of <FieldName> for collateral Sub Type <CollateralSubType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" of invoice details with proper labels

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @Release
    @ImplementedBy-harshprit.kumar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | FieldName                     | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | Invoice Number                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice Date                  | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice Value                 | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Hypothecation                 | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice Type                  | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice For                   | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice Item Reference Number | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Actions                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @Release
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | FieldName                     | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | Invoice Number                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice Date                  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice Value                 | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Hypothecation                 | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice Type                  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice For                   | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice Item Reference Number | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Actions                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | FieldName                     | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | Invoice Number                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice Date                  | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice Value                 | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Hypothecation                 | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice Type                  | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice For                   | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Invoice Item Reference Number | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | Actions                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

# Dedupe on invoice number works only to identify the duplicate invoice number within the application
# The impact is not across the application
# Positive Scenarios
    # for data, access the excel present in DDE folder
  Scenario Outline: ACAUTOCAS-2943: User saves invoice details with Dataset <Dataset> for new collateral <CollateralSubType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And opens Invoice Details section
    When user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 0 |
      | collateral.xlsx | invoice_details | 1 |
      | collateral.xlsx | invoice_details | 2 |
      | collateral.xlsx | invoice_details | 3 |
      | collateral.xlsx | invoice_details | 4 |
      | collateral.xlsx | invoice_details | 5 |
      | collateral.xlsx | invoice_details | 6 |
      | collateral.xlsx | invoice_details | 7 |
    Then expect success status in invoice details section

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @Release
    @ImplementedBy-harshprit.kumar
    Examples:
      | Dataset | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | 1       | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @Release
    @ImplementedBy-tanya
    Examples:
      | Dataset | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | 1       | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @ImplementedBy-tanya
    Examples:
      | Dataset | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | 1       | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

#Invoice Modification Validation
  # later will convert these Given steps in 1 line ( attaching a collateral )
  # When part saying modifying Consumer Vehicle, (seems to be collateral)
  @Sanity
  Scenario Outline: ACAUTOCAS-2944: <CollateralSubType> <FieldName> Data Modification in Invoice Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user closes duplicate check result box after checking the duplicates
    And user fills reason section
    And user saves the data
    When user modifies the saved collateral
    Then user should be able to modify the invoice data in "<FieldName>" field

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @Release
    @ImplementedBy-harshprit.kumar
    Examples:
      | FieldName                     | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Invoice Number                | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Date                  | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Value                 | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Hypothecation                 | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Type                  | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice For                   | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Item Reference Number | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @Release
    @ImplementedBy-tanya
    Examples:
      | FieldName                     | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Invoice Number                | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice Date                  | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice Value                 | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Hypothecation                 | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice Type                  | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice For                   | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice Item Reference Number | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @ImplementedBy-tanya
    Examples:
      | FieldName                     | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Invoice Number                | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Date                  | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Value                 | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Hypothecation                 | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Type                  | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice For                   | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Item Reference Number | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

#Invoice Deletion Validation
  @Sanity
  Scenario Outline: ACAUTOCAS-2945: User modifies invoice details and deletes the invoices in <CollateralSubType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 0 |
      | collateral.xlsx | invoice_details | 1 |
      | collateral.xlsx | invoice_details | 2 |
      | collateral.xlsx | invoice_details | 3 |
      | collateral.xlsx | invoice_details | 4 |
      | collateral.xlsx | invoice_details | 5 |
      | collateral.xlsx | invoice_details | 6 |
      | collateral.xlsx | invoice_details | 7 |
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    When user modifies the saved collateral
    And deletes all the invoices linked to the collateral
    And user saves the Collateral Details
    Then collateral should saved successfully

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @Release
    @ImplementedBy-harshprit.kumar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @Release
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

#Additional Invoice capturing
  @Sanity
  Scenario Outline: ACAUTOCAS-2946: User modifies invoice details and adds more invoices in <CollateralSubType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 0 |
      | collateral.xlsx | invoice_details | 1 |
      | collateral.xlsx | invoice_details | 2 |
      | collateral.xlsx | invoice_details | 3 |
      | collateral.xlsx | invoice_details | 4 |
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user modifies the saved collateral
    When user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 5 |
      | collateral.xlsx | invoice_details | 6 |
      | collateral.xlsx | invoice_details | 7 |
    And user saves the Collateral Details
    Then collateral should saved successfully

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @Release
    @ImplementedBy-harshprit.kumar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @Release
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

  @ImplementedBy-ankit.yadav
    @Release2
    @Sanity
  Scenario Outline: ACAUTOCAS-16671: user modifies invoice details and adds second final invoice in <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 0 |
      | collateral.xlsx | invoice_details | 1 |
      | collateral.xlsx | invoice_details | 2 |
      | collateral.xlsx | invoice_details | 3 |
      | collateral.xlsx | invoice_details | 4 |
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
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | applicantType | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 119                              | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 120                              | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |


#Duplicate invoice identification
#This is to be performed on the same application
  @ImplementedBy-harshprit.kumar
    @Release2
  Scenario Outline: ACAUTOCAS-2947: User dedupes invoice details to check duplicate invoice in application for <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And opens Invoice Details section
    When user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 8 |
      | collateral.xlsx | invoice_details | 9 |
    And user checks for duplicate of invoice
    Then user gets a proper notification

    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | applicantType | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |

  @ImplementedBy-aditya.tomar
    @Release3
  Scenario Outline: ACAUTOCAS-5124:  user modifies commercial equipment to add a duplicate invoice for collateral sub type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user closes duplicate check result box after checking the duplicates
    And user fills reason section
    And user saves the data
    When user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum_1>
    And user fills another Invoice Details
    And user checks for duplicate of invoice
    Then user gets a error notification message
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   | Collateral_invoiceDetails_rowNum_1 |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> | 11                                 |


  @ImplementedBy-aditya.tomar
    @Release3
  Scenario Outline: ACAUTOCAS-16672: user modifies commercial equipment to add a duplicate invoice for collateral sub type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user closes duplicate check result box after checking the duplicates
    And user fills reason section
    And user saves the data
    When user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum_1>
    And user fills another Invoice Details
    Then user should not be able to add additional final invoice type
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   | Collateral_invoiceDetails_rowNum_1 |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> | 11                                 |


#Duplicate Invoice Check
#Note the application Ids
  @ImplementedBy-harshprit.kumar
    @Release2
  Scenario Outline: ACAUTOCAS-1223: User dedupes invoice details to check duplicate invoice across application in <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And opens Invoice Details section
    When user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 115 |
      | collateral.xlsx | invoice_details | 116 |
    And user checks for duplicate of invoice
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    Then user should get error message
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | applicantType | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | invoice_details           | 35                               | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |

#Data Combination Validation
  @Sanity
  Scenario Outline: ACAUTOCAS-2948: User attempts to save <NumberOfProformaInvoiceType> Proforma and <NumberOfFinalInvoiceType> Final invoice details for collateral <CollateralSubType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And opens Invoice Details section
    When user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 10 |
      | collateral.xlsx | invoice_details | 11 |
      | collateral.xlsx | invoice_details | 12 |
      | collateral.xlsx | invoice_details | 13 |
      | collateral.xlsx | invoice_details | 14 |
      | collateral.xlsx | invoice_details | 15 |
    And user closes duplicate check result box after checking the duplicates
    And user fills reason section
    And user saves the data
    Then user receives a proper error message

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @Release
    @ImplementedBy-harshprit.kumar
    Examples:
      | NumberOfProformaInvoiceType | NumberOfFinalInvoiceType | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | 4                           | 2                        | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @Release
    @ImplementedBy-tanya
    Examples:
      | NumberOfProformaInvoiceType | NumberOfFinalInvoiceType | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | 4                           | 2                        | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @ImplementedBy-tanya
    Examples:
      | NumberOfProformaInvoiceType | NumberOfFinalInvoiceType | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | 4                           | 2                        | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

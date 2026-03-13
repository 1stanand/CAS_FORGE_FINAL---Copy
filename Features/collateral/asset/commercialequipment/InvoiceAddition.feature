@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedByDEV
@ReviewedSecCollateral

#${CollateralSubType:["Commercial Equipment"]}
#${ApplicantType:["indiv","nonindiv"]}

Feature: Commercial Equipment Invoice Additions

#  Pre-Requisites---
#  In this feature we will attach invoice to the Commercial Equipment.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#Screen Validation
  @Release
  @Part-2
  Scenario Outline: ACAUTOCAS-2889: User is able to see <Mandatory> <FieldName> for new collateral <CollateralSubType> in Invoice Details
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
      | FieldName                     | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Invoice Number                | mandatory     | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Date                  | mandatory     | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Value                 | mandatory     | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Hypothecation                 | non mandatory | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Type                  | mandatory     | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice For                   | mandatory     | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Item Reference Number | non mandatory | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                     | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Invoice Number                | mandatory     | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice Date                  | mandatory     | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice Value                 | mandatory     | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Hypothecation                 | non mandatory | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice Type                  | mandatory     | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice For                   | mandatory     | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice Item Reference Number | non mandatory | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                     | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Invoice Number                | mandatory     | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Date                  | mandatory     | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Value                 | mandatory     | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Hypothecation                 | non mandatory | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Type                  | mandatory     | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice For                   | mandatory     | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Item Reference Number | non mandatory | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

  @Release
  @Part-2
  Scenario Outline: ACAUTOCAS-2059: CollateralPage invoice details <Validity> data type validation for collateral Sub Type <CollateralSubType>
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
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 42                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 43                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 44                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 45                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 46                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 47                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 48                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 35                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 36                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 37                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 38                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 39                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 40                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 41                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 49                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 50                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 51                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 52                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 53                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 54                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 55                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 56                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 57                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 58                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 59                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 60                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 61                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName      | Throws_NotThrows                | CollateralWB    | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 42                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 43                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 44                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 45                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 46                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 47                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 48                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 35                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 36                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 37                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 38                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 39                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 40                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 41                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 49                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 50                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 51                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 52                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 53                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 54                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 55                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 56                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 57                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 58                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 59                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 60                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 61                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName      | Throws_NotThrows                | CollateralWB    | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 42                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 43                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 44                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 45                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 46                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 47                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 48                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 35                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 36                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 37                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 38                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 39                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 40                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 41                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 49                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 50                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 51                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 52                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 53                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 54                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 55                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 56                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 57                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 58                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 59                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 60                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 61                               | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

# Data Format scenarios not to be implement now
#  @ImplementedBy-harshprit.kumar
#  Scenario Outline: ACAUTOCAS-2060: CollateralPage invoice details format validation for collateral Sub Type Commercial Equipment
#        And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens Collateral Page for adding new collateral
#    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
#    When user selects collateral type along with collateral sub type
#    Then user should be able to see "<FieldName>" with proper format of Invoice Details
#    Examples:
#      | FieldName    | CollateralWB    | Collateral_default | Collateral_default_rowNum |
#      | Invoice Date | collateral.xlsx | default            | 3                         |

  @Release
  @Part-2
  Scenario Outline: ACAUTOCAS-2481: CollateralPage invoice details label of <FieldName> for collateral Sub Type <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" of invoice details with proper labels
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName                     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Invoice Number                | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Date                  | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Value                 | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Hypothecation                 | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Type                  | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice For                   | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Item Reference Number | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Actions                       | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Invoice Number                | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice Date                  | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice Value                 | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Hypothecation                 | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice Type                  | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice For                   | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice Item Reference Number | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Actions                       | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Invoice Number                | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Date                  | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Value                 | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Hypothecation                 | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Type                  | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice For                   | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Item Reference Number | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Actions                       | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

# Dedupe on invoice number works only to identify the duplicate invoice number within the application
# The impact is not across the application
# Positive Scenarios
  @Release
  @Part-2
  Scenario Outline: ACAUTOCAS-2890: User saves invoice details with Dataset <Dataset> for new collateral <CollateralSubType>
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
      | Dataset | CollateralWB    | Collateral_InvoiceDetails | Collateral_InvoiceDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | 1       | collateral.xlsx | invoice_details           | 0                                | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Dataset | CollateralWB    | Collateral_InvoiceDetails | Collateral_InvoiceDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | 1       | collateral.xlsx | invoice_details           | 0                                | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Dataset | CollateralWB    | Collateral_InvoiceDetails | Collateral_InvoiceDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | 1       | collateral.xlsx | invoice_details           | 0                                | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

#Invoice Modification Validation
  @Release
  @Part-2
  @Sanity
  Scenario Outline: ACAUTOCAS-2891: <CollateralSubType> Invoice Data Modification of <FieldName>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
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
      | FieldName                     | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Invoice Number                | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Date                  | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Value                 | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Hypothecation                 | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Type                  | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice For                   | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Item Reference Number | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                     | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Invoice Number                | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice Date                  | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice Value                 | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Hypothecation                 | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice Type                  | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice For                   | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice Item Reference Number | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                     | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Invoice Number                | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Date                  | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Value                 | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Hypothecation                 | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Type                  | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice For                   | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Item Reference Number | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 114                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

#Invoice Deletion Validation
  @Release
  @Part-2
  @Sanity
  Scenario Outline: ACAUTOCAS-2892: User modifies invoice details and deletes the invoices in <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 106 |
      | collateral.xlsx | invoice_details | 107 |
      | collateral.xlsx | invoice_details | 108 |
      | collateral.xlsx | invoice_details | 109 |
      | collateral.xlsx | invoice_details | 110 |
      | collateral.xlsx | invoice_details | 111 |
      | collateral.xlsx | invoice_details | 112 |
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
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

#Additional Invoice capturing
  @Release
  @Part-2
  @Sanity
  Scenario Outline: ACAUTOCAS-2482: User modifies invoice details and adds more invoices in <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
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
    And user adds invoices to the collateral with data from:
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
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

  @Release
  @Part-2
  @Sanity
  Scenario Outline: ACAUTOCAS-5239:  user modifies invoice details and adds second final invoice in <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
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
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 117                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 118                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 117                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 118                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 117                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 118                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


#Duplicate invoice identification
#This is to be performed on the same application
  @Release
  @Part-2
  Scenario Outline: ACAUTOCAS-2893: User dedupes invoice details to check duplicate invoice in application in <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And opens Invoice Details section
    When user adds invoices to the collateral with data from:
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
      | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 3                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

  @Release
  @Part-2
    #FeatureID-ACAUTOCAS-363
  Scenario Outline: ACAUTOCAS-5124:  user modifies commercial equipment to add a duplicate invoice for collateral sub type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    When user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum_1>
    And user fills another Invoice Details
    And user checks for duplicate in invoice details
    Then user gets a error notification message
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   | Collateral_invoiceDetails_rowNum_1 |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> | 11                                 |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   | Collateral_invoiceDetails_rowNum_1 |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> | 11                                 |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   | Collateral_invoiceDetails_rowNum_1 |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> | 11                                 |


  @Release
  @Part-2
    #FeatureID-ACAUTOCAS-363
  Scenario Outline: ACAUTOCAS-16630: user modifies commercial equipment to add a duplicate invoice for collateral sub type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    When user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum_1>
    And user fills another Invoice Details
    Then user should not be able to add additional final invoice type
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   | Collateral_invoiceDetails_rowNum_1 |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> | 11                                 |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   | Collateral_invoiceDetails_rowNum_1 |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> | 11                                 |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   | Collateral_invoiceDetails_rowNum_1 |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> | 11                                 |

#Duplicate Invoice Check
  @NotImplemented
  Scenario Outline: ACAUTOCAS-1032: User dedupes invoice details to check duplicate invoice across application for <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And opens Invoice Details section
    When user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 33 |
      | collateral.xlsx | invoice_details | 34 |
    And user checks for duplicate of invoice
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    Then user should get error message
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 3                         | invoice_details           | 35                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

#Data Combination Validation
  # need suggestion
  # scenario outline should be changed but due to unavailability of JIRA id, not removing it
  @Release
  @Part-2
  @Sanity
  Scenario Outline: ACAUTOCAS-2894: User attempts to save <NumberOfProformaInvoiceType> Proforma and <NumberOfFinalInvoiceType> Final invoice details for collateral <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And opens Invoice Details section
    When user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 26 |
      | collateral.xlsx | invoice_details | 27 |
      | collateral.xlsx | invoice_details | 28 |
      | collateral.xlsx | invoice_details | 29 |
      | collateral.xlsx | invoice_details | 30 |
      | collateral.xlsx | invoice_details | 31 |
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    Then user receives a proper error message
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | NumberOfProformaInvoiceType | NumberOfFinalInvoiceType | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | 4                           | 2                        | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | NumberOfProformaInvoiceType | NumberOfFinalInvoiceType | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | 4                           | 2                        | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | NumberOfProformaInvoiceType | NumberOfFinalInvoiceType | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | 4                           | 2                        | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

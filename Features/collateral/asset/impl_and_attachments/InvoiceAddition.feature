@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedByDEV
@ReviewedSecCollateral
@Part-2

#${CollateralSubType:["Implements and Attachments"]}
#${ApplicantType:["indiv", "nonindiv"]}
Feature: Implements And Attachments Invoice Additions

#  Pre-Requisites---
#  In this feature we will attach invoice to the Consumer Durable.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-8900: collateral page field validation for section Invoice Details at <ApplicationStage> for a <ProductType> application for <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When opens Invoice Details section
    Then user should be able to see fields with enabled status in invoice details
      | FieldName                     | EnableStatus |
      | Invoice Number                | Yes          |
      | Invoice Date                  | Yes          |
      | Invoice Value                 | Yes          |
      | Hypothecation                 | Yes          |
      | Invoice Type                  | Yes          |
      | Invoice For                   | Yes          |
      | Invoice Item Reference Number | Yes          |
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <CollateralSubType> |

#Screen Validation
  Scenario Outline: ACAUTOCAS-8903: User is able to see fields for new collateral <CollateralSubType> in Invoice Details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When opens Invoice Details section
    Then user should be able to see mandatory field tagging in invoice details
      | FieldName                     | MandatoryStatus |
      | Invoice Number                | Yes             |
      | Invoice Date                  | Yes             |
      | Invoice Value                 | Yes             |
      | Hypothecation                 | No              |
      | Invoice Type                  | No              |
      | Invoice For                   | Yes             |
      | Invoice Item Reference Number | No              |
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-8901: CollateralPage invoice details <Validity> data type validation for collateral Sub Type <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens invoice details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | Validity | FieldName      | Throws_NotThrows                | CollateralWB    | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 42                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 43                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 44                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 45                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 46                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 47                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 48                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 35                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 36                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 37                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 38                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 39                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 40                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 41                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 49                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 50                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 51                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 52                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 53                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 54                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 55                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 56                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 57                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 58                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 59                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 60                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 61                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName      | Throws_NotThrows                | CollateralWB    | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 42                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 43                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 44                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 45                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 46                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 47                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 48                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 35                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 36                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 37                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 38                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 39                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 40                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 41                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 49                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 50                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 51                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 52                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 53                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 54                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 55                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 56                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 57                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 58                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 59                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 60                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 61                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName      | Throws_NotThrows                | CollateralWB    | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 42                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 43                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 44                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 45                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 46                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 47                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 48                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 35                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 36                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 37                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 38                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 39                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 40                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 41                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 49                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 50                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 51                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 52                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 53                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 54                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 55                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 56                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 57                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 58                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 59                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 60                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 61                               | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


#   Data Format scenarios not to be implement now
#  @ImplementedBy-harshprit.kumar
#    @Release2
  @SkippedFormatValidation
    @NotImplementable
  Scenario Outline: ACAUTOCAS-8904: CollateralPage invoice details format validation for collateral Sub Type <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When opens Invoice Details section
    Then user should be able to see "<FieldName>" with proper format of Invoice Details
    Examples:
      | FieldName    | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Invoice Date | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-8902: CollateralPage invoice details labels for collateral Sub Type <CollateralSubType>
    When user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And opens Invoice Details section
    Then user should be able to see implements and attachments details fields with correct label
      | collateral.xlsx | in_a_labels | 31 | Invoice Number                |
      | collateral.xlsx | in_a_labels | 32 | Invoice Date                  |
      | collateral.xlsx | in_a_labels | 33 | Invoice Value                 |
      | collateral.xlsx | in_a_labels | 34 | Hypothecation                 |
      | collateral.xlsx | in_a_labels | 35 | Invoice Type                  |
      | collateral.xlsx | in_a_labels | 36 | Invoice For                   |
      | collateral.xlsx | in_a_labels | 37 | Invoice Item Reference Number |
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <CollateralSubType> |


# Dedupe on invoice number works only to identify the duplicate invoice number within the application
# The impact is not across the application
# Positive Scenarios
#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-16662: User saves invoice details with for new collateral <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And opens Invoice Details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_InvoiceDetails>" and row <Collateral_InvoiceDetails_rowNum>
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
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}

    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_InvoiceDetails | Collateral_InvoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 576                       | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_InvoiceDetails | Collateral_InvoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 576                       | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_InvoiceDetails | Collateral_InvoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 576                       | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

#Invoice Modification Validation
#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-16663: <CollateralSubType> <FieldName> Data Modification in Invoice Details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    When user modifies the saved collateral
    Then user should be able to modify the invoice data in "<FieldName>" field
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | FieldName                     | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Invoice Number                | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Date                  | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Value                 | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Hypothecation                 | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Type                  | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice For                   | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Item Reference Number | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                     | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Invoice Number                | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice Date                  | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice Value                 | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Hypothecation                 | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice Type                  | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice For                   | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Invoice Item Reference Number | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                     | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Invoice Number                | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Date                  | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Value                 | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Hypothecation                 | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Type                  | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice For                   | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Invoice Item Reference Number | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

#Invoice Deletion Validation
#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-16664: User modifies invoice details and deletes the invoices in <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 0 |
      | collateral.xlsx | invoice_details | 1 |
      | collateral.xlsx | invoice_details | 2 |
      | collateral.xlsx | invoice_details | 3 |
      | collateral.xlsx | invoice_details | 4 |
      | collateral.xlsx | invoice_details | 5 |
      | collateral.xlsx | invoice_details | 6 |
      | collateral.xlsx | invoice_details | 7 |
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    When user modifies the saved collateral
    And deletes all the invoices linked to the collateral
    And user saves the Collateral Details
    Then collateral should saved successfully
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

#Additional Invoice capturing
#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-16665: User modifies invoice details and adds more invoices in <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 0 |
      | collateral.xlsx | invoice_details | 1 |
      | collateral.xlsx | invoice_details | 2 |
      | collateral.xlsx | invoice_details | 3 |
      | collateral.xlsx | invoice_details | 4 |
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    When user modifies the saved collateral
    And user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 5 |
      | collateral.xlsx | invoice_details | 6 |
      | collateral.xlsx | invoice_details | 7 |
    And user saves the Collateral Details
    Then collateral should saved successfully
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-16666: user modifies invoice details and adds second final invoice in <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 0 |
      | collateral.xlsx | invoice_details | 1 |
      | collateral.xlsx | invoice_details | 2 |
      | collateral.xlsx | invoice_details | 3 |
      | collateral.xlsx | invoice_details | 4 |
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    When user modifies the saved collateral
    And user opens invoice details section
    And clicks on plus icon to add invoice details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user saves the Collateral Details
    Then user receives a proper error message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | invoice_details           | 117                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | invoice_details           | 118                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | invoice_details           | 117                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | invoice_details           | 118                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | invoice_details           | 117                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | invoice_details           | 118                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


#Duplicate invoice identification
#This is to be performed on the same application
#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-16667: User dedupes invoice details to check duplicate invoice in application in <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And opens Invoice Details section
    When user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 8 |
      | collateral.xlsx | invoice_details | 9 |
    And user checks for duplicate in invoice details
    Then user gets a proper notification
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


    #FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-16668: user modifies implements and attachments to add a duplicate invoice for collateral sub type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    When user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum_1>
    And user fills another Invoice Details
    And user checks for duplicate in invoice details
    Then user gets a error notification message
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   | Collateral_invoiceDetails_rowNum_1 |
      | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> | 11                                 |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   | Collateral_invoiceDetails_rowNum_1 |
      | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> | 11                                 |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   | Collateral_invoiceDetails_rowNum_1 |
      | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> | 11                                 |


#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-16668: user modifies implements and attachments to add a duplicate invoice for collateral sub type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    When user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum_1>
    And user fills another Invoice Details
    Then user should not be able to add additional final invoice type
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   | Collateral_invoiceDetails_rowNum_1 |
      | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> | 11                                 |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   | Collateral_invoiceDetails_rowNum_1 |
      | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> | 11                                 |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   | Collateral_invoiceDetails_rowNum_1 |
      | collateral.xlsx | asset_details           | 252                            | invoice_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> | 11                                 |



  #FeatureID-ACAUTOCAS-8108,CAS-22950
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-16669: User dedupes invoice details to check duplicate invoice across application for <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And opens Invoice Details section
    When user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 115 |
      | collateral.xlsx | invoice_details | 116 |
    And user checks for duplicate of invoice details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    Then user should get error message
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | collateral.xlsx | default            | 576                       | invoice_details           | 35                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | collateral.xlsx | default            | 576                       | invoice_details           | 35                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | collateral.xlsx | default            | 576                       | invoice_details           | 35                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

#Data Combination Validation
#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-16670: User fails to save <NumberOfFinalInvoiceType> Proforma and <NumberOfProformaInvoiceType> Final invoice details for collateral <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And opens Invoice Details section
    When user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 10 |
      | collateral.xlsx | invoice_details | 11 |
      | collateral.xlsx | invoice_details | 12 |
      | collateral.xlsx | invoice_details | 13 |
      | collateral.xlsx | invoice_details | 14 |
      | collateral.xlsx | invoice_details | 15 |
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    Then user receives a proper error message
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | NumberOfProformaInvoiceType | NumberOfFinalInvoiceType | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | 4                           | 2                        | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | NumberOfProformaInvoiceType | NumberOfFinalInvoiceType | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | 4                           | 2                        | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | NumberOfProformaInvoiceType | NumberOfFinalInvoiceType | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | 4                           | 2                        | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

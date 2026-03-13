@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@Conventional
@Islamics
@ImplementedBy-kanika.mahal
@Release

     #Prerequisite:Application already punch with application type as Multi Asset
    # { ProductType : ["IAF","MAL","AGRL","Omni"]}
# ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906

Feature: Invoice Details Validation under Collateral Details for Multi Asset

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  Scenario Outline: ACAUTOCAS-14305: Validate the field name marked as Mandatory NonMandatory in invoice details for multi Asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 72
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    When user opens invoice details section
    Then user should be able to see marked Field Name as Mandatory NonMandatory
      | FieldName                     | Mandatory_NonMandatory |
      | Invoice Number                | mandatory              |
      | Invoice Date                  | mandatory              |
      | Invoice Value                 | mandatory              |
      | Hypothecation                 | non mandatory          |
      | Invoice Type                  | mandatory              |
      | Invoice For                   | mandatory              |
      | Invoice Item Reference Number | non mandatory          |

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

#CAS-94743
  Scenario Outline: ACAUTOCAS-14306: Validation of <FieldName> in Invoice Details with <Validity> for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 72
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens invoice details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    When user fill "<FieldName>" with "<Validity>" in invoice details
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Validity | FieldName      | Throws_NotThrows                | CollateralWB    | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 42                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 43                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 44                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 45                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 46                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 47                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 48                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 35                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 36                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 37                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 38                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 39                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 40                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 41                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 49                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 50                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 51                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 52                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 53                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 54                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 55                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 56                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 57                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 58                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 59                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 60                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 61                               |


  Scenario Outline: ACAUTOCAS-14307: Validate the field name of invoice details with Proper label for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 72
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    When user opens invoice details section
    Then user should be able to see invoice details with proper labels
      | FieldName                     |
      | Invoice Number                |
      | Invoice Date                  |
      | Invoice Value                 |
      | Hypothecation                 |
      | Invoice Type                  |
      | Invoice For                   |
      | Invoice Item Reference Number |
      | Actions                       |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

  Scenario Outline: ACAUTOCAS-14308: Data Modification of "<FieldName>" in Invoice Details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 72
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user closes duplicate check result box after checking the duplicates
    And user fills reason section
    And user saves the data
    When user modifies the saved collateral
    Then user should be able to modify the invoice data in "<FieldName>" field
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FieldName                     | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Invoice Number                | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Invoice Date                  | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Invoice Value                 | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Hypothecation                 | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Invoice Type                  | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Invoice For                   | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Invoice Item Reference Number | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |


  Scenario Outline: ACAUTOCAS-14309: Validate the modification of invoice details including deletions for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 72
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
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
    And user saves the Collateral Details
    When user modifies the saved collateral
    And deletes all the invoices linked to the collateral
    And user saves the Collateral Details
    Then collateral should saved successfully
    Examples:
      | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   |
      | collateral.xlsx | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |


  Scenario Outline: ACAUTOCAS-14310: Validate the modification of invoice details with adding more invoices for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 72
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
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
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 1                                |

  Scenario Outline: ACAUTOCAS-14311: Validate the modification of invoice details with adding second final invoice for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 72
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 0 |
      | collateral.xlsx | invoice_details | 1 |
      | collateral.xlsx | invoice_details | 2 |
      | collateral.xlsx | invoice_details | 3 |
      | collateral.xlsx | invoice_details | 4 |
    And user closes duplicate check result box after checking the duplicates
    And user saves the Collateral Details
    When user modifies the saved collateral
    And user opens invoice details section
    And clicks on plus icon to add invoice details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user saves the Collateral Details
    Then user receives a proper error message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 119                              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 120                              |


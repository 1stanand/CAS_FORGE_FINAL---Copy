@Epic-Loan_Application_Details
@AuthoredBy-shalini.garg
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@NotImplemented

Feature: Insurance Details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    #FeatureID-ACAUTOCAS-12009
    #${ProductType:["HL","LAP","MHF"]}
    # ${ApplicationStage:["LEAD DETAILS", "DDE", "Login Acceptance", "Credit Approval"]}
  Scenario Outline: Validate error messages for fields on Insurance Details at stage <ApplicationStage>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application_Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_otherDetails>" and row <PropertyDetails_otherDetails_rowNum>
    And user fills other details of property details with "<Mandatory_NonMandatory>" fields for "<Application_Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_propertyAddress>" and row <PropertyDetails_propertyAddress_rowNum>
    And user fills property address with "<Mandatory_NonMandatory>" fields for "<Application_Type>"
    And user saves property details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_insurance>" and row <PropertyDetails_insurance_rowNum>
    When user fills insurance details with "<Validity>" "<Field_Name>" with "<InputType>" in insurance details at stage "<ApplicationStage>"
    Then "<Field_Name>" "<Throws_NotThrows>" error "<Error_Message>"
    Examples:
      | Validity | Field_Name               | InputType                          | Mandatory_NonMandatory | Application_Type    | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_otherDetails | PropertyDetails_otherDetails_rowNum | PropertyDetails_propertyAddress | PropertyDetails_propertyAddress_rowNum | PropertyDetails_insurance | PropertyDetails_insurance_rowNum | Throws_NotThrows                   | Error_Message             | ApplicationStage   |
      | valid    | Cover Note Creation Date | valid date format                  | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 48                               | does not throw any error           |                           | <ApplicationStage> |
      | invalid  | Cover Note Creation Date | invalid date format                | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 49                               | throws an error with error message | Invalid date format       | <ApplicationStage> |
      | valid    | Cover Note Creation Date | current date                       | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 50                               | does not throw any error           |                           | <ApplicationStage> |
      | valid    | Cover Note Creation Date | past date                          | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 51                               | does not throw any error           |                           | <ApplicationStage> |
      | invalid  | Cover Note Creation Date | future date                        | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 52                               | throws an error with error message | Enter valid date          | <ApplicationStage> |
      | invalid  | Cover Note Creation Date | year less than 1942                | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 53                               | throws an error with error message | Enter valid date          | <ApplicationStage> |
      | valid    | Cover Note Creation Date | year equal to 1942                 | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 54                               | does not throw any error           |                           | <ApplicationStage> |
      | invalid  | Cover Note Creation Date | special characters                 | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 55                               | throws an error with error message | Enter valid date          | <ApplicationStage> |
      | valid    | Cover Note Number        | positive digits                    | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 65                               | does not throw any error           |                           | <ApplicationStage> |
      | valid    | Cover Note Number        | characters                         | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 66                               | does not throw any error           |                           | <ApplicationStage> |
      | valid    | Cover Note Number        | both digits and characters         | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 67                               | does not throw any error           |                           | <ApplicationStage> |
      | invalid  | Cover Note Number        | negative                           | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 68                               | throws an error with error message | invalid cover note number | <ApplicationStage> |
      | invalid  | Cover Note Number        | space                              | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 69                               | throws an error with error message | invalid cover note number | <ApplicationStage> |
      | invalid  | Cover Note Number        | first character as special symbols | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 70                               | throws an error with error message | invalid cover note number | <ApplicationStage> |
      | invalid  | Cover Note Number        | last character as special symbols  | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 71                               | throws an error with error message | invalid cover note number | <ApplicationStage> |
      | invalid  | Cover Note Number        | consecutive special characters     | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 72                               | throws an error with error message | invalid cover note number | <ApplicationStage> |
      | invalid  | Cover Note Number        | non-consecutive special characters | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 73                               | throws an error with error message | invalid cover note number | <ApplicationStage> |
      | invalid  | Cover Note Number        | special characters except / \ - _  | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 74                               | throws an error with error message | invalid cover note number | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-12009
    #${ProductType:["HL","LAP","MHF"]}
    #${ApplicationStage:["LEAD DETAILS", "DDE", "Login Acceptance", "Credit Approval"]}
  Scenario Outline:Delete Insurance Details
    And user drafts an application of "<ProductType>" having collateral sub type "<CollateralSubType>" at stage "<ApplicationStage>"
    And Insurance Details are already entered
    When user deletes the entered Insurance Details
    Then Insurance Details should be deleted successfully
    Examples:
      | ProductType   | ApplicationStage   | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <CollateralSubType> |

    #FeatureID-ACAUTOCAS-12009
    #${ProductType:["HL","LAP","MHF"]}
    #${ApplicationStage:["LEAD DETAILS", "DDE", "Login Acceptance", "Credit Approval"]}
  Scenario Outline: Update Insurance Details
    And user drafts an application of "<ProductType>" having collateral sub type "<CollateralSubType>" at stage "<ApplicationStage>"
    And Insurance Details are already entered
    When user reads data from the excel file "<InsuranceDetailsWB>" under sheet "<InsuranceDetailsWB_sheetName>" and row "<InsuranceDetailsWB_sheetName_rowNum>"
    And user updates the Insurance Details
    Then Insurance Details should be updated successfully
    Examples:
      | InsuranceDetailsWB     | InsuranceDetailsWB_sheetName | InsuranceDetailsWB_sheetName_rowNum | ProductType   | ApplicationStage   | CollateralSubType   |
      | Insurance_Details.xlsx | Update                       | 1                                   | <ProductType> | <ApplicationStage> | <CollateralSubType> |

    #FeatureID-ACAUTOCAS-12009
    #${ProductType:["HL","LAP","MHF"]}
    #${ApplicationStage:["LEAD DETAILS", "DDE", "Login Acceptance", "Credit Approval"]}
  Scenario Outline: Validate All fields option on CERSAI Details tab
    And user drafts an application of "<ProductType>"  having collateral sub type "<CollateralSubType>" at stage "<ApplicationStage>"
    And Insurance Details page is open after saving Property Details
    When user clicks All fields
    Then all fields should be displayed on screen
      | fieldName                |
      | Insurance Company        |
      | Policy Number            |
      | Cover Note Number        |
      | Cover Note Creation Date |
      | Start Date               |
      | Maturity Date            |
      | Insurance Term           |
      | Coverage Type            |
      | Coverage Amount          |
      | Premium Amount           |
      | Loss Payee               |
    Examples:
      | ProductType   | ApplicationStage   | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <CollateralSubType> |

    #FeatureID-ACAUTOCAS-12009
    #${ProductType:["HL","LAP","MHF"]}
    # ${ApplicationStage:["LEAD DETAILS", "DDE", "Login Acceptance", "Credit Approval","Recommendation", "Disbursal", "Post Approval"]}
  Scenario Outline: Validate All fields option on Insurance Details tab
    And user drafts an application of "<ProductType>"  having collateral sub type "<CollateralSubType>" at stage "<ApplicationStage>"
    And Insurance Details page is open after saving Property Details
    When user clicks Required fields
    Then following mandatory fields should be displayed on screen
      | Mandatory_Field   |
      | Insurance Company |
      | Coverage Type     |
      | Coverage Amount   |
      | Premium Amount    |
      | Loss Payee        |
    Examples:
      | ProductType   | ApplicationStage   | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <CollateralSubType> |

    #FeatureID-ACAUTOCAS-12009
    #${ProductType:["HL","LAP","MHF"]}
    #${ApplicationStage:["LEAD DETAILS", "DDE", "Login Acceptance", "Credit Approval","Recommendation", "Disbursal", "Post Approval"]}
  Scenario Outline: Validate Insurance Term calculation on Insurance Details tab
    And user drafts an application of "<ProductType>"  having collateral sub type "<CollateralSubType>" at stage "<ApplicationStage>"
    And Insurance Details page is open after saving Property Details
    When user enters StartDate along with Maturity Date
    Then InsuranceTerm should be auto filled correctly
    Examples:
      | ProductType   | ApplicationStage   | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <CollateralSubType> |

    #FeatureID-ACAUTOCAS-12009
    #${ProductType:["HL","LAP","MHF"]}
    #${ApplicationStage:["LEAD DETAILS", "DDE", "Login Acceptance", "Credit Approval","Recommendation", "Disbursal", "Post Approval"]}
  Scenario Outline: Validate Insurance Term on Insurance Details tab
    And user drafts an application of "<ProductType>"  having collateral sub type "<CollateralSubType>" at stage "<ApplicationStage>"
    And Insurance Details page is open after saving Property Details
    And user enters StartDate along with Maturity Date
    When user edits "<Date>"
    Then InsuranceTerm should be updated correctly
    Examples:
      | ProductType   | ApplicationStage   | CollateralSubType   | Date         |
      | <ProductType> | <ApplicationStage> | <CollateralSubType> | StartDate    |
      | <ProductType> | <ApplicationStage> | <CollateralSubType> | MaturityDate |

    #FeatureID-ACAUTOCAS-12009
    #${ProductType:["HL","LAP","MHF"]}
    #${ApplicationStage:["LEAD DETAILS", "DDE", "Login Acceptance", "Credit Approval","Recommendation", "Disbursal", "Post Approval"]}
  Scenario Outline: Validate Entitlement Percentage validation on Insurance Details tab
    And user drafts an application of "<ProductType>"  having collateral sub type "<CollateralSubType>" at stage "<ApplicationStage>"
    And Insurance Details page is open after saving Property Details
    When user adds multiple Nominee Details such that Percentage entitlement sum is more than 100
    Then error message should be visible to user
    Examples:
      | ProductType   | ApplicationStage   | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <CollateralSubType> |

   #FeatureID-ACAUTOCAS-12009
   #${ProductType:["HL","LAP","MHF"]}
   #${ApplicationStage:["LEAD DETAILS", "DDE", "Login Acceptance", "Credit Approval","Recommendation", "Disbursal", "Post Approval"]}
  Scenario Outline: Validate Nominee Details delete
    And user drafts an application of "<ProductType>"  having collateral sub type "<CollateralSubType>" at stage "<ApplicationStage>"
    And Nominee Details are already entered
    When user deletes the entered Nominee Details
    Then Nominee Details should be deleted successfully
    Examples:
      | ProductType   | ApplicationStage   | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <CollateralSubType> |


   #FeatureID-ACAUTOCAS-12009
   #${ProductType:["HL","LAP","MHF"]}
   #${ApplicationStage:["LEAD DETAILS", "DDE", "Login Acceptance", "Credit Approval"]}
  Scenario Outline: Validate Nominee Details Update
    And user drafts an application of "<ProductType>"  having collateral sub type "<CollateralSubType>" at stage "<ApplicationStage>"
    And Nominee Details are already entered
    When user reads data from the excel file "<NomineeDetailsWB>" under sheet "<NomineeDetailsWB_sheetName>" and row "<NomineeDetailsWB_sheetName_rowNum>"
    And user updates the Nominee Details
    Then Nominee Details should be updated successfully
    Examples:
      | NomineeDetailsWB     | NomineeDetailsWB_sheetName | NomineeDetailsWB_sheetName_rowNum | ProductType   | ApplicationStage   | CollateralSubType   |
      | Nominee_Details.xlsx | Update                     | 1                                 | <ProductType> | <ApplicationStage> | <CollateralSubType> |

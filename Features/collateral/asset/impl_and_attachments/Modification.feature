@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
#CreateDate: 10th May 2024
#ScriptedBy:
#ReviewedBy:
#Scenarios: = 36
@ReviewedByGWT
@Modification
@ImplementedBy-priyanshu.kashyap
@Release
@Conventional
  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
#${CollateralSubType:["Implements and Attachments"]}

Feature: Implements and Attachments Modification

#  Pre-Requisites---
#  In this feature we will modify and delete an Asset Implements and Attachments to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  
#FeatureID-ACAUTOCAS-8108
  Scenario Outline: : ACAUTOCAS-8798:  Deleting a Implements and Attachments attached to the application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    When user fills mandatory fields of asset details of collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fills mandatory fields of invoice details of collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user deletes the saved collateral
    Then user should be able to successfully delete the collateral
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | asset_details           | 81                             | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | indiv         |


  
#  Scenario Outline: Implements and Attachments Data Modification
#FeatureID-ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8799:  Implements and Attachments Data Modification of fields in Asset Details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    When user fills mandatory fields of asset details of collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fills mandatory fields of invoice details of collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user modifies the saved collateral
    Then user should be able to see fields with enabled status in collateral details:
      | Fields                       | Enabled |
      | Collateral ID                | No      |
      | Global Collateral Number     | No      |
      | Collateral Type              | No      |
      | Collateral SubType           | No      |
      | Collateral Ref No            | Yes     |
      | Description                  | Yes     |
      | Asset Category               | Yes     |
      | Manufacturer                 | Yes     |
      | Asset Model                  | Yes     |
      | Asset Variant                | Yes     |
      | Asset Level                  | Yes     |
      | OLV Grid Value               | Yes     |
      | Insured Declared Value       | Yes     |
      | Accepted Value               | No      |
      | Overall Evaluated Value Type | Yes     |
      | Overall Accepted Value       | No      |
      | Asset Usage                  | Yes     |
      | Asset Location               | Yes     |
      | Asset Cost                   | Yes     |
      | Revaluation Date             | No      |
      | Reverification Date          | No      |
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | asset_details           | 81                             | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | indiv         |

  
#  Scenario Outline: Implements and Attachments Data Modification
#FeatureID-ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8800:  Implements and Attachments Data Modification of fields in Implements and Attachments Details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    When user fills mandatory fields of asset details of collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fills mandatory fields of invoice details of collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user modifies the saved collateral
    And user clicks on implements and attachments details accordian
    Then user should be able to see fields with enabled status in collateral details:
      | Fields                        | Enabled |
      | VIN Number                    | Yes     |
      | Registration Number           | Yes     |
      | Registration Date             | Yes     |
      | Registration Transport Office | Yes     |
      | Registration in Name of       | Yes     |
      | Registration Expiry Date      | Yes     |
      | Remarks                       | No      |
      | Color                         | Yes     |
      | Month of Manufacture          | Yes     |
      | Year of Manufacture           | Yes     |
      | State                         | Yes     |
      | Color Type                    | Yes     |
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | asset_details           | 81                             | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

  
#FeatureID-ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8801:  Implements and Attachments Data Modification in Asset Details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    When user fills mandatory fields of asset details of collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fills mandatory fields of invoice details of collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_implementsAndAttachment>" and row <Collateral_implementsAndAttachment_rowNum>
    And user modifies the Registration Number in implements and attachments accordian
    And user closes duplicate check result box after checking the duplicates
    And user saves the Collateral Details
    Then collateral should saved successfully
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | Collateral_implementsAndAttachment | Collateral_implementsAndAttachment_rowNum |
      | collateral.xlsx | asset_details           | 81                             | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | indiv         | implements_and_attachments         | 124                                       |

#FeatureID-ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8802:  Implements and Attachments Data Modification in Implements and Attachments Details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    When user fills mandatory fields of asset details of collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fills mandatory fields of invoice details of collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_implementsAndAttachment>" and row <Collateral_implementsAndAttachment_rowNum>
    And user modifies the asset details
    And user saves the Collateral Details
    Then collateral should saved successfully
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | Collateral_implementsAndAttachment | Collateral_implementsAndAttachment_rowNum |
      | collateral.xlsx | asset_details           | 81                             | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | indiv         | implements_and_attachments         | 124                                       |

  
##Dedupe Check
#FeatureID-ACAUTOCAS-8108,ACAUTOCAS-244
  Scenario Outline: ACAUTOCAS-8803:  Implements and Attachments Data Modification in Implements and Attachments Details for dedupe revalidation
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    When user fills mandatory fields of asset details of collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fills mandatory fields of invoice details of collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_implementsAndAttachment>" and row <Collateral_implementsAndAttachment_rowNum>
    And user modifies the Registration Number in implements and attachments accordian
    And user saves the Collateral Details
    Then collateral should saved successfully
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | Collateral_implementsAndAttachment | Collateral_implementsAndAttachment_rowNum |
      | collateral.xlsx | asset_details           | 81                             | invoice_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | indiv         | implements_and_attachments         | 125                                       |

  @Perishable
    
#FeatureID-ACAUTOCAS-8108,ACAUTOCAS-244
  Scenario Outline: ACAUTOCAS-8804:  Dedupe revalidation to identify duplicate collaterals
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_implementsAndAttachment>" and row <Collateral_implementsAndAttachment_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills all fields of asset details of "<CollateralSubType>"
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_implementsAndAttachment>" and row <Collateral_implementsAndAttachment_rowNum2>
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user fills all fields of asset details of "<CollateralSubType>"
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_implementsAndAttachment>" and row <Collateral_implementsAndAttachment_rowNum3>
    And user fills all fields of asset details of "<CollateralSubType>"
    And checks for duplicate collateral
    And user views the duplicate collateral
    Then user should validate <Number> duplicate "<CollateralSubType>" record for "<SourceSystem>" source system
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_implementsAndAttachment | Collateral_implementsAndAttachment_rowNum | Collateral_implementsAndAttachment_rowNum2 | Collateral_implementsAndAttachment_rowNum3 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType | Number | SourceSystem |
      | Implements and Attachments | collateral.xlsx | implements_and_attachments         | 125                                       | 126                                        | 127                                        | <ProductType> | <ApplicationStage> | Post Approval             |     |          | indiv         | 1      | CMS          |

  
#FeatureID-ACAUTOCAS-8108,ACAUTOCAS-244
  Scenario Outline: ACAUTOCAS-8805:  Dedupe revalidation to identify and view duplicate collaterals
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_implementsAndAttachment>" and row <Collateral_implementsAndAttachment_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills all fields of asset details of "<CollateralSubType>"
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_implementsAndAttachment>" and row <Collateral_implementsAndAttachment_rowNum2>
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user fills all fields of asset details of "<CollateralSubType>"
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_implementsAndAttachment>" and row <Collateral_implementsAndAttachment_rowNum3>
    And user fills all fields of asset details of "<CollateralSubType>"
    And checks for duplicate collateral
    Then User should be able to view the duplicates of "<CollateralSubType>" collateral
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_implementsAndAttachment | Collateral_implementsAndAttachment_rowNum | Collateral_implementsAndAttachment_rowNum2 | Collateral_implementsAndAttachment_rowNum3 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType | CollateralSubType   |
      | Implements and Attachments | collateral.xlsx | implements_and_attachments         | 125                                       | 126                                        | 127                                        | <ProductType> | <ApplicationStage> | Post Approval             |     |          | indiv         | <CollateralSubType> |

  @LoggedBug
    
#FeatureID-ACAUTOCAS-8108,ACAUTOCAS-244
  Scenario Outline: ACAUTOCAS-8806:  Dedupe revalidation to identify and attach duplicate collaterals to the same application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_implementsAndAttachment>" and row <Collateral_implementsAndAttachment_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills all fields of asset details of "<CollateralSubType>"
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_implementsAndAttachment>" and row <Collateral_implementsAndAttachment_rowNum2>
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user fills all fields of asset details of "<CollateralSubType>"
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_implementsAndAttachment>" and row <Collateral_implementsAndAttachment_rowNum>
    And user fills all fields of asset details of "<CollateralSubType>"
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is already attached to the application
    And user saves selected dedupe collateral
    Then user gets a notification message
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_implementsAndAttachment | Collateral_implementsAndAttachment_rowNum | Collateral_implementsAndAttachment_rowNum2 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType | CollateralSubType   |
      | Implements and Attachments | collateral.xlsx | implements_and_attachments         | 125                                       | 126                                        | <ProductType> | <ApplicationStage> | Post Approval             |     |          | indiv         | <CollateralSubType> |

  
#FeatureID-ACAUTOCAS-8108,ACAUTOCAS-244
  Scenario Outline: ACAUTOCAS-8807:  Dedupe revalidation to identify and attach duplicate collaterals to different application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_implementsAndAttachment>" and row <Collateral_implementsAndAttachment_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills all fields of asset details of "<CollateralSubType>"
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_implementsAndAttachment>" and row <Collateral_implementsAndAttachment_rowNum2>
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user fills all fields of asset details of "<CollateralSubType>"
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_implementsAndAttachment>" and row <Collateral_implementsAndAttachment_rowNum>
    And user fills all fields of asset details of "<CollateralSubType>"
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is not attached to the application
    And user saves selected dedupe collateral
    Then user gets a notification message
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_implementsAndAttachment | Collateral_implementsAndAttachment_rowNum | Collateral_implementsAndAttachment_rowNum2 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType | CollateralSubType   |
      | Implements and Attachments | collateral.xlsx | implements_and_attachments         | 125                                       | 126                                        | <ProductType> | <ApplicationStage> | Post Approval             |     |          | indiv         | <CollateralSubType> |

  
# Ignore duplicate and save - Ask for reason
#FeatureID-ACAUTOCAS-8108,ACAUTOCAS-244
  Scenario Outline: ACAUTOCAS-8808:  Dedupe revalidation to identify and ignore duplicate collaterals
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_implementsAndAttachment>" and row <Collateral_implementsAndAttachment_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills all fields of asset details of "<CollateralSubType>"
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_implementsAndAttachment>" and row <Collateral_implementsAndAttachment_rowNum2>
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user fills all fields of asset details of "<CollateralSubType>"
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_implementsAndAttachment>" and row <Collateral_implementsAndAttachment_rowNum>
    And user fills all fields of asset details of "<CollateralSubType>"
    And checks for duplicate collateral
    And user ignores the duplicate collaterals found
    And user clicks on save collateral
    Then user gets a notification message
    Examples:
      | CollateralSubType          | CollateralWB    | Collateral_implementsAndAttachment | Collateral_implementsAndAttachment_rowNum | Collateral_implementsAndAttachment_rowNum2 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType | CollateralSubType   |
      | Implements and Attachments | collateral.xlsx | implements_and_attachments         | 125                                       | 126                                        | <ProductType> | <ApplicationStage> | Post Approval             |     |          | indiv         | <CollateralSubType> |


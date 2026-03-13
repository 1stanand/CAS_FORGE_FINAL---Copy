@Epic-RenewalAndRenewalRecom
@ReviewedBy-None
@AuthoredBy-Anand.Singh1
@NotImplemented
Feature: Edit Collateral

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
  #FeatureID-ACAUTOCAS-10990
  # ${ ProductType : ["MAL","IAF","IPF","IHF ","AGRL","CV","CEQ","EDU","FE","FAS","GL","HL","JLG","KCC","LAP","MHF","PL","SHG","LC","BG","BL","BD","CC","CashCred"]}
  #${ApplicationStage : ["APP Update Recommendation"]}
  Scenario Outline:Validation For Collateral Details table in <ProductType> at <ApplicationStage> stage
    Given user open an application of "<ProductType>" at "<ApplicationStage>"
    And user opens Collateral Screen
    And user can see there is already collateral details added
    When the user opens the page
    Then user can see the table containing Collateral Details following Columns
      | ColumnNames              |
      | Collateral ID            |
      | Global Collateral Number |
      | Type                     |
      | Sub Type                 |
      | Description              |
      | Actions                  |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  #FeatureID-ACAUTOCAS-10990
  # ${ ProductType : ["MAL","IAF","IPF","IHF ","AGRL","CV","CEQ","EDU","FE","FAS","GL","HL","JLG","KCC","LAP","MHF","PL","SHG","LC","BG","BL","BD","CC","CashCred"]}
  #${ApplicationStage : ["APP Update Recommendation"]}
  Scenario Outline: Validation For Collateral Details table Edit and Delete Options in <ProductType> at <ApplicationStage> stage
    Given user open an application of "<ProductType>" at "<ApplicationStage>"
    And user opens Collateral Screen
    And user can see there is already collateral details added
    When the user opens the page
    Then user can see the table containing Collateral Details data with Columns and Action Column having Buttons
      | Buttons |
      | Edit    |
      | Delete  |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
  #FeatureID-ACAUTOCAS-10990
  # ${ ProductType : ["MAL","IAF","IPF","IHF ","AGRL","CV","CEQ","EDU","FE","FAS","GL","HL","JLG","KCC","LAP","MHF","PL","SHG","LC","BG","BL","BD","CC","CashCred"]}
  #${ApplicationStage : ["APP Update Recommendation"]}
  Scenario Outline: Validation For Collateral Details Type SubType Combinations in <ProductType> at <ApplicationStage>
    Given user open an application of "<ProductType>" at "<ApplicationStage>"
    And user opens Collateral Screen
    And user can see there is already collateral details added
    When the user opens the page
    Then user can see the table containing Collateral Details data with Columns and There can be only Type with Subtype Combination
      | Type      | Subtype                             |
      | Asset     | Consumer Vehicle                    |
      | Asset     | Commercial Vehicle                  |
      | Asset     | Consumer Durable                    |
      | Asset     | Tractor                             |
      | Asset     | Implements and Attachments          |
      | Asset     | Commercial Equipment                |
      | Property  | Builder Property Under Construction |
      | Property  | Ready Property                      |
      | Property  | Construction On Land                |
      | Property  | Plot + Self Construction            |
      | Property  | Purchase a Plot                     |
      | Gold      | Ornament                            |
      | Deposit   | Fixed Deposit                       |
      | Deposit   | Kisan Vikas Patra                   |
      | Deposit   | National Saving Certificate         |
      | Insurance | Insurance                           |
      | Land      | Agricultural Land                   |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
  #FeatureID-ACAUTOCAS-10990
  # ${ ProductType : ["MAL","IAF","IPF","IHF ","AGRL","CV","CEQ","EDU","FE","FAS","GL","HL","JLG","KCC","LAP","MHF","PL","SHG","LC","BG","BL","BD","CC","CashCred"]}
  #${ApplicationStage : ["APP Update Recommendation"]}
  Scenario Outline: Validation For Collateral Details alongwith Add Search Options in <ProductType> at <ApplicationStage>
    Given user open an application of "<ProductType>" at "<ApplicationStage>"
    And user opens Collateral Screen
    And user can see there is already collateral details added
    When the user opens the page
    Then user can see the table containing these Buttons
      | Buttons         |
      | Add New         |
      | Search Existing |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
  #FeatureID-ACAUTOCAS-10990
  # ${ ProductType : ["MAL","IAF","IPF","IHF ","AGRL","CV","CEQ","EDU","FE","FAS","GL","HL","JLG","KCC","LAP","MHF","PL","SHG","LC","BG","BL","BD","CC","CashCred"]}
  #${ApplicationStage : ["APP Update Recommendation"]}
  Scenario Outline: Validation For Collateral Details fields Editability Asset Type Consumer Vehicle Subtype Collateral in <ProductType> at <ApplicationStage>
    Given user open an application of "<ProductType>" at "<ApplicationStage>"
    And user opens Collateral Screen
    And user can see there is already collateral details added
    When the user Edits the Asset Type Consumer Vehicle Subtype Collateral
    Then User will see the Fields as Editable Read Only of Type
      | Fields                                 | Editable | Type          |
      | Collateral Id                          | No       | Text Box      |
      | Global Collateral Number               | No       | Text Box      |
      | Collateral Type                        | No       | Dropdown      |
      | Collateral SubType                     | No       | Dropdown      |
      | Reference Number                       | Yes      | Text Box      |
      | Description                            | Yes      | Text Area     |
      | Asset Category                         | Yes      | Dropdown      |
      | Manufacturer                           | Yes      | Dropdown      |
      | Asset Model                            | Yes      | Dropdown      |
      | Asset Variant                          | Yes      | Dropdown      |
      | Asset Series                           | Yes      | Dropdown      |
      | Asset Level                            | Yes      | Dropdown      |
      | Transmission Type                      | Yes      | Auto Complete |
      | Body Type                              | Yes      | Auto Complete |
      | Cubic Capacity                         | Yes      | Auto Complete |
      | NVIC Code                              | Yes      | Auto Complete |
      | Registration Year                      | Yes      | Text Box      |
      | Initial Odometer Reading               | Yes      | Text Box      |
      | Base Value                             | Yes      | Text Box      |
      | Option Value                           | Yes      | Text Box      |
      | Asset Location                         | Yes      | Text Box      |
      | Engine Number                          | Yes      | Text Box      |
      | Chassis Number                         | Yes      | Text Box      |
      | FIP Number                             | Yes      | Text Box      |
      | Date of Delivery                       | Yes      | Date          |
      | VIN Number                             | Yes      | Text Box      |
      | Registration Date                      | Yes      | Date          |
      | Is Special Number                      | Yes      | Checkbox      |
      | Registration Number                    | Yes      | Text Box      |
      | Registration Transport Office          | Yes      | Auto Complete |
      | Registration in Name of                | Yes      | Auto Complete |
      | Registration Expiry Date               | Yes      | Date          |
      | RC Received Date                       | Yes      | Date          |
      | Asset Life (Months)                    | Yes      | Text Box      |
      | Asset Age (Months)                     | Yes      | Text Box      |
      | Maximum Asset Age for funding (Months) | Yes      | Text Box      |
      | Color                                  | Yes      | Text Box      |
      | Year of Manufacture                    | Yes      | Text Box      |
      | State                                  | Yes      | Auto Complete |
      | Color Type                             | Yes      | Auto Complete |
      | Response Status                        | Yes      | Auto Complete |
      | Vehicle Financer                       | Yes      | Text Box      |
      | Registration Number                    | Yes      | Text Box      |
      | RTO Of Registration                    | Yes      | Auto Complete |
      | Date Of Registration                   | Yes      | Date          |
      | Owner Registered Name                  | Yes      | Text Box      |
      | Registered Present Address Of Owner    | Yes      | Text Box      |
      | Registered Permanent Address Of Owner  | Yes      | Text Box      |
      | Vehicle Color                          | Yes      | Text Box      |
      | Vehicle Make and Model                 | Yes      | Auto Complete |
      | Vehicle Manufacturer                   | Yes      | Auto Complete |
      | Vehicle Insurer                        | Yes      | Auto Complete |
      | Insurance Policy Number                | Yes      | Text Box      |
      | Insurance Valid Upto                   | Yes      | Text Box      |
      | PUC Number                             | Yes      | Text Box      |
      | PUC Expiry Date                        | Yes      | Date          |
      | Is Transitional                        | Yes      | Checkbox      |
      | Are Subjected To Control               | Yes      | Checkbox      |
      | Are Proceeds Claimed                   | Yes      | Checkbox      |
      | Is Inventory                           | Yes      | Checkbox      |
      | Is PMSI                                | Yes      | Checkbox      |
      | Is Subordinate                         | Yes      | Checkbox      |
      | Earlier Registration Number            | Yes      | Text Box      |
      | Invoice Number                         | Yes      | Text Box      |
      | Invoice Date                           | Yes      | Date          |
      | Invoice Value                          | Yes      | Text Box      |
      | Hypothecation                          | Yes      | Auto Complete |
      | Invoice Type                           | Yes      | Auto Complete |
      | Invoice For                            | Yes      | Auto Complete |
      | Invoice Item Reference Number          | Yes      | Text Box      |
      | Asset Cost                             | Yes      | Text Box      |
      | Reverification Date                    | Yes      | Date          |
      | Revaluation Date                       | Yes      | Date          |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  #FeatureID-ACAUTOCAS-10990
  # ${ ProductType : ["MAL","IAF","IPF","IHF ","AGRL","CV","CEQ","EDU","FE","FAS","GL","HL","JLG","KCC","LAP","MHF","PL","SHG","LC","BG","BL","BD","CC","CashCred"]}
  #${ApplicationStage : ["APP Update Recommendation"]}
  Scenario Outline: Validation For Collateral Details Editable Fields in  Asset Type Commercial Vehicle Subtype Collateral in <ProductType> at <ApplicationStage>
    Given user open an application of "<ProductType>" at "<ApplicationStage>"
    And user opens Collateral Screen
    And user can see there is already collateral details added
    When the user Edits the Asset Type Commercial Vehicle Subtype Collateral
    Then User will see the Fields as Editable of Type
      | Fields                     | Editable | Type          |
      | Collateral ID              | No       | Text Box      |
      | Global Collateral Number   | No       | Text Box      |
      | External Collateral Number | No       | Text Box      |
      | Collateral Type            | No       | Dropdown      |
      | Collateral SubType         | No       | Dropdown      |
      | Collateral Ref No          | Yes      | Text Box      |
      | Description                | Yes      | Text Box      |
      | Asset Category             | Yes      | Dropdown      |
      | Manufacturer               | Yes      | Dropdown      |
      | Asset Model                | Yes      | Dropdown      |
      | Asset Variant              | Yes      | Dropdown      |
      | Asset Series               | Yes      | Dropdown      |
      | Asset Level                | Yes      | Dropdown      |
      | Transmission Type          | Yes      | Auto Complete |
      | Body Type                  | Yes      | Auto Complete |
      | Cubic Capacity             | Yes      | Auto Complete |
      | NVIC Code                  | Yes      | Dropdown      |
      | Registration Year          | Yes      | Dropdown      |
      | Initial Odometer Reading   | Yes      | Text Box      |
      | Base Value                 | Yes      | Text Box      |
      | Option Value               | Yes      | Text Box      |
      | Overall Accepted Value     | Yes      | Text Box      |
      | Asset Usage                | Yes      | Auto Complete |
      | Asset Location             | Yes      | Text Box      |
      | Asset Cost                 | Yes      | Text Box      |
      | Revaluation Date           | Yes      | Date          |
      | Reverification Date        | Yes      | Date          |
      | Reason Code                | No       | Dropdown      |
      | Reason Description         | No       | Dropdown      |
      | Remarks                    | No       | Text Area     |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


  #FeatureID-ACAUTOCAS-10990
  # ${ ProductType : ["MAL","IAF","IPF","IHF ","AGRL","CV","CEQ","EDU","FE","FAS","GL","HL","JLG","KCC","LAP","MHF","PL","SHG","LC","BG","BL","BD","CC","CashCred"]}
  #${ApplicationStage : ["APP Update Recommendation"]}
  Scenario Outline: Verification of Link Tab Types for Asset Type Commercial Vehicle Subtype Collateral in <ProductType> at <ApplicationStage>
    Given user open an application of "<ProductType>" at "<ApplicationStage>"
    And user opens Collateral Screen
    And user can see there is already Asset type collateral details added
    When the user Edits the Asset Type Commercial Vehicle Subtype Collateral
    Then User will see the Links as Style
      | Links                     | Style     |
      | Lien Details              | Tab       |
      | Insurance                 | Tab       |
      | CERSAI                    | Tab       |
      | Vehicle Details           | Accordion |
      | PPSR Registration Details | Accordion |
      | RC Authentication Details | Accordion |
      | Invoice Details           | Accordion |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  #FeatureID-ACAUTOCAS-10990
  # ${ ProductType : ["MAL","IAF","IPF","IHF ","AGRL","CV","CEQ","EDU","FE","FAS","GL","HL","JLG","KCC","LAP","MHF","PL","SHG","LC","BG","BL","BD","CC","CashCred"]}
  #${ApplicationStage : ["APP Update Recommendation"]}
  Scenario Outline: Validations For Collateral Details Accordion Fields Vehicle Details accordion for Asset Type Commercial Vehicle Subtype Collateral  in <ProductType> at <ApplicationStage>
    Given user open an application of "<ProductType>" at "<ApplicationStage>"
    And user opens Collateral Screen
    And user can see there is already Asset type collateral details added
    And the user Edits the Asset Type Commercial Vehicle Subtype Collateral
    When the user clicks on Vehicle Details Accordion
    Then User will see the Fields as Editable of Type
      | Fields                                 | Editable | Type          |
      | Engine Number                          | Yes      | Text Box      |
      | Chassis Number                         | Yes      | Text Box      |
      | FIP Number                             | Yes      | Text Box      |
      | Date of Delivery                       | Yes      | Date          |
      | VIN Number                             | Yes      | Text Box      |
      | Registration Date                      | Yes      | Date          |
      | Parameter Sequence                     | Yes      | Checkbox      |
      | Registration Number*                   | Yes      | Text Box      |
      | Registration Number                    | No       | Text Box      |
      | Registration Transport Office          | Yes      | Auto Complete |
      | Registration in Name of                | Yes      | Text Box      |
      | Registration Expiry Date               | Yes      | Date          |
      | RC Received Date                       | Yes      | Date          |
      | Vehicle Capacity                       | Yes      | Text Box      |
      | Asset Life (Months)                    | Yes      | Text Box      |
      | Asset Age (Months)                     | No       | Text Box      |
      | Initial Odometer Reading               | Yes      | Text Box      |
      | Maximum Asset Age for funding (Months) | No       | Text Box      |
      | Color                                  | Yes      | Text Box      |
      | Year of Manufacture                    | Yes      | Text Box      |
      | State                                  | Yes      | Auto Complete |
      | Color Type                             | Yes      | Dropdown      |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


  #FeatureID-ACAUTOCAS-10990
  # ${ ProductType : ["MAL","IAF","IPF","IHF ","AGRL","CV","CEQ","EDU","FE","FAS","GL","HL","JLG","KCC","LAP","MHF","PL","SHG","LC","BG","BL","BD","CC","CashCred"]}
  #${ApplicationStage : ["APP Update Recommendation"]}
  Scenario Outline: Verification For Collateral Details Accordion Fields editablity for Asset Type Commercial Vehicle Subtype Collateral  in <ProductType> at <ApplicationStage>
    Given user open an application of "<ProductType>" at "<ApplicationStage>"
    And user opens Collateral Screen
    And user can see there is already Asset type collateral details added
    And the user has opened the Asset Type Commercial Vehicle Subtype Collateral
    When the user clicks on RC Authentication Details Accordion
    Then User will see the Fields as Editable
      | Fields                                | Editable | Type          |
      | Response Status                       | No       | Text Box      |
      | Vehicle Financer                      | No       | Text Box      |
      | Registration Number                   | No       | Text Box      |
      | RTO Of Registration                   | No       | Auto Complete |
      | Date Of Registration                  | No       | Date          |
      | Owner Registered Name                 | No       | Text Box      |
      | Registered Present Address Of Owner   | No       | Text Box      |
      | Registered Permanent Address Of Owner | No       | Text Box      |
      | Chassis Number                        | No       | Text Box      |
      | Engine Number                         | No       | Text Box      |
      | Vehicle Color                         | No       | Text Box      |
      | Vehicle Make and Model                | No       | Auto Complete |
      | Vehicle Manufacturer                  | No       | Auto Complete |
      | Vehicle Insurer                       | No       | Auto Complete |
      | Insurance Policy Number               | No       | Text Box      |
      | Insurance Valid Upto                  | No       | Text Box      |
      | PUC Number                            | No       | Text Box      |
      | PUC Expiry Date                       | No       | Date          |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  #FeatureID-ACAUTOCAS-10990
  # ${ ProductType : ["MAL","IAF","IPF","IHF ","AGRL","CV","CEQ","EDU","FE","FAS","GL","HL","JLG","KCC","LAP","MHF","PL","SHG","LC","BG","BL","BD","CC","CashCred"]}
  #${ApplicationStage : ["APP Update Recommendation"]}
  Scenario Outline: Verification of Collateral Details Accordion Fields in PPSR Registration Details for Asset Type Commercial Vehicle Subtype Collateral
    Given user open an application of "<ProductType>" at "<ApplicationStage>"
    And user opens Collateral Screen
    And user can see there is already Asset type collateral details added
    And the user Edits the Asset Type Commercial Vehicle Subtype Collateral
    When the user clicks on PPSR Registration Details Accordion
    Then user will see the Fields field of Type type
      | Fields                      | Editable | Type       |
      | Is Transitional             | Yes      | Check Box  |
      | Are Subjected To Control    | Yes      | Check Box  |
      | Are Proceeds Claimed        | Yes      | Check Box  |
      | Is Inventory                | Yes      | Check Box  |
      | Is PMSI                     | Yes      | Check Box  |
      | Is Subordinate              | Yes      | Check Box  |
      | Earlier Registration Number | Yes      | Text Field |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  #FeatureID-ACAUTOCAS-10990
  # ${ ProductType : ["MAL","IAF","IPF","IHF ","AGRL","CV","CEQ","EDU","FE","FAS","GL","HL","JLG","KCC","LAP","MHF","PL","SHG","LC","BG","BL","BD","CC","CashCred"]}
  #${ApplicationStage : ["APP Update Recommendation"]}
  Scenario Outline: Verification of Collateral Details Accordion Fields Invoice Details for Asset Type Commercial Vehicle Subtype Collateral in <ProductType> at <ApplicationStage>
    Given user open an application of "<ProductType>" at "<ApplicationStage>"
    And user opens Collateral Screen
    And user can see there is already Asset type collateral details added
    And the user Edits the Asset Type Commercial Vehicle Subtype Collateral
    When the user clicks on "Invoice Details " Accordion
    Then User will see the Fields as Editable of Type
      | Fields                        | Editable | Type       |
      | Invoice Number*               | Yes      | Text Field |
      | Invoice Date*                 | Yes      | Date       |
      | Invoice Value*                | Yes      | Number     |
      | Hypothecation                 | Yes      | Text Field |
      | Invoice Type*                 | Yes      | Drop Down  |
      | Invoice For*                  | Yes      | Drop Down  |
      | Invoice Item Reference Number | Yes      | Drop Down  |
      | Actions                       | Yes      | Button     |
      | +                             | Yes      | Button     |
      | Check For Duplicates          | Yes      | Button     |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
    ####### Write Cases of opening accordions and their fields

  #FeatureID-ACAUTOCAS-10990
  # ${ ProductType : ["MAL","IAF","IPF","IHF ","AGRL","CV","CEQ","EDU","FE","FAS","GL","HL","JLG","KCC","LAP","MHF","PL","SHG","LC","BG","BL","BD","CC","CashCred"]}
  #${ApplicationStage : ["APP Update Recommendation"]}
  Scenario Outline: Edit Asset Type Collateral Details with Incorrect Data for Asset Type Consumer vehicle Subtype in <ProductType> at <ApplicationStage>
    Given user open an application of "<ProductType>" at "<ApplicationStage>"
    And user opens Collateral Screen
    And user can see there is already collateral details added
    And user can see already added collateral is Of Asset Type Consumer vehicle Subtype
    And user reads data from execl file "<FileName>" sheetname "<SheetName>" in row <RowNumber>
    When user saves screen after entering the fetched sheet data into fields
    Then User will see validations at "<Field>"
    Examples:
      | ProductType   | ApplicationStage   | FileName              | SheetName | RowNumber | Field             |
      | <ProductType> | <ApplicationStage> | EditCollateralDetails | Asset     | 1         | Asset Category    |
      | <ProductType> | <ApplicationStage> | EditCollateralDetails | Asset     | 1         | Manufacturer      |
      | <ProductType> | <ApplicationStage> | EditCollateralDetails | Asset     | 1         | Asset Model       |
      | <ProductType> | <ApplicationStage> | EditCollateralDetails | Asset     | 1         | Asset Variant     |
      | <ProductType> | <ApplicationStage> | EditCollateralDetails | Asset     | 1         | Asset Series      |
      | <ProductType> | <ApplicationStage> | EditCollateralDetails | Asset     | 1         | NVIC Code         |
      | <ProductType> | <ApplicationStage> | EditCollateralDetails | Asset     | 1         | Registration Year |

  #FeatureID-ACAUTOCAS-10990
  # ${ ProductType : ["MAL","IAF","IPF","IHF ","AGRL","CV","CEQ","EDU","FE","FAS","GL","HL","JLG","KCC","LAP","MHF","PL","SHG","LC","BG","BL","BD","CC","CashCred"]}
  #${ApplicationStage : ["APP Update Recommendation"]}
  Scenario Outline: Edit Asset Type Collateral Details without changing any data for Consumer vehicle Subtype  in <ProductType> at <ApplicationStage>
    Given user open an application of "<ProductType>" at "<ApplicationStage>"
    And user opens Collateral Screen
    And user can see there is already collateral details added
    And user can see already added collateral is Of Asset Type Consumer vehicle Subtype
    When the user saves the screen without making any changes.
    Then User will be able to save the data with confirmation Message Collateral Data Saved Successfully
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


  #FeatureID-ACAUTOCAS-10990
  # ${ ProductType : ["MAL","IAF","IPF","IHF ","AGRL","CV","CEQ","EDU","FE","FAS","GL","HL","JLG","KCC","LAP","MHF","PL","SHG","LC","BG","BL","BD","CC","CashCred"]}
  #${ApplicationStage : ["APP Update Recommendation"]}
  Scenario Outline: Edit Asset Type Collateral Details Consumer vehicle Subtype in <ProductType> at <ApplicationStage>
    Given user open an application of "<ProductType>" at "<ApplicationStage>"
    And user opens Collateral Screen
    And user can see there is already collateral details added
    And user can see already added collateral is Of Asset Type Consumer vehicle Subtype
    And user expands Vehicle Details accordion
    And user reads data from execl file "<FileName>" sheetname "<SheetName>" in row <RowNumber>
    When user saves screen after entering the fetched sheet data into fields
    Then User will see "<Message>".
    Examples:
      | ProductType   | ApplicationStage   | FileName              | SheetName | RowNumber | Message                                    |
      | <ProductType> | <ApplicationStage> | EditCollateralDetails | Asset     | 2         | Collateral Data Saved Successfully         |
      | <ProductType> | <ApplicationStage> | EditCollateralDetails | Asset     | 3         | State RTO code does not exist in any state |
      | <ProductType> | <ApplicationStage> | EditCollateralDetails | Asset     | 4         | Collateral Data Saved Successfully         |

  #FeatureID-ACAUTOCAS-10990
  # ${ ProductType : ["MAL","IAF","IPF","IHF ","AGRL","CV","CEQ","EDU","FE","FAS","GL","HL","JLG","KCC","LAP","MHF","PL","SHG","LC","BG","BL","BD","CC","CashCred"]}
  #${ApplicationStage : ["APP Update Recommendation"]}
  Scenario Outline: Edit Asset Type Collateral Details Consumer vehicle Subtype with Incorrect Data in <ProductType> at <ApplicationStage>
    Given user open an application of "<ProductType>" at "<ApplicationStage>"
    And user opens Collateral Screen
    And user can see there is already collateral details added
    And user can see already added collateral is Of Asset Type Consumer vehicle Subtype
    And user reads data from execl file "<FileName>" sheetname "<SheetName>" in row <RowNumber>
    When user saves screen after entering the fetched sheet data into fields
    Then User will see validations at "<Field>"
    Examples:
      | ProductType   | ApplicationStage   | FileName              | SheetName | RowNumber | Field      |
      | <ProductType> | <ApplicationStage> | EditCollateralDetails | Asset     | 5         | Asset Cost |

  #FeatureID-ACAUTOCAS-10990
  # ${ ProductType : ["MAL","IAF","IPF","IHF ","AGRL","CV","CEQ","EDU","FE","FAS","GL","HL","JLG","KCC","LAP","MHF","PL","SHG","LC","BG","BL","BD","CC","CashCred"]}
  #${ApplicationStage : ["APP Update Recommendation"]}
  Scenario Outline: Edit Asset Type Collateral Details Commercial vehicle Subtype without making any changes  in <ProductType> at <ApplicationStage>
    Given user open an application of "<ProductType>" at "<ApplicationStage>"
    And user opens Collateral Screen
    And user can see there is already collateral details added
    And user can see already added collateral is Of Asset Type Commercial vehicle Subtype
    When the user saves the screen without making any changes
    Then User will be able to save the data with confirmation Message
      | Message                            |
      | Collateral Data Saved Successfully |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


  #FeatureID-ACAUTOCAS-10990
  # ${ ProductType : ["MAL","IAF","IPF","IHF ","AGRL","CV","CEQ","EDU","FE","FAS","GL","HL","JLG","KCC","LAP","MHF","PL","SHG","LC","BG","BL","BD","CC","CashCred"]}
  #${ApplicationStage : ["APP Update Recommendation"]}
  Scenario Outline: Edit Asset Type Collateral Details Commercial vehicle Subtype with user data in <ProductType> at <ApplicationStage>
    Given user open an application of "<ProductType>" at "<ApplicationStage>"
    And user opens Collateral Screen
    And user can see there is already collateral details added
    And user can see already added collateral is Of Asset Type Commercial vehicle Subtype
    And user reads data from execl file "<FileName>" sheetname "<SheetName>" in row <RowNumber>
    When user saves screen after entering the fetched sheet data into fields
    Then User will see "<Message>"
    Examples:
      | ProductType   | ApplicationStage   | FileName              | SheetName | RowNumber | Message                                    |
      | <ProductType> | <ApplicationStage> | EditCollateralDetails | Asset     | 6         | Collateral Data Saved Successfully         |
      | <ProductType> | <ApplicationStage> | EditCollateralDetails | Asset     | 7         | State RTO code does not exist in any state |
      | <ProductType> | <ApplicationStage> | EditCollateralDetails | Asset     | 8         | Collateral Data Saved Successfully         |

  #FeatureID-ACAUTOCAS-10990
  # ${ ProductType : ["MAL","IAF","IPF","IHF ","AGRL","CV","CEQ","EDU","FE","FAS","GL","HL","JLG","KCC","LAP","MHF","PL","SHG","LC","BG","BL","BD","CC","CashCred"]}
  #${ApplicationStage : ["APP Update Recommendation"]}
  Scenario Outline: Edit Asset Type Collateral Consumer vehicle Subtype Details with No Data in <ProductType> at <ApplicationStage>
    Given user open an application of "<ProductType>" at "<ApplicationStage>"
    And user opens Collateral Screen
    And user can see there is already collateral details added
    And user can see already added collateral is Of Asset Type Consumer vehicle Subtype
    When the user saves the screen after he Removes the data from all fields
    Then User will see validations at Field
      | Field          |
      | Asset Category |
      | Manufacturer   |
      | Asset Model    |
      | Asset Cost     |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  #FeatureID-ACAUTOCAS-10990
  # ${ ProductType : ["MAL","IAF","IPF","IHF ","AGRL","CV","CEQ","EDU","FE","FAS","GL","HL","JLG","KCC","LAP","MHF","PL","SHG","LC","BG","BL","BD","CC","CashCred"]}
  #${ApplicationStage : ["APP Update Recommendation"]}
  Scenario Outline: Edit Asset Type Collateral Consumer Durable Subtype Details without changing any data in <ProductType> at <ApplicationStage>
    Given user open an application of "<ProductType>" at "<ApplicationStage>"
    And user opens Collateral Screen
    And user can see there is already collateral details added
    And user can see already added collateral is Of Asset Type Consumer Durable Subtype
    When the user saves the screen without making any changes.
    Then User will be able to save the data with confirmation Message
      | Message                            |
      | Collateral Data Saved Successfully |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  #FeatureID-ACAUTOCAS-10990
  # ${ ProductType : ["MAL","IAF","IPF","IHF ","AGRL","CV","CEQ","EDU","FE","FAS","GL","HL","JLG","KCC","LAP","MHF","PL","SHG","LC","BG","BL","BD","CC","CashCred"]}
  #${ApplicationStage : ["APP Update Recommendation"]}
  Scenario Outline: Edit Asset Type Collateral Details Consumer Durable Subtype with user data in <ProductType> at <ApplicationStage>
    Given user open an application of "<ProductType>" at "<ApplicationStage>"
    And user opens Collateral Screen
    And user can see there is already collateral details added
    And user can see already added collateral is Of Asset Type Consumer Durable Subtype
    And user reads data from execl file "<FileName>" sheetname "<SheetName>" in row <RowNumber>
    When user saves screen after entering the fetched sheet data into fields
    Then User will see "<Message>"
    Examples:
      | ProductType   | ApplicationStage   | FileName              | SheetName | RowNumber | Message                                    |
      | <ProductType> | <ApplicationStage> | EditCollateralDetails | Asset     | 9         | Collateral Data Saved Successfully         |
      | <ProductType> | <ApplicationStage> | EditCollateralDetails | Asset     | 10        | State RTO code does not exist in any state |
      | <ProductType> | <ApplicationStage> | EditCollateralDetails | Asset     | 11        | Collateral Data Saved Successfully         |

#  #FeatureID-ACAUTOCAS-10990
  # ${ ProductType : ["MAL","IAF","IPF","IHF ","AGRL","CV","CEQ","EDU","FE","FAS","GL","HL","JLG","KCC","LAP","MHF","PL","SHG","LC","BG","BL","BD","CC","CashCred"]}
  #${ApplicationStage : ["APP Update Recommendation"]}
#  Scenario Outline: Edit Property Type Collateral Details : No Data
#    Given user is Logged into CAS Module With Valid Credentials
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user opens Collateral Screen
#    And user can see there is already collateral details added
#    And user can see already added collateral is Of Property Type Construction on Land Subtype
#    When the user saves the screen after he Removes the data from all fields
#    Then User will see validations at "<Field>"
#    Examples:

@Epic-RenewalAndRenewalRecom
@ReviewedBy-None
@AuthoredBy-Anand.Singh1
@NotImplemented
Feature: Edit Collateral

  Scenario Outline: Scenario 1 : Validation For Collateral Details table
    Given user is Logged into CAS Module With Valid Credentials
    And user has Opened Application At DDE Stage
    And user opens Collateral Screen
    And user can see there is already collateral details added
    When the user opens the page
    Then user can see the table containing Collateral Details data with Columns "<ColumnNames>"
    Examples:
      | ColumnNames              |
      | Collateral ID            |
      | Global Collateral Number |
      | Type                     |
      | Sub Type                 |
      | Description              |
      | Actions                  |

  Scenario Outline: Scenario 2 : Validation For Collateral Details table Edit and Delete Options
    Given user is Logged into CAS Module With Valid Credentials
    And user has Opened Application At DDE Stage
    And user opens Collateral Screen
    And user can see there is already collateral details added
    When the user opens the page
    Then user can see the table containing Collateral Details data with Columns and Action Column having "<Buttons>"
    Examples:
      | Buttons |
      | Edit    |
      | Delete  |

  Scenario Outline: Scenario 3 : Validation For Collateral Details "<Type>" "<Subtype>" Combination
    Given user is Logged into CAS Module With Valid Credentials
    And user has Opened Application At DDE Stage
    And user opens Collateral Screen
    And user can see there is already collateral details added
    When the user opens the page
    Then user can see the table containing Collateral Details data with Columns and There can be only "<Type>" and "<Subtype>" Combination
    Examples:
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

  Scenario Outline: Scenario 4 : Validation For Collateral Details Add and Search Options
    Given user is Logged into CAS Module With Valid Credentials
    And user has Opened Application At DDE Stage
    And user opens Collateral Screen
    And user can see there is already collateral details added
    When the user opens the page
    Then user can see the table containing Collateral Details data with Columns and  "<Buttons>"
    Examples:
      | Buttons         |
      | Add New         |
      | Search Existing |

  Scenario Outline: Scenario 5 : Validation For Collateral Details Add and Search Options
    Given user is Logged into CAS Module With Valid Credentials
    And user has Opened Application At DDE Stage
    And user opens Collateral Screen
    And user can see there is already collateral details added
    When the user Edits the Asset Type and Consumer Vehicle Subtype Collateral
    Then User will see the "<Fields>" as "<Editable>"
    Examples:
      | Fields                                 | Editable |
      | Collateral Id                          | No       |
      | Global Collateral Number               | No       |
      | Collateral Type                        | No       |
      | Collateral SubType                     | No       |
      | Reference Number                       | Yes      |
      | Description                            | Yes      |
      | Asset Category                         | Yes      |
      | Manufacturer                           | Yes      |
      | Asset Model                            | Yes      |
      | Asset Variant                          | Yes      |
      | Asset Series                           | Yes      |
      | Asset Level                            | Yes      |
      | Transmission Type                      | Yes      |
      | Body Type                              | Yes      |
      | Cubic Capacity                         | Yes      |
      | NVIC Code                              | Yes      |
      | Registration Year                      | Yes      |
      | Initial Odometer Reading               | Yes      |
      | Base Value                             | Yes      |
      | Option Value                           | Yes      |
      | Asset Location                         | Yes      |
      | Engine Number                          | Yes      |
      | Chassis Number                         | Yes      |
      | FIP Number                             | Yes      |
      | Date of Delivery                       | Yes      |
      | VIN Number                             | Yes      |
      | Registration Date                      | Yes      |
      | Is Special Number                      | Yes      |
      | Registration Number                    | Yes      |
      | Registration Transport Office          | Yes      |
      | Registration in Name of                | Yes      |
      | Registration Expiry Date               | Yes      |
      | RC Received Date                       | Yes      |
      | Asset Life (Months)                    | Yes      |
      | Asset Age (Months)                     | Yes      |
      | Maximum Asset Age for funding (Months) | Yes      |
      | Color                                  | Yes      |
      | Year of Manufacture                    | Yes      |
      | State                                  | Yes      |
      | Color Type                             | Yes      |
      | Response Status                        | Yes      |
      | Vehicle Financer                       | Yes      |
      | Registration Number                    | Yes      |
      | RTO Of Registration                    | Yes      |
      | Date Of Registration                   | Yes      |
      | Owner Registered Name                  | Yes      |
      | Registered Present Address Of Owner    | Yes      |
      | Registered Permanent Address Of Owner  | Yes      |
      | Vehicle Color                          | Yes      |
      | Vehicle Make and Model                 | Yes      |
      | Vehicle Manufacturer                   | Yes      |
      | Vehicle Insurer                        | Yes      |
      | Insurance Policy Number                | Yes      |
      | Insurance Valid Upto                   | Yes      |
      | PUC Number                             | Yes      |
      | PUC Expiry Date                        | Yes      |
      | Is Transitional                        | Yes      |
      | Are Subjected To Control               | Yes      |
      | Are Proceeds Claimed                   | Yes      |
      | Is Inventory                           | Yes      |
      | Is PMSI                                | Yes      |
      | Is Subordinate                         | Yes      |
      | Earlier Registration Number            | Yes      |
      | Invoice Number                         | Yes      |
      | Invoice Date                           | Yes      |
      | Invoice Value                          | Yes      |
      | Hypothecation                          | Yes      |
      | Invoice Type                           | Yes      |
      | Invoice For                            | Yes      |
      | Invoice Item Reference Number          | Yes      |
      | Asset Cost                             | Yes      |
      | Reverification Date                    | Yes      |
      | Revaluation Date                       | Yes      |
################### 100 Cases Done ##########################
  Scenario Outline: Scenario 6 : Validation For Collateral Details Add and Search Options
    Given user is Logged into CAS Module With Valid Credentials
    And user has Opened Application At DDE Stage
    And user opens Collateral Screen
    And user can see there is already collateral details added
    When the user Edits the Asset Type and Commercial Vehicle Subtype Collateral
    Then User will see the "<Fields>" as "<Editable>"
    Examples:
      | Fields                     | Editable |
      | Collateral ID              | No       |
      | Global Collateral Number   | No       |
      | External Collateral Number | No       |
      | Collateral Type            | No       |
      | Collateral SubType         | No       |
      | Collateral Ref No          | Yes      |
      | Description                | Yes      |
      | Asset Category             | Yes      |
      | Manufacturer               | Yes      |
      | Asset Model                | Yes      |
      | Asset Variant              | Yes      |
      | Asset Series               | Yes      |
      | Asset Level                | Yes      |
      | Transmission Type          | Yes      |
      | Body Type                  | Yes      |
      | Cubic Capacity             | Yes      |
      | NVIC Code                  | Yes      |
      | Registration Year          | Yes      |
      | Initial Odometer Reading   | Yes      |
      | Base Value                 | Yes      |
      | Option Value               | Yes      |
      | Overall Accepted Value     | Yes      |
      | Asset Usage                | Yes      |
      | Asset Location             | Yes      |
      | Asset Cost                 | Yes      |
      | Revaluation Date           | Yes      |
      | Reverification Date        | Yes      |
      | Reason Code                | No       |
      | Reason Description         | No       |
      | Remarks                    | No       |
############# 130 cases done ######################
  Scenario Outline: Scenario 7 : Validation For Collateral Details Add and Search Options
    Given user is Logged into CAS Module With Valid Credentials
    And user has Opened Application At DDE Stage
    And user opens Collateral Screen
    And user can see there is already Asset type collateral details added
    When the user Edits the Asset Type and Commercial Vehicle Subtype Collateral
    Then User will see the "<Links>" as "<Style>"
    Examples:
      | Links                     | Style     |
      | Lien Details              | Tab       |
      | Insurance                 | Tab       |
      | CERSAI                    | Tab       |
      | Vehicle Details           | Accordion |
      | PPSR Registration Details | Accordion |
      | RC Authentication Details | Accordion |
      | Invoice Details           | Accordion |
############## 137 cases ################################
  Scenario Outline: Scenario 8 : Validations For Collateral Details Accordion Fields -Vehicle Details
    Given user is Logged into CAS Module With Valid Credentials
    And user has Opened Application At DDE Stage
    And user opens Collateral Screen
    And user can see there is already Asset type collateral details added
    And the user Edits the Asset Type and Commercial Vehicle Subtype Collateral
    When the user clicks on "Vehicle Details" Accordion
    Then User will see the "<Fields>" as "<Editable>"
    Examples:
      | Fields                                 | Editable |
      | Engine Number                          | Yes      |
      | Chassis Number                         | Yes      |
      | FIP Number                             | Yes      |
      | Date of Delivery                       | Yes      |
      | VIN Number                             | Yes      |
      | Registration Date                      | Yes      |
      | Parameter Sequence                     | Yes      |
      | Registration Number*                   | Yes      |
      | Registration Number                    | No       |
      | Registration Transport Office          | Yes      |
      | Registration in Name of                | Yes      |
      | Registration Expiry Date               | Yes      |
      | RC Received Date                       | Yes      |
      | Vehicle Capacity                       | Yes      |
      | Asset Life (Months)                    | Yes      |
      | Asset Age (Months)                     | No       |
      | Initial Odometer Reading               | Yes      |
      | Maximum Asset Age for funding (Months) | No       |
      | Color                                  | Yes      |
      | Year of Manufacture                    | Yes      |
      | State                                  | Yes      |
      | Color Type                             | Yes      |
############## 159 Cases ################################
  Scenario Outline: Scenario 9 : Validations For Collateral Details Accordion Fields
    Given user is Logged into CAS Module With Valid Credentials
    And user has Opened Application At DDE Stage
    And user opens Collateral Screen
    And user can see there is already Asset type collateral details added
    And the user Edits the Asset Type and Commercial Vehicle Subtype Collateral
    When the user clicks on "RC Authentication Details" Accordion
    Then User will see the "<Fields>" as "<Editable>"
    Examples:
      | Fields                                | Editable |
      | Response Status                       | No       |
      | Vehicle Financer                      | No       |
      | Registration Number                   | No       |
      | RTO Of Registration                   | No       |
      | Date Of Registration                  | No       |
      | Owner Registered Name                 | No       |
      | Registered Present Address Of Owner   | No       |
      | Registered Permanent Address Of Owner | No       |
      | Chassis Number                        | No       |
      | Engine Number                         | No       |
      | Vehicle Color                         | No       |
      | Vehicle Make and Model                | No       |
      | Vehicle Manufacturer                  | No       |
      | Vehicle Insurer                       | No       |
      | Insurance Policy Number               | No       |
      | Insurance Valid Upto                  | No       |
      | PUC Number                            | No       |
      | PUC Expiry Date                       | No       |
################ 177 Cases Done #####################
  Scenario Outline: Scenario 10 : Validations For Collateral Details Accordion Fields -PPSR Registration Details
    Given user is Logged into CAS Module With Valid Credentials
    And user has Opened Application At DDE Stage
    And user opens Collateral Screen
    And user can see there is already Asset type collateral details added
    And the user Edits the Asset Type and Commercial Vehicle Subtype Collateral
    When the user clicks on "PPSR Registration Details" Accordion
    Then User will see the "<Fields>" as "<Editable>" of "<Type>"
    Examples:
      | Fields                      | Editable | Type       |
      | Is Transitional             | Yes      | Check Box  |
      | Are Subjected To Control    | Yes      | Check Box  |
      | Are Proceeds Claimed        | Yes      | Check Box  |
      | Is Inventory                | Yes      | Check Box  |
      | Is PMSI                     | Yes      | Check Box  |
      | Is Subordinate              | Yes      | Check Box  |
      | Earlier Registration Number | Yes      | Text Field |
############# 184 Test cases Done ###################
  Scenario Outline: Scenario 11 : Validations For Collateral Details Accordion Fields -Invoice Details
    Given user is Logged into CAS Module With Valid Credentials
    And user has Opened Application At DDE Stage
    And user opens Collateral Screen
    And user can see there is already Asset type collateral details added
    And the user Edits the Asset Type and Commercial Vehicle Subtype Collateral
    When the user clicks on "Invoice Details " Accordion
    Then User will see the "<Fields>" as "<Editable>" of "<Type>"
    Examples:
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
############# 194 test cases Done ####################################
    ####### Write Cases of opening accordions and their fields

  Scenario Outline: Scenario 5 : Edit Asset Type Collateral Details with Incorrect Data
    Given user is Logged into CAS Module With Valid Credentials
    And user has Opened Application At DDE Stage
    And user opens Collateral Screen
    And user can see there is already collateral details added
    And user can see already added collateral is Of Asset Type and Consumer vehicle Subtype
    When the user saves the screen after he Fills the data given in "<FileName>" "<SheetName>" in "<RowNumber>"
    Then User will see validations at "<Field>"
    Examples:
      | FileName              | SheetName | RowNumber | Field             |
      | EditCollateralDetails | Asset     | 1         | Asset Category    |
      | EditCollateralDetails | Asset     | 1         | Manufacturer      |
      | EditCollateralDetails | Asset     | 1         | Asset Model       |
      | EditCollateralDetails | Asset     | 1         | Asset Variant     |
      | EditCollateralDetails | Asset     | 1         | Asset Series      |
      | EditCollateralDetails | Asset     | 1         | NVIC Code         |
      | EditCollateralDetails | Asset     | 1         | Registration Year |

  Scenario Outline: Scenario 6 : Edit Asset Type Collateral Details without changing any data
    Given user is Logged into CAS Module With Valid Credentials
    And user has Opened Application At DDE Stage
    And user opens Collateral Screen
    And user can see there is already collateral details added
    And user can see already added collateral is Of Asset Type and Consumer vehicle Subtype
    When the user saves the screen without making any changes.
    Then User will be able to save the data with confirmation "<Message>"
    Examples:
      | Message                            |
      | Collateral Data Saved Successfully |

  Scenario Outline: Scenario 7 : Edit Asset Type Collateral Details with user
    Given user is Logged into CAS Module With Valid Credentials
    And user has Opened Application At DDE Stage
    And user opens Collateral Screen
    And user can see there is already collateral details added
    And user can see already added collateral is Of Asset Type and Consumer vehicle Subtype
    And user expands Vehicle Details accordion
    When the user saves the screen after he Fills the data given in "<FileName>" "<SheetName>" in "<RowNumber>"
    Then User will see "<Message>".
    Examples:
      | FileName              | SheetName | RowNumber | Message                                    |
      | EditCollateralDetails | Asset     | 2         | Collateral Data Saved Successfully         |
      | EditCollateralDetails | Asset     | 3         | State RTO code does not exist in any state |
      | EditCollateralDetails | Asset     | 4         | Collateral Data Saved Successfully         |

  Scenario Outline: Scenario 8 : Edit Asset Type Collateral Details with Incorrect Data
    Given user is Logged into CAS Module With Valid Credentials
    And user has Opened Application At DDE Stage
    And user opens Collateral Screen
    And user can see there is already collateral details added
    And user can see already added collateral is Of Asset Type and Consumer vehicle Subtype
    When the user saves the screen after he Fills the data given in "<FileName>" "<SheetName>" in "<RowNumber>"
    Then User will see validations at "<Field>"
    Examples:
      | FileName              | SheetName | RowNumber | Field      |
      | EditCollateralDetails | Asset     | 5         | Asset Cost |

  Scenario Outline: Scenario 9 : Edit Asset Type Collateral Details without making any changes
    Given user is Logged into CAS Module With Valid Credentials
    And user has Opened Application At DDE Stage
    And user opens Collateral Screen
    And user can see there is already collateral details added
    And user can see already added collateral is Of Asset Type and Commercial vehicle Subtype
    When the user saves the screen without making any changes
    Then User will be able to save the data with confirmation "<Message>"
    Examples:
      | Message                            |
      | Collateral Data Saved Successfully |

  Scenario Outline: Scenario 10 : Edit Asset Type Collateral Details with user data
    Given user is Logged into CAS Module With Valid Credentials
    And user has Opened Application At DDE Stage
    And user opens Collateral Screen
    And user can see there is already collateral details added
    And user can see already added collateral is Of Asset Type and Commercial vehicle Subtype
    When the user saves the screen after he Fills the data given in "<FileName>" "<SheetName>" in "<RowNumber>"
    Then User will see "<Message>".
    Examples:
      | FileName              | SheetName | RowNumber | Message                                    |
      | EditCollateralDetails | Asset     | 6         | Collateral Data Saved Successfully         |
      | EditCollateralDetails | Asset     | 7         | State RTO code does not exist in any state |
      | EditCollateralDetails | Asset     | 8         | Collateral Data Saved Successfully         |

  Scenario Outline: Scenario 11 : Edit Asset Type Collateral Details with No Data
    Given user is Logged into CAS Module With Valid Credentials
    And user has Opened Application At DDE Stage
    And user opens Collateral Screen
    And user can see there is already collateral details added
    And user can see already added collateral is Of Asset Type and Consumer vehicle Subtype
    When the user saves the screen after he Removes the data from all fields
    Then User will see validations at "<Field>"
    Examples:
      | Field          |
      | Asset Category |
      | Manufacturer   |
      | Asset Model    |
      | Asset Cost     |

  Scenario Outline: Scenario 12 : Edit Asset Type Collateral Details without changing any data
    Given user is Logged into CAS Module With Valid Credentials
    And user has Opened Application At DDE Stage
    And user opens Collateral Screen
    And user can see there is already collateral details added
    And user can see already added collateral is Of Asset Type and Consumer Durable Subtype
    When the user saves the screen without making any changes.
    Then User will be able to save the data with confirmation "<Message>"
    Examples:
      | Message                            |
      | Collateral Data Saved Successfully |

  Scenario Outline: Scenario 13 : Edit Asset Type Collateral Details with user data
    Given user is Logged into CAS Module With Valid Credentials
    And user has Opened Application At DDE Stage
    And user opens Collateral Screen
    And user can see there is already collateral details added
    And user can see already added collateral is Of Asset Type and Consumer Durable Subtype
    When the user saves the screen after he Fills the data given in "<FileName>" "<SheetName>" in "<RowNumber>"
    Then User will see "<Message>".
    Examples:
      | FileName              | SheetName | RowNumber | Message                                    |
      | EditCollateralDetails | Asset     | 9         | Collateral Data Saved Successfully         |
      | EditCollateralDetails | Asset     | 10        | State RTO code does not exist in any state |
      | EditCollateralDetails | Asset     | 11        | Collateral Data Saved Successfully         |

#  Scenario Outline: Scenario 13 : Edit Property Type Collateral Details : No Data
#    Given user is Logged into CAS Module With Valid Credentials
#    And user has Opened Application At DDE Stage
#    And user opens Collateral Screen
#    And user can see there is already collateral details added
#    And user can see already added collateral is Of Property Type and Construction on Land Subtype
#    When the user saves the screen after he Removes the data from all fields
#    Then User will see validations at "<Field>"
#    Examples:

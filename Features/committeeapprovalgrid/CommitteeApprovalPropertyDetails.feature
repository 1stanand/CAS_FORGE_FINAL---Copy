@Epic-Committee_Approval
@ReviewedBy-None
@AuthoredBy-jagriti.mungali
@NotImplemented

Feature:Committee Approval Property Details

  #In this feature we will verify the Property Details present
  #in Committee Approval Loan Information section

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

# ${ProductType:["HL","IHF","OMNI","MHL","LAP"]}
# ${ApplicationStage:["Committee Approval"]}
# FeatureID-ACAUTOCAS-11014
  Scenario Outline: Verifying already saved data in Property Details with list of fields for <ProductType> product type at <ApplicationStage>
    And user opens a "<ProductType>" application at "<ApplicationStage>" from commitee approval grid
    And user navigates to property details
    When user navigates to Loan Information section
    Then user should be able to see below fields in "Disabled" mode:
      | Disabled                             |
      | Collateral Number                    |
      | Global Collateral Number             |
      | Application Type                     |
      | Collateral Sub Type/Property Details |
      | Type Of Purchase                     |
      | Property Reference Number            |
      | Property Description                 |
      | Current Usage                        |
      | Property Type                        |
      | Nature of Property                   |
      | Approximate property cost            |
      | Is Builder Constructed               |
      | Other Details                        |
      | Property Address                     |
      | Property & Registration details      |
      | Ownership Details                    |
      | DownPayment Type                     |
      | Property Cost                        |
      | Accepted Valuation                   |
      | Total Property Cost/Price            |
      | Percent of Down Payment              |
      | Down Payment                         |
      | Application Amount                   |
      | LCR(%)                               |
      | LTV(%)                               |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


    # ${ProductType:["HL","IHF","OMNI","MHL","LAP"]}
# ${ApplicationStage:["Committee Approval"]}
# FeatureID-ACAUTOCAS-11014
  Scenario Outline: At <ApplicationStage> stage for <ProductType> application on <Expand_Collapse> action should <Expand_Collapse> the section <Section>
    And user opens a "<ProductType>" application at "<ApplicationStage>" from commitee approval grid
    And user navigates to property details
    When user toggles to "<Expand_Collapse>" mode
    Then section "<Section>" should get "<Expand_Collapse>"
    Examples:
      | ProductType   | ApplicationStage   | Expand_Collapse | Section                         |
      | <ProductType> | <ApplicationStage> | Expand          | Other Details                   |
      | <ProductType> | <ApplicationStage> | Expand          | Property Address                |
      | <ProductType> | <ApplicationStage> | Expand          | Property & Registration details |
      | <ProductType> | <ApplicationStage> | Exapand         | Ownership Details               |
      | <ProductType> | <ApplicationStage> | Collapse        | Other Details                   |
      | <ProductType> | <ApplicationStage> | Collapse        | Property Address                |
      | <ProductType> | <ApplicationStage> | Collapse        | Property & Registration details |
      | <ProductType> | <ApplicationStage> | Collapse        | Ownership Details               |

    # ${ProductType:["HL","IHF","OMNI","MHL","LAP"]}
# ${ApplicationStage:["LEAD DETAILS","LOGIN ACCEPTANCE","DDE","RECOMMENDATION","CREDIT APPROVAL"]}
# FeatureID-ACAUTOCAS-11014
  Scenario Outline: Validation of mandatory fields of Property details in <ProductType> application at <ApplicationStage> stage
    And user opens a "<ProductType>" application at "<ApplicationStage>" from commitee approval grid
    And user navigates to property details
    When user views property details
    Then user should be able to see asterisk sign over the field marked mandatory:
      | FieldName                            | Asterisk Sign |
      | Collateral Number                    | Non Mandatory |
      | Global Collateral Number             | Non Mandatory |
      | Application Type                     | Mandatory     |
      | Collateral Sub Type/Property Details | Mandatory     |
      | Type Of Purchase                     | Mandatory     |
      | Property Reference Number            | Non Mandatory |
      | Property Description                 | Non Mandatory |
      | Current Usage                        | Non Mandatory |
      | Property Type                        | Mandatory     |
      | Nature of Property                   | Mandatory     |
      | Approximate property cost            | Non Mandatory |
      | Is Builder Constructed               | Non Mandatory |
      | DownPayment Type                     | Non Mandatory |
      | Property Cost                        | Mandatory     |
      | Accepted Valuation                   | Non mandatory |
      | Total Property Cost/Price            | Non Mandatory |
      | Percent of Down Payment              | Mandatory     |
      | Down Payment                         | Mandatory     |
      | Application Amount                   | Non mandatory |
      | LCR(%)                               | Non Mandatory |
      | LTV(%)                               | Non Mandatory |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

# ${ProductType:["HL","IHF","OMNI","MHL","LAP"]}
# ${ApplicationStage:["Committee Approval"]}
# FeatureID-ACAUTOCAS-11014
  Scenario Outline: Verifying already saved data of Other details in Property Details with list of fields for <ProductType> product type at <ApplicationStage>
    And user opens a "<ProductType>" application at "<ApplicationStage>" from commitee approval grid
    And user navigates to property details
    When user navigates to other details
    Then user should be able to see below fields in "Disabled" mode:
      | Disabled                  |
      | Property Classification   |
      | Property Ownership        |
      | Market Value              |
      | Accepted Value (CIC)      |
      | Considered Value          |
      | Built Up Area             |
      | Carpet Area               |
      | Property Purpose          |
      | Age Of Property(In Years) |
      | Residual Age of Property  |
      | Accepted Valuation        |
      | Plan Type                 |
      | Plan/Folio Number         |
      | Lot/Volume                |
      | Title Reference           |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


# ${ProductType:["HL","IHF","OMNI","MHL","LAP"]}
# ${ApplicationStage:["Committee Approval"]}
# FeatureID-ACAUTOCAS-11014
  Scenario Outline: Verifying already saved data of Property Address in Property Details with list of fields for <ProductType> product type at <ApplicationStage>
    And user opens a "<ProductType>" application at "<ApplicationStage>" from commitee approval grid
    And user navigates to Property Details
    When user navigates to Property Address
    Then user should be able to see below fields in "Disabled" mode:
      | Disabled         |
      | Address Type     |
      | Full Address     |
      | Country          |
      | Flat/Plot Number |
      | Address Line 2   |
      | Address Line 3   |
      | PinCode          |
      | Region           |
      | State            |
      | City             |
      | District         |
      | Taluka           |
      | Village          |
      | Residence Status |
      | Residence Type   |
      | Landmark         |
      | Primary Phone    |
      | Mobile Phone     |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |



# ${ProductType:["HL","IHF","OMNI","MHL","LAP"]}
# ${ApplicationStage:["Committee Approval"]}
# FeatureID-ACAUTOCAS-11014
  Scenario Outline: Verifying already saved data of Property & Registration Details in Property Details with list of fields for <ProductType> product type at <ApplicationStage>
    And user opens a "<ProductType>" application at "<ApplicationStage>" from commitee approval grid
    And user navigates to Property Details
    When user navigates to Property & Registration Details
    Then user should be able to see below fields in "Disabled" mode with given "FieldType"
      | Disabled                                 | FieldType  |
      | Property registered in favor of borrower | Checkbox   |
      | Agreement Value                          | Text field |
      | Registration Number                      | Header     |
      | Sale Deed Date                           | Header     |
      | Agreement Value                          | Header     |
      | Amenities Agreement Value                | Header     |
      | Actions                                  | Header     |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

# ${ProductType:["HL","IHF","OMNI","MHL","LAP"]}
# ${ApplicationStage:["Committee Approval"]}
# FeatureID-ACAUTOCAS-11014
  Scenario Outline: Verifying already saved data of Ownership Details in Property Details with list of fields for <ProductType> product type at <ApplicationStage>
    And user opens a "<ProductType>" application at "<ApplicationStage>" from commitee approval grid
    And user navigates to Property Details
    When user navigates to Ownership Details
    Then user should be able to see below fields in "Disabled" mode:
      | Disabled         |
      | Owner Type       |
      | Ownership Status |
      | Owner Name       |
      | Linked Applicant |
      | Percent Share    |
      | Ownership Dates  |


    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

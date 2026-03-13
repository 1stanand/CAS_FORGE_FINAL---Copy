@Epic-Committee_Approval
@ReviewedBy-None
@AuthoredBy-jagriti.mungali
@NotImplemented

Feature:Committee Approval Sourcing

  #In this feature we will verify the Sourcing Details present
  #in Committee Approval Loan Information section

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BL","CashCred","BD","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
# FeatureID-ACAUTOCAS-11011
  Scenario Outline: Verifying already saved data in Sourcing with list of fields for <ProductType> product type at <ApplicationStage>
    And user opens a "<ProductType>" application at "<ApplicationStage>" from commitee approval grid
    And user navigates to sourcing details
    When user navigates to Loan Information section
    Then user should be able to see below fields in "Disabled" mode:
      | Disabled                        |
      | Branch                          |
      | Channel                         |
      | Application Form Number         |
      | Date of Receipt                 |
      | Application Creation Date       |
      | Application ID                  |
      | Product Processor               |
      | Lead Number_CRM                 |
      | Image Based Processing          |
      | Branch Risk Category            |
      | Application Type                |
      | Product Type                    |
      | Product                         |
      | Scheme                          |
      | Amount Requested                |
      | Tenure                          |
      | Tenure In                       |
      | Rate                            |
      | Application Purpose             |
      | Application Purpose Description |
      | Priority                        |
      | Distance From Sourcing          |
      | Sourcing RM                     |
      | Reporting Supervisor Name       |
      | DST                             |
      | CRE                             |
      | Credit Officer                  |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BL","CashCred","BD","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
# FeatureID-ACAUTOCAS-11011
  Scenario Outline: At <ApplicationStage> stage for <ProductType> application on <Expand_Collapse> action should <Expand_Collapse> the section <Section>
    And user opens a "<ProductType>" application at "<ApplicationStage>" from commitee approval grid
    And user navigates to sourcing details
    When user toggles to "<Expand_Collapse>" mode
    Then section "<Section>" should get "<Expand_Collapse>"
    Examples:
      | ProductType   | ApplicationStage   | Expand_Collapse | Section             |
      | <ProductType> | <ApplicationStage> | Expand          | Subsidy             |
      | <ProductType> | <ApplicationStage> | Expand          | LAN Linking Details |
      | <ProductType> | <ApplicationStage> | Expand          | Promo Code Details  |
      | <ProductType> | <ApplicationStage> | Collapse        | Subsidy             |
      | <ProductType> | <ApplicationStage> | Collapse        | Promo Code Details  |
      | <ProductType> | <ApplicationStage> | Collapse        | LAN Linking Details |

# ${ProductType:["MAL","IAF","IPF","IHF ","AGRL","CV","CEQ","EDU","FE","FAS","GL","HL","JLG","KCC","LAP","MHF","OMNI","PF","SHG","LC","BG","BL","BD","CC"]}
# ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
# FeatureID-ACAUTOCAS-11011
  Scenario Outline: Validation of mandatory fields of sourcing details in <ProductType> application at <ApplicationStage> stage
    And user opens a "<ProductType>" application at "<ApplicationStage>" from commitee approval grid
    And user navigates to sourcing details
    When user views sourcing details
    Then user should be able to see asterisk sign over the field marked mandatory:
      | FieldName                              | Asterisk Sign |
      | Branch                                 | Mandatory     |
      | Channel                                | Mandatory     |
      | Application Type                       | Mandatory     |
      | Product Type                           | Mandatory     |
      | Product                                | Mandatory     |
      | Scheme                                 | Mandatory     |
      | Amount Requested                       | Mandatory     |
      | Tenure                                 | Mandatory     |
      | Rate                                   | Mandatory     |
      | Application Purpose                    | Mandatory     |
      | Sourcing RM Name                       | Mandatory     |
      | Application Form Number                | Non Mandatory |
      | Date of Receipt                        | Non Mandatory |
      | Application Creation Date              | Non Mandatory |
      | Application ID                         | Non Mandatory |
      | Product Processor                      | Non Mandatory |
      | Lead Number-CRM                        | Non Mandatory |
      | Image Based Processing                 | Non Mandatory |
      | Branch Risk Category                   | Non Mandatory |
      | Tenure In                              | Non Mandatory |
      | Application Purpose Description        | Non Mandatory |
      | Priority                               | Non Mandatory |
      | Distance From Sourcing Branch (in Kms) | Non Mandatory |
      | Reporting Supervisor Name              | Non Mandatory |
      | DST                                    | Non Mandatory |
      | CRE                                    | Non Mandatory |
      | Credit Officer                         | Non Mandatory |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BL","CashCred","BD","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
# FeatureID-ACAUTOCAS-11011
  Scenario Outline: Verifying already saved data of subsidy in Sourcing with list of fields for <ProductType> product type at <ApplicationStage>
    And user opens a "<ProductType>" application at "<ApplicationStage>" from commitee approval grid
    And user navigates to sourcing details
    When user navigates to subsidy section
    Then user should be able to see below fields in "Disabled" mode:
      | Disabled    |
      | SubsidyFlag |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BL","CashCred","BD","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
# FeatureID-ACAUTOCAS-11011
  Scenario Outline: Verifying already saved data of Promo code details in Sourcing with list of fields for <ProductType> product type at <ApplicationStage>
    And user opens a "<ProductType>" application at "<ApplicationStage>" from commitee approval grid
    And user navigates to sourcing details
    When user navigates to Promo code details
    Then user should be able to see below fields in "Disabled" mode:
      | Disabled        |
      | Promo Code Name |
      | Source          |
      | Description     |
      | Promo Type      |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BL","CashCred","BD","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
# FeatureID-ACAUTOCAS-11011
  Scenario Outline: Verifying already saved data of LAN Linking Details in Sourcing with list of fields for <ProductType> product type at <ApplicationStage>
    And user opens a "<ProductType>" application at "<ApplicationStage>" from commitee approval grid
    And user navigates to sourcing details
    When user navigates to LAN Linking Details
    Then user should be able to see below fields in "Disabled" mode:
      | Disabled         |
      | LAN to be Linked |
      | Linked LANS      |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
    # ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BL","CashCred","BD","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
# FeatureID-ACAUTOCAS-11011
  Scenario Outline: Verifying already saved data of Omni Product Details in Sourcing with list of fields for <ProductType> product type at <ApplicationStage>
    And user opens a "<ProductType>" application at "<ApplicationStage>" from commitee approval grid
    And user navigates to sourcing details
    When user navigates to Omni Product Details
    Then user should be able to see below fields in "Disabled" mode:
      | Disabled          |
      | Split ID          |
      | Application Type  |
      | Product Type      |
      | Product           |
      | Scheme            |
      | Is Primary        |
      | Requested Amount  |
      | Loan Category     |
      | Collateral Number |
      | Action            |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
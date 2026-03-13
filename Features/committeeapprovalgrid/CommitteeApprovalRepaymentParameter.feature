@Epic-Committee_Approval
@ReviewedBy-None
@AuthoredBy-jagriti.mungali
@NotImplemented

Feature:Committee Approval Repayment Parameter

  #In this feature we will verify Repayment Parameter Details present
  #in Committee Approval Loan Information section

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BL","CashCred","BD","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
# FeatureID-ACAUTOCAS-11012
  Scenario Outline: Verifying already saved data in Repayment Parameter with list of fields for <ProductType> product type at <ApplicationStage>
    And user opens a "<ProductType>" application at "<ApplicationStage>" from commitee approval grid
    And user navigates to Repayment details
    When user navigates to Loan Information section
    Then user should be able to see below fields in "Disabled" mode:

      | Disabled                        |
      | Application Amount              |
      | Disbursal Type                  |
      | Disbursal To                    |
      | Recovery Type                   |
      | Recovery Sub Type               |
      | Repayment Type                  |
      | Repayment Frequency             |
      | Tenure                          |
      | Tenure In                       |
      | Installment Type                |
      | Installment Based On            |
      | Installment Mode                |
      | Number Of Advanced Installments |
      | Anchor Type                     |
      | Interest Charge Method          |
      | Interest Rate Type              |
      | Rate%                           |
      | Spread                          |
      | Due Day                         |
      | Interest Start Date             |
      | Broken Period Adjustment        |
      | Interest Charge Type            |
      | Interest Charged                |
      | Moratorium                      |


    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    # ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BL","CashCred","BD","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
# FeatureID-ACAUTOCAS-11012
  Scenario Outline: At <ApplicationStage> stage for <ProductType> application on <Expand_Collapse> action should <Expand_Collapse> the section <Section>
    And user opens a "<ProductType>" application at "<ApplicationStage>" from commitee approval grid
    And user navigates to Repayment Parameter
    When user toggles to "<Expand_Collapse>" mode
    Then section "<Section>" should get "<Expand_Collapse>"
    Examples:
      | ProductType | ApplicationStage | Expand_Collapse | Section       |
      | ProductType | ApplicationStage | Expand          | Charges & Fee |
      | ProductType | ApplicationStage | Collapse        | Charges & Fee |

    # ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BL","CashCred","BD","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
# FeatureID-ACAUTOCAS-11012
  Scenario Outline:Validation of mandatory fields of Repayment Parameter in <ProductType> application at <ApplicationStage> stage
    And user opens a "<ProductType>" application at "<ApplicationStage>" from commitee approval grid
    And user navigates to Repayment Parameter
    When user views Repayment Parameter
    Then user should be able to see asterisk sign over the field marked mandatory:
      | FieldName                          | Asterisk Sign |
      | Application Amount                 | Mandatory     |
      | Disbursal Type                     | Mandatory     |
      | Number of Disbursal                | Non Mandatory |
      | Disbursal To                       | Mandatory     |
      | Recovery Type                      | Mandatory     |
      | Recovery Sub Type                  | Mandatory     |
      | Repayment Type                     | Mandatory     |
      | Repayment Frequency                | Mandatory     |
      | Tenure                             | Mandatory     |
      | Tenure In                          | Mandatory     |
      | Installment Type                   | Mandatory     |
      | Installment Based On               | Mandatory     |
      | Installment Mode                   | Mandatory     |
      | Number Of Advanced Installments    | Mandatory     |
      | Total number of Installments       | Non Mandatory |
      | Downpayment Paid Directly          | Non Mandatory |
      | Advance Installment to be deducted | Non Mandatory |
      | Product Discount                   | Non Mandatory |
      | Package Discount                   | Non Mandatory |
      | Total Discount                     | Non Mandatory |
      | Upfront Interest                   | Non Mandatory |
      | Credit Days                        | Non Mandatory |
      | Anchor Type                        | Mandatory     |
      | Anchor Rate                        | Non Mandatory |
      | Interest Charge Method             | Mandatory     |
      | Interest Rate Type                 | Mandatory     |
      | Rate%                              | Mandatory     |
      | Rate Lock                          | Non Mandatory |
      | First Installment Date             | Non Mandatory |
      | Spread                             | Mandatory     |
      | Due Day                            | Mandatory     |
      | Interest Start Date                | Mandatory     |
      | Broken Period Adjustment           | Non Mandatory |
      | Actual Date                        | Non Mandatory |
      | Interest Charge Type               | Mandatory     |
      | Interest Charge Method             | Mandatory     |
      | Moratorium                         | Mandatory     |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

     # ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BL","CashCred","BD","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
# FeatureID-ACAUTOCAS-11012

  #Prerequisite: Data should already be present in Charges & Fee Section
  Scenario Outline: Verifying already saved data of charges & Fee in Repayment Parameter with list of fields for <ProductType> product type at <ApplicationStage>
    And user opens a "<ProductType>" application at "<ApplicationStage>" from commitee approval grid
    And user navigates to repayment parameter
    When user navigates to charges and fee section
    Then user should be able to see below fields in "Disabled" mode and "FieldType":
      | Disabled                | FieldType |
      | Charge Name             | Header    |
      | Charge Adjustment Type  | Header    |
      | Charge Type             | Header    |
      | Applicant/BP Type       | Header    |
      | Applicant/BP Name       | Header    |
      | Charge Amount           | Header    |
      | Differential Amount     | Header    |
      | Differential Rate       | Header    |
      | Effective Charge Amount | Header    |
      | Apply Charges           | Button    |
      | Plus Icon               | Button    |


    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
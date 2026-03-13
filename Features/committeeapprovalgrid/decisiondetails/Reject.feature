@Epic-Committee_Approval
@AuthoredBy-prachi
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-

Feature: Reject decision

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user is on the Committee Approval screen
#FeatureID-ACAUTOCAS-11056
  # ${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  # ${ApplicantType:["indiv","nonindiv"]}
# Positive
  Scenario Outline: Only assign user can open the application present at <ApplicationStage> in <ProductType>
    When assign user opens "<ProductType>" application of "<ApplicantType>" applicant at "<ApplicationStage>" stage from application grid
    Then user should be able to open the application
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |

 #FeatureID-ACAUTOCAS-11056
  # ${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  #Negative
  Scenario Outline:Unassigned user can't open the application present at <ApplicationStage> in <ProductType>
    When user opens "<ProductType>" application of "<ApplicantType>" applicant at "<ApplicationStage>" stage from application grid
    Then user should not be able to edit the application as an error message occur as "<ErrorMessage>"
    Examples:
      | ApplicationStage   | ProductType   | ErrorMessage                            | ApplicantType   |
      | <ApplicationStage> | <ProductType> | This application is not assigned to you | <ApplicantType> |

#FeatureID-ACAUTOCAS-11056
  # ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}

  Scenario Outline: Decision Details all fields is in view mode at <ApplicationStage> in <ProductType>
    And user opens "<ProductType>" application of "<ApplicantType>" applicant at "<ApplicationStage>" stage from application grid
    When user view the Decision Details feilds
    Then all the fields should be in view mode in Decision Details
    Examples:
      | ApplicationStage   | ProductType   |  ApplicantType   |
      | <ApplicationStage> | <ProductType> |  <ApplicantType> |



#FeatureID-ACAUTOCAS-11056
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline:Validate Decision Details Accordion when no decision is taken at underwriter  at <ApplicationStage> in <ProductType>
    And When user opens "<ProductType>" application of "<ApplicantType>" applicant at "<ApplicationStage>" stage from application grid
    When user view the Decision Details feilds
    Then Decision under Decision details accordion should be Empty
    Examples:
      | ApplicationStage   | ProductType   |  ApplicantType   |
      | <ApplicationStage> | <ProductType> |  <ApplicantType> |

#FeatureID-ACAUTOCAS-11056
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline:Validate Decision Details Accordion when decision taken as Reject at underwriter at <ApplicationStage> in <ProductType>
    When user opens "<ProductType>" application of "<ApplicantType>" applicant at "<ApplicationStage>" stage from application grid
    When user view the Decision Details field
    Then Decision under Decision details accordion should be Reject
    Examples:
      | ApplicationStage   | ProductType   |  ApplicantType   |
      | <ApplicationStage> | <ProductType> |  <ApplicantType> |

#FeatureID-ACAUTOCAS-11056

# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: User open the application and validate <FieldName> when decision taken as Reject at credit approval stage
    And user opens "<ProductType>" application of "<ApplicantType>" applicant at "<ApplicationStage>" stage from Credit approval grid
    And user expands the decision deatails
    When user navigates to decision details
    Then Following fields should be present as below field type in
      | FieldName                         | Mandatory |
      | Decision                          | Yes       |
      | Reason                            | Yes       |
      | Description                       | Yes       |
      | Sanction Date                     | Yes       |
      | Sanction Expiry Date              | No        |
      | Loan Expiry Date                  | No        |
      | Decision Comments                 | No        |
      | Product                           | No        |
      | Scheme                            | No        |
      | Requested Amount                  | No        |
      | Requested Tenure                  | No        |
      | Sanctioned interest               | No        |
      | Sanctioned Amount                 | No        |
      | Sanction Tenure(Months)           | No        |
      | Policy Rate                       | No        |
      | Product Discount                  | No        |
      | Maximum Sanctioned Amount         | Yes       |
      | Maximum Sanctioned Tenure(Months) | Yes       |
      | Total Discount                    | No        |
      | Package Discount                  | No        |
      | Raised Deviations                 | No        |
      | Special Condition                 | No        |
    Examples:
      | ApplicationStage   | ProductType   |  ApplicantType   |
      | <ApplicationStage> | <ProductType> |  <ApplicantType> |
#FeatureID-ACAUTOCAS-11056
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}

  Scenario Outline: Decision taken as Reject at credit approval
    And user opens "<ProductType>" application of "<ApplicantType>" applicant at "<ApplicationStage>" stage from application grid
    When user views data from workbook "<SourceFile>" under sheet name in "<SheetName>" and row number as "<rownum>" accordingly
    Then user should be able to view the fields with provided values

    Examples:
      | SourceFile          | SheetName | rownum |
      | DecisionDetails.xls | Reject   | 0      |
      | DecisionDetails.xls | Reject   | 1      |
      | DecisionDetails.xls | Reject   | 2      |
      | DecisionDetails.xls | Reject   | 3      |


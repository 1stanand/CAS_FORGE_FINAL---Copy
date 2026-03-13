@Epic-Committee_Approval
@AuthoredBy-harsh.anand
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-


Feature: Committee Approval History

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


     #Pre-requisite--
# ALl the fields are filled or not filled in Decision , Reason , Description , Decision Comments
  #FeatureID-ACAUTOCAS-11063
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: user validated Decision Details fields if no data should be filled on credit approval at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type  at "<ApplicationStage>" from application grid
    When User will view the decision section at Decision Details
    Then No data should be there in all the fields
      | Decision          |
      | Reason            |
      | Description       |
      | Decision Comments |


    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

         #Pre-requisite--
# ALl the fields are filled or not filled in Decision , Reason , Description , Decision Comments
  #FeatureID-ACAUTOCAS-11063
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: user validated Decision Details fields if no data should be filled on credit approval at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type  at "<ApplicationStage>" from application grid
    When User will view the decision section at Decision Details
    Then fetched data feom credit approval should be there in all the fields
      | Requested Amount                  |
      | Sanctioned Amount                 |
      | Maximum Sanctioned Amount         |
      | Requested Tenure                  |
      | Sanctioned Tenure(Months)         |
      | Maximum Sanctioned Tenure(Months) |
      | Sanctioned Interest               |
      | Policy Rate                       |
      | Total Discount                    |
      | Product Discount                  |
      | Package Discount                  |


    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

    #Prerequisite
  #When decision are selected as approve and saved at credit Approval
  # FeatureID-ACAUTOCAS-11063
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: user validated Decision Details fields if decision is taken as approve on credit approval at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type  at "<ApplicationStage>" from application grid
    When User will view the decision section at Decision Details
    Then All data should with these fields should be present in view mode
      | Requested Amount                  |
      | Sanctioned Amount                 |
      | Maximum Sanctioned Amount         |
      | Requested Tenure                  |
      | Sanctioned Tenure(Months)         |
      | Maximum Sanctioned Tenure(Months) |
      | Sanctioned Interest               |
      | Policy Rate                       |
      | Total Discount                    |
      | Product Discount                  |
      | Package Discount                  |
      | Decision                          |
      | Reason                            |
      | Description                       |
      | Decision Comments                 |
      | Sanction Date                     |
      | Loan Expiry Date                  |
      | Sanction Expiry Date              |
      | Description                       |
      | Decision Comments                 |


    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |


            #Prerequisite
  #When decision are selected as approve with multiple reason and saved at credit Approval
  # FeatureID-ACAUTOCAS-11063
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: user validated Decision Details fields if decision is taken as approve with multiple reason on credit approval at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type  at "<ApplicationStage>" from application grid
    When User will view the decision section at Decision Details
    Then All data having "<Decision>" with "<Reason>" and "<Description>"should with these fields should be present in view mode

      | Product                           |
      | Scheme                            |
      | Requested Amount                  |
      | Sanctioned Amount                 |
      | Maximum Sanctioned Amount         |
      | Requested Tenure                  |
      | Sanctioned Tenure(Months)         |
      | Maximum Sanctioned Tenure(Months) |
      | Sanctioned Interest               |
      | Policy Rate                       |
      | Total Discount                    |
      | Product Discount                  |
      | Package Discount                  |
      | Decision                          |
      | Reason                            |
      | Description                       |
      | Decision Comments                 |
      | Sanction Date                     |
      | Loan Expiry Date                  |
      | Sanction Expiry Date              |
      | Description                       |
      | Decision Comments                 |
    Examples:
      | ApplicationStage   | ProductType   | Decision | Reason  | Description |
      | <ApplicationStage> | <ProductType> | Approve  | Approve | Approve     |
      | <ApplicationStage> | <ProductType> | Approve  | Other   | OK          |

#FeatureID-ACAUTOCAS-11063
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: user validated Decision Details fields if all data should be filled as approve on credit approval at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type  at "<ApplicationStage>" from application grid
    And user will view the decision section at Decision Details
    When user views data from workbook "<SourceFile>" under sheet name in "<SheetName>" and row number as "<rownum>" accordingly
    Then All data should be there in all the fields same as present in workbook
    Examples:
      | ApplicationStage   | ProductType   | SourceFile                  | SheetName | rownum |
      | <ApplicationStage> | <ProductType> | CommiteeApprovalHistory.xls | Accept    | 0      |
      | <ApplicationStage> | <ProductType> | CommiteeApprovalHistory.xls | Accept    | 1      |
      | <ApplicationStage> | <ProductType> | CommiteeApprovalHistory.xls | Accept    | 2      |



        #Prerequisite
  #When decision are selected as In-Principle Approve and saved at credit Approval
  # FeatureID-ACAUTOCAS-11063
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: user validated Decision Details fields if decision is taken as In-Principle Approve on credit approval at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type  at "<ApplicationStage>" from application grid
    When User will view the decision section at Decision Details
    Then All data should with these fields should be present in view mode
      | Product                           |
      | Scheme                            |
      | Requested Amount                  |
      | Sanctioned Amount                 |
      | Maximum Sanctioned Amount         |
      | Requested Tenure                  |
      | Sanctioned Tenure(Months)         |
      | Maximum Sanctioned Tenure(Months) |
      | Sanctioned Interest               |
      | Policy Rate                       |
      | Total Discount                    |
      | Product Discount                  |
      | Package Discount                  |
      | Decision                          |
      | Reason                            |
      | Description                       |
      | Decision Comments                 |
      | Sanction Date                     |
      | Loan Expiry Date                  |
      | Sanction Expiry Date              |
      | Description                       |
      | Decision Comments                 |
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

#FeatureID-ACAUTOCAS-11063
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: user validated Decision Details fields if all data should be filled as In-Principle Approve on credit approval at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type  at "<ApplicationStage>" from application grid
    And user will view the decision section at Decision Details
    When user views data from workbook "<SourceFile>" under sheet name in "<SheetName>" and row number as "<rownum>" accordingly
    Then All data should be there in all the fields same as present in workbook

    Examples:
      | ApplicationStage   | ProductType   | SourceFile                  | SheetName           | rownum |
      | <ApplicationStage> | <ProductType> | CommiteeApprovalHistory.xls | Inprinciple Approve | 0      |
      | <ApplicationStage> | <ProductType> | CommiteeApprovalHistory.xls | Inprinciple Approve | 1      |
      | <ApplicationStage> | <ProductType> | CommiteeApprovalHistory.xls | Inprinciple Approve | 2      |

                #Prerequisite
  #When decision are selected as In-Principle Approve with multiple reason and saved at credit Approval
  # FeatureID-ACAUTOCAS-11063
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: user validated Decision Details fields if decision is taken as In-Principle Approve with multiple reason on credit approval at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type  at "<ApplicationStage>" from application grid
    When User will view the decision section at Decision Details
    Then All data having "<Decision>" with "<Reason>" and "<Description>" should with these fields should be present in view mode

      | Product                           |
      | Scheme                            |
      | Requested Amount                  |
      | Sanctioned Amount                 |
      | Maximum Sanctioned Amount         |
      | Requested Tenure                  |
      | Sanctioned Tenure(Months)         |
      | Maximum Sanctioned Tenure(Months) |
      | Sanctioned Interest               |
      | Policy Rate                       |
      | Total Discount                    |
      | Product Discount                  |
      | Package Discount                  |
      | Decision                          |
      | Reason                            |
      | Description                       |
      | Decision Comments                 |
      | Sanction Date                     |
      | Loan Expiry Date                  |
      | Sanction Expiry Date              |
      | Description                       |
      | Decision Comments                 |
    Examples:
      | ApplicationStage   | ProductType   | Decision             | Reason               | Description          |
      | <ApplicationStage> | <ProductType> | In-Principle Approve | In-Principle Approve | In-Principle Approve |
      | <ApplicationStage> | <ProductType> | In-Principle Approve | Other                | OK                   |

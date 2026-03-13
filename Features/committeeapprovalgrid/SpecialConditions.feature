@Epic-Committee_Approval
@AuthoredBy-harsh.anand
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-


Feature: Special Condition at Committee Approval

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens a application at committee approval stage
    And Open Decision details
#Pre-Requisite--
#  Special Condition is added at credit approval with all of these conditions and then committee is initiated either mannualy initiated or auto initiated.
 #FeatureID-ACAUTOCAS-11066
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: user verify that all the fields mentioned should not be in editable mode at <ApplicationStage> in <ProductType>
    When user view the special condition accordian at committee approval
    Then user should not be able to edit the fields
      | Special Condition                          |
      | Description                                |
      | Applicable For                             |
      | To be met till stage                       |
      | Approval Required                          |
      | Special Condition status flag              |
      | Date and Time of marking Special Condition |

    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |


#FeatureID-ACAUTOCAS-11066
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: user verify selected data of special condition in credit approval at committee Approval
    And navigates till special Conditon at decision details
    When user views data from workbook "<SourceFile>" under sheet name in "<SheetName>" and row number as "<rownum>" accordingly
    Then Special condition should be same as present in workbook

    Examples:
      | SourceFile                           | SheetName  | rownum |
      | CommiteeApprovalSpecialCondition.xls | DataVerify | 0      |
      | CommiteeApprovalSpecialCondition.xls | DataVerify | 1      |
      | CommiteeApprovalSpecialCondition.xls | DataVerify | 2      |
      | CommiteeApprovalSpecialCondition.xls | DataVerify | 3      |
      | CommiteeApprovalSpecialCondition.xls | DataVerify | 4      |
      | CommiteeApprovalSpecialCondition.xls | DataVerify | 5      |
      | CommiteeApprovalSpecialCondition.xls | DataVerify | 6      |
      | CommiteeApprovalSpecialCondition.xls | DataVerify | 7      |
      | CommiteeApprovalSpecialCondition.xls | DataVerify | 8      |
      | CommiteeApprovalSpecialCondition.xls | DataVerify | 9      |
      | CommiteeApprovalSpecialCondition.xls | DataVerify | 10     |
      | CommiteeApprovalSpecialCondition.xls | DataVerify | 11     |
      | CommiteeApprovalSpecialCondition.xls | DataVerify | 12     |
      | CommiteeApprovalSpecialCondition.xls | DataVerify | 13     |
      | CommiteeApprovalSpecialCondition.xls | DataVerify | 14     |

#FeatureID-ACAUTOCAS-11066
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
    #validate action column
  Scenario Outline: user validate edit delete option in special condition at committee approval at <ApplicationStage> in <ProductType>
    When user try to edit or delete special condition
    Then edit and delete option should not be present

    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

    #validate added special conditions in all stages at committee approval
  #FeatureID-ACAUTOCAS-11066
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: user validate all special conditions added in previous stages at <ApplicationStage> in <ProductType>
    When user open application at committee approval
    And user checks special conditions
    Then all added special conditions should be visible at committee approval
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |


    #validate edited special conditions at committee approval
  #FeatureID-ACAUTOCAS-11066
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: user validated edited special condition at <ApplicationStage> in <ProductType>
    And user terminate committee at credit approval
    And edit added special conditions
    And save the special conditions
    And again initiate committee
    When user opne application at committee approval to verify edited special conditions
    Then updated special conditioms should be visile to the user
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |




@Epic-Committee_Approval
@AuthoredBy-harsh.anand
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-


Feature: Decision Justification at Committee Approval

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens a application at committee approval stage.


    #Pre-requisite--
# ALl the fields are filled or not filled in Collateral, capability, character (streanght & weakness)


    #FeatureID-ACAUTOCAS-11069
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: user validated Decision Justification fields in view mode on committee Approval at <ApplicationStage> in <ProductType>
    When User will open the decison justification accordian
    Then all the fields should be present in view mode
      | Character         | Strength |
      | Character         | Weakness |
      | Capability        | Strength |
      | Capability        | Weakness |
      | Collateral        | Strength |
      | Collateral        | Weakness |
      | Executive Summary | TextBox  |

    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |


  #FeatureID-ACAUTOCAS-11069
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: user validated Decision Justification if no data should be filled on credit approval at <ApplicationStage> in <ProductType>
    When User will open the decison justification accordian
    Then No data should be there in all the fields
      | Character         | Strength |
      | Character         | Weakness |
      | Capability        | Strength |
      | Capability        | Weakness |
      | Collateral        | Strength |
      | Collateral        | Weakness |
      | Executive Summary | TextBox  |

    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

      #FeatureID-ACAUTOCAS-11069
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: user validated Decision Justification if all data should be filled on credit approval at <ApplicationStage> in <ProductType>
    When User will open the decison justification accordian
    Then all data should be there in all the fields
      | Character         | Strength |
      | Character         | Weakness |
      | Capability        | Strength |
      | Capability        | Weakness |
      | Collateral        | Strength |
      | Collateral        | Weakness |
      | Executive Summary | TextBox  |

    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

          #FeatureID-ACAUTOCAS-11066
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: user validated Decision Justification if all data with maximum value should be filled on credit approval at <ApplicationStage> in <ProductType>
    When User will open the decison justification accordian
    Then all data should be there in all the fields with maximum value
      | Character         | Strength |
      | Character         | Weakness |
      | Capability        | Strength |
      | Capability        | Weakness |
      | Collateral        | Strength |
      | Collateral        | Weakness |
      | Executive Summary | TextBox  |

    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |
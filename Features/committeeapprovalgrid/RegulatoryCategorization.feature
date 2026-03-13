@Epic-Committee_Approval
@AuthoredBy-harsh.anand
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@NotImplemented
@Conventional


Feature: Regulatory Categorization

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

      #Pre-requisite--
# ALl the fields when PSL Category and RRP Category is not selected
# FeatureID-ACAUTOCAS-11070
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: user validated Regulatory Categorization tab fields in view mode  at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type  at "<ApplicationStage>" from application grid
    When User will view the Regulatory Categorization tab
    Then all the fields should be present in view mode
      | PSL category applicable ? |
      | Reason for PSL/Non PSL    |
      | RRP applicable?           |
      | Reason for RRP / Non RRP  |

    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

      #Pre-requisite--
# ALl the fields when PSL Category and RRP Category is  selected as Yes
        #FeatureID-ACAUTOCAS-11070
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: user validated Regulatory Categorization tab fields in view mode  at <ApplicationStage> in <ProductType> if PSL Category and RRP is selected as Yes
    And user opens an application of "<ProductType>" product type  at "<ApplicationStage>" from application grid
    When User will view the Regulatory Categorization tab
    Then all the fields should be present in view mode

      | PSL category applicable ? |
      | PRI                       |
      | BSR1A                     |
      | BSR1B                     |
      | PRIWSEC                   |
      | Reason for PSL/Non PSL    |
      | RRP applicable?           |
      | Reason for RRP / Non RRP  |

    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |


          #Pre-requisite--
# ALl the fields when PSL Category and RRP Category is  selected as Yes and all the values are filled
        #FeatureID-ACAUTOCAS-11070
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: user validated Regulatory Categorization tab fields in view mode  at <ApplicationStage> in <ProductType> if PSL Category and RRP is selected as Yes with all the <fields> <value> filled
    And user opens an application of "<ProductType>" product type  at "<ApplicationStage>" from application grid
    When User will view the Regulatory Categorization tab
    Then all the <fields> should be present with these <value> in view mode

    Examples:

      | fields                    | value               | ApplicationStage | ProductType |
      | PSL category applicable ? | Yes                 | ApplicationStage | ProductType |
      | PRI                       | Agri-Indirect       | ApplicationStage | ProductType |
      | BSR1A                     | Activities Auxilary | ApplicationStage | ProductType |
      | BSR1B                     | Activities Allied   | ApplicationStage | ProductType |
      | PRIWSEC                   | Advantage to SHG    | ApplicationStage | ProductType |
      | Reason for PSL/Non PSL    | Reason              | ApplicationStage | ProductType |
      | RRP applicable?           | Yes                 | ApplicationStage | ProductType |
      | Reason for RRP / Non RRP  | Reason              | ApplicationStage | ProductType |


              #Pre-requisite--
# ALl the fields when PSL Category and RRP Category is  selected as No and all the values are filled
        #FeatureID-ACAUTOCAS-11070
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: user validated Regulatory Categorization tab fields in view mode  at <ApplicationStage> in <ProductType> if PSL Category and RRP is selected as No with all the <fields> <value> filled
    And user opens an application of "<ProductType>" product type  at "<ApplicationStage>" from application grid
    When User will view the Regulatory Categorization tab
    Then all the <fields> should be present with these <value> in view mode

    Examples:

      | fields                    | value               | ApplicationStage | ProductType |
      | PSL category applicable ? | Yes                 | ApplicationStage | ProductType |
      | PRI                       | Agri-Indirect       | ApplicationStage | ProductType |
      | BSR1A                     | Activities Auxilary | ApplicationStage | ProductType |
      | BSR1B                     | Activities Allied   | ApplicationStage | ProductType |
      | PRIWSEC                   | Advantage to SHG    | ApplicationStage | ProductType |
      | Reason for PSL/Non PSL    | Reason              | ApplicationStage | ProductType |
      | RRP applicable?           | Yes                 | ApplicationStage | ProductType |
      | Reason for RRP / Non RRP  | Reason              | ApplicationStage | ProductType |

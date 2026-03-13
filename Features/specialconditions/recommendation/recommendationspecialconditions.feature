@Epic-RenewalAndRenewalRecom
@AuthoredBy-prachi
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-

Feature: Special conditions at Recommendation

#  Pre-Requisites---
#  Special conditions should be maintain as per workbook "<SpecialConditions.xlsx>"

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user is on the Recommendation screen

# ${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Recommendation","Tranche Approval","App Update Recommendation","App Update Approval","Reconsideration","Committee Approval"]}
# ${ApplicantType:["indiv","nonindiv",,]}
  #FeatureID-ACAUTOCAS-627

  Scenario Outline: Validate special condition block at <ApplicationStage> stage of <ApplicantType> customer of "<ProductType>" application
    And user opens "<ProductType>" application of "<ApplicantType>" applicant at "<ApplicationStage>" stage from application grid
    And user navigates to decision details
    When user expands decision details
    Then user should be able to see special conditions section
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |

 # ${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Credit Approval"]}
# ${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-627

  Scenario Outline: Validate special condition block at Credit Approval stage of <ApplicantType> customer of "<ProductType>" application
    And user opens "<ProductType>" application of "<ApplicantType>" applicant at "<ApplicationStage>" stage from Credit approval grid
    And user navigates to decision drawer
    When user expands decision drawer
    Then user should be able to see special conditions section
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |


# ${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Credit Approval"]}
# ${ApplicantType:["indiv","nonindiv"]?

#FeatureID-ACAUTOCAS-627
  Scenario Outline:Field type validation of customer details fields at <ApplicationStage>" stage of <ApplicantType> customer of "<ProductType>" application
    And user opens "<ProductType>" application of "<ApplicantType>" applicant at "<ApplicationStage>" stage from Credit approval grid
    And user navigates to decision details
    And user expands the decision deatails
    When user navigate to the special conditions section
    Then Following fields should be present as below field type in
      | Field Name                                  | Field type    |
      | Special Conditions                          | Drop down     |
      | Remarks                                     | Input         |
      | Applicable for                              | Radio         |
      | To be met till stage                        | Drop down     |
      | Approval required                           | Check box     |
      | Special condition status flag               | Radio         |
      | Date and time of marking special conditions | Auto Complete |
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |

    # ${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Credit Approval"]}
# ${ApplicantType:["indiv","nonindiv"]?
  #FeatureID-ACAUTOCAS-627


  Scenario Outline: Validating Special conditions mandatory fields validation <DataValidation> After Save special conditions in <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" at "<ApplicationStage>" from application grid
    When user fills Special conditions reading data from excel "<SpecialConditions>" under sheet "<SpecialConditionsheet>" and <Row_Num> to validates "<DataValidation>"
    And user saves the data
    Then user gets an error message as in excel "<SpecialConditions>" under sheet "<SpecialConditionsheet>" and <Row_Num>
    Examples:
      | ProductType   | ApplicationStage   | SpecialConditions      | SpecialConditionsheet | Row_Num | DataValidation                                                                         |
      | <ProductType> | <ApplicationStage> | SpecialConditions.xlsx | SpecialConditionsheet | 13      | Special Condition data is incomplete.                                                  |
      | <ProductType> | <ApplicationStage> | SpecialConditions.xlsx | SpecialConditionsheet | 14      | To be met till stage is mandatory                                                      |
      | <ProductType> | <ApplicationStage> | SpecialConditions.xlsx | SpecialConditionsheet | 15      | Special conditions data incomplete. Special condition and met till stage are required. |
      | <ProductType> | <ApplicationStage> | SpecialConditions.xlsx | SpecialConditionsheet | 16      | No validation                                                                          |



  # ${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Recommendation","Tranche Approval","App Update Recommendation","App Update Approval","Reconsideration","Committee Approval"]}
# ${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-627

  Scenario Outline:Add Special condition block at <ApplicationStage> stage of <ApplicantType> customer of "<ProductType>" application
    And user opens "<ProductType>" application of "<ApplicantType>" applicant at "<ApplicationStage>" stage from application grid
    And user navigates to decision details
    And special conditions maintenance should be done as per "<SourceDataFile>"
    When special conditions with special condition code from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number "<RowNumber>"
    Then special conditions get added successfully
    Examples:
      | SourceDataFile         | SheetName        | RowNumber | ApplicationStage   | ProductType   | ApplicantType   |
      | SpecialConditions.xlsx | SpecialCondition | 1         | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 2         | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 3         | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 4         | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 5         | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 6         | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 7         | <ApplicationStage> | <ProductType> | <ApplicantType> |


    # ${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Recommendation","Tranche Approval","App Update Recommendation","App Update Approval","Reconsideration","Committee Approval"]}
# ${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-627

  Scenario Outline: Add another special condition block at <ApplicationStage> stage of <ApplicantType> customer of "<ProductType>" application
    And user opens "<ProductType>" application of "<ApplicantType>" applicant at "<ApplicationStage>" stage from application grid
    And user navigates to decision details
    And special conditions maintenance should be done as per "<SourceDataFile>"
    And add another special condition
    When special conditions with special condition code from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number "<RowNumber>"
    Then special conditions get added successfully
    Examples:
      | SourceDataFile         | SheetName        | RowNumber | ApplicationStage   | ProductType   | ApplicantType   |
      | SpecialConditions.xlsx | SpecialCondition | 1         | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 2         | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 3         | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 4         | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 5         | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 6         | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 7         | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 8         | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 9         | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 10        | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 11        | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 12        | <ApplicationStage> | <ProductType> | <ApplicantType> |


    # ${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Tranche Approval","App Update Recommendation","App Update Approval","Reconsideration","Committee Approval"]}
# ${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-627

  Scenario Outline: Data reconciliation for Special conditions of "<ProductType>" application at "<FinalStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" from application grid
    And user opens Special conditions at recommendation
    And user reads data from the excel file "<SourceDataFile>" under sheet "<SheetName>" and row <RowNum>
    And user enters data for Special Conditions
    And user clicks on "save Special Conditions" Special Conditions
    And user moves application from "Recommendation" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" from application grid
    And user Special conditions at <FinalStage>
    When user navigates to Special conditions
    Then user should be able to reconcile successfully
    Examples:
      | SourceDataFile         | SheetName        | RowNum | FinalStage         | ProductType   | ApplicantType   |
      | SpecialConditions.xlsx | SpecialCondition | 1      | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 2      | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 3      | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 4      | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 5      | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 6      | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 7      | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 8      | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 9      | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 10     | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 11     | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 12     | <ApplicationStage> | <ProductType> | <ApplicantType> |

    # ${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:[Credit Approval]}
# ${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-627

  Scenario Outline: Data reconciliation for Special conditions of "<ProductType>" application at "<FinalStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" from application grid
    And user opens Special conditions at recommendation
    And user reads data from the excel file "<SourceDataFile>" under sheet "<SheetName>" and row <RowNum>
    And user enters data for Special Conditions
    And user clicks on "save Special Conditions" Special Conditions
    And user moves application from "Recommendation" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" from application grid
    And user Special conditions at <FinalStage>
    When user navigates to Special conditions
    Then user should be able to reconcile successfully
    Examples:
      | SourceDataFile         | SheetName        | RowNum | FinalStage         | ProductType   | ApplicantType   |
      | SpecialConditions.xlsx | SpecialCondition | 1      | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 2      | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 3      | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 4      | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 5      | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 6      | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 7      | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 8      | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 9      | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 10     | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 11     | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | SpecialConditions.xlsx | SpecialCondition | 12     | <ApplicationStage> | <ProductType> | <ApplicantType> |


    # ${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:[Credit Approval]}
# ${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-627


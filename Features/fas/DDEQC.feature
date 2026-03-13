@Epic-FAS_Loans
@AuthoredBy-yugam.sharma
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-

@DDEQC

Feature: DDE QC screen validation

#  Pre-Requisites---
#  In this feature we will validate all these screen level validation with User who is having ALL_Roles Authority

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#Squash:12_CAS-100689
#StoryID:CAS-100689
  #FeatureID - ACAUTOCAS-10846, CAS-100689
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["DDE QC"]}
  Scenario Outline: Verify mandatory fields are visible on <ApplicationStage> in <ProductType>
    And user opens "<ProductType>" application at "<ApplicationStage>"
    When user opens stage decision tab
    Then user should be able to see below fields
      | FieldName                      | MandatoryFlag |
      | Decision Sheet                 | mandatory     |
      | Reason                         | mandatory     |
      | Description                    | mandatory     |
      | Decision Comments              | non mandatory |
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |


  #Squash:12_CAS-100689
#StoryID:CAS-100689
  #FeatureID - ACAUTOCAS-10846, CAS-100689
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["DDE QC"]}
  Scenario Outline: <FieldName> field validation on <ApplicationStage> in <ProductType>
    And user opens "<ProductType>" application at "<ApplicationStage>"
    And user read data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    When user fills all fields except "<FieldName>" field
    And saves the data
    Then an error occurred to fill "<FieldName>" field
    Examples:
      | ApplicationStage   | ProductType    | StageDecisionWB            | StageDecision_default | StageDecision_default_rowNum | FieldName     |
      | <ApplicationStage> | <ProductType>  | DDE_QC_Stage_Decision.xlsx | Negative              | 0                            | Reason        |
      | <ApplicationStage> | <ProductType>  | DDE_QC_Stage_Decision.xlsx | Negative              | 1                            | Description   |
      | <ApplicationStage> | <<ProductType> | DDE_QC_Stage_Decision.xlsx | Negative              | 2                            | DecisionSheet |

  #Squash:12_CAS-100689
#StoryID:CAS-100689
  #FeatureID - ACAUTOCAS-10846, CAS-100689
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["DDE QC"]}
  Scenario Outline: validate cancellation of data entered in stage decision tab
    And user opens "<ProductType>" application at "<ApplicationStage>"
    And user opens stage decision tab
    And user reads data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    When user cancels the data
    Then verify data gets removed from the screen
    Examples:
      | ApplicationStage   | ProductType   | StageDecisionWB            | StageDecision_default | StageDecision_default_rowNum |
      | <ApplicationStage> | <ProductType> | DDE_QC_Stage_Decision.xlsx | Cancel                | 0                            |
      | <ApplicationStage> | <ProductType> | DDE_QC_Stage_Decision.xlsx | Cancel                | 1                            |
      | <ApplicationStage> | <ProductType> | DDE_QC_Stage_Decision.xlsx | Cancel                | 2                            |
      | <ApplicationStage> | <ProductType> | DDE_QC_Stage_Decision.xlsx | Cancel                | 3                            |
      | <ApplicationStage> | <ProductType> | DDE_QC_Stage_Decision.xlsx | Cancel                | 4                            |
      | <ApplicationStage> | <ProductType> | DDE_QC_Stage_Decision.xlsx | Cancel                | 5                            |

  #Squash:12_CAS-100689
#StoryID:CAS-100689
  #FeatureID - ACAUTOCAS-10846, CAS-100689
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["DDE QC"]}
  Scenario Outline: Validate approval of record at <ApplicationStage>
    And user opens "<ProductType>" application at "<ApplicationStage>"
    And user opens stage decision tab
    And user reads data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    When user saves the data
    Then verify application moves to next stage
    Examples:
      | ApplicationStage   | ProductType   | StageDecisionWB            | StageDecision_default | StageDecision_default_rowNum |
      | <ApplicationStage> | <ProductType> | DDE_QC_Stage_Decision.xlsx | Save                  | 0                            |

 #Squash:12_CAS-100689
#StoryID:CAS-100689
  #FeatureID - ACAUTOCAS-10846, CAS-100689
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["DDE QC"]}
  Scenario Outline:  Validate rejection of record at <ApplicationStage>
    And user opens "<ProductType>" application at "<ApplicationStage>"
    And user opens stage decision tab
    And user reads data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    When user saves the data
    Then verify application moves back to the previous stage Additional Lodgement with unsaved data
    Examples:
      | ApplicationStage   | ProductType   | StageDecisionWB            | StageDecision_default | StageDecision_default_rowNum |
      | <ApplicationStage> | <ProductType> | DDE_QC_Stage_Decision.xlsx | Save                  | 1                            |

  #Squash:CAS-100689
#StoryID:CAS-100689
  #FeatureID - ACAUTOCAS-10846, CAS-100689
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["DDE QC"]}
  Scenario Outline: Validation of send back of record at <ApplicationStage>
    And user opens "<ProductType>" application at "<ApplicationStage>"
    And user opens stage decision tab
    And user reads data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    When user saves the data
    Then verify application moves back to the previous stage Lodgement with saved data
    Examples:
      | ApplicationStage   | ProductType   | StageDecisionWB            | StageDecision_default | StageDecision_default_rowNum |
      | <ApplicationStage> | <ProductType> | DDE_QC_Stage_Decision.xlsx | Save                  | 2                            |

  #Squash:CAS-100689
#StoryID:CAS-100689
  #FeatureID - ACAUTOCAS-10846, CAS-100689
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["DDE QC"]}
  Scenario Outline: Verify required fields are visible on <ApplicationStage> in <ProductType>
    And user opens "<ProductType>" application at "<ApplicationStage>"
    And user opens stage decision tab
    When user selects required fields
    Then user should be able to see below fields
      | FieldName      |
      | Decision Sheet |
      | Reason         |
      | Description    |
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

  #Squash:CAS-100689
#StoryID:CAS-100689
  #FeatureID - ACAUTOCAS-10846, CAS-100689
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["DDE QC"]}
  Scenario Outline: Verify all fields are visible on <ApplicationStage> in <ProductType>
    And user opens "<ProductType>" application at "<ApplicationStage>"
    And user opens stage decision tab
    When user selects All fields
    Then user should be able to see below fields
      | FieldName            |
      | Decision             |
      | Reason               |
      | Description          |
      | Decision Comments    |
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |




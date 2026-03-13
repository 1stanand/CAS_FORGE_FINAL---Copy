@Epic-FAS_Loans
@AuthoredBy-yugam.sharma
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-

@WithdrawalQC

Feature: Account Scrip Blocking screen validation

#  Pre-Requisites---
#  In this feature we will validate all these screen level validation with User who is having ALL_Roles Authority

  Background:
    Given user is on CAS Login Page
    And logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#Squash:02_CAS-101155
#StoryID:CAS-101155
  #FeatureID-ACAUTOCAS-10861, CAS-101155
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["ACCOUNT SCRIP BLOCKING"]}
  Scenario Outline: Verify mandatory fields are visible on <ApplicationStage> in <ProductType>
    And user opens "<ProductType>" application at "<ApplicationStage>"
    When user opens Account Scrip Block tab
    Then user should be able to see below fields
      | FieldName             | MandatoryFlag |
      | Blocked Scrip Details | non mandatory |
      | Transaction Number    | non mandatory |
      | Reason                | mandatory     |
      | Description           | mandatory     |
      | Comments              | non mandatory |
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

  #Squash:02_CAS-101155
#StoryID:CAS-101155
  #FeatureID-ACAUTOCAS-10861, CAS-101155
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["ACCOUNT SCRIP BLOCKING"]}
  Scenario Outline: Check required fields on <ApplicationStage> in <ProductType>
    And user opens "<ProductType>" application at "<ApplicationStage>"
    When user opens Account Scrip Block tab
    And user selects required fields
    Then verify only mandatory fields should be visible
      | FieldName   |
      | Reason      |
      | Description |
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |


  #Squash:02_CAS-101155
#StoryID:CAS-101155
  #FeatureID-ACAUTOCAS-10861, CAS-101155
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["ACCOUNT SCRIP BLOCKING"]}
  Scenario Outline: Check all fields are visible on <ApplicationStage> in <ProductType>
    And user opens "<ProductType>" application at "<ApplicationStage>"
    When user opens Account Scrip Block tab
    And user selects All fields
    Then verify all fields should be visible
      | FieldName             |
      | Blocked Scrip Details |
      | Transaction Number    |
      | Reason                |
      | Description           |
      | Comments              |
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

  #Squash:02_CAS-101155
#StoryID:CAS-101155
  #FeatureID-ACAUTOCAS-10861, CAS-101155
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["ACCOUNT SCRIP BLOCKING"]}
  Scenario Outline: Check data in the field on <ApplicationStage> in <ProductType>
    And user opens "<ProductType>" application at "<ApplicationStage>"
    When user open Account Scrip Block tab
    Then user should be able to see transaction number in the field corresponding to the application
      | FieldName          |
      | Transaction Number |
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |


  #Squash:02_CAS-101155
#StoryID:CAS-101155
  #FeatureID-ACAUTOCAS-10861, CAS-101155
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["ACCOUNT SCRIP BLOCKING"]}
  Scenario Outline: <FieldName> field validation on <ApplicationStage> in <ProductType>
    And user opens "<ProductType>" application at "<ApplicationStage>"
    And user read data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    When user fills all fields except "<FieldName>" field
    And saves the data
    Then an error occurred to fill "<FieldName>" field
    Examples:
      | ApplicationStage   | ProductType   | StageDecisionWB             | StageDecision_default | StageDecision_default_rowNum | FieldName   |
      | <ApplicationStage> | <ProductType> | Account_Scrip_Blocking.xlsx | Negative              | 0                            | Reason      |
      | <ApplicationStage> | <ProductType> | Account_Scrip_Blocking.xls  | Negative              | 1                            | Description |

    # Pre-requisite: Scrips mentioned in the excel should be maintained in Scrip Details master

  #Squash:02_CAS-101155
#StoryID:CAS-101155
  #FeatureID-ACAUTOCAS-10861, CAS-101155
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["ACCOUNT SCRIP BLOCKING"]}
  Scenario Outline: validate cancellation of data entered in stage decision tab
    And user opens "<ProductType>" application at "<ApplicationStage>"
    And user opens stage decision tab
    And user reads data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    When user cancels the data
    Then verify data gets removed from the screen
    Examples:
      | ApplicationStage   | ProductType   | StageDecisionWB             | StageDecision_default | StageDecision_default_rowNum |
      | <ApplicationStage> | <ProductType> | Account_Scrip_Blocking.xlsx | Cancel                | 0                            |
      | <ApplicationStage> | <ProductType> | Account_Scrip_Blocking.xlsx | Cancel                | 1                            |
      | <ApplicationStage> | <ProductType> | Account_Scrip_Blocking.xlsx | Cancel                | 2                            |
      | <ApplicationStage> | <ProductType> | Account_Scrip_Blocking.xlsx | Cancel                | 3                            |
      | <ApplicationStage> | <ProductType> | Account_Scrip_Blocking.xlsx | Cancel                | 4                            |
      | <ApplicationStage> | <ProductType> | Account_Scrip_Blocking.xlsx | Cancel                | 5                            |



  #Squash:04_CAS-101155
#StoryID:CAS-101155
  #FeatureID-ACAUTOCAS-10861, CAS-101155
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["ACCOUNT SCRIP BLOCKING"]}
  Scenario Outline: user adds scrip to be blocked and save and send the record for approval
    And user opens "<ProductType>" application at "<ApplicationStage>"
    And user reads data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    When user fills all fields
    And  saves_proceed the data
    Then verify application moves to Account Scrip Block QC stage
    Examples:
      | ApplicationStage   | ProductType   | StageDecisionWB            | StageDecision_default | StageDecision_default_rowNum |
      | <ApplicationStage> | <ProductType> | Account_Scrip_Blocking.xls | Save                  | 0                            |

  #Squash:04_CAS-101155
#StoryID:CAS-101155
  #FeatureID-ACAUTOCAS-10861, CAS-101155
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["ACCOUNT SCRIP BLOCKING"]}
  Scenario Outline: user approves record from Account Scrip Block QC stage by another user
    And user opens "<ProductType>" application at "<ApplicationStage>"
    And user reads data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    And user fills all fields
    And  saves_proceed the data
    When checker user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And  opens Account Scrip Block QC Stage
    And  approves the decision
    Then decision should be taken successfully and scrip should be blocked for that application
    Examples:
      | ApplicationStage   | ProductType   | StageDecisionWB             | StageDecision_default | StageDecision_default_rowNum |
      | <ApplicationStage> | <ProductType> | Account_Scrip_Blocking.xlsx | Approve               | 0                            |

   #Squash:04_CAS-101155
#StoryID:CAS-101155
  #FeatureID-ACAUTOCAS-10861, CAS-101155
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["ACCOUNT SCRIP BLOCKING"]}
  Scenario Outline: user add the scrip to be blocked and save and send the record for approval
    And user opens "<ProductType>" application at "<ApplicationStage>"
    And user reads data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    When user fills all fields
    And  saves_proceed the data
    Then verify application moves to Account Scrip Block QC stage
    Examples:
      | ApplicationStage   | ProductType   | StageDecisionWB             | StageDecision_default | StageDecision_default_rowNum |
      | <ApplicationStage> | <ProductType> | Account_Scrip_Blocking.xlsx | Save                  | 1                            |

  #Squash:04_CAS-101155
#StoryID:CAS-101155
  #FeatureID-ACAUTOCAS-10861, CAS-101155
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["ACCOUNT SCRIP BLOCKING"]}
  Scenario Outline: user approves the record from Account Scrip Block QC stage by another user
    And user opens "<ProductType>" application at "<ApplicationStage>"
    And user reads data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    And user fills all fields
    And  saves_proceed the data
    When checker user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And  opens Account Scrip Block QC Stage
    And  rejects the decision
    Then decision should be taken successfully and scrip should be blocked for that application
    Examples:
      | ApplicationStage   | ProductType   | StageDecisionWB             | StageDecision_default | StageDecision_default_rowNum |
      | <ApplicationStage> | <ProductType> | Account_Scrip_Blocking.xlsx | Reject                | 1                            |

 #Squash:04_CAS-101155
#StoryID:CAS-101155
  #FeatureID-ACAUTOCAS-10861, CAS-101155
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["ACCOUNT SCRIP BLOCKING"]}
  Scenario Outline: user adds the scrip to be blocked and save and send the record for approval
    And user opens "<ProductType>" application at "<ApplicationStage>"
    And user reads data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    When user fills all fields
    And  saves_proceed the data
    Then verify application moves to Account Scrip Block QC stage
    Examples:
      | ApplicationStage   | ProductType   | StageDecisionWB             | StageDecision_default | StageDecision_default_rowNum |
      | <ApplicationStage> | <ProductType> | Account_Scrip_Blocking.xlsx | Save                  | 2                            |

  #Squash:04_CAS-101155
#StoryID:CAS-101155
  #FeatureID-ACAUTOCAS-10861, CAS-101155
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["ACCOUNT SCRIP BLOCKING"]}
  Scenario Outline: user approve the record from Account Scrip Block QC stage by another user
    And user opens "<ProductType>" application at "<ApplicationStage>"
    And user reads data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    And user fills all fields
    And  saves_proceed the data
    When checker user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And  opens Account Scrip Block QC Stage
    And  sendback the decision
    Then decision should be taken successfully and scrip should be blocked for that application
    Examples:
      | ApplicationStage   | ProductType   | StageDecisionWB             | StageDecision_default | StageDecision_default_rowNum |
      | <ApplicationStage> | <ProductType> | Account_Scrip_Blocking.xlsx | SendBack              | 2                            |


  #Squash:04_CAS-101155
#StoryID:CAS-101155
  #FeatureID-ACAUTOCAS-10861, CAS-101155
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["ACCOUNT SCRIP BLOCKING"]}
  Scenario Outline: user unblocks scrip in Account Scrip Blocking stage
    When user enters data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    And  saves and proceed the data for approval
    And  user logout from CAS
    And  checker user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And  opens application at Account Scrip Blocking QC stage
    And  approves the record
    And  maker user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And  opens application at Account Scrip Blocking stage for which the record was approved.
    And  reads data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    And  deselects the scrip and save and proceed the data for approval
    Then verify the scrip should be sent for approval successfully.
    Examples:
      | StageDecisionWB             | StageDecision_default | StageDecision_default_rowNum |
      | Account_Scrip_Blocking.xlsx | Save                  | 0                            |
      | Account_Scrip_Blocking.xlsx | Save                  | 1                            |
      | Account_Scrip_Blocking.xlsx | Save                  | 2                            |
      | Account_Scrip_Blocking.xlsx | Save                  | 3                            |
      | Account_Scrip_Blocking.xlsx | Save                  | 4                            |
      | Account_Scrip_Blocking.xlsx | Save                  | 5                            |

  #Squash:02_CAS-101155
#StoryID:CAS-101155
  #FeatureID-ACAUTOCAS-10861, CAS-101155
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["ACCOUNT SCRIP BLOCKING"]}
  Scenario Outline: Unblocking the scrip in Account Scrip Blocking stage
    When user enters data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    And  saves and proceed the data for approval
    And  user logout from CAS
    And  checker user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And  opens application at Account Scrip Blocking QC stage
    And  approves the record
    And  maker user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And  opens application at Account Scrip Blocking stage for which the record was approved.
    And  reads data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    And  deselects the scrip and save and proceed the data for approval
    And  user logout from CAS
    And  checker user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And  opens application at Account Scrip Blocking QC stage
    And  approves the record
    Then verify the scrip should be unblocked successfully.
    Examples:
      | StageDecisionWB             | StageDecision_default | StageDecision_default_rowNum |
      | Account_Scrip_Blocking.xlsx | Approve               | 0                            |
      | Account_Scrip_Blocking.xlsx | Approve               | 1                            |
      | Account_Scrip_Blocking.xlsx | Approve               | 2                            |
      | Account_Scrip_Blocking.xlsx | Approve               | 3                            |
      | Account_Scrip_Blocking.xlsx | Approve               | 4                            |
      | Account_Scrip_Blocking.xlsx | Approve               | 5                            |

  #Squash:02_CAS-101155
#StoryID:CAS-101155
  #FeatureID-ACAUTOCAS-10861, CAS-101155
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["ACCOUNT SCRIP BLOCKING"]}
  Scenario Outline: Unblocking scrip in Account Scrip Blocking stage
    When user enters data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    And  saves and proceed the data for approval
    And  user logout from CAS
    And  checker user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And  opens application at Account Scrip Blocking QC stage
    And  approves the record
    And  maker user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And  opens application at Account Scrip Blocking stage for which the record was approved.
    And  reads data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    And  deselects the scrip and save and proceed the data for approval
    And  user logout from CAS
    And  checker user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And  opens application at Account Scrip Blocking QC stage
    And  rejects the record
    Then verify the scrip should NOT be unblocked.
    Examples:
      | StageDecisionWB             | StageDecision_default | StageDecision_default_rowNum |
      | Account_Scrip_Blocking.xlsx | Reject                | 0                            |
      | Account_Scrip_Blocking.xlsx | Reject                | 1                            |
      | Account_Scrip_Blocking.xlsx | Reject                | 2                            |
      | Account_Scrip_Blocking.xlsx | Reject                | 3                            |
      | Account_Scrip_Blocking.xlsx | Reject                | 4                            |
      | Account_Scrip_Blocking.xlsx | Reject                | 5                            |

  #Squash:02_CAS-101155
#StoryID:CAS-101155
  #FeatureID-ACAUTOCAS-10861, CAS-101155
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["ACCOUNT SCRIP BLOCKING"]}
  Scenario Outline: user unblocks the scrip in Account Scrip Blocking stage
    When user enters data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    And  saves and proceed the data for approval
    And  user logout from CAS
    And  checker user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And  opens application at Account Scrip Blocking QC stage
    And  approves the record
    And  maker user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And  opens application at Account Scrip Blocking stage for which the record was approved.
    And  reads data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    And  deselects the scrip and save and proceed the data for approval
    And  user logout from CAS
    And  checker user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And  opens application at Account Scrip Blocking QC stage
    And  send back the record
    Then verify the scrip should NOT be unblocked.
    Examples:
      | StageDecisionWB             | StageDecision_default | StageDecision_default_rowNum |
      | Account_Scrip_Blocking.xlsx | SendBack              | 0                            |
      | Account_Scrip_Blocking.xlsx | SendBack              | 1                            |
      | Account_Scrip_Blocking.xlsx | SendBack              | 2                            |
      | Account_Scrip_Blocking.xlsx | SendBack              | 3                            |
      | Account_Scrip_Blocking.xlsx | SendBack              | 4                            |
      | Account_Scrip_Blocking.xlsx | SendBack              | 5                            |

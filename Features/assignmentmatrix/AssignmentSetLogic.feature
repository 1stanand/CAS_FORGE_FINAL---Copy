@Epic-Assignment_Matrix
@AuthoredBy-Rajni.Gola
@ReviewedBy-
@ImplementedBy-aditya.tomar
@TechReviewedBy-
@Release3
@Reconciled
@ReviewedByDEV
Feature: Allocation Logic

  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    # In this feature, we will cover scenarios explaining significance of
    # fields available in Assignment Matrix master

  #FeatureID-ACAUTOCAS-4879
  Scenario Outline: ACAUTOCAS-5913:  View Test Assignment Matrix option
    And user is on Assignment Matrix master
    When user opens one of the existing assignment matrix in "<mode>" mode
    Then user "<view_status>" test assignment matrix option
    Examples:
      | mode | view_status                |
      | view | should be able to view     |
      | edit | should not be able to view |

  #FeatureID-ACAUTOCAS-4879
  Scenario: ACAUTOCAS-5943:  Validate Test Assignment Matrix option
    And user is on Assignment Matrix master
    When user opens one of the existing assignment matrix in view mode
    And user selects test assignment matrix option
    Then user should be able to view option to select entity name

  #FeatureID-ACAUTOCAS-4879
  Scenario: ACAUTOCAS-5944:  View Assignment Matrix Simulation Result
    And user is on Assignment Matrix master
    And user opens one of the existing assignment matrix in view mode
    And user selects test assignment matrix option
    When user enters entity name from given list of entities
    And user selects one of the entity value from list of values displayed for selected entity name
    Then user should be able to view the execution status along with results for all the assignment set mapped to the assignment matrix

  #FeatureID-ACAUTOCAS-4879
  Scenario: ACAUTOCAS-5945:  Assignment Set with Execute All Option
    And user is on Assignment Matrix master
    And user has mapped multiple assignment set to an assignment matrix with different priority
    And user has selected execute all option at assignment matrix level
    When user test the assignment matrix on selected entity using test assignment matrix option
    Then user should be able to view the result of execution of all assignment set mapped in the assignment matrix

  #FeatureID-ACAUTOCAS-4879
  Scenario Outline: ACAUTOCAS-5914:  Assignment Set execution based on priority assigned
    And user is on Assignment Matrix master
    And user has mapped multiple assignment set to an assignment matrix with different priority as "<Priority>"
    And user has not selected execute all option at assignment matrix level
    When user test the assignment matrix on selected entity using test assignment matrix option
    Then user should be able to view the exceution status of assignment set with "<Priority>" as "<Executed>" when the result of assignment set with priroity "<Preceding_Priority>" is "<Result>"
    Examples:
      | Priority | Executed     | Preceding_Priority | Result         |
      | 1        | executed     | Not applicable     | Not applicable |
      | 2        | executed     | 1                  | Fail           |
      | 2        | not executed | 1                  | Pass           |
      | 3        | executed     | 1,2                | Fail           |
      | 3        | not executed | 1                  | Pass           |
      | 3        | not executed | 2                  | Pass           |

  #FeatureID-ACAUTOCAS-4879
  Scenario: ACAUTOCAS-5946:  Execute All Option at Expression set level
    And user is on Assignment Matrix master
    And user has mapped multiple assignment set to an assignment matrix with different priority
    And user has selected execute all option at expression level within assignment set
    When user test the assignment matrix on selected entity using test assignment matrix option
    Then user should be able to view the result of execution of all expression set mapped within the assignment set

  #FeatureID-ACAUTOCAS-4879
  Scenario Outline: ACAUTOCAS-5915:  Expression execution based on priority assigned
    And user is on Assignment Matrix master
    And user has mapped multiple assignment set to an assignment matrix with different priority as "<Priority>"
    And user has not selected execute all option at expression level within assignment set
    When user test the assignment matrix on selected entity using test assignment matrix option
    Then user should be able to view the exceution status of expression set with "<Priority>" as "<Executed>" when the result of expression set with priroity "<Preceding_Priority>" is "<Result>"
    Examples:
      | Priority | Executed     | Preceding_Priority | Result         |
      | 1        | executed     | Not applicable     | Not applicable |
      | 2        | executed     | 1                  | Fail           |
      | 2        | not executed | 1                  | Pass           |
      | 3        | executed     | 1,2                | Fail           |
      | 3        | not executed | 1                  | Pass           |
      | 3        | not executed | 2                  | Pass           |

  #FeatureID-ACAUTOCAS-4879
  Scenario: ACAUTOCAS-5947:  Selection of Rule in assignment set
    And user is on Assignment Matrix master
    And user has configured step 1 of assignment set
    And user has configured step 2 of assignment set
    And user selects rule for execution of assignment set from rule option
    When user test the assignment matrix on selected entity using test assignment matrix option
    And user validates that the result of rule selected in assignment set is true
    Then user should be able to successfully view the result of the assignment set as per configuration done in step 1, step2

      #FeatureID-ACAUTOCAS-4879
  Scenario: ACAUTOCAS-5948:  Selection of Enable Maximum calculation in Step 1
    And user is on Assignment Matrix master
    And user is at Step1 of assignment set
    When user selects Enable Maximum calculation option
    Then user should be able to select multiple parameters under action field in step 2

  #FeatureID-ACAUTOCAS-4879
  Scenario: ACAUTOCAS-5949:  Impact of Enable Maximum calculation on Assignment set
    And user is on Assignment Matrix master
    And user selects Enable Maximum calculation option
    When user selects 2 parameters under action field in step 2
    And user executes assignment matrix using test assignment matrix option
    Then user should be able to view result populated with parameter value having maximum value among the two parameters

  #FeatureID-ACAUTOCAS-4879
  Scenario: ACAUTOCAS-5950:  Selection of Enable Minimum calculation in Step 1
    And user is on Assignment Matrix master
    And user is at Step1 of assignment set
    When user selects Enable Minimum calculation option
    Then user should be able to select multiple parameters under action field in step 2

  #FeatureID-ACAUTOCAS-4879
  Scenario: ACAUTOCAS-5951:  Impact of Enable Minimum calculation on Assignment set
    And user is on Assignment Matrix master
    And user selects Enable Minimum calculation option
    When user selects 2 parameters under action field in step 2
    And user executes assignment matrix using test assignment matrix option
    Then user should be able to view result populated with parameter value having minimum value among the two parameters

  #FeatureID-ACAUTOCAS-4879
  Scenario Outline: ACAUTOCAS-5916:  Effective from and till date handling in assignment set
    And user is on Assignment Matrix master
    And user has configured step 1 of assignment set
    When user enters details in step 2 for assignment set
    And user selects "<date>" date
    Then user should be allowed to execute assignment set only when the application date is "<operator>" "<date>" date
    Examples:
      | date                              | operator   |
      | effective from                    | greater    |
      | effective till                    | less than  |
      | effective from and effective till | in between |

  #FeatureID-ACAUTOCAS-4879
  Scenario Outline: ACAUTOCAS-5917:  Buffer Days handling in assignment set
    And user is on Assignment Matrix master
    And user has configured step 1 of assignment set
    When user enters details in step 2 for assignment set
    And user selects buffer days along with effective till date
    Then user should be allowed to execute assignment set till "<endDate>" after adding "<bufferDays>" in "<effectiveTill>" date
    Examples:
      | effectiveTill | bufferDays | endDate     |
      | 10-Aug-2023   | 2          | 12-Aug-2023 |
      | 10-Aug-2023   | 0          | 10-Aug-2023 |

  #FeatureID-ACAUTOCAS-4879
  Scenario Outline: ACAUTOCAS-5918:  Default Set handling when execute all is selected
    And user is on Assignment Matrix master
    And user has mapped 4 assignment set with 1 assignment set as default using default option
    And user has set the priority of 4 sets created as  "<Assignment_Set_1_Priority>", "<Assignment_Set_2_Priority>", "<Assignment_Set_3_Priority>", "<Default_set_priority>"
    When user selects execute all option for the assignment matrix
    And user test the assignment matrix using test assignment matrix option
    And result of 4 assignment set is "<Assignment_Set_1_Result>","<Assignment_Set_2_Result>","<Assignment_Set_3_Result>","<Default_set_Result>" respectively
    Then user should be able to view the result of assignment matrix populated with value obtained from "<Final_Value_Set_In_Result>"
    Examples:
      | Assignment_Set_1_Result | Assignment_Set_2_Result | Assignment_Set_3_Result | Default_set_Result | Assignment_Set_1_Priority | Assignment_Set_2_Priority | Assignment_Set_3_Priority | Default_set_priority | Final_Value_Set_In_Result |
      | Pass                    | Fail                    | Fail                    | Pass               | 1                         | 2                         | 3                         | 4                    | Assignment_Set_1          |
      | Pass                    | Pass                    | Fail                    | Pass               | 1                         | 2                         | 3                         | 4                    | Assignment_Set_1          |
      | Pass                    | Pass                    | Pass                    | Pass               | 1                         | 2                         | 3                         | 4                    | Assignment_Set_1          |
      | Fail                    | Pass                    | Pass                    | Pass               | 1                         | 2                         | 3                         | 4                    | Assignment_Set_2          |
      | Fail                    | Fail                    | Pass                    | Pass               | 1                         | 2                         | 3                         | 4                    | Assignment_Set_3          |
      | Fail                    | Fail                    | Fail                    | Pass               | 1                         | 2                         | 3                         | 4                    | Default_Set               |
      | Pass                    | Fail                    | Fail                    | Pass               | 4                         | 3                         | 2                         | 1                    | Assignment_Set_1          |
      | Pass                    | Pass                    | Fail                    | Pass               | 4                         | 3                         | 2                         | 1                    | Assignment_Set_2          |
      | Pass                    | Pass                    | Pass                    | Pass               | 4                         | 3                         | 2                         | 1                    | Assignment_Set_3          |
      | Pass                    | Pass                    | Pass                    | Pass               | 4                         | 3                         | 2                         | 1                    | Assignment_Set_3          |
      | Pass                    | Pass                    | Pass                    | Pass               | 4                         | 3                         | 2                         | 1                    | Assignment_Set_3          |
      | Pass                    | Pass                    | Pass                    | Pass               | 4                         | 3                         | 2                         | 1                    | Assignment_Set_3          |
      | Pass                    | Pass                    | Pass                    | Pass               | 4                         | 3                         | 2                         | 1                    | Assignment_Set_3          |
      | Fail                    | Pass                    | Pass                    | Pass               | 4                         | 3                         | 2                         | 1                    | Assignment_Set_3          |
      | Fail                    | Fail                    | Pass                    | Pass               | 4                         | 3                         | 2                         | 1                    | Assignment_Set_3          |
      | Fail                    | Fail                    | Fail                    | Pass               | 4                         | 3                         | 2                         | 1                    | Default_Set               |

#FeatureID-ACAUTOCAS-4879
  Scenario Outline: ACAUTOCAS-5919:  Default Set handling when execute all option is NOT selected
    And user is on Assignment Matrix master
    And user has mapped 4 assignment set with 1 assignment set as default using default option
    And user has set the priority of 4 sets created as  "<Assignment_Set_1_Priority>", "<Assignment_Set_2_Priority>", "<Assignment_Set_3_Priority>", "<Default_set_priority>"
    When user do not select execute all option for the assignment matrix
    And user test the assignment matrix using test assignment matrix option
    And result of 4 assignment set is "<Assignment_Set_1_Result>","<Assignment_Set_2_Result>","<Assignment_Set_3_Result>","<Default_set_Result>" respectively
    Then user should be able to view the result of assignment matrix populated with value obtained from "<Final_Value_Set_In_Result>"
    Examples:
      | Assignment_Set_1_Result | Assignment_Set_2_Result | Assignment_Set_3_Result | Default_set_Result | Assignment_Set_1_Priority | Assignment_Set_2_Priority | Assignment_Set_3_Priority | Default_set_priority | Final_Value_Set_In_Result |
      | Pass                    | not executed            | not executed            | Pass               | 1                         | 2                         | 3                         | 4                    | Assignment_Set_1          |
      | Fail                    | Pass                    | not executed            | Pass               | 1                         | 2                         | 3                         | 4                    | Assignment_Set_2          |
      | Fail                    | Fail                    | Pass                    | Pass               | 1                         | 2                         | 3                         | 4                    | Assignment_Set_3          |
      | Fail                    | Fail                    | Fail                    | Pass               | 1                         | 2                         | 3                         | 4                    | Default_Set               |
      | not executed            | not executed            | not executed            | Pass               | 4                         | 3                         | 2                         | 1                    | Default_Set               |
      | not executed            | Pass                    | Fail                    | Pass               | 3                         | 2                         | 1                         | 4                    | Assignment_Set_2          |
      | not executed            | not executed            | Pass                    | Pass               | 3                         | 2                         | 1                         | 4                    | Assignment_Set_3          |
      | Pass                    | Fail                    | Fail                    | Pass               | 3                         | 2                         | 1                         | 4                    | Assignment_Set_1          |

#FeatureID-ACAUTOCAS-4879
  Scenario: ACAUTOCAS-5952:  Assignment Matrix with Save Result option
    And user is on Assignment Matrix master
    And user has created assignment matrix with Save Result option as true
    When user creates an assignment set
    And user select OGNL option for Action Fields
    Then user should be able to select values that are maintained as transient in Object graph master
    ## In application, few fields are configured as transient. It can be checked from DB

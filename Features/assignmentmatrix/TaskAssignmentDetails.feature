@Epic-Assignment_Matrix
@AuthoredBy-sajja.ravikumar
#OriginalAuthor-rajni.gola
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@ReviewedByDEV
@NotImplemented
Feature: Task Assignment Details

  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    # In this feature, we will cover scenarios explaining significance and use of Task assignment
    # in application processing

  #FeatureID-ACAUTOCAS-5075
  Scenario Outline: ACAUTOCAS-5978:  Navigate to Task Assignment master
    And user navigates to Rules - Matrix on main menu
    When user clicks on Task Assignment menu
    Then user should be able to view search grid with list of task assignments already configured showing details under "<column_name>" columns

    Examples:
      | column_name     |
      | Name            |
      | Description     |
      | Created By      |
      | Reviewed By     |
      | Created On      |
      | Reviewed On     |
      | Status          |
      | Active/inactive |
      | Actions         |

  #FeatureID-ACAUTOCAS-5075
  Scenario Outline: ACAUTOCAS-5979:  Options available on Task Assignment master landing screen
    And user navigates to Rules - Matrix on main menu
    When user clicks on Task Assignment menu
    Then user should be able to view "<buttons>" options

    Examples:
      | buttons                    |
      | New Task Assignment Master |
      | Previous                   |
      | Next                       |
      | Copy XLS                   |
      | Copy CSV                   |
      | Copy PDF                   |

  #FeatureID-ACAUTOCAS-5075
  Scenario Outline: ACAUTOCAS-5980:  Navigate to Task Assignment master - Edit, Delete and Clone
    And user navigates to Rules - Matrix
    And user clicks on Task Assignment option
    When user clicks on "<action>" under Actions column
    Then user should be able to perform "<action>" operation successfully

    Examples:
      | action |
      | Edit   |
      | Clone  |
      | Delete |

  #FeatureID-ACAUTOCAS-5075
  Scenario: ACAUTOCAS-6003:  Navigate to Task Assignment master - Bulk Delete
    And user navigates to Rules - Matrix
    And user clicks on Task Assignment option
    When user clicks on select All checkbox
    And user selects Delete option on top
    Then user should be able to perform bulk Delete operation successfully

  #FeatureID-ACAUTOCAS-5075
  Scenario: ACAUTOCAS-6004:  Navigate to Task Assignment master - Bulk Clone
    And user navigates to Rules - Matrix
    And user clicks on Task Assignment option
    When user clicks on select All checkbox
    And user selects Clone option on top
    Then user should be able to perform bulk Clone operation successfully


######### Master - field level validations ######################
  #FeatureID-ACAUTOCAS-5075
  Scenario Outline: ACAUTOCAS-5981:  Validate Create Task Assignment Screen
    And user is on Task Assignment master
    When  user clicks on New Task Assignment Master option
    Then user should be able to view Create Task Assignment Master screen
    And user should be able to view field "<FieldName>" of "<DataType>" marked as "<Mandatory>"
    Examples:
      | FieldName                     | Mandatory | DataType |
      | Assignment Matrix Code        | mandatory | Textbox  |
      | Assignment Matrix Name        | mandatory | Textbox  |
      | Assignment Matrix Description | mandatory | Textbox  |
      | Module Name                   | mandatory | Dropdown |
      | Assignment Set Grid           | mandatory | Grid     |

  #FeatureID-ACAUTOCAS-5075,ACAUTOCAS-5084
  Scenario Outline: ACAUTOCAS-5982:  View Task Assignment Set Grid
    And user is on Task Assignment master
    When user clicks on Add Assignment Set option
    Then user should be able to view "<options>"
    Examples:
      | options       |
      | Grid          |
      | Expression    |
      | Criteria Rule |

  #FeatureID-ACAUTOCAS-5075
  Scenario Outline: ACAUTOCAS-5983:  Impact of module name selection at Task Assignment level
    And user is on Task Assignment master
    And user has entered mandatory details including module name as "<value>"
    When user clicks on Add Assignment Set option to create assignment set
    Then user should be able to view only those list of object graphs for selection that are maintained with module name as "<value>" in object graph master
    Examples:
      | value          |
      | Application    |
      | Charge and Tax |
      | Master         |
      | Product        |
      | Lead           |


  #FeatureID-ACAUTOCAS-5075
  Scenario: ACAUTOCAS-6005:  Validate Task Assignment Set Grid
    And user is on Task Assignment master
    And user has entered mandatory details including module name
    When user clicks on Add Assignment Set option
    And user selects Grid option
    Then user should be able to view sections to input expression, action and assignment set in two steps

#FeatureID-ACAUTOCAS-5075,ACAUTOCAS-5084
  Scenario Outline: ACAUTOCAS-5984:  Validate Step 1 with grid option
    And user is on Task Assignment master
    And user has entered mandatory details
    When user selects grid option under Add Assignment Set option
    Then user should be able to view and select values in the fields "<FieldName>" with "<Details>"
    Examples:
      | FieldName                  | Details                                                                                                   |
      | If Condition Type          | two options as object graph type and rule with default selection as object graph type                     |
      | If Conditions              | option to select OGNL or Rule from the list maintained in Object Graph master or Rule master respectively |
      | Operator                   | option to select operator from list of operators in ==,!=, >,<,>=,<=,IN, BETWEEN, NOT IN                  |
      | Action Fields- Select OGNL | option to select OGNLs from the list maintained in Object Graph master                                    |
      | +                          | option to select multiple expression and multiple action fields                                           |
      | Populate Matrix            | option to move to step 2                                                                                  |

#FeatureID-ACAUTOCAS-5075,ACAUTOCAS-5084
  Scenario Outline: ACAUTOCAS-5985:  Validate Step 1 with expression option
    And user is on Task Assignment master
    And user has entered mandatory details including module name
    When user selects expression option under Add Assignment Set option
    Then user should be able to view and select values in the fields "<FieldName>" with "<Details>"
    Examples:
      | FieldName                   | Details                                                                |
      | Action Fields - Select OGNL | option to select OGNLs from the list maintained in Object Graph master |
      | +                           | option to select multiple action fields                                |
      | Populate Matrix             | option to move to step 2                                               |

  #FeatureID-ACAUTOCAS-5075,ACAUTOCAS-5084
  Scenario Outline: ACAUTOCAS-5986:  Validate assignment set section with criteria rule option
    And user is on Task Assignment master
    And user has entered mandatory details including module name
    When user selects criteria rule option under Add Assignment Set option
    Then user should be able to view and select values in the fields "<FieldName>"  of "<DataType>" marked as "<Mandatory>"
    Examples:
      | FieldName              | DataType     | Mandatory     |
      | Assignment Set Name    | Alphanumeric | mandatory     |
      | Priority               | Number       | mandatory     |
      | Allocation Startegy    | LOV          | non mandatory |
      | Criteria Rules Name    | Alphanumeric | non mandatory |
      | Source System          | LOV          | mandatory     |
      | Reference              | LOV          | mandatory     |
      | Rule Query Description | LOV          | mandatory     |

  #FeatureID-ACAUTOCAS-5075,ACAUTOCAS-5084
  Scenario Outline: ACAUTOCAS-5987:  Validate Step 2 with grid option
    And user is on Task Assignment master
    And user has entered mandatory details in step 1
    When user selects populate matrix option in step 1
    Then user should be able to view step 2 with field "<FieldName>" which is a "<Details>"
    Examples:
      | FieldName                          | Details                                                               |
      | Assignment Set Name                | text field for define unique name for assignment set                  |
      | Priority                           | number field for defining priority of assignment set                  |
      | Grid - Priority                    | number field for defining priority of expression                      |
      | Grid - Select value for expression | list of values                                                        |
      | Grid - Select value for action     | list of values basis user or team selection in action field in step 1 |
      | Hold Flag                          | Boolean with true or false                                            |

  #FeatureID-ACAUTOCAS-5075,ACAUTOCAS-5084
  Scenario Outline: ACAUTOCAS-5988:  Validate when If Conditions Type is selected as Rule in step 1
    And user is on Task Assignment master
    And user is on step 1 of add assignment set
    When user selects rule option under "<Field>" field
    Then user should be able to select rule in the "<Field>" field
    And user should not be allowed to select operator option
    Examples:
      | Field             |
      | if condition type |

  #FeatureID-ACAUTOCAS-5075,ACAUTOCAS-5084
  Scenario Outline: ACAUTOCAS-5989:  Validate step 2 when If Conditions Type is selected as Rule in step 1
    And user is on Task Assignment master
    And user is on step 1 of add assignment set
    When user selects rule option under "<Field>" field to enter rule expression
    And user selects populate matrix option
    Then user should be able to select rule result under Grid expression grid for expression parameter in Step 2
    Examples:
      | Field             |
      | if condition type |

  #FeatureID-ACAUTOCAS-5075,ACAUTOCAS-5084
  Scenario Outline: ACAUTOCAS-5990:  Validate when If Conditions Type is selected as Object Graph type in step 1
    And user is on Task Assignment master
    And user is on step 1 of add assignment set
    When user selects Object Graph type option under "<Field>" field
    Then user should be able to select object graph in the "<Field>" field
    And user should be allowed to select operator option
    Examples:
      | Field             |
      | if condition type |

  #FeatureID-ACAUTOCAS-5075,ACAUTOCAS-5084
  Scenario Outline: ACAUTOCAS-5991:  Validate step 2 when If Conditions Type is selected as Object Graph in step 1
    And user is on Task Assignment master
    And user is on step 1 of add assignment set
    When user selects Object Graph type option under "<Field>" field to enter object graph
    And user selects populate matrix option
    Then user should be able to select parameter from list of parameters maintained in parameters master under value fields in step 2
    Examples:
      | Field             |
      | if condition type |

  #FeatureID-ACAUTOCAS-5075,ACAUTOCAS-5084
  Scenario Outline: ACAUTOCAS-5992:  Add multiple If Conditions in step 1
    And user is on Task Assignment master
    And user is on step 1 of add assignment set
    And user has already added one condition under "<Field>" field
    When user attempts to add another condition under "<Field>" field
    Then user should be able to successfully add another condition under "<Field>" field
    Examples:
      | Field             |
      | if condition type |

  #FeatureID-ACAUTOCAS-5075,ACAUTOCAS-5084
  Scenario Outline: ACAUTOCAS-5993:  Validate multiple If Conditions in step 2
    And user is on Task Assignment master
    And user is on step 1 of add assignment set
    And user has added multiple condition under "<Field>" field
    When user selects populate matrix option
    Then user should be able to view option to enter value for multiple conditions in step 2
    Examples:
      | Field             |
      | if condition type |

  #FeatureID-ACAUTOCAS-5075,ACAUTOCAS-5084
  Scenario Outline: ACAUTOCAS-5994:  Validate Action field in step 1 with grid option
    And user is on Task Assignment master
    And user is on step 1 of add assignment set
    When user selects object graph type under "<Field>" field
    And user selects "<option>" option in action field
    And user selects populate matrix option
    Then user should be able to view "<option>" column in the expression grid in step 2

    Examples:
      | option | Field              |
      | Team   | If Conditions type |
      | User   | If Conditions type |

#FeatureID-ACAUTOCAS-5084
  Scenario Outline: ACAUTOCAS-5995:  Impact of action field selection on step 2 with grid option
    And user is on Task Assignment master
    And user has selected "<option>" in action field in step 1
    When user selects populate matrix option to move to step 2
    Then user should be able to select particular "<option>" under "<option>" column in the expression grid

    Examples:
      | option |
      | Team   |
      | User   |

#FeatureID-ACAUTOCAS-5084
  Scenario Outline: ACAUTOCAS-5996:  Selection of least loaded option with grid option
    And user is on Task Assignment master
    And user has selected "<option>" in action field in step 1
    When user selects populate matrix option to move to step 2
    Then user should be able to select "<LeastLoaded>" from the list available in "<option>" column

    Examples:
      | option | LeastLoaded       |
      | Team   | Least Loaded Team |
      | User   | Least Loaded User |

  #FeatureID-ACAUTOCAS-5084
  Scenario Outline: ACAUTOCAS-5997:  Rule Selection at selection of least loaded option with grid option
    And user is on Task Assignment master
    And user has selected "<option>" in action field in step 1
    When user selects populate matrix option to move to step 2
    And user selects "<LeastLoaded>" from the list available in "<option>" column
    Then user should be able to view Rule option
    And user should be able to select rule that user wants to be applied at the time of execution of task assignment set

    Examples:
      | option | LeastLoaded       |
      | Team   | Least Loaded Team |
      | User   | Least Loaded User |

  #FeatureID-ACAUTOCAS-5084
  Scenario Outline: ACAUTOCAS-5998:  Least loaded allocation strategy with criteria rule option
    And user is on Task Assignment master
    And user has selected criteria rule option under Add Assignment Set option
    When user selects "<option>" option in allocation strategy
    And user selects "<type>" option in reference field
    # user should select either user or team in reference field based on
    # selection of least loaded user or least loaded team respectively.
    # All other options displayed are not useful in this case
    Then user should be able to save the criteria set successfully
    Examples:
      | option            | type |
      | Least Loaded User | user |
      | Least Loaded Team | team |

  #FeatureID-ACAUTOCAS-5084
  Scenario Outline: ACAUTOCAS-5999:  Impact of Source selection with criteria rule option
    And user is on Task Assignment master
    And user has selected criteria rule option under Add Assignment Set option
    When user selects "<Source_System>" option in source system field
    And user goes to select rule for creating rule query
    # Source value defines from which module list of rules defined in master to be picked
    Then user should be able to view list of rules that are created in "<Source_System>" only
    Examples:
      | Source_System |
      | CAS           |
    ##For Common Masters
      | Common        |
    ##For external systems|
      | LMS           |
      | Collections   |

  #FeatureID-ACAUTOCAS-5075
  Scenario: ACAUTOCAS-6006:  Create multiple expression in Step 2 in assignment set
    And user is on Task Assignment master
    And user has created task assignment with one assignment set mapped
    And user has already mapped one grid expression
    When user selects to add another grid expression
    And user enters mandatory details such as priority, expression value, expression result
    Then user should be able to add another grid expression

  #FeatureID-ACAUTOCAS-5075
  Scenario: ACAUTOCAS-6007:  Edit Assignment Set to add new grid expression in Step 2
    And user is on Task Assignment master
    And user opens an existing assignment set in edit mode
    When user selects to add another grid expression
    And user enters all mandatory details
    Then user should be able to edit the assignment set by successfully adding another assignment set

  #FeatureID-ACAUTOCAS-5075
  Scenario: ACAUTOCAS-6008:  Create multiple assignment set
    And user is on Task Assignment master
    And user has already created task assignment with one assignment set mapped
    When user selects to add another assignment set using add assignment set option
    And user configures step 1, step 2 for the assignment set
    Then user should be able to add another assignment set successfully

  #FeatureID-ACAUTOCAS-5075
  Scenario: ACAUTOCAS-6009:  Edit Task Assignment to add new assignment set
    And user is on Task Assignment master
    And user opens an existing task assignment with one assignment set mapped in edit mode
    When user selects to add another assignment set using add assignment set option
    And user configures step 1, step 2 for the asisgnment set
    Then user should be able to edit the task assignment by successfully adding another assignment set

  ############ Master - Basic operations validations ####################################
  #FeatureID-ACAUTOCAS-5075
  Scenario Outline: ACAUTOCAS-6000:  Perform various actions on created record in Task Assignment master
    And user is on Task Assignment master - Create Task Assignment Master Screen
    When user has entered all mandatory inputs
    And user clicks on "<Action>" button
    Then user should be able to "<Action>" record successfully
    Examples:
      | Action                  |
      | Save                    |
      | Save & Request Approval |
      | Cancel                  |

  #FeatureID-ACAUTOCAS-5075
  Scenario Outline: ACAUTOCAS-6001:  Validate maker Checker validation in Task Assignment master
    And user is on Task Assignment master to approve record
    When user has "<Action>" that record
    Then user should be "<Output>" to "<Action>" the record successfully
    Examples:
      | Action      | Output      | Action    |
      | Created     | Not Allowed | approve   |
      | Not Created | Allowed     | approve   |
      | Created     | Not Allowed | reject    |
      | Not Created | Allowed     | reject    |
      | Created     | Not Allowed | send back |
      | Not Created | Allowed     | send back |


  Scenario Outline: ACAUTOCAS-6002:  Cancel record in Task Assignment master
    And user is on Task Assignment master
    And user clicks on New Task Assignment Master option
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix_createTaskAssignmentMaster>" and row <AssignmentMatrix_createTaskAssignmentMaster_rowNum>
    When user has entered all mandatory inputs of Assignment Master
    And user clicks on Cancel button without saving the record
    Then user should be shown a proper message with Ok and Close button
    Examples:
      | AssignmentMatrixWB     | AssignmentMatrix_createTaskAssignmentMaster | AssignmentMatrix_createTaskAssignmentMaster_rowNum |
      | assignment_matrix.xlsx | create_task_assignment_master               | 0                                                  |


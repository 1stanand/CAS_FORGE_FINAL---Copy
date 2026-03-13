@Epic-Assignment_Matrix
@AuthoredBy-Rajni.Gola
@ReviewedBy-None
@Reconciled
@ReviewedByDEV
Feature: Assignment Matrix Details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on menu
    And user click on assignment matrix

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5806:  Navigate to Assignment Matrix master
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    When user search the assignment matrix column name
    Then user should be able to view search grid with "<column_Name>" columns
    Examples:
      | column_Name     | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum |
      | Name            | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Description     | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Created By      | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Reviewed By     | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Created On      | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Reviewed On     | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Status          | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Active/Inactive | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Actions         | assignment_matrix.xlsx | assignment_matrix_details | 0                       |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5807: Options available on Assignment Matrix master landing screen
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    When user search the assignment matrix column name
    Then user should be able to view search grid with "<buttons>" columns
    Examples:
      | buttons                  | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum |
      | Create Assignment Matrix | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Upload Assignment Matrix | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | XLS Download             | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Template Download        | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Previous                 | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Next                     | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | xls                      | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | csv                      | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | pdf                      | assignment_matrix.xlsx | assignment_matrix_details | 0                       |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5808: Navigate to Assignment Matrix master - Edit Delete and Clone
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    When user search the assignment matrix column name
    And user create the assignment matrix
    And user logout from CAS
    And user logged in "<Module>" with username and password present in "<LoginDetailsCASWB>" under "<LoginDetails_childBrowser>" and <LoginDetails_childBrowser_rowNum>
    And user clicks on menu
    And user click on assignment matrix
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    And user click on approve assignment matrix
    And user clicks on "<action>" option in Action column
    Then user should be able to perform "<action>" operation
    Examples:
      | action | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum | Module | LoginDetailsCASWB    | LoginDetails_childBrowser | LoginDetails_childBrowser_rowNum |
      | Edit   | assignment_matrix.xlsx | assignment_matrix_details | 3                       | CAS    | LoginDetailsCAS.xlsx | ChildBrowserSheet         | 0                                |
      | Clone  | assignment_matrix.xlsx | assignment_matrix_details | 4                       | CAS    | LoginDetailsCAS.xlsx | ChildBrowserSheet         | 0                                |
      | Delete | assignment_matrix.xlsx | assignment_matrix_details | 5                       | CAS    | LoginDetailsCAS.xlsx | ChildBrowserSheet         | 0                                |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5821: Navigate to Assignment Matrix master - Bulk Delete
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    When user search the assignment matrix column name
    And user create the assignment matrix
    And user logout from CAS
    And user logged in "<Module>" with username and password present in "<LoginDetailsCASWB>" under "<LoginDetails_childBrowser>" and <LoginDetails_childBrowser_rowNum>
    And user clicks on menu
    And user click on assignment matrix
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    And user click on approve assignment matrix
    And user clicks on select all checkbox of assignment matrix
    And user click Delete option on top of assignment matrix
    Then user should be able to perform bulk Delete operation
    Examples:
      | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum | Module | LoginDetailsCASWB    | LoginDetails_childBrowser | LoginDetails_childBrowser_rowNum |
      | assignment_matrix.xlsx | assignment_matrix_details | 1                       | CAS    | LoginDetailsCAS.xlsx | ChildBrowserSheet         | 0                                |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5822: Navigate to Assignment Matrix master - Bulk Clone
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    When user search the assignment matrix column name
    And user create the assignment matrix
    And user logout from CAS
    And user logged in "<Module>" with username and password present in "<LoginDetailsCASWB>" under "<LoginDetails_childBrowser>" and <LoginDetails_childBrowser_rowNum>
    And user clicks on menu
    And user click on assignment matrix
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    And user click on approve assignment matrix
    And user clicks on select all checkbox of assignment matrix
    And user click Clone option on top of assignment matrix
    Then user should be able to perform bulk Clone operation
    Examples:
      | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum | Module | LoginDetailsCASWB    | LoginDetails_childBrowser | LoginDetails_childBrowser_rowNum |
      | assignment_matrix.xlsx | assignment_matrix_details | 2                       | CAS    | LoginDetailsCAS.xlsx | ChildBrowserSheet         | 0                                |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5823:  Template Download for Assignment Matrix
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    And user search the assignment matrix column name
    When user clicks on template download option
    And user selects xls download option
    Then user should be able to download assignment master template with all field labels
    Examples:
      | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum |
      | assignment_matrix.xlsx | assignment_matrix_details | 0                       |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5809: Validate Create Assignment Matrix Screen
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    When user search the assignment matrix column name
    And user clicks on New Assignment Matrix option
    Then user should be able to view Create Assignment Matrix screen
    And user should be able to view "<FieldName>" field marked as "<Mandatory>"
    Examples:
      | FieldName                     | Mandatory     | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum |
      | Assignment Matrix Code        | mandatory     | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Assignment Matrix Name        | mandatory     | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Assignment Matrix Description | mandatory     | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Module Name                   | mandatory     | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Source System                 | mandatory     | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Execute All                   | non mandatory | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Save result                   | non mandatory | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Purpose                       | non mandatory | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Assignment Set Grid           | mandatory     | assignment_matrix.xlsx | assignment_matrix_details | 0                       |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5810:  View Assignment Set Grid
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    When user search the assignment matrix column name
    And user clicks on New Assignment Matrix option
    When user clicks on Add Assignment Set option
    Then user should be able to view "<options>"
    Examples:
      | options    | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum |
      | Grid       | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Expression | assignment_matrix.xlsx | assignment_matrix_details | 1                       |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5811: Impact of "<ModuleName>" selection at Assignment Matrix level
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    When user search the assignment matrix column name
    And user clicks on New Assignment Matrix option
    And user fills assignment matrix mandatory fields
    And user clicks on Add Assignment Set Grid to create assignment set
    Then user should be able to view only those list of object graphs that are maintained with "<ModuleName>"
    Examples:
      | ModuleName     | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum |
      | Application    | assignment_matrix.xlsx | assignment_matrix_details | 6                       |
      | Charge and Tax | assignment_matrix.xlsx | assignment_matrix_details | 7                       |
      | Master         | assignment_matrix.xlsx | assignment_matrix_details | 8                       |
      | Product        | assignment_matrix.xlsx | assignment_matrix_details | 9                       |
      | Lead           | assignment_matrix.xlsx | assignment_matrix_details | 10                      |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5825:  Validate Assignment Set Grid
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    And user search the assignment matrix column name
    And user clicks on New Assignment Matrix option
    And user fills assignment matrix mandatory fields
    When user clicks on Add Assignment Set Grid to create assignment set
    Then user should be able to view "<Section>" of assignment set
    Examples:
      | Section          | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum |
      | Input Expression | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Actions          | assignment_matrix.xlsx | assignment_matrix_details | 0                       |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5812:  Validate purpose field on Assignment Matrix
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    And user search the assignment matrix column name
    And user clicks on New Assignment Matrix option
    And user fills assignment matrix mandatory fields
    And user clicks on Add Assignment Set Grid to create assignment set
    When user selects "<value>" in purpose field
    Then user should be able to create assignment matrix
    Examples:
      | value             | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum |
      | Select One Option | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | LEASE             | assignment_matrix.xlsx | assignment_matrix_details | 0                       |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5813:  Validate Step 1 of Select the expression and action fields <FieldName> with <Details> assignment set grid option
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    And user search the assignment matrix column name
    And user clicks on New Assignment Matrix option
    And user fills assignment matrix mandatory fields
    And user clicks on Add Assignment Set Grid to create assignment set
    Then user should be able to view and select values in the fields "<FieldName>" with "<Details>"
    Examples:
      | FieldName                  | Details           | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum |
      | If Condition Type          | Object Graph Type | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | If Condition Type          | Rule              | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | If Conditions              | Select OGNL       | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Operator                   | Operator          | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | If Value Type              | Field             | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | If Value Type              | Object Graph Type | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Action Fields-Select OGNLs | Select OGNL       | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | +                          | AddThenRow        | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Populate Matrix            | Move to Step 2    | assignment_matrix.xlsx | assignment_matrix_details | 0                       |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5814:  Validate Step 1 of Select the expression and action fields <FieldName> with assignment set expression option
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    And user search the assignment matrix column name
    And user clicks on New Assignment Matrix option
    And user fills assignment matrix mandatory fields
    And user clicks on Add Assignment Set Grid to create assignment set
    Then user should be able to view and select values in the fields "<FieldName>" with "<Details>"
    Examples:
      | FieldName                   | Details        | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum |
      | Action Fields- Select OGNLs | Select OGNL    | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | +                           | AddThenRow     | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Populate Matrix             | Move to Step 2 | assignment_matrix.xlsx | assignment_matrix_details | 0                       |

  @ImplementedBy-richa.singh
  @Release3
  Scenario Outline: ACAUTOCAS-5826:  Open Step 2 without completing Step 1
    And user clicks on New Assignment Matrix option
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix_assignmentMatrixDetails>" and row <AssignmentMatrix_assignmentMatrixDetails_rowNum>
    And user fills assignment matrix mandatory fields
    And user clicks on Add Assignment Set Grid to create assignment set
    When user attempts to view step 2
    Then user should be shown error message as no data available
    Examples:
      | AssignmentMatrixWB     | AssignmentMatrix_assignmentMatrixDetails | AssignmentMatrix_assignmentMatrixDetails_rowNum |
      | assignment_matrix.xlsx | assignment_matrix_details                | 6                                               |

  @ImplementedBy-richa.singh
  @Release3
  Scenario Outline: ACAUTOCAS-5815:  Validate Step 2 of filling assignment set with grid option
    And user clicks on New Assignment Matrix option
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix_assignmentMatrixDetails>" and row <AssignmentMatrix_assignmentMatrixDetails_rowNum>
    And user fills assignment matrix mandatory fields
    And user has entered mandatory details in step 1
    When user selects populate matrix option in step 1
    Then user should be able to view step 2 with field "<FieldName>" which is a "<Details>"
    Examples:
      | FieldName                          | Details                                                                                  | AssignmentMatrixWB     | AssignmentMatrix_assignmentMatrixDetails | AssignmentMatrix_assignmentMatrixDetails_rowNum |
      | Assignment Set Name                | text field for define unique name for assignment set                                     | assignment_matrix.xlsx | assignment_matrix_details                | 6                                               |
      | Priority                           | number field for defining priority of assignment set                                     | assignment_matrix.xlsx | assignment_matrix_details                | 6                                               |
      | Rule                               | dropdown field which displays list of rules maintained in Rule master                    | assignment_matrix.xlsx | assignment_matrix_details                | 6                                               |
      | Execute All                        | checkbox field when selected allow to execute all assignment set configured              | assignment_matrix.xlsx | assignment_matrix_details                | 6                                               |
      | Default Set                        | checkbox field that enable the set to execute when others fail                           | assignment_matrix.xlsx | assignment_matrix_details                | 6                                               |
      | Effective From                     | calendar field that allows to select date from which assignment set will be applicable   | assignment_matrix.xlsx | assignment_matrix_details                | 6                                               |
      | Effective Till                     | calendar field that allows to select date until when assignment set will be applicable   | assignment_matrix.xlsx | assignment_matrix_details                | 6                                               |
      | Buffer Days                        | number field which is used to define additional days for assignment set to be applicable | assignment_matrix.xlsx | assignment_matrix_details                | 6                                               |
      | Grid - Priority                    | number field for defining priority of expression                                         | assignment_matrix.xlsx | assignment_matrix_details                | 6                                               |
      | Grid - Select value for expression | text field for OGNL or text                                                              | assignment_matrix.xlsx | assignment_matrix_details                | 6                                               |
      | Grid - Select value for action     | text field for OGNL or text                                                              | assignment_matrix.xlsx | assignment_matrix_details                | 6                                               |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5827:  Validate when If Conditions Type is selected as Rule in step 1
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    And user search the assignment matrix column name
    And user clicks on New Assignment Matrix option
    And user fills assignment matrix mandatory fields
    And user clicks on Add Assignment Set Grid to create assignment set
    When user selects rule option under if condition type field
    Then user should be able to select rule in the if condition type field
    Examples:
      | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum |
      | assignment_matrix.xlsx | assignment_matrix_details | 0                       |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5827:  Validate when If Conditions Type is selected as Rule to view operator in step 1
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    And user search the assignment matrix column name
    And user clicks on New Assignment Matrix option
    And user fills assignment matrix mandatory fields
    And user clicks on Add Assignment Set Grid to create assignment set
    When user selects rule option under if condition type field
    Then user should be able to view operator as well as value type field as disabled
    Examples:
      | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum |
      | assignment_matrix.xlsx | assignment_matrix_details | 0                       |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5828:  Validate step 2 when If Conditions Type is selected as Rule in step 1
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    And user search the assignment matrix column name
    And user clicks on New Assignment Matrix option
    And user fills assignment matrix mandatory fields
    And user clicks on Add Assignment Set Grid to create assignment set
    When user selects rule option under if condition type field to enter rule expression
    Then user should be able to select rule result under Grid expression grid for expression parameter
    Examples:
      | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum |
      | assignment_matrix.xlsx | assignment_matrix_details | 0                       |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5829:  Validate when If Conditions Type is selected as Object Graph type in step 1
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    And user search the assignment matrix column name
    And user clicks on New Assignment Matrix option
    And user fills assignment matrix mandatory fields
    And user clicks on Add Assignment Set Grid to create assignment set
    Then user should be able to select object graph in the if condition type field
    Examples:
      | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum |
      | assignment_matrix.xlsx | assignment_matrix_details | 0                       |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5829:  Validate when If Conditions Type is selected as Object Graph type to view operator in step 1
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    And user search the assignment matrix column name
    And user clicks on New Assignment Matrix option
    And user fills assignment matrix mandatory fields
    And user clicks on Add Assignment Set Grid to create assignment set
    Then user should be able to select operator as well as value type field
    Examples:
      | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum |
      | assignment_matrix.xlsx | assignment_matrix_details | 0                       |


  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5830:  Validate step 2 when If Conditions Type is selected as Object Graph in step 1
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    And user search the assignment matrix column name
    And user clicks on New Assignment Matrix option
    And user fills assignment matrix mandatory fields
    And user clicks on Add Assignment Set Grid to create assignment set
    When user fill assignment matrix set of object graph type
    And user selects populate matrix option
    Then user should be able to select parameter from list of parameters maintained in parameters master
    Examples:
      | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum |
      | assignment_matrix.xlsx | assignment_matrix_details | 0                       |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5831:  Add multiple If Conditions in step 1
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    And user search the assignment matrix column name
    And user clicks on New Assignment Matrix option
    And user fills assignment matrix mandatory fields
    And user clicks on Add Assignment Set Grid to create assignment set
    And user fill assignment matrix set of object graph type
    And user selects populate matrix option
    When user attempts to add another condition under if condition type field
    Then user should be able to successfully add another condition under if condition type field
    Examples:
      | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum |
      | assignment_matrix.xlsx | assignment_matrix_details | 0                       |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5832:  Validate multiple If Conditions in step 2
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    And user search the assignment matrix column name
    And user clicks on New Assignment Matrix option
    And user fills assignment matrix mandatory fields
    And user clicks on Add Assignment Set Grid to create assignment set
    And user fill assignment matrix set of object graph type
    And user selects populate matrix option
    When user attempts to add another condition under if condition type field
    Then user should be able to view option to enter value for multiple conditions
    Examples:
      | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum |
      | assignment_matrix.xlsx | assignment_matrix_details | 0                       |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5816:  Validate If Value Type field under If Conditions type selects <Type> in step 1
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    And user search the assignment matrix column name
    And user clicks on New Assignment Matrix option
    And user fills assignment matrix mandatory fields
    And user clicks on Add Assignment Set Grid to create assignment set
    And user fill assignment matrix set of object graph type
    And user selects "<Type>" option under if value type field
    Then user should be able to select "<Type>" in the expression grid for expression parameter
    Examples:
      | Type              | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum |
      | Field             | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Object Graph Type | assignment_matrix.xlsx | assignment_matrix_details | 0                       |

  @PotentialBug
    @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5817:  Validate Action field under If Conditions type selects <Type> in step 1
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    And user search the assignment matrix column name
    And user clicks on New Assignment Matrix option
    And user fills assignment matrix mandatory fields
    And user clicks on Add Assignment Set Grid to create assignment set
    And user fill assignment matrix set of object graph type
    And user selects "<Type>" option under Action field
    Then user should be able to enter "<Type>" in the expression grid for action parameter
    Examples:
      | Type              | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum |
      | Field             | assignment_matrix.xlsx | assignment_matrix_details | 0                       |
      | Object Graph Type | assignment_matrix.xlsx | assignment_matrix_details | 0                       |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5833:  Create multiple expression in Step 2 in assignment set
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    When user search the assignment matrix column name
    And user create the assignment matrix
    And user clicks on Add Assignment Set Grid to create assignment set
    Then user should be able to add another grid expression
    Examples:
      | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum |
      | assignment_matrix.xlsx | assignment_matrix_details | 0                       |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5834:  Edit Assignment Set to add new grid expression in Step 2
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    When user search the assignment matrix column name
    And user create the assignment matrix
    And user opens an existing assignment set in edit mode
    And user enters mandatory details of grid expression result
    Then user should be able to edit the assignment set by successfully adding another assignment set
    Examples:
      | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum |
      | assignment_matrix.xlsx | assignment_matrix_details | 0                       |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5835:  Create multiple assignment set
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    When user search the assignment matrix column name
    And user create the assignment matrix
    Then user should be able to add another assignment set successfully
    Examples:
      | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum |
      | assignment_matrix.xlsx | assignment_matrix_details | 0                       |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-5836:  Edit Assignment Matrix to add new assignment set
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix>" and row <AssignmentMatrix_rowNum>
    When user search the assignment matrix column name
    And user create the assignment matrix
    And user clicks on Add Assignment Set Grid to create assignment set
    And user fill assignment matrix set of object graph type
    And user enters mandatory details of grid expression result
    And user enters assignment set details
    Then user should be able to add another assignment set successfully
    Examples:
      | AssignmentMatrixWB     | AssignmentMatrix          | AssignmentMatrix_rowNum |
      | assignment_matrix.xlsx | assignment_matrix_details | 0                       |

  @ImplementedBy-richa.singh
  @Release3
  Scenario Outline: ACAUTOCAS-5818:  Perform various actions on created record in Assignment Matrix master
    And user clicks on New Assignment Matrix option
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix_assignmentMatrixDetails>" and row <AssignmentMatrix_assignmentMatrixDetails_rowNum>
    When user has entered all mandatory inputs of Assignment Matrix
    And user clicks on "<Action>" button of Assignment Matrix
    Then user should be able to "<Action>" successfully
    Examples:
      | Action                  | AssignmentMatrixWB     | AssignmentMatrix_assignmentMatrixDetails | AssignmentMatrix_assignmentMatrixDetails_rowNum |
      | Cancel                  | assignment_matrix.xlsx | assignment_matrix_details                | 3                                               |
      | Save                    | assignment_matrix.xlsx | assignment_matrix_details                | 3                                               |
      | Save & Request Approval | assignment_matrix.xlsx | assignment_matrix_details                | 3                                               |

  @ImplementedBy-richa.singh
  @Release3
  Scenario Outline: ACAUTOCAS-5820:  Cancel record in Assignment Matrix master
    And user clicks on New Assignment Matrix option
    And user reads data from the excel file "<AssignmentMatrixWB>" under sheet "<AssignmentMatrix_assignmentMatrixDetails>" and row <AssignmentMatrix_assignmentMatrixDetails_rowNum>
    When user has entered all mandatory inputs of Assignment Matrix
    And user clicks on cancel button of Assignment Matrix
    Then user should be shown "<message>" with Ok and Close button of Assignment Matrix
    Examples:
      | message                                                                          | AssignmentMatrixWB     | AssignmentMatrix_assignmentMatrixDetails | AssignmentMatrix_assignmentMatrixDetails_rowNum |
      | Unsaved data will be lost . Press Ok if saved already or Close to save the data. | assignment_matrix.xlsx | assignment_matrix_details                | 1                                               |

  #FeatureID-ACAUTOCAS-4876
  @NotImplemented
  Scenario Outline: ACAUTOCAS-5819:  Validate maker Checker validation in Assignment Matrix master
    And user is on Assignment Matrix master to approve record
    When user has "<Action>" that record
    Then user should be "<Output>" to "<Action>" the record successfully
    Examples:
      | Action      | Output      | Action    |
      | Created     | Not Allowed | Approve   |
      | Not Created | Allowed     | Approve   |
      | Created     | Not Allowed | Reject    |
      | Not Created | Allowed     | Reject    |
      | Created     | Not Allowed | Send Back |
      | Not Created | Allowed     | Send Back |

 #FeatureID-ACAUTOCAS-4876
  @NotImplemented
  Scenario: ACAUTOCAS-5824:  Upload Assignment Matrix
    And user navigates to Assignment Matrix master
    When user clicks on upload assignment matrix option
    Then user should be able to view upload assignment matrix screen with option to browse file to be uploaded

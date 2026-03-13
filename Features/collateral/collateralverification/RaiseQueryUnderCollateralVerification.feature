@Epic-Collateral_Investigation
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@ImplementedBy-
@new

Feature:Raise Query in collateral investigation verification

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

#FeatureID-ACAUTOCAS-788
  Scenario Outline:Raise <NoOfQuery> query to <UserOrTeam> in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    And user fills all required fields to raise query
    When raise "<NoOfQuery>" query to <UserOrTeam> in collateral investigation verification
    Then "<NoOfQuery>" query should be raised in collateral investigation verification
    Examples:
      | VerificationType   | NoOfQuery | UserOrTeam |
      | Legal Verification | single    | user       |
      | Valuation          | multiple  | user       |
      | Legal Verification | single    | team       |
      | Valuation          | multiple  | team       |

#FeatureID-ACAUTOCAS-788
  Scenario Outline:Unquery the raised query in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    And user raise multiple query
    When user unquery the raise query
    Then raised query should be unquery successfully
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |

#FeatureID-ACAUTOCAS-788
  Scenario Outline:Reassign the raised query in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    And user raise multiple query
    When user reassign the raise query
    Then raised query should be reassigned successfully
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |

#FeatureID-ACAUTOCAS-788
  Scenario Outline:Unquery the multiple raised query in bulk under collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    And user raise multiple query
    When user unquery the multiple raise query in bulk
    Then raised query should be unquery successfully in bulk
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |

#FeatureID-ACAUTOCAS-788
  Scenario Outline:Reassign the multiple raised query in bulk under collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    And user raise multiple query
    When user reassign the multiple raise query in bulk
    Then raised query should be reassigned successfully in bulk
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |

#FeatureID-ACAUTOCAS-788
  Scenario Outline:User can not <Actions> the multiple query in bulk once it <Action> in bulk under collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    When user raise multiple query
    And user "<Actions>" the multiple raise query in bulk
    Then unquery should not be "<Action>" in bulk
    Examples:
      | VerificationType   | Action   | Actions  |
      | Legal Verification | reassign | unquery  |
      | Valuation          | unquery  | reassign |
      | Legal Verification | reassign | unquery  |
      | Valuation          | unquery  | reassign |

#FeatureID-ACAUTOCAS-788
  Scenario Outline:Reassign the already raised query to the new <TeamOrUser> in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    And user raises a new query via menu search
    When user fills mandatory fields for reassign the query
    Then query should be reassigned successfully
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |

#FeatureID-ACAUTOCAS-788
  Scenario Outline:Assigning more than one query with same Query code to the same <TeamOrUser> is not possible in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    When user assigns more than one query with same Query code to the same "<TeamOrUser>"
    Then query should not be raise with a message as Query already raised to user Query already raised to user
    Examples:
      | VerificationType   | TeamOrUser |
      | Legal Verification | team       |
      | Valuation          | team       |
      | Legal Verification | user       |
      | Valuation          | user       |

#Validate history with data
  #FeatureID-ACAUTOCAS-788
  Scenario Outline:Query history records of raise query once query is raised in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    When user checks query history records with help of query code
    Then query history records display successfully with below fields
      | Field         |
      | Query Code    |
      | Query Name    |
      | Raise To Team |
      | Raised On     |
      | Status        |
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |

#FeatureID-ACAUTOCAS-788
  Scenario Outline:Select the documents to raise query in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    When user selects documents
    Then name of the selected documents will appear in the Documents field
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |

#FeatureID-ACAUTOCAS-788
  Scenario Outline:Select the document that needs to be uploaded in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    When user choose documents
    Then documents uploaded successfully
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |

#FeatureID-ACAUTOCAS-788
  Scenario Outline:Select the multiple documents that needs to be uploaded in raise query under collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    When user choose "<NoOfDocuments>" documents
    Then "<NoOfDocuments>" documents uploaded successfully
    Examples:
      | VerificationType   | NoOfDocuments |
      | Legal Verification | single        |
      | Valuation          | multiple      |
      | Legal Verification | single        |
      | Valuation          | multiple      |

#FeatureID-ACAUTOCAS-788
  Scenario Outline:user should not assign query to himself in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    When user assigns the query to itself with filling mandatory fields
    Then user should not able to assign query to himself
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |
#FeatureID-ACAUTOCAS-788
  Scenario Outline:User can not <Action> the query once it unquery in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    When user raise query
    And user wants to "<Action>" the query
    Then unquery should not be "<Action>"
    Examples:
      | VerificationType   | Action   |
      | Legal Verification | reassign |
      | Valuation          | unquery  |
      | Legal Verification | reassign |
      | Valuation          | unquery  |

#FeatureID-ACAUTOCAS-788
  Scenario Outline:Reassign the multiple raised query in bulk to the new <TeamOrUser> in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    And user raise multiple query
    When user fills mandatory fields for reassign the multiple query in bulk to "<TeamOrUser>"
    Then multiple query should be reassigned successfully in bulk
    Examples:
      | VerificationType   | TeamOrUser |
      | Legal Verification | user       |
      | Valuation          | team       |
      | Legal Verification | user       |
      | Valuation          | team       |

    #FeatureID-ACAUTOCAS-788
  Scenario Outline:Cancel the raising query process in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    When user cancel the raising query process
    Then raising query process should be cancel
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |


#Check the history after reassign the quey and Unquery
  #FeatureID-ACAUTOCAS-788
  Scenario Outline:Query history records after reassign the query in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    When user raise query
    And user reassign the raised query
    And user checks query history records
    Then reassign history of the query should be present in query history records
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |

#FeatureID-ACAUTOCAS-788
  Scenario Outline:Query history records after Unquery the query in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    When user raise query
    And user unquery the raised query
    And user checks query history records
    Then unquery history of the query should be present in query history records
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |

#FeatureID-ACAUTOCAS-788
  Scenario Outline:Validation of <Field> field which should <FieldNature> in raise query under collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    When user clicks on Raise Query button
    Then the following fields with their nature should be present
      | Field      | Nature        |
      | Query Code | mandatory     |
      | Query Name | mandatory     |
      | Query      | mandatory     |
      | Stage      | non mandatory |
      | Documents  | non mandatory |
      | Documents  | non editable  |
      | Query Name | non editable  |
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |

  #FeatureID-ACAUTOCAS-788
  Scenario Outline:TAT Hold in raise query under collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    When user raise query with TAT Hold
    Then TAT Hold should be marked as YES in query grid
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |

#FeatureID-ACAUTOCAS-788
  Scenario Outline:Field type validation of <Field> field which should <FieldNature> in raise query under collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    When user clicks on Raise Query button
    Then field type of "<Field>" should be "<FieldNature>" field in raise query
    Examples:
      | VerificationType   | Field         | FieldNature    |
      | Legal Verification | Query Code    | list of values |
      | Legal Verification | Query Name    | input          |
      | Legal Verification | Query         | textarea       |
      | Legal Verification | Stage         | dropdown       |
      | Legal Verification | TAT Hold      | checkbox       |
      | Legal Verification | Documents     | list of values |
      | Legal Verification | Raise To Team | list of values |
      | Legal Verification | Raise To User | list of values |
      | Valuation          | Query Code    | list of values |
      | Valuation          | Query Name    | input          |
      | Valuation          | Query         | textarea       |
      | Valuation          | Stage         | dropdown       |
      | Valuation          | TAT Hold      | checkbox       |
      | Valuation          | Documents     | list of values |
      | Valuation          | Raise To Team | list of values |
      | Valuation          | Raise To User | list of values |


#FeatureID-ACAUTOCAS-788
  Scenario Outline:Search <Rejected_Canceled> application for raising query in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    When user search "<Rejected_Canceled>" application for raising query
    Then This is not an active application message should be display
    Examples:
      | VerificationType   | Rejected_Canceled |
      | Legal Verification | rejected          |
      | Valuation          | rejected          |
      | Legal Verification | application       |
      | Valuation          | application       |



#FeatureID-ACAUTOCAS-788
  Scenario Outline:Raise query grid validation with <Field> field in raise query page under collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    When user raise a query
    Then raise query should be display in grid with filled below fields
      | Field             |
      | Query Code        |
      | Query Name        |
      | TAT               |
      | Original Assignee |
      | Raise To Team     |
      | Raise To User     |
      | Raised On         |
      | Query Status      |
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |
#FeatureID-ACAUTOCAS-788
  Scenario Outline:Show the "<NumberOfRows>" rows of raised query in raise query grid under collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    And user raise multiple queries
    When user selects "<NumberOfRows>" number of rows to show raised query
    Then selected "<NumberOfRows>" rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | VerificationType   | NumberOfRows | Display                                 | More_Less |
      | Legal Verification | 10           | display                                 | more      |
      | Legal Verification | 25           | display                                 | more      |
      | Legal Verification | 10           | not display only available rows display | less      |
      | Legal Verification | 25           | not display only available rows display | less      |
      | Valuation          | 10           | display                                 | more      |
      | Valuation          | 25           | display                                 | more      |
      | Valuation          | 10           | not display only available rows display | less      |
      | Valuation          | 25           | not display only available rows display | less      |


#need correction
#FeatureID-ACAUTOCAS-788
  Scenario Outline:Validation of pagination in raise query grid under collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    And user raise multiple queries
    When "<Page>" page of raise query grid is open
    Then "<Paginate_Btn>" should be "<Disable_Enable>"
    Examples:
      | VerificationType   | Page  | Paginate_Btn             | Disable_Enable |
      | Legal Verification | first | paginate_button previous | disable        |
      | Legal Verification | first | paginate_button next     | enable         |
      | Legal Verification | last  | paginate_button previous | enable         |
      | Legal Verification | last  | paginate_button next     | disable        |
      | Valuation          | first | paginate_button previous | disable        |
      | Valuation          | first | paginate_button next     | enable         |
      | Valuation          | last  | paginate_button previous | enable         |
      | Valuation          | last  | paginate_button next     | disable        |

#FeatureID-ACAUTOCAS-788
  Scenario Outline:Validating all Pagination in raise query under collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    And user raise multiple queries
    When "<Page>" page of raise query grid is open
    Then "<Paginate_Btn>" should work successfully
    Examples:
      | VerificationType   | Page  | Paginate_Btn             |
      | Legal Verification | first | paginate_button next     |
      | Legal Verification | first | paginate_button last     |
      | Legal Verification | last  | paginate_button first    |
      | Legal Verification | last  | paginate_button previous |
      | Valuation          | first | paginate_button next     |
      | Valuation          | first | paginate_button last     |
      | Valuation          | last  | paginate_button first    |
      | Valuation          | last  | paginate_button previous |


#sort the details in ascending order based on Field
  #FeatureID-ACAUTOCAS-788
  Scenario Outline:Sorting raised query details in ascending order by <Field> column in raise query under collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    And user raise multiple queries
    When user sort the raised query details by <Field> column in ascending order
    Then raise query grid should be sort in ascending order
    Examples:
      | VerificationType   | Field             |
      | Legal Verification | Query Code        |
      | Legal Verification | Query Name        |
      | Legal Verification | TAT               |
      | Legal Verification | Original Assignee |
      | Legal Verification | Raise To Team     |
      | Legal Verification | Raise To User     |
      | Legal Verification | Raised On         |
      | Legal Verification | Query Status      |
      | Valuation          | Query Code        |
      | Valuation          | Query Name        |
      | Valuation          | TAT               |
      | Valuation          | Original Assignee |
      | Valuation          | Raise To Team     |
      | Valuation          | Raise To User     |
      | Valuation          | Raised On         |
      | Valuation          | Query Status      |

#FeatureID-ACAUTOCAS-788
  Scenario Outline:Sorting raised query details in descending order by <Field> column in raise query under collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    And user raise multiple queries
    When user sort the raised query details by <Field> column in descending order
    Then raise query grid should be sort in descending order
    Examples:
      | VerificationType   | Field             |
      | Legal Verification | Query Code        |
      | Legal Verification | Query Name        |
      | Legal Verification | TAT               |
      | Legal Verification | Original Assignee |
      | Legal Verification | Raise To Team     |
      | Legal Verification | Raise To User     |
      | Legal Verification | Raised On         |
      | Legal Verification | Query Status      |
      | Valuation          | Query Code        |
      | Valuation          | Query Name        |
      | Valuation          | TAT               |
      | Valuation          | Original Assignee |
      | Valuation          | Raise To Team     |
      | Valuation          | Raise To User     |
      | Valuation          | Raised On         |
      | Valuation          | Query Status      |
#FeatureID-ACAUTOCAS-788
  Scenario Outline:Search raised query by <Field> in raise query under collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    And user search the application id of the application for which a query needs to be raise
    And user raise multiple queries
    When user search the raised query details by <Field>
    Then searched raised query details should be display in raise query grid
    Examples:
      | VerificationType   | Field      |
      | Legal Verification | Query Code |
      | Legal Verification | Query Name |
      | Valuation          | Query Code |
      | Valuation          | Query Name |

#Close minimize history
  #FeatureID-ACAUTOCAS-785
  Scenario Outline:Close the Query History Records in raise query under collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    And user raise a query
    And user open raised Query History Records
    When user close the Query History Records
    Then Query History Records should be closed
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |
#FeatureID-ACAUTOCAS-785
  Scenario Outline:Minimize the Query History Records in raise query under collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    And user raise a query
    And user open raised Query History Records
    When user minimize the Query History Records in raise query
    Then Query History Records in raise query should be minimized
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |
#FeatureID-ACAUTOCAS-785
  Scenario Outline:Maximize the minimized Query History Records in raise query under collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    And user raise a query
    And user open raised Query History Records
    When user maximize the minimized Query History Records in raise query
    Then Query History Records should be maximized
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |

#    Add scenarios for Inactive users and Teams would not be displayed
  #FeatureID-ACAUTOCAS-788
  Scenario Outline:Raise query to the inactive user in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Raise Query button
    And user fills all required fields to raise query
    When raise query to the inactive user in collateral investigation verification
    Then query should not be raised to inactive user as not found that user
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |
#
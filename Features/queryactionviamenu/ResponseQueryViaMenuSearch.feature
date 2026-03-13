@Epic-Query_Module
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@ReviewedByDEV

#FeatureID-ACAUTOCAS-794
Feature: Response query via menu search

  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-2009:Application search for response query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens response query page
    And user reads data from the excel file "<ResponseQueryWB>" under sheet "<ResponseQuery_sheet>" and row <ResponseQuery_rowNum>
    When user search the application id of the application for which a query needs to be response
    Then a grid at the bottom of the response query page displays all the pending queries that are associated with the application
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ResponseQueryWB     | ResponseQuery_sheet | ResponseQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 1         | response_query.xlsx | home                | 1                    |


  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline:  ACAUTOCAS-2010:Response query page with <Fields>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens response query page
    Then application ID of the all application for which a query needs to be response are visible with "<Fields>"
    Examples:
      | SourceDataFile       | SheetName | RowNumber | Fields          |
      | LoginDetailsCAS.xlsx | LoginData | 1         | Customer Name   |
      | LoginDetailsCAS.xlsx | LoginData | 1         | Product Type    |
      | LoginDetailsCAS.xlsx | LoginData | 1         | Scheme          |
      | LoginDetailsCAS.xlsx | LoginData | 1         | Pending Queries |

  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline:  ACAUTOCAS-2011:Matching "<Fields>" with application in response query page
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens response query page
    And user reads data from the excel file "<ResponseQueryWB>" under sheet "<ResponseQuery_sheet>" and row <ResponseQuery_rowNum>
    When when user enters the application id
    Then "<Fields>" should be matched with the application according to the application number

    Examples:
      | SourceDataFile       | SheetName | RowNumber | Fields        | ResponseQueryWB     | ResponseQuery_sheet | ResponseQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Customer Name | response_query.xlsx | home                | 1                    |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Product Type  | response_query.xlsx | home                | 1                    |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Scheme        | response_query.xlsx | home                | 1                    |


  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline:ACAUTOCAS-2012: Pending query at response query page
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens response query page
    And user reads data from the excel file "<ResponseQueryWB>" under sheet "<ResponseQuery_sheet>" and row <ResponseQuery_rowNum>
    When when user enters the application id
    Then number of pending query at reassign query page should matched with number of raised query according to the application number
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ResponseQueryWB     | ResponseQuery_sheet | ResponseQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 7         | response_query.xlsx | home                | 1                    |


  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-2015:  Forward the raised query to the another <TeamOrUser> for response
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens response query page
    And user reads data from the excel file "<ResponseQueryWB>" under sheet "<ResponseQuery_sheet>" and row <ResponseQuery_rowNum>
    And user search the application id of the application for which a query needs to be response
    When user fills mandatory fields to reassign the multiple query in bulk
    Then raised query should be unquery successfully
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ResponseQueryWB     | ResponseQuery_sheet | ResponseQuery_rowNum | TeamOrUser |
      | LoginDetailsCAS.xlsx | LoginData | 1         | response_query.xlsx | home                | 0                    | team       |
      | LoginDetailsCAS.xlsx | LoginData | 1         | response_query.xlsx | home                | 0                    | user       |


  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-2016:  Query history records of respond query for logged in user
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens response query page
    And user reads data from the excel file "<ResponseQueryWB>" under sheet "<ResponseQuery_sheet>" and row <ResponseQuery_rowNum>
    And user search the application id of the application for which a query needs to be response
    When user checks response query history records
    Then query history records of response display successfully
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ResponseQueryWB     | ResponseQuery_sheet | ResponseQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 1         | response_query.xlsx | home                | 0                    |


  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-2017:Select the documents to response query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens response query page
    And user reads data from the excel file "<ResponseQueryWB>" under sheet "<ResponseQuery_sheet>" and row <ResponseQuery_rowNum>
    When user search the application id of the application for which a query needs to be response
    Then name of selected documents will appear in the selected Documents field
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ResponseQueryWB     | ResponseQuery_sheet | ResponseQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 1         | response_query.xlsx | home                | 0                    |


  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-2018: Select the documents that needs to be uploaded
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens response query page
    And user reads data from the excel file "<ResponseQueryWB>" under sheet "<ResponseQuery_sheet>" and row <ResponseQuery_rowNum>
    And user search the application id of the application for which a query needs to be response
    When user choose documents for reassign the query
    Then documents uploaded successfully
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ResponseQueryWB     | ResponseQuery_sheet | ResponseQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 1         | response_query.xlsx | home                | 0                    |


  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-2019:Selects the multiple documents that needs to be uploaded
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens response query page
    And user reads data from the excel file "<ResponseQueryWB>" under sheet "<ResponseQuery_sheet>" and row <ResponseQuery_rowNum>
    And user search the application id of the application for which a query needs to be response
    Then "<NoOfDocuments>" documents uploaded successfully
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ResponseQueryWB     | ResponseQuery_sheet | ResponseQuery_rowNum | NoOfDocuments |
      | LoginDetailsCAS.xlsx | LoginData | 1         | response_query.xlsx | home                | 0                    |               |

  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-2013:  Response raised query by filling <Field> fields
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens response query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be response
    When user response the query with "<Field>"
    Then raised query should be unquery successfully
    Examples:
      | SourceDataFile       | SheetName | RowNumber | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum | Field     |
      | LoginDetailsCAS.xlsx | LoginData | 1         | RaiseQueryWB.xlx | raiseQuery_sheet | 1                 | mandatory |
      | LoginDetailsCAS.xlsx | LoginData | 1         | RaiseQueryWB.xlx | raiseQuery_sheet | 1                 | all       |

  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-2014:  Response query page after response
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens response query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be response
    When user response the query
    Then responded query should not be display on response query page
    Examples:
      | SourceDataFile       | SheetName | RowNumber | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 1         | RaiseQueryWB.xlx | raiseQuery_sheet | 1                 |


  Scenario Outline: ACAUTOCAS-10136: Cancel the response query process
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open raise query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application id of the application for which a query needs to be raised
    And user cancel the response query process
    Then response query process should be cancel
    Examples:
      | SourceDataFile       | SheetName | RowNumber | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |

  Scenario Outline: ACAUTOCAS-10137: Responsed to the raised query without filling Response
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open response query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be response
    And user fill all fields except "<Field>" field to response query
    When user responsed to the raised query without filling Response
    Then query did not responded with an error message
    Examples:
      | Field    | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      | Response |                |           |           |              |                  |                   |

  Scenario Outline: ACAUTOCAS-10138:  <Field_Name> field validation with <Characters> characters in response query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open response query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be response
    And user fills "<Field_Name>" field with "<Characters>" characters in response query
    Then "<Left_Characters>" characters should be remaining to fill in "<Field_Name>" field of response query
    Examples:
      | Field_Name | Characters | Left_Characters | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      | Response   | 500        | 500             |                |           |           |              |                  |                   |
      | Response   | 700        | 300             |                |           |           |              |                  |                   |
      | Response   | 1000       | 0               |                |           |           |              |                  |                   |

  Scenario Outline: ACAUTOCAS-10139: Required <Field> field validation in response query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open response query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be response
    When user clicks on Required to check required fields
    Then Required "<Field>" field should be present in required field of response query page
    Examples:
      | Field         | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      | Query Code    |                |           |           |              |                  |                   |
      | Query Name    |                |           |           |              |                  |                   |
      | Query         |                |           |           |              |                  |                   |
      | Raise To Team |                |           |           |              |                  |                   |
      | Raise To User |                |           |           |              |                  |                   |

  Scenario Outline: ACAUTOCAS-10140: <Field> field validation in all fields validation in response query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open response query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be response
    When user clicks on All Fields to check all fields
    Then "<Field>" field should be present in All Fields of response query page
    Examples:
      | Field         | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      | Query Code    |                |           |           |              |                  |                   |
      | Query Name    |                |           |           |              |                  |                   |
      | Query         |                |           |           |              |                  |                   |
      | Stage         |                |           |           |              |                  |                   |
      | TAT Hold      |                |           |           |              |                  |                   |
      | Documents     |                |           |           |              |                  |                   |
      | Raise To Team |                |           |           |              |                  |                   |
      | Raise To User |                |           |           |              |                  |                   |
      | Choose File   |                |           |           |              |                  |                   |


  Scenario Outline: ACAUTOCAS-10141: Show the "<NumberOfRows>" rows of re query in response query grid
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open response query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise multiple queries
    When user selects "<NumberOfRows>" number of rows to show raised query
    Then selected "<NumberOfRows>" rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less |
      | 10           | display                                 | more      |
      | 25           | display                                 | more      |
      | 50           | display                                 | more      |
      | 100          | display                                 | more      |
      | 10           | not display only available rows display | less      |
      | 25           | not display only available rows display | less      |
      | 50           | not display only available rows display | less      |
      | 100          | not display only available rows display | less      |

#need correction

  Scenario Outline: ACAUTOCAS-10142: Validation of pagination in response query grid
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open response query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise multiple queries
    When "<Page>" page of response query grid is open
    Then "<Paginate_Btn>" should be "<Disable_Enable>"
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable |
      | first | paginate_button previous | disable        |
      | first | paginate_button next     | enable         |
      | last  | paginate_button previous | enable         |
      | last  | paginate_button next     | disable        |

#need correction

  Scenario Outline: ACAUTOCAS-10143: Validating all Pagination in response query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open response query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise multiple queries
    When "<Page>" page of response query grid is open
    Then "<Paginate_Btn>" should work successfully
    Examples:
      | Page  | Paginate_Btn             |
      | first | paginate_button next     |
      | first | paginate_button last     |
      | last  | paginate_button first    |
      | last  | paginate_button previous |


#sort the details in ascending order based on Field
  Scenario Outline: ACAUTOCAS-10144: Sorting raised query details in ascending order by <Field> column in response query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open response query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise multiple queries
    When user sort the raised query details by <Field> column in ascending order
    Then response query grid should be sort in ascending order
    Examples:
      | Field             |
      | Query Code        |
      | Query Name        |
      | TAT               |
      | Original Assignee |
      | Raise To Team     |
      | Raise To User     |
      | Raised On         |
      | Query Status      |


  Scenario Outline: ACAUTOCAS-10145: Sorting raised query details in descending order by <Field> column in response query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open response query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise multiple queries
    When user sort the raised query details by <Field> column in descending order
    Then response query grid should be sort in descending order
    Examples:
      | Field             |
      | Query Code        |
      | Query Name        |
      | TAT               |
      | Original Assignee |
      | Raise To Team     |
      | Raise To User     |
      | Raised On         |
      | Query Status      |


#
#pagination
#  Close minimize history
  #FeatureID-ACAUTOCAS-792
  Scenario Outline: ACAUTOCAS-10146: Close the Query History Records in response query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open response query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise a query
    And user open raised Query History Records
    And user close the Query History Records
    Then Query History Records should be closed
    Examples:
      | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      |                |           |           |              |                  |                   |
#FeatureID-ACAUTOCAS-792
  Scenario Outline: ACAUTOCAS-10147: Minimize the Query History Records in response query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open response query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise a query
    And user open raised Query History Records
    And user minimize the Query History Records in response query
    Then Query History Records in response query should be minimized
    Examples:
      | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      |                |           |           |              |                  |                   |
#FeatureID-ACAUTOCAS-792
  Scenario Outline: ACAUTOCAS-10148: Maximize the minimized Query History Records in response query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open response query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise a query
    And user open raised Query History Records
    And user maximize the minimized Query History Records in response query
    Then Query History Records should be maximized
    Examples:
      | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      |                |           |           |              |                  |                   |

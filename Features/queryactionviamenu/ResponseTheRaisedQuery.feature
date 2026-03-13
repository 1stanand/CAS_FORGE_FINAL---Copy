@Epic-Query_Module
@Reviewedby_Shailja
@AuthoredBy-vipin.kishor
#FeatureID-ACAUTOCAS-794
Feature: Respond the raised query via menu search



  Scenario Outline:  ACAUTOCAS-2020:Responding the raised query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open raise query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise the query
    And the user who has assigned the query logged in CAS with valid username and password
    And another user open response query page
    And search the application for response on which queries are assigned to the logged in user or its team
    When another user responds to the query
    Then query should be responded successfully
    Examples:
      | SourceDataFile       | SheetName | RowNumber | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 1         | RaiseQueryWB.xlx | raiseQuery_sheet | 1                 |

  @AuthorBy_VipinKishor

  Scenario Outline: ACAUTOCAS-2021: Responding the raised query with <Field>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open raise query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise the query with "<Field>"
    And the user who has assigned the query logged in CAS with valid username and password
    And another user open response query page
    And search the application for response on which queries are assigned to the logged in user or its team
    When another user responds to the query with "<Field>"
    Then query should be responded successfully
    Examples:
      | SourceDataFile       | SheetName | RowNumber | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum | Field     |
      | LoginDetailsCAS.xlsx | LoginData | 1         | RaiseQueryWB.xlx | raiseQuery_sheet | 1                 | mandatory |
      | LoginDetailsCAS.xlsx | LoginData | 1         | RaiseQueryWB.xlx | raiseQuery_sheet | 1                 | all       |

  @AuthorBy_VipinKishor

  Scenario Outline: Response query page for which a query needs to be response
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open raise query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise query by filling mandatory fields
    And the user who has assigned the query logged in CAS with valid username and password
    When user open response query page
    Then application id of the all application for which a query needs to be response are visible
    Examples:
      | SourceDataFile       | SheetName | RowNumber | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 1         | RaiseQueryWB.xlx | raiseQuery_sheet | 1                 |

  @AuthorBy_VipinKishor

  Scenario Outline: ACAUTOCAS-2023: Forward the raised query to the new <TeamOrUser> for response
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open raise query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise query by filling mandatory fields
    And the user who has assigned the query logged in CAS with valid username and password
    And another user open response query page
    And search the application for response on which queries are assigned to the logged in user or its team
    And another user fills mandatory fields for forward the query
    When another user forward the raised query to the new <UserOrTeam> for response
    Then query should be forward successfully

    Examples:
      | SourceDataFile       | SheetName | RowNumber | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum | UserOrTeam |
      | LoginDetailsCAS.xlsx | LoginData | 1         | RaiseQueryWB.xlx | raiseQuery_sheet | 1                 | team       |
      | LoginDetailsCAS.xlsx | LoginData | 1         | RaiseQueryWB.xlx | raiseQuery_sheet | 1                 | user       |

  @AuthorBy_VipinKishor
  Scenario Outline: ACAUTOCAS-2024: Forward the forwarded query to the new <TeamOrUser> for response
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open raise query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise query by filling mandatory fields
    And the user who has assigned the query logged in CAS with valid username and password
    And another user open response query page
    And search the application for response on which queries are assigned to the logged in user or its team
    And another user fills mandatory fields for forward the query
    And the user who has assigned the query logged in CAS with valid username and password
    And another user open response query page
    And search the application for response on which queries are assigned to the logged in user or its team
    When another user forward the forwarded query to the new <UserOrTeam> for response
    Then query should be forward successfully
    Examples:
      | SourceDataFile       | SheetName | RowNumber | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum | UserOrTeam |
      | LoginDetailsCAS.xlsx | LoginData | 1         | RaiseQueryWB.xlx | raiseQuery_sheet | 1                 | team       |
      | LoginDetailsCAS.xlsx | LoginData | 1         | RaiseQueryWB.xlx | raiseQuery_sheet | 1                 | user       |


  @AuthorBy_VipinKishor
  Scenario Outline: ACAUTOCAS-2025: Check the responded query on response query page
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open raise query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise query by filling mandatory fields
    And the user who has assigned the query logged in CAS with valid username and password
    And another user open response query page
    And search the application for response on which queries are assigned to the logged in user or its team
    When another user response the query
    Then responded query should not be display on response query page
    Examples:
      | SourceDataFile       | SheetName | RowNumber | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 1         | RaiseQueryWB.xlx | raiseQuery_sheet | 1                 |

  @AuthorBy_VipinKishor
  Scenario Outline: ACAUTOCAS-2026:  Forward the raised query to the another user with <Field>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open raise query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise query by filling mandatory fields
    And the user who has assigned the query logged in CAS with valid username and password
    And another user open response query page
    And search the application for response on which queries are assigned to the logged in user or its team
    When another user forward the query with "<Field>" to his team on which queries are assigned for response
    Then forward query should not be visible in response query page of that user who forward the query
    Examples:
      | SourceDataFile       | SheetName | RowNumber | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum | Field     |
      | LoginDetailsCAS.xlsx | LoginData | 1         | RaiseQueryWB.xlx | raiseQuery_sheet | 1                 | mandatory |
      | LoginDetailsCAS.xlsx | LoginData | 1         | RaiseQueryWB.xlx | raiseQuery_sheet | 1                 | all       |


  Scenario Outline: Pending queries at response query page
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open raise query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise query by filling mandatory fields
    And the user who has assigned the query logged in CAS with valid username and password
    When user open response query page
    Then number of pending query at response query page should matched with number of raised query according to the application number
    Examples:
      | SourceDataFile       | SheetName | RowNumber | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 1         | RaiseQueryWB.xlx | raiseQuery_sheet | 1                 |


  Scenario Outline: ACAUTOCAS-2022: Response query page for which a query needs to be response
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open raise query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise query by filling mandatory fields
    And the user who has assigned the query logged in CAS with valid username and password
    When user open response query page
    Then application id of the all application for which a query needs to be response are visible
    Examples:
      | SourceDataFile       | SheetName | RowNumber | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 1         | RaiseQueryWB.xlx | raiseQuery_sheet | 1                 |


  Scenario Outline: ACAUTOCAS-2027: Pending queries at response query page
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open raise query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise query by filling mandatory fields
    And the user who has assigned the query logged in CAS with valid username and password
    When user open response query page
    Then number of pending query at response query page should matched with number of raised query according to the application number
    Examples:
      | SourceDataFile       | SheetName | RowNumber | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 1         | RaiseQueryWB.xlx | raiseQuery_sheet | 1                 |



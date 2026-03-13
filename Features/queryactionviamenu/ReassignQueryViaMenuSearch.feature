@Epic-Query_Module
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@ReviewedByDEV
#FeatureID-ACAUTOCAS-787
Feature: Reassign Query via menu search

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline: ACAUTOCAS-1999:Application search for reassign the raised query for <Field>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens reassign query page
    And user reads data from the excel file "<ReassignQueryWB>" under sheet "<ReassignQuery_sheet>" and row <ReassignQuery_rowNum>
    When user search the application id of the application for which a query needs to be reassign
    Then "<Field>" of applicant should be displayed in view mode
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ReassignQueryWB     | ReassignQuery_sheet | ReassignQuery_rowNum | Field              |
      | LoginDetailsCAS.xlsx | LoginData | 7         | reassign_query.xlsx | home                | 0                    | Application Number |
      | LoginDetailsCAS.xlsx | LoginData | 7         | reassign_query.xlsx | home                | 0                    | Product Type       |
      | LoginDetailsCAS.xlsx | LoginData | 7         | reassign_query.xlsx | home                | 0                    | Product            |
      | LoginDetailsCAS.xlsx | LoginData | 7         | reassign_query.xlsx | home                | 0                    | Pending Queries    |

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline:ACAUTOCAS-2000: Check pending query at reassign query grid
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens reassign query page
    And user reads data from the excel file "<ReassignQueryWB>" under sheet "<ReassignQuery_sheet>" and row <ReassignQuery_rowNum>
    When user search the application id of the application for which a query needs to be reassign
    Then a grid at the bottom of the reassign query page displays all the pending queries that are associated with the application
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ReassignQueryWB     | ReassignQuery_sheet | ReassignQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 1         | reassign_query.xlsx | home                | 0                    |

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline: ACAUTOCAS-2001:Reassign the raised query with <Field> field to the new <TeamOrUser>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens reassign query page
    And user reads data from the excel file "<ReassignQueryWB>" under sheet "<ReassignQuery_sheet>" and row <ReassignQuery_rowNum>
    And user search the application id of the application for which a query needs to be reassign
    When user reassign the query with "<Field>" field
    Then query should be reassigned successfully to "<TeamOrUser>"
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ReassignQueryWB     | ReassignQuery_sheet | ReassignQuery_rowNum | TeamOrUser | Field     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | reassign_query.xlsx | home                | 0                    | user       | all       |
      | LoginDetailsCAS.xlsx | LoginData | 7         | reassign_query.xlsx | home                | 0                    | team       | mandatory |

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline: ACAUTOCAS-2002:  Reassign the raised query to the new <TeamOrUser>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens reassign query page
    And user reads data from the excel file "<ReassignQueryWB>" under sheet "<ReassignQuery_sheet>" and row <ReassignQuery_rowNum>
    And user search the application id of the application for which a query needs to be reassign
    When user reassigns the raised query to "<TeamOrUser>"
    Then query should be reassigned successfully to "<TeamOrUser>"

    Examples:
      | SourceDataFile       | SheetName | RowNumber | ReassignQueryWB     | ReassignQuery_sheet | ReassignQuery_rowNum | TeamOrUser |
      | LoginDetailsCAS.xlsx | LoginData | 7         | reassign_query.xlsx | home                | 0                    | user       |
      | LoginDetailsCAS.xlsx | LoginData | 7         | reassign_query.xlsx | home                | 0                    | team       |

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline:ACAUTOCAS-2002: Reassign the multiple raise query in bulk to the new <TeamOrUser>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens reassign query page
    And user reads data from the excel file "<ReassignQueryWB>" under sheet "<ReassignQuery_sheet>" and row <ReassignQuery_rowNum>
    And user search the application id of the application for which a query needs to be reassign
    When user fills mandatory fields to reassign the multiple query in bulk
    Then multiple query should be reassigned successfully in bulk
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ReassignQueryWB     | ReassignQuery_sheet | ReassignQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 7         | reassign_query.xlsx | home                | 1                    |
      | LoginDetailsCAS.xlsx | LoginData | 7         | reassign_query.xlsx | home                | 1                    |

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline: ACAUTOCAS-2003:Reassign multiple raised query without <TeamOrUser>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open raise query page via menu
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_home>" and row <MoreActions_home_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise multiple query
    When user reassigns multiple query in bulk without "<TeamOrUser>"
    Then multiple query should not be reassigned successfully in bulk

    Examples:
      | SourceDataFile       | SheetName | RowNumber | MoreActionsWB     | MoreActions_home | MoreActions_home_rowNum | TeamOrUser |
      | LoginDetailsCAS.xlsx | LoginData | 7         | more_actions.xlsx | raise_query      | 1                       | user       |
      | LoginDetailsCAS.xlsx | LoginData | 7         | more_actions.xlsx | raise_query      | 1                       | team       |
      | LoginDetailsCAS.xlsx | LoginData | 7         | more_actions.xlsx | raise_query      | 1                       | remarks    |

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline: ACAUTOCAS-2004:  Number of pending query at reassign query page match with number of raised query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens reassign query page
    And user reads data from the excel file "<ReassignQueryWB>" under sheet "<ReassignQuery_sheet>" and row <ReassignQuery_rowNum>
    When user search the application id of the application for which a query needs to be reassign
    Then number of pending query at reassign query page should matched with number of raised query
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ReassignQueryWB     | ReassignQuery_sheet | ReassignQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 7         | reassign_query.xlsx | home                | 1                    |

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline: ACAUTOCAS-2005:Select the documents that needs to be uploaded for reassign the query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens reassign query page
    And user reads data from the excel file "<ReassignQueryWB>" under sheet "<ReassignQuery_sheet>" and row <ReassignQuery_rowNum>
    And user search the application id of the application for which a query needs to be reassign
    When user tries to upload documents
    Then document should not be allowed to upload
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ReassignQueryWB     | ReassignQuery_sheet | ReassignQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 1         | reassign_query.xlsx | home                | 2                    |

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline:  ACAUTOCAS-2007:Select the multiple documents that needs to be uploaded for reassign the query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens reassign query page
    And user reads data from the excel file "<ReassignQueryWB>" under sheet "<ReassignQuery_sheet>" and row <ReassignQuery_rowNum>
    And user search the application id of the application for which a query needs to be reassign
    When user tries to upload multiple documents
    Then document should not be allowed to upload
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ReassignQueryWB     | ReassignQuery_sheet | ReassignQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 1         | reassign_query.xlsx | home                | 2                    |

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline: ACAUTOCAS-2008:  Query history records of reassign query for logged in user
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens reassign query page
    And user reads data from the excel file "<ReassignQueryWB>" under sheet "<ReassignQuery_sheet>" and row <ReassignQuery_rowNum>
    And user search the application id of the application for which a query needs to be reassign
    When user checks reassign query history records
    Then query history records of reassign display successfully
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ReassignQueryWB     | ReassignQuery_sheet | ReassignQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 1         | reassign_query.xlsx | home                | 1                    |

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline: Query history records with query reassigned
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens reassign query page
    And user reads data from the excel file "<ReassignQueryWB>" under sheet "<ReassignQuery_sheet>" and row <ReassignQuery_rowNum>
    And user search the application id of the application for which a query needs to be reassign
    When user checks query history records in reassign query
    Then query history records "<Created_NotCreated>"
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ReassignQueryWB     | ReassignQuery_sheet | ReassignQuery_rowNum | Created_NotCreated |
      | LoginDetailsCAS.xlsx | LoginData | 1         | reassign_query.xlsx | home                | 1                    | created            |

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline: Query history records without query reassigned
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens reassign query page
    And user reads data from the excel file "<ReassignQueryWB>" under sheet "<ReassignQuery_sheet>" and row <ReassignQuery_rowNum>
    And user search the application id of the application for which a query needs to be reassign
    Then query history records "<Created_NotCreated>"
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ReassignQueryWB     | ReassignQuery_sheet | ReassignQuery_rowNum | Created_NotCreated |
      | LoginDetailsCAS.xlsx | LoginData | 1         | reassign_query.xlsx | home                | 1                    | not created        |

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline: ACAUTOCAS-2006: Select the documents that needs to be uploaded for reassign the query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open raise query page via menu
    And user reads data from the excel file "<ReassignQueryWB>" under sheet "<ReassignQuery_sheet>" and row <ReassignQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    When user choose documents for reassign the query
    Then documents uploaded successfully
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ReassignQueryWB     | ReassignQuery_sheet | ReassignQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 1         | reassign_query.xlsx | home                | 0                    |

#FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10109: Dependent field <DependentFields> should be <Expected_Behaviour> based on document selection in reassign query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be reassign
    When user selects documents to reassign the query
    Then Dependent field <DependentFields> should be <Expected_Behaviour> in reassign query
    Examples:
      | DependentFields | Expected_Behaviour | SourceDataFile       | SheetName | RowNumber | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum |
      | Documents       | auto filled        | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |


#FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10111: Reset the reassign query page after searching on the basis of <Search_Field> in reassign query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application on the basis of <Search_Field> for reassign the query
    And user reset the reassign query page
    Then reassign query page should be reset
    Examples:
      | Search_Field       | SourceDataFile       | SheetName | RowNumber | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum |
      | Raise To Team      | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Raise To User      | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Application Number | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Product Type       | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
#FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10112: Cancel the reassign query process
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open raise query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application id of the application for which a query needs to be raised
    And user cancel the reassign query process
    Then reassign query process should be cancel
    Examples:
      | SourceDataFile       | SheetName | RowNumber | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
#FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10113: Searching application on the basis of <Search_Field> for reassign the query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application on the basis of <Search_Field> for reassign the query
    Then "<Field>" of searched application should be displayed in reassign query grid
    Examples:
      | Search_Field       | Field              | SourceDataFile       | SheetName | RowNumber | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum |
      | Raise To Team      | Application Number | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Raise To Team      | Product Type       | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Raise To Team      | Product            | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Raise To Team      | Scheme             | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Raise To Team      | Customer Name      | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Raise To Team      | Pending Queries    | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Raise To User      | Application Number | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Raise To User      | Product Type       | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Raise To User      | Product            | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Raise To User      | Scheme             | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Raise To User      | Customer Name      | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Raise To User      | Pending Queries    | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Application Number | Application Number | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Application Number | Product Type       | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Application Number | Product            | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Application Number | Scheme             | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Application Number | Customer Name      | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Application Number | Pending Queries    | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Product Type       | Application Number | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Product Type       | Product Type       | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Product Type       | Product            | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Product Type       | Scheme             | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Product Type       | Customer Name      | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Product Type       | Pending Queries    | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
#FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10114: <Field> validation in reassign query page  after opening application for reassign the raised query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application for reassign the query
    And user open application
    Then <Field> should be in view mode in reassign query page
    Examples:
      | Field                     | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      | Query Code                |                |           |           |              |                  |                   |
      | Query Name                |                |           |           |              |                  |                   |
      | Query Description         |                |           |           |              |                  |                   |
      | Stage                     |                |           |           |              |                  |                   |
      | TAT Hold                  |                |           |           |              |                  |                   |
      | Selected Documents button |                |           |           |              |                  |                   |
      | Documents                 |                |           |           |              |                  |                   |
      | Raise To Team             |                |           |           |              |                  |                   |
      | Raise To User             |                |           |           |              |                  |                   |
      | Reassign Query button     |                |           |           |              |                  |                   |

#FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10115: <Field> validation in reassign query page after opening application's query for reassign the raised query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application for reassign the query
    And user open application
    And user open an query to reassign
    Then "<Field>" should be "<Expected_Behaviour>" in reassign query page
    Examples:
      | Field                     | Expected_Behaviour | SourceDataFile       | SheetName | RowNumber | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum |
      | Query Code                | non editable       | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Query Name                | non editable       | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Query Description         | non editable       | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Stage                     | non editable       | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | TAT Hold                  | non editable       | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Selected Documents button | non editable       | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Documents                 | non editable       | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Raise To Team             | editable           | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Raise To User             | editable           | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Reassign Query button     | editable           | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
#FeatureID-ACAUTOCAS-787
  Scenario Outline:Reassign query without filling <Field> field
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application for reassign the query
    And user open application
    And user open an query to reassign
    And user fill all fields except "<Field>" field to reassign query
    Then query did not raised with an error message
    Examples:
      | Field                                   | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      | Either Raised To User or Raised To Team |                |           |           |              |                  |                   |
      | Remarks                                 |                |           |           |              |                  |                   |
#FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10116:  <Field_Name> field validation with <Characters> characters in reassign query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application for reassign the query
    And user open application
    And user open an query to reassign
    And user fills "<Field_Name>" field with "<Characters>" characters in reassign query
    Then "<Left_Characters>" characters should be remaining to fill in "<Field_Name>" field of reassign query
    Examples:
      | Field_Name | Characters | Left_Characters | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      | Remarks    | 500        | 500             |                |           |           |              |                  |                   |
      | Remarks    | 700        | 300             |                |           |           |              |                  |                   |
      | Remarks    | 1000       | 0               |                |           |           |              |                  |                   |

#    Bulk Reassign
#FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10117: Bulk Reassign icon validation in reassign query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application for reassign the query
    And user open application
    And user selects query to reassign
    Then Bulk Reassign icon should be display in reassign query
    Examples:
      | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      |                |           |           |              |                  |                   |
#FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10118: Bulk Reassign pop up screen validation in reassign query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application for reassign the query
    And user open application
    And user clicks on bulk reassign icon
    Then Bulk Reassign pop up screen should be populated
    Examples:
      | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      |                |           |           |              |                  |                   |
#FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10119: Close the bulk reassign pop up screen with help of <Button_Icon> in reassign query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application for reassign the query
    And user open application
    And user clicks on bulk reassign icon
    And user close the bulk reassign pop up screen with help of "<Button_Icon>" in reassign query
    Then bulk reassign pop up screen should be closed
    Examples:
      | Button_Icon  | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      | close icon   |                |           |           |              |                  |                   |
      | close button |                |           |           |              |                  |                   |
#FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10120: Minimize the bulk reassign pop up screen in reassign query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application for reassign the query
    And user open application
    And user clicks on bulk reassign icon
    And user minimize the bulk reassign pop up screen in reassign query
    Then bulk reassign pop up screen should be minimized
    Examples:
      | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      |                |           |           |              |                  |                   |
#FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10121: Maximize the minimized bulk reassign pop up screen in reassign query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application for reassign the query
    And user open application
    And user clicks on bulk reassign icon
    And user maximize the minimized bulk reassign pop up screen  in reassign query
    Then bulk reassign pop up screen should be maximized
    Examples:
      | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      |                |           |           |              |                  |                   |
# document should be attached while reassign the query

  Scenario Outline: ACAUTOCAS-10122: Download Raise Document in reassign query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application for reassign the query
    And user open application
    And user download raise document in reassign query
    Then raised document should be download
    Examples:
      | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      |                |           |           |              |                  |                   |
#FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10123: Searching application on the combination of <Search_Field> for reassign the query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application on the basis of <Search_Field> for reassign the query
    Then application should be displayed in reassign query grid
    Examples:
      | Search_Field                                    | SourceDataFile       | SheetName | RowNumber | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum |
      | Raise To Team, Application Number, Product Type | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Raise To Team, Application Number               | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Raise To Team, Product Type                     | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Application Number, Product Type                | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Raise To User, Application Number, Product Type | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Raise To User, Application Number               | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Raise To User, Product Type                     | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
#Query grid check
#FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10124: Check the grid after reassign the raised query to the new <TeamOrUser>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application for reassign the query
    And user open application
    Then new <TeamOrUser> name should be display in query grid

    Examples:
      | SourceDataFile       | SheetName | RowNumber | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum | TeamOrUser |
      | LoginDetailsCAS.xlsx | LoginData | 7         | RaiseQueryWB.xlx | raiseQuery_sheet | 1                 | user       |
      | LoginDetailsCAS.xlsx | LoginData | 7         | RaiseQueryWB.xlx | raiseQuery_sheet | 2                 | team       |
#FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10125: Open reassign query page from search menu
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user search reassign query
    When user open outside workflow reassign query page
    Then reassign query page for application search to reassign query should be open
    Examples:
      | SourceDataFile       | SheetName | RowNumber |
      | LoginDetailsCAS.xlsx | LoginData | 7         |

#  Close minimize history
  #FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10126: Close the Query History Records in reassign query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be reassign
    And user raise a query
    And user open raised Query History Records
    And user close the Query History Records
    Then Query History Records should be closed
    Examples:
      | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      |                |           |           |              |                  |                   |
#FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10127: Minimize the Query History Records in reassign query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be reassign
    And user raise a query
    And user open raised Query History Records
    And user minimize the Query History Records in reassign query
    Then Query History Records in reassign query should be minimized
    Examples:
      | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      |                |           |           |              |                  |                   |
#FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10128: Maximize the minimized Query History Records in reassign query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be reassign
    And user raise a query
    And user open raised Query History Records
    And user maximize the minimized Query History Records in reassign query
    Then Query History Records should be maximized
    Examples:
      | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      |                |           |           |              |                  |                   |


#    multiple query should be raised
  #FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10129: Reassign query grid validation with <Field> field in reassign query page
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application id of the application for which a query needs to be reassign
    And user reassign a query
    Then reassign query should be display in grid with filled "<Field>" field
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

#FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10130: Show the "<NumberOfRows>" rows of raised query in reassign query grid
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be reassign
    And user reassign multiple queries
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
#FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10131: Validation of pagination in reassign query grid
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be reassign
    And user reassign multiple queries
    When "<Page>" page of reassign query grid is open
    Then "<Paginate_Btn>" should be "<Disable_Enable>"
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable |
      | first | paginate_button previous | disable        |
      | first | paginate_button next     | enable         |
      | last  | paginate_button previous | enable         |
      | last  | paginate_button next     | disable        |

#need correction
#FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10132: Validating all Pagination in reassign query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be reassign
    And user reassign multiple queries
    When "<Page>" page of reassign query grid is open
    Then "<Paginate_Btn>" should work successfully
    Examples:
      | Page  | Paginate_Btn             |
      | first | paginate_button next     |
      | first | paginate_button last     |
      | last  | paginate_button first    |
      | last  | paginate_button previous |


#sort the details in ascending order based on Field
  #FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10133: Sorting raised query details in ascending order by <Field> column in reassign query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be reassign
    And user reassign multiple queries
    When user sort the raised query details by <Field> column in ascending order
    Then reassign query grid should be sort in ascending order
    Examples:
      | Field             |
      | Query Code        |
      | Query Name        |
      | TAT               |
      | Original Assignee |
      | Raise To Team     |
      | Raise To User     |
      | Raised On         |

#FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10134: Sorting raised query details in descending order by <Field> column in reassign query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be reassign
    And user reassign multiple queries
    When user sort the raised query details by <Field> column in descending order
    Then reassign query grid should be sort in descending order
    Examples:
      | Field             |
      | Query Code        |
      | Query Name        |
      | TAT               |
      | Original Assignee |
      | Raise To Team     |
      | Raise To User     |
      | Raised On         |
#FeatureID-ACAUTOCAS-787
  Scenario Outline: ACAUTOCAS-10135: Search raised query to reassign by <Field> in reassign query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open reassign query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be reassign
    And user reassign multiple queries
    When user search the raised query details by <Field>
    Then searched raised query details should be display in reassign query grid
    Examples:
      | Field      |
      | Query Code |
      | Query Name |






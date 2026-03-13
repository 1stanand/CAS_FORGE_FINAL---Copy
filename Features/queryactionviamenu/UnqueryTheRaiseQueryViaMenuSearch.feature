@Epic-Query_Module
@AuthorBy_VipinKishor
@ReviewedByDEV

Feature: Unquery the raise Query via menu search


  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-2028:  Application search for unquery the raised query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens unquery page
    And user reads data from the excel file "<UnqueryWB>" under sheet "<Unquery_sheet>" and row <Unquery_rowNum>
    When user search the application id of the application for which a query needs to be unquery
    Then application ID of the all application for which a query needs to be unquery are visible with "<Fields>" in view mode
    Examples:
      | SourceDataFile       | SheetName | RowNumber | Fields               | UnqueryWB    | Unquery_sheet | Unquery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 1         | Neo Cust ID          | unquery.xlsx | home          | 0              |
      | LoginDetailsCAS.xlsx | LoginData | 1         | Customer Name        | unquery.xlsx | home          | 0              |
      | LoginDetailsCAS.xlsx | LoginData | 1         | Sourcing Branch      | unquery.xlsx | home          | 0              |
      | LoginDetailsCAS.xlsx | LoginData | 1         | Relationship Manager | unquery.xlsx | home          | 0              |
      | LoginDetailsCAS.xlsx | LoginData | 1         | Product Type         | unquery.xlsx | home          | 0              |
      | LoginDetailsCAS.xlsx | LoginData | 1         | Product              | unquery.xlsx | home          | 0              |
      | LoginDetailsCAS.xlsx | LoginData | 1         | Scheme               | unquery.xlsx | home          | 0              |


  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline:ACAUTOCAS-2029: Check the raised query at unquery grid
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens unquery page
    And user reads data from the excel file "<UnqueryWB>" under sheet "<Unquery_sheet>" and row <Unquery_rowNum>
    When user search the application id of the application for which a query needs to be unquery
    Then a grid at the bottom of the unquery page displays all the raised queries that are associated with the application
    Examples:
      | SourceDataFile       | SheetName | RowNumber | UnqueryWB    | Unquery_sheet | Unquery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 1         | unquery.xlsx | home          | 0              |


  Scenario Outline: ACAUTOCAS-2030:  Unquery the raised query with "<Field>" field
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<UnqueryWB>" under sheet "<Unquery_sheet>" and row <Unquery_rowNum>
    And user search the application id of the application for which a query needs to be unquery
    When user unquery the query with "<Field>" field
    Then query should be unquery successfully

    Examples:
      | SourceDataFile       | SheetName | RowNumber | UnqueryWB     | Unquery_sheet | Unquery_rowNum | Field     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | UnqueryWB.xlx | Unquery_sheet | 1              | all       |
      | LoginDetailsCAS.xlsx | LoginData | 7         | UnqueryWB.xlx | Unquery_sheet | 2              | mandatory |


  Scenario Outline: ACAUTOCAS-2031:  Unquery the multiple raised query in bulk
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<UnqueryWB>" under sheet "<Unquery_sheet>" and row <Unquery_rowNum>
    And user search the application id of the application for which a query needs to be unquery
    When user fills mandatory fields for unquery the multiple query in bulk
    Then multiple query should be unquery successfully in bulk

    Examples:
      | SourceDataFile       | SheetName | RowNumber | UnqueryWB     | Unquery_sheet | Unquery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 7         | UnqueryWB.xlx | Unquery_sheet | 1              |
      | LoginDetailsCAS.xlsx | LoginData | 7         | UnqueryWB.xlx | Unquery_sheet | 2              |


  Scenario Outline: ACAUTOCAS-2032: Select the documents to unquery the query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<UnqueryWB>" under sheet "<Unquery_sheet>" and row <Unquery_rowNum>
    And user search the application id of the application for which a query needs to be unquery
    When user selects documents to unquery the query
    Then name of the selected documents will appear in the Documents field
    Examples:
      | SourceDataFile       | SheetName | RowNumber | UnqueryWB     | Unquery_sheet | Unquery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 1         | UnqueryWB.xlx | Unquery_sheet | 1              |


  Scenario Outline: ACAUTOCAS-2033: Select the documents that needs to be uploaded for unquery the query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<UnqueryWB>" under sheet "<Unquery_sheet>" and row <Unquery_rowNum>
    And user search the application id of the application for which a query needs to be unquery
    When user choose documents for unquery the query
    Then documents uploaded successfully  for unquery the query
    Examples:
      | SourceDataFile       | SheetName | RowNumber | UnqueryWB     | Unquery_sheet | Unquery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 1         | UnqueryWB.xlx | Unquery_sheet | 1              |


  Scenario Outline: ACAUTOCAS-2034: Select the multiple documents that needs to be uploaded for unquery the query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<UnqueryWB>" under sheet "<Unquery_sheet>" and row <Unquery_rowNum>
    And user search the application id of the application for which a query needs to be unquery
    When user choose "<NoOfDocuments>" documents for unquery the query
    Then "<NoOfDocuments>" documents uploaded successfully for unquery the query
    Examples:
      | SourceDataFile       | SheetName | RowNumber | UnqueryWB     | Unquery_sheet | Unquery_rowNum | NoOfDocuments |
      | LoginDetailsCAS.xlsx | LoginData | 1         | UnqueryWB.xlx | Unquery_sheet | 1              |               |


  Scenario Outline: ACAUTOCAS-2035:  Query history records of unquery for logged in user
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<UnqueryWB>" under sheet "<Unquery_sheet>" and row <Unquery_rowNum>
    And user search the application id of the application for which a query needs to be unquery
    When user checks unquery history records
    Then query history records of unquery display successfully
    Examples:
      | SourceDataFile       | SheetName | RowNumber | UnqueryWB     | Unquery_sheet | Unquery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 1         | UnqueryWB.xlx | Unquery_sheet | 1              |


  Scenario Outline: ACAUTOCAS-2032: Select the documents to unquery the query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<UnqueryWB>" under sheet "<Unquery_sheet>" and row "<Unquery_rowNum>"
    And user search the application id of the application for which a query needs to be unquery
    When user selects documents to unquery the query
    Then name of the selected documents will appear in the Documents field
    Examples:
      | SourceDataFile       | SheetName | RowNumber | UnqueryWB     | Unquery_sheet | Unquery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 1         | UnqueryWB.xlx | Unquery_sheet | 1              |


  Scenario Outline: ACAUTOCAS-2033: Select the documents that needs to be uploaded for unquery the query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<UnqueryWB>" under sheet "<Unquery_sheet>" and row "<Unquery_rowNum>"
    And user search the application id of the application for which a query needs to be unquery
    When user choose documents for unquery the query
    Then documents uploaded successfully  for unquery the query
    Examples:
      | SourceDataFile       | SheetName | RowNumber | UnqueryWB     | Unquery_sheet | Unquery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 1         | UnqueryWB.xlx | Unquery_sheet | 1              |




# findings resolved

#  ==========================================================================================================================================================

#FeatureID-ACAUTOCAS-795
  Scenario Outline: ACAUTOCAS-10149: Dependent field <DependentFields> should be <Expected_Behaviour> based on <Fields> in unquery
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application id of the application for which a query needs to be unquery
    And user fill "<Fields>" field to unquery the raised query
    Then Dependent field <DependentFields> should be <Expected_Behaviour> in unquery
    Examples:
      | Fields             | DependentFields    | Expected_Behaviour | SourceDataFile       | SheetName | RowNumber | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum |
      | Available Document | Documents          | auto filled        | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Reason             | Reason Description | auto filled        | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Reason             | Reason Description | non editable       | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
      | Reason as other    | Reason Description | editable           | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |

#FeatureID-ACAUTOCAS-795
  Scenario Outline: ACAUTOCAS-10150: Unquery the raised query without filling <Field> field
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application id of the application for which a query needs to be unquery
    And user fill all fields except "<Field>" field to unquery
    And user unquery the raised query
    Then query did not unquery with an error message
    Examples:
      | Field    | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      | Reason   |                |           |           |              |                  |                   |
      | Comments |                |           |           |              |                  |                   |
#FeatureID-ACAUTOCAS-795
  Scenario Outline: ACAUTOCAS-10151: Required <Field> field validation in unquery
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application id of the application for which a query needs to be unquery
    And user checks Required fields of unquery page
    Then Required "<Field>" field should be present in required field of unquery page
    Examples:
      | Field                               | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      | Query Code                          |                |           |           |              |                  |                   |
      | Query Name                          |                |           |           |              |                  |                   |
      | Query                               |                |           |           |              |                  |                   |
      | Raise To Team                       |                |           |           |              |                  |                   |
      | Raise To User                       |                |           |           |              |                  |                   |
      | Reason                              |                |           |           |              |                  |                   |
      | Reason dependent Reason Description |                |           |           |              |                  |                   |
      | Comments                            |                |           |           |              |                  |                   |
#FeatureID-ACAUTOCAS-795
  Scenario Outline: ACAUTOCAS-10152: <Field> field validation in all fields validation in unquery
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application id of the application for which a query needs to be unquery
    And user open All Fields of unquery page
    Then "<Field>" field should be present in All Fields of unquery page
    Examples:
      | Field              | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      | Query Code         |                |           |           |              |                  |                   |
      | Query Name         |                |           |           |              |                  |                   |
      | Query              |                |           |           |              |                  |                   |
      | Stage              |                |           |           |              |                  |                   |
      | TAT Hold           |                |           |           |              |                  |                   |
      | Documents          |                |           |           |              |                  |                   |
      | Raise To Team      |                |           |           |              |                  |                   |
      | Raise To User      |                |           |           |              |                  |                   |
      | Reason             |                |           |           |              |                  |                   |
      | Reason Description |                |           |           |              |                  |                   |
      | Comments           |                |           |           |              |                  |                   |
      | Choose file        |                |           |           |              |                  |                   |
#FeatureID-ACAUTOCAS-795
  Scenario Outline: ACAUTOCAS-10153:  <Field_Name> field validation with <Characters> characters in unquery
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application id of the application for which a query needs to be unquery
    And user fills "<Field_Name>" field with "<Characters>" characters in unquery
    Then "<Left_Characters>" characters should be remaining to fill in "<Field_Name>" field of unquery
    Examples:
      | Field_Name | Characters | Left_Characters | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      | Comments   | 500        | 500             |                |           |           |              |                  |                   |
      | Comments   | 700        | 300             |                |           |           |              |                  |                   |
      | Comments   | 1000       | 0               |                |           |           |              |                  |                   |
#FeatureID-ACAUTOCAS-795
  Scenario Outline: ACAUTOCAS-10154: Reset the unquery page
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application id of the application for which a query needs to be unquery
    And user reset the unquery page
    Then unquery page should be reset
    Examples:
      | SourceDataFile       | SheetName | RowNumber | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |
#FeatureID-ACAUTOCAS-795
  Scenario Outline: ACAUTOCAS-10155: Cancel the unquery query process
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open raise query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application id of the application for which a query needs to be raised
    And user cancel the unquery query process
    Then unquery query process should be cancel
    Examples:
      | SourceDataFile       | SheetName | RowNumber | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |

#Check the history after unquery the quey and Unquery
#FeatureID-ACAUTOCAS-796
  Scenario Outline: ACAUTOCAS-10156: Query history records after unquery the query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application id of the application for which a query needs to be unquery
    And user unquery the raised query
    And user checks unquery history records
    Then unquery history of the query should be present in unquery history records
    Examples:
      | SourceDataFile       | SheetName | RowNumber | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum |
      | LoginDetailsCAS.xlsx | LoginData |           | RaiseQueryWB.xlx | raiseQuery_sheet |                   |

#FeatureID-ACAUTOCAS-795
  Scenario Outline: ACAUTOCAS-10157: Validation of <Field> field which should <FieldNature> in unquery
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application id of the application for which a query needs to be unquery
    Then "<Field>" should be "<FieldNature>" field in unquery
    Examples:
      | Field              | FieldNature   | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      | Query Code         | mandatory     |                |           |           |              |                  |                   |
      | Query Code         | non editable  |                |           |           |              |                  |                   |
      | Query Name         | mandatory     |                |           |           |              |                  |                   |
      | Query Name         | non editable  |                |           |           |              |                  |                   |
      | Query              | mandatory     |                |           |           |              |                  |                   |
      | Query              | non editable  |                |           |           |              |                  |                   |
      | Stage              | non mandatory |                |           |           |              |                  |                   |
      | Stage              | non editable  |                |           |           |              |                  |                   |
      | Documents          | non mandatory |                |           |           |              |                  |                   |
      | Documents          | non editable  |                |           |           |              |                  |                   |
      | Raise To Team      | non editable  |                |           |           |              |                  |                   |
      | Raise To User      | non editable  |                |           |           |              |                  |                   |
      | Reason             | mandatory     |                |           |           |              |                  |                   |
      | Reason             | editable      |                |           |           |              |                  |                   |
      | Reason Description | non mandatory |                |           |           |              |                  |                   |
      | Comments           | mandatory     |                |           |           |              |                  |                   |
      | Comments           | editable      |                |           |           |              |                  |                   |
#  APPL00016627
#  Try to search Inactive Team/User> same should not be available
#  APPL00012477
#  Cancel/Reject the Application Now go to Raise Query and try to search application>Application should not be search
#

#FeatureID-ACAUTOCAS-795
  Scenario Outline: ACAUTOCAS-10158: Field type validation of <Field> field which should <FieldNature> in unquery
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application id of the application for which a query needs to be unquery
    Then field type of "<Field>" should be "<FieldNature>" field in unquery
    Examples:
      | Field    | FieldNature | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      | Reason   | dropdown    |                |           |           |              |                  |                   |
      | Comments | textarea    |                |           |           |              |                  |                   |
#FeatureID-ACAUTOCAS-795
  Scenario Outline:Bulk Unquery icon validation in unquery
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application id of the application for which a query needs to be unquery
    And user selects query to unquery
    Then Bulk Unquery icon should be display in unquery
    Examples:
      | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      |                |           |           |              |                  |                   |

#FeatureID-ACAUTOCAS-795
  Scenario Outline:Minimize the bulk unquery pop up screen in unquery
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application id of the application for which a query needs to be unquery
    And user clicks on bulk unquery icon
    And user minimize the bulk unquery pop up screen in unquery
    Then bulk unquery pop up screen should be minimized
    Examples:
      | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      |                |           |           |              |                  |                   |
#FeatureID-ACAUTOCAS-795
  Scenario Outline: ACAUTOCAS-10163: Maximize the minimized the bulk unquery pop up screen in unquery
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application id of the application for which a query needs to be unquery
    And user clicks on bulk unquery icon
    And user maximize the minimized the bulk unquery pop up screen in unquery
    Then bulk unquery pop up screen should be maximized
    Examples:
      | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      |                |           |           |              |                  |                   |
#FeatureID-ACAUTOCAS-795
  Scenario Outline: ACAUTOCAS-10164: Open unquery page from search menu
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user search unquery
    When user open outside workflow unquery page
    Then unquery page for application search to unquery should be open
    Examples:
      | SourceDataFile       | SheetName | RowNumber |
      | LoginDetailsCAS.xlsx | LoginData | 7         |

#FeatureID-ACAUTOCAS-795
  Scenario Outline:Bulk Unquery pop up screen validation in unquery
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application for unquery the query
    And user open application
    And user clicks on bulk unquery icon
    Then Bulk Unquery pop up screen should be populated
    Examples:
      | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      |                |           |           |              |                  |                   |
#FeatureID-ACAUTOCAS-795
  Scenario Outline:Close the bulk unquery pop up screen with help of <Button_Icon> in unquery
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application for unquery the query
    And user open application
    And user clicks on bulk unquery icon
    And user close the bulk unquery pop up screen with help of "<Button_Icon>" in unquery
    Then bulk unquery pop up screen should be closed
    Examples:
      | Button_Icon  | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      | close icon   |                |           |           |              |                  |                   |
      | close button |                |           |           |              |                  |                   |

#FeatureID-ACAUTOCAS-795
  Scenario Outline: ACAUTOCAS-10165: Maximize the minimized bulk unquery pop up screen in unquery
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application for unquery the query
    And user open application
    And user clicks on bulk unquery icon
    And user maximize the minimized bulk unquery pop up screen in unquery
    Then bulk unquery pop up screen should be maximized
    Examples:
      | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      |                |           |           |              |                  |                   |
#FeatureID-ACAUTOCAS-796
  Scenario Outline: ACAUTOCAS-10166: Close the Query History Records in unquery
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise a query
    And user open raised Query History Records
    When user close the Query History Records
    Then Query History Records should be closed
    Examples:
      | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      |                |           |           |              |                  |                   |
#FeatureID-ACAUTOCAS-796
  Scenario Outline: ACAUTOCAS-10167: Minimize the Query History Records in unquery
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise a query
    And user open raised Query History Records
    When user minimize the Query History Records in unquery
    Then Query History Records in unquery should be minimized
    Examples:
      | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      |                |           |           |              |                  |                   |
#FeatureID-ACAUTOCAS-796
  Scenario Outline: ACAUTOCAS-10168: Maximize the minimized Query History Records in unquery
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open unquery page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise a query
    And user open raised Query History Records
    When user maximize the minimized Query History Records in unquery
    Then Query History Records should be maximized
    Examples:
      | SourceDataFile | SheetName | RowNumber | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum |
      |                |           |           |              |                  |                   |



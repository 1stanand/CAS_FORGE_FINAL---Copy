@Epic-Query_Module
@AuthoredBy-vipin.kishor
@Islamic @Conventional
@ImplementedBy-
#FeatureID-ACAUTOCAS-788
Feature: Raise Query via menu search

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    #PQM-04_CAS-100607,07_CAS-100607,10_CAS-100607
   # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-1981:application search for raising query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_home>" and row <MoreActions_home_rowNum>
    When user search the application id of the application for which a query needs to be raised
    Then basic information about application should be display in view mode
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | MoreActionsWB     | MoreActions_home | MoreActions_home_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | more_actions.xlsx | raise_query      | 1                       |

   # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline:ACAUTOCAS-1982: Matching "<Fields>" with application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_home>" and row <MoreActions_home_rowNum>
    When user search the application id of the application for which a query needs to be raised
    Then "<Fields>" should be matched with the application
    Examples:
      | MoreActionsWB     | MoreActions_home | MoreActions_home_rowNum | Fields               | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | more_actions.xlsx | raise_query      | 1                       | Application ID       | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | more_actions.xlsx | raise_query      | 1                       | Product Type         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | more_actions.xlsx | raise_query      | 1                       | Product              | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | more_actions.xlsx | raise_query      | 1                       | Scheme               | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | more_actions.xlsx | raise_query      | 1                       | Customer Name        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | more_actions.xlsx | raise_query      | 1                       | Neo Cust ID          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | more_actions.xlsx | raise_query      | 1                       | Sourcing Branch      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | more_actions.xlsx | raise_query      | 1                       | Relationship Manager | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

     #PQM-6_CAS-34281,9_CAS-34281,13_CAS-34281,01_CAS-100607,01_CAS-131589_CAS-134273,04_CAS-100607
    # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline:ACAUTOCAS-1984:Raise query with <Mandatory_All> field in raise query page
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user search the application id of the application for which a query needs to be raised
    And user open the searched application
    And user reads data from the excel file "<Query_WB>" under sheet "<Query_Sheet>" and row <Query_Row>
    When user fills "<Mandatory_All>" in raise query
    And user clicks raise query
    Then query should be raised successfully
    Examples:
      | Mandatory_All | Query_WB          | Query_Sheet | Query_Row | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | mandatory     | query_module.xlsx | raise_query |           | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | all           | query_module.xlsx | raise_query |           | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

    #PQM-09_CAS-131279
   # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-1985: Raise multiple query with <Mandatory_All> fields
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user search the application id of the application for which a query needs to be raised
    And user open the searched application
    And user reads data from the excel file "<Query_WB>" under sheet "<Query_Sheet>" and row <Query_Row>
    When user fills "<Mandatory_All>" in raise query
    And user clicks raise query
    Then multiple query  should be raised successfully
    Examples:
      | Mandatory_All | Query_WB          | Query_Sheet | Query_Row | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | mandatory     | query_module.xlsx | raise_query |           | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | all           | query_module.xlsx | raise_query |           | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

    # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline:ACAUTOCAS-1986:Validate <Columns> data in raise query grid after raising query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user search the application id of the application for which a query needs to be raised
    And user open the searched application
    When user raise query
    Then "<Columns>" data should be correctly present in raise query grid
    Examples:
      | Columns           | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Query Code        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query Name        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Entity Name       | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | TAT Hold          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Original Assignee | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Raise To Team     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Raise To User     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Raised By         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Raised On         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query Status      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Action            | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

   # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline:Unquery the raised query via menu grid
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user search the application id of the application for which a query needs to be raised
    And user open the searched application
    And user reads data from the excel file "<Query_WB>" under sheet "<Query_Sheet>" and row <Query_Row>
    When user raise query
    And user unquery the raised query
    Then raised query should be unquery successfully
    Examples:
      | Query_WB          | Query_Sheet | Query_Row | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | query_module.xlsx | raise_query | 1         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

   # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline:ACAUTOCAS-1988:  Unquery the multiple raised query in bulk
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user search the application id of the application for which a query needs to be raised
    And user open the searched application
    And user reads data from the excel file "<Query_WB>" under sheet "<Query_Sheet>" and row <Query_Row>
    And user raise multiple query
    When user unquery the multiple raise query in bulk
    Then raised query should be unquery successfully in bulk
    Examples:
      | Query_WB          | Query_Sheet | Query_Row | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | query_module.xlsx | raise_query | 1         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

  # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-1989: User can not <Actions> the multiple query in bulk once it unquery
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_home>" and row <MoreActions_home_rowNum>
    And user search the application id of the application for which a query needs to be raised
    When user raise multiple query
    And user unquery multiple raise query in bulk
    Then query should not be "<Action>" in bulk
    Examples:
      | MoreActionsWB     | MoreActions_home | MoreActions_home_rowNum | Action   | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | more_actions.xlsx | raise_query      | 1                       | reassign | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | more_actions.xlsx | raise_query      | 1                       | unquery  | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

  #PQM-02_CAS-131588_CAS-134272
   # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-1991: Reassign the already raised query to the new <TeamOrUser>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_home>" and row <MoreActions_home_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raises a new query via menu search
    When user fills mandatory fields for reassign the query
    Then query should be reassigned successfully
    Examples:
      | MoreActionsWB     | MoreActions_home | MoreActions_home_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | more_actions.xlsx | raise_query      | 1                       | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | more_actions.xlsx | raise_query      | 1                       | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


    # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline:  ACAUTOCAS-1993:Assigning more than one query with same Query code to the same team is not possible
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_home>" and row <MoreActions_home_rowNum>
    And user search the application id of the application for which a query needs to be raised
    When user assigns more than one query with same Query code to the same team via menu search
    Then query should not be raise
    Examples:
      | MoreActionsWB     | MoreActions_home | MoreActions_home_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | more_actions.xlsx | raise_query      | 1                       | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


   # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-1994:  Query history records of raise query once query is raised
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_home>" and row <MoreActions_home_rowNum>
    And user search the application id of the application for which a query needs to be raised
    When user checks query history records with help of query code
    Then query history records display successfully
    Examples:
      | MoreActionsWB     | MoreActions_home | MoreActions_home_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | more_actions.xlsx | raise_query      | 1                       | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


    # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-1995: Query history records <With_Without> query raised
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_home>" and row <MoreActions_home_rowNum>
    And user search the application id of the application for which a query needs to be raised
    When user checks query history records "<With_Without>" query raised
    Then query history records "<Created_NotCreated>"
    Examples:
      | MoreActionsWB     | MoreActions_home | MoreActions_home_rowNum | With_Without | Created_NotCreated | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | more_actions.xlsx | raise_query      | 1                       | with         | created            | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | more_actions.xlsx | raise_query      | 2                       | without      | not created        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

   #PQM-05_CAS-100607,08_CAS-100607
    # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-1996: Select the documents to raise query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_home>" and row <MoreActions_home_rowNum>
    And user search the application id of the application for which a query needs to be raised
    When user selects documents
    Then name of the selected documents will appear in the Documents field
    Examples:
      | MoreActionsWB     | MoreActions_home | MoreActions_home_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | more_actions.xlsx | raise_query      | 3                       | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

  #PQM-01_CAS-77574,02_CAS-100607,09_CAS-100607,11_CAS-100607
    # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline:ACAUTOCAS-1997: Select the document that needs to be uploaded
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_home>" and row <MoreActions_home_rowNum>
    And user search the application id of the application for which a query needs to be raised
    When user choose documents
    Then documents uploaded successfully
    Examples:
      | MoreActionsWB     | MoreActions_home | MoreActions_home_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | more_actions.xlsx | raise_query      | 5                       | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

    #PQM-03_CAS-100607,06_CAS-100607,12_CAS-100607
    # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline:ACAUTOCAS-1998:  Select the multiple documents that needs to be uploaded in raise query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_home>" and row <MoreActions_home_rowNum>
    And user search the application id of the application for which a query needs to be raised
    When user choose "<NoOfDocuments>" documents
    Then "<NoOfDocuments>" documents uploaded successfully
    Examples:
      | MoreActionsWB     | MoreActions_home | MoreActions_home_rowNum | NoOfDocuments | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | more_actions.xlsx | raise_query      | 5                       | 2             | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

   # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-1983:  user should not assign query to himself
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    When user assignes the query to itself with filling mandatory fields
    Then user should not able to assign query to himself
    Examples:
      | RaiseQueryWB      | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | more_actions.xlsx | raise_query      | 5                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

  # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-1987:  Unquery the raised query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise query
    When user unquery the raise query
    Then raised query should be unquery successfully
    Examples:
      | RaiseQueryWB      | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | more_actions.xlsx | raise_query      | 5                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


    # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline:ACAUTOCAS-10083:Dependent field <DependentFields> should be <Expected_Behaviour> based on <Fields> in raise query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user search the application id of the application for which a query needs to be raised
    And user open the searched application
    And user reads data from the excel file "<Query_WB>" under sheet "<Query_Sheet>" and row <Query_Row>
    When user fills "given" field "<Fields>" in raise query
    Then "<DependentFields>" should be "<Expected_Behaviour>" in raise query
    Examples:
      | Fields             | DependentFields | Expected_Behaviour | Query_WB          | Query_Sheet | Query_Row | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Query Code         | Query Name      | auto filled        | query_module.xlsx | raise_query |           | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Available Document | Documents       | auto filled        | query_module.xlsx | raise_query |           | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query Code         | Query Name      | display            | query_module.xlsx | raise_query |           | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Available Document | Documents       | display            | query_module.xlsx | raise_query |           | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


   # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-10084: Raise query without filling <Field> field
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user fill all fields except "<Field>" field to raise query
    When user raise query
    Then query did not raised with an error message
    Examples:
      | Field                                   | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Query Code                              |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query                                   |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Either Raised To User or Raised To Team |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |



    # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-10085: Required <Field> field validation in raise query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    When user clicks on Required to check required fields in raise query
    Then Required "<Field>" field should be present in required field of raise query
    Examples:
      | Field               | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Query Code          |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query Name          |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query               |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Raise To Team       |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Raise To User       |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Available Documents |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  # PQM-6_CAS-34281
   # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-10086: <Field> field validation in all fields validation in raise query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    When user clicks on All Fields to check all fields in raise query
    Then "<Field>" field should be present in All Fields of raise query
    Examples:
      | Field               | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Query Code          |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query Name          |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query               |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Stage               |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | TAT Hold            |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Documents           |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Raise To Team       |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Raise To User       |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Choose File         |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Available Documents |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


   # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-10087: <Field_Name> field validation with <Characters> characters in raise query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application id of the application for which a query needs to be raised
    And user fills "<Field_Name>" field with "<Characters>" characters in raise query
    Then "<Left_Characters>" characters should be remaining to fill in "<Field_Name>" field of raise query
    Examples:
      | Field_Name | Characters | Left_Characters | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Query      | 1000       | 3000            |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query      | 3000       | 1000            |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query      | 4000       | 0               |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

    # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline:ACAUTOCAS-10097:Field type validation of <Field> field in raise query page
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user search the application id of the application for which a query needs to be raised
    When user open the searched application
    Then field type of following fields should should be as below
      | Field               | Field_Type     |
      | Query Code          | list of values |
      | Query Name          | input          |
      | Query               | textarea       |
      | Raise To Team       | list of values |
      | Raise To User       | list of values |
      | Available Documents | button         |
      | Stage               | drop down      |
      | TAT Hold            | checkbox       |
      | Choose File         | file           |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


    # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline:<Field_Name> field validation with <Validity> <InputType> in raise query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user search the application id of the application for which a query needs to be raised
    When user open the searched application
    And user reads data from the excel file "<Query_WB>" under sheet "<Query_Sheet>" and row <Query_Row>
    And user checks for "<Validity>" "<Field_Name>" with "<InputType>" in raise query
    Then "<Field_Name>" in raise query "<Throws_notThrows>" error
    Examples:
      | Field_Name    | Validity | InputType                  | Throws_notThrows | Query_WB          | Query_Sheet | Query_Row | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Query Code    | valid    | mapped                     | not throw any    | query_module.xlsx | raise_query | 5         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query Code    | invalid  | unmapped                   | throw an         | query_module.xlsx | raise_query | 6         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query         | valid    | character                  | not throw any    | query_module.xlsx | raise_query | 7         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query         | valid    | alphanumeric               | not throw any    | query_module.xlsx | raise_query | 8         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query         | valid    | number                     | not throw any    | query_module.xlsx | raise_query | 9         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query         | valid    | character with space       | not throw any    | query_module.xlsx | raise_query | 10        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query         | valid    | character with dot         | not throw any    | query_module.xlsx | raise_query | 11        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query         | valid    | character with apostrophe  | not throw any    | query_module.xlsx | raise_query | 12        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query         | valid    | character with underscore  | not throw any    | query_module.xlsx | raise_query | 13        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query         | valid    | character with hyphen      | not throw any    | query_module.xlsx | raise_query | 14        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query         | valid    | negative number            | not throw any    | query_module.xlsx | raise_query | 15        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query         | valid    | special character          | not throw any    | query_module.xlsx | raise_query | 16        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query         | valid    | max length 4000 characters | not throw any    | query_module.xlsx | raise_query | 17        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Raise To Team | valid    | mapped                     | not throw any    | query_module.xlsx | raise_query | 18        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Raise To Team | invalid  | unmapped                   | throw an         | query_module.xlsx | raise_query | 19        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Raise To User | valid    | mapped                     | not throw any    | query_module.xlsx | raise_query | 20        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Raise To User | invalid  | unmapped                   | throw an         | query_module.xlsx | raise_query | 21        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

   # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline:Dependent field <DependentFields> should be <Expected_Behaviour> based on <Fields> in raise query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user search the application id of the application for which a query needs to be raised
    And user open the searched application
    And user reads data from the excel file "<Query_WB>" under sheet "<Query_Sheet>" and row <Query_Row>
    When user fills "given" field "<Fields>" in raise query
    Then "<DependentFields>" should be "<Expected_Behaviour>" in raise query
    Examples:
      | Fields             | DependentFields | Expected_Behaviour | Query_WB          | Query_Sheet | Query_Row | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Query Code         | Query Name      | auto filled        | query_module.xlsx | raise_query |           | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Available Document | Documents       | auto filled        | query_module.xlsx | raise_query |           | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query Code         | Query Name      | display            | query_module.xlsx | raise_query |           | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Available Document | Documents       | display            | query_module.xlsx | raise_query |           | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

   #PQM-03_CAS-100607
   # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline:Upload <FileType> file while raising query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user search the application id of the application for which a query needs to be raised
    And user open the searched application
    When user selects <FileType> file to upload in raise query
    Then <FileType> file  be uploaded successfully
    Examples:
      | FileType | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | .doc     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | .docx    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | .pdf     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | .txt     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | .jpeg    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | .jpg     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | .bmp     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | .png     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | .xls     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | .xlsx    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | .ods     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | .odt     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | .doc     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | .gif     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | .xml     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

   # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline:Upload unsupported file format <Unsupported_File> in raise query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user search the application id of the application for which a query needs to be raised
    And user open the searched application
    When user selects unsupported file format "<Unsupported_File>" to upload in raise query
    Then file should not be uploaded with an error message
    Examples:
      | Unsupported_File | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | zip              | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


    # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline:Raise query with <Mandatory_All> field in raise query page
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user search the application id of the application for which a query needs to be raised
    And user open the searched application
    And user reads data from the excel file "<Query_WB>" under sheet "<Query_Sheet>" and row <Query_Row>
    When user fills "<Mandatory_All>" in raise query
    And user clicks raise query
    Then query be raised successfully
    Examples:
      | Mandatory_All | Query_WB          | Query_Sheet | Query_Row | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | mandatory     | query_module.xlsx | raise_query |           | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | all           | query_module.xlsx | raise_query |           | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

# FeatureID-ACAUTOCAS-788
    # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-10088: Reset the raise query page
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application id of the application for which a query needs to be raised
    And user reset the raise query page
    Then raise query page should be reset
    Examples:
      | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | RaiseQueryWB.xlx | raiseQuery_sheet |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


    # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-10089: Cancel the raising query process
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application id of the application for which a query needs to be raised
    And user cancel the raising query process
    Then raising query process should be cancel
    Examples:
      | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | RaiseQueryWB.xlx | raiseQuery_sheet |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


    # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-1990:  User can not <Action> the query once it unquery
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    When user raise query
    And user wants to "<Action>" the query
    Then unquery should not be "<Action>"
    Examples:
      | RaiseQueryWB      | RaiseQuery_sheet | RaiseQuery_rowNum | Action   | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | more_actions.xlsx | raise_query      | 1                 | reassign | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | more_actions.xlsx | raise_query      | 1                 | unquery  | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


    # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-1992:  Reassign the multiple raised query in bulk to the new <TeamOrUser>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise multiple query
    When user fills mandatory fields for reassign the multiple query in bulk to "<TeamOrUser>"
    Then multiple query should be reassigned successfully in bulk
    Examples:
      | RaiseQueryWB      | RaiseQuery_sheet | RaiseQuery_rowNum | TeamOrUser | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | more_actions.xlsx | raise_query      | 1                 | user       | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | more_actions.xlsx | raise_query      | 1                 | team       | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


    # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-10090: Query history records after reassign the query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    When user raise query
    And user reassign the raised query
    And user checks query history records
    Then reassign history of the query should be present in query history records
    Examples:
      | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | RaiseQueryWB.xlx | raiseQuery_sheet |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |




    # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-10091: Query history records after Unquery the query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    When user raise query
    And user unquery the raised query
    And user checks query history records
    Then unquery history of the query should be present in query history records
    Examples:
      | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | RaiseQueryWB.xlx | raiseQuery_sheet |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


    # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-10092: Validation of <Field> field which should <FieldNature> in raise query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search the application id of the application for which a query needs to be raised
    Then "<Field>" should be "<FieldNature>" field in raise query
    Examples:
      | Field      | FieldNature   | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Query Code | mandatory     |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query Name | mandatory     |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query      | mandatory     |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Stage      | non mandatory |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Documents  | non mandatory |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Documents  | non editable  |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query Name | non editable  |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |



    # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal","Login Acceptance","KYC","DDE"," FII","Recommendation","Post Approval","Disbursal","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-10093: Outside workflow raised query at "<Stage>" stage should be display in application workflow query grid at "<Stage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of "<ApplicationStage>" stage for which a query needs to be raised
    And user raise query at "<ApplicationStage>" stage from outside workflow
    When user open the application id of "<ApplicationStage>" stage from application grid in which the query were raised
    And user open application workflow raise query page at "<ApplicationStage>" stage
    Then query which were raised on outside workflow should be display in application workflow query grid
    Examples:
      | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |



     # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal","Login Acceptance","KYC","DDE"," FII","Recommendation","Post Approval","Disbursal","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-10094: Application workflow raised query at "<ApplicationStage>" stage should be display in outside workflow query grid
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user open application workflow raise query page at "<ApplicationStage>" stage
    And user raise query at "<ApplicationStage>" stage from application workflow
    When user open outside workflow raise query page
    And user search the application id of "<ApplicationStage>" stage in which query were raised
    Then query which were raised on application workflow should be display in outside workflow query grid
    Examples:
      | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |




      # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario: ACAUTOCAS-10095: Open raise query page from search menu
    When user open outside workflow raise query page
    Then raise query page for application search to raise query should be open



      # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-10096: TAT Hold in raise query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    When user raise query with TAT Hold
    Then TAT Hold should be marked as YES in query grid
    Examples:
      | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | RaiseQueryWB.xlx | raiseQuery_sheet |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |




  #Pre-Requisite- Application Should be Rejected

   # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-10098: Search rejected application for raising query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user initiate the application for rejection
    And user open raise query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search rejected application for raising query
    Then This is not an active application message should be display
    Examples:
      | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | RaiseQueryWB.xlx | raiseQuery_sheet | 1                 | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |


   #Pre-Requisite- Application Should be canceled
      # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline:Search canceled application for raising query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user initiate the application for cancellation
    And user open raise query page
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    When user search canceled application for raising query
    Then This is not an active application message should be display
    Examples:
      | RaiseQueryWB     | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | RaiseQueryWB.xlx | raiseQuery_sheet | 1                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |



      # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-10100: Show the "<NumberOfRows>" rows of raised query in raise query grid
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise multiple queries
    When user selects "<NumberOfRows>" number of rows to show raised query
    Then selected "<NumberOfRows>" rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | 10           | display                                 | more      |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | 25           | display                                 | more      |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | 50           | display                                 | more      |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | 100          | display                                 | more      |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | 10           | not display only available rows display | less      |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | 25           | not display only available rows display | less      |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | 50           | not display only available rows display | less      |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | 100          | not display only available rows display | less      |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |



      # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-10101: Validation of pagination in raise query grid
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise multiple queries
    When "<Page>" page of raise query grid is open
    Then "<Paginate_Btn>" should be "<Disable_Enable>"
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | first | paginate_button previous | disable        |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | first | paginate_button next     | enable         |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | last  | paginate_button previous | enable         |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | last  | paginate_button next     | disable        |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |



      # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-10102: Validating all Pagination in raise query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise multiple queries
    When "<Page>" page of raise query grid is open
    Then "<Paginate_Btn>" should work successfully
    Examples:
      | Page  | Paginate_Btn             | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | first | paginate_button next     |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | first | paginate_button last     |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | last  | paginate_button first    |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | last  | paginate_button previous |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


      # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-10103: Sorting raised query details in ascending order by <Field> column in raise query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise multiple queries
    When user sort the raised query details by <Field> column in ascending order
    Then raise query grid should be sort in ascending order
    Examples:
      | Field             | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Query Code        |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query Name        |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | TAT               |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Original Assignee |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Raise To Team     |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Raise To User     |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Raised On         |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query Status      |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


      # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-10104: Sorting raised query details in descending order by <Field> column in raise query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise multiple queries
    When user sort the raised query details by <Field> column in descending order
    Then raise query grid should be sort in descending order
    Examples:
      | Field             | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Query Code        |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query Name        |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | TAT               |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Original Assignee |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Raise To Team     |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Raise To User     |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Raised On         |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query Status      |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


      # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-10105: Search raised query by <Field> in raise query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raise
    And user raise multiple queries
    When user search the raised query details by <Field>
    Then searched raised query details should be display in raise query grid
    Examples:
      | Field      | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Query Code |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Query Name |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  #FeatureID-ACAUTOCAS-785
      # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-10106: Close the Query History Records in raise query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise a query
    And user open raised Query History Records
    When user close the Query History Records
    Then Query History Records should be closed
    Examples:
      | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


#FeatureID-ACAUTOCAS-785
      # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-10107: Minimize the Query History Records in raise query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise a query
    And user open raised Query History Records
    When user minimize the Query History Records in raise query
    Then Query History Records in raise query should be minimized
    Examples:
      | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


#FeatureID-ACAUTOCAS-785
      # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline: ACAUTOCAS-10108: Maximize the minimized Query History Records in raise query
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user reads data from the excel file "<RaiseQueryWB>" under sheet "<RaiseQuery_sheet>" and row <RaiseQuery_rowNum>
    And user search the application id of the application for which a query needs to be raised
    And user raise a query
    And user open raised Query History Records
    When user maximize the minimized Quer y History Records in raise query
    Then Query History Records should be maximized
    Examples:
      | RaiseQueryWB | RaiseQuery_sheet | RaiseQuery_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      |              |                  |                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

#========================PQM TCs==============================================
#CAS-50798-Provision to raise query from outside the workflow as well as authority based Un-query with reason

      # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
   #PQM-01_CAS-50798
  Scenario Outline:Unquery the raised query without "<Field_Name>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user search the application id of the application for which a query needs to be raised
    And user open the searched application
    And user reads data from the excel file "<Query_WB>" under sheet "<Query_Sheet>" and row <Query_Row>
    And user raise query to the "<Team_User>"
    When user fill all fields except "<Field_Name>" to unquery the raised query
    And user clicks on done to unquery the raise query
    Then raised query should not be unquery
    Examples:
      | Team_User | Field_Name | Query_WB          | Query_Sheet | Query_Row | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | user      | Reason     | query_module.xlsx | unquery     | 0         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | user      | Comments   | query_module.xlsx | unquery     | 1         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


    #PQM-02_CAS-50798
      # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline:Raised query for the team that doesn’t exist in the system
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user search the application id of the application for which a query needs to be raised
    And user open the searched application
    And user reads data from the excel file "<Query_WB>" under sheet "<Query_Sheet>" and row <Query_Row>
    When user raise query to the "<Team_User>"
    Then query should not be raised
    Examples:
      | Team_User | Query_WB          | Query_Sheet | Query_Row | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | team      | query_module.xlsx | raise_query | 2         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

#  PQM-03_CAS-50798
    # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline:Validate field Length of "<Field_Name>" on Raised query screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user search the application id of the application for which a query needs to be raised
    And user open the searched application
    And user reads data from the excel file "<Query_WB>" under sheet "<Query_Sheet>" and row <Query_Row>
    When user fills "<Length>" characters in "<Field_Name>" on Raised query screen
    Then "<Length>" characters in "<Field_Name>" should be filled
    Examples:
      | Field_Name | Length | Query_WB          | Query_Sheet | Query_Row | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Query      | 4000   | query_module.xlsx | raise_query | 1         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
#      | Remarks    | 1000   | query_module.xlsx | raise_query | 1         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

      # PQM-08_CAS-50798
      # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
#  need to disuss- APPL00162973
  Scenario Outline:Forward the answered query to the some other user
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user search the application id of the application for which a query needs to be raised
    And user open the searched application
    And user reads data from the excel file "<Query_WB>" under sheet "<Query_Sheet>" and row <Query_Row>
    And user raise query to the "<Team_User>"
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 1
    And user opens response query page
    And user search the application id of the application for which a query needs to be forward
    And user fills forward query details
#    When user forward the query details
    When user forward the raised query to the other user
    Then query should be forwarded successfully
    Examples:
      | Team_User | Query_WB          | Query_Sheet | Query_Row | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | user      | query_module.xlsx | raise_query | 1         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

    #PQM-09_CAS-50798
   # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline:Attach documents while responding the raised query form outside the workflow
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user search the application id of the application for which a query needs to be raised
    And user open the searched application
    And user reads data from the excel file "<Query_WB>" under sheet "<Query_Sheet>" and row <Query_Row>
    When user raise query to the "<Team_User>"
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 1
    And user opens response query page
    And user attach documents while responding the raised query
    Then documents could be attached while responding the raised query
    Examples:
      | Team_User | Query_WB          | Query_Sheet | Query_Row | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | user      | query_module.xlsx | raise_query | 1         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

     #Team should be changes
      #PQM-13_CAS-50798
      # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline:Verify the query has been raised to the other team members
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user search the application id of the application for which a query needs to be raised
    And user open the searched application
    And user reads data from the excel file "<Query_WB>" under sheet "<Query_Sheet>" and row <Query_Row>
    When user raise query to the "<Team_User>"
    Then user should not be able to respond to that query
    Examples:
      | Team_User | Query_WB          | Query_Sheet | Query_Row | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | team      | query_module.xlsx | raise_query | 1         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |



    #Team should be changes
      #PQM-13_CAS-50798
      # ${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
     # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline:Validate if user raise query to the his team
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user search the application id of the application for which a query needs to be raised
    And user open the searched application
    And user reads data from the excel file "<Query_WB>" under sheet "<Query_Sheet>" and row <Query_Row>
    When user raise query to the "<Team_User>"
    Then user should not be able to respond to that query
    Examples:
      | Team_User | Query_WB          | Query_Sheet | Query_Row | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | team      | query_module.xlsx | raise_query | 1         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |




      #PQM-16_CAS-50798
      #${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","LAP"]}
   #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
  Scenario Outline:View the query history raised by other users
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open raise query page via menu
    And user search the application id of the application for which a query needs to be raised
    And user open the searched application
    And user reads data from the excel file "<Query_WB>" under sheet "<Query_Sheet>" and row <Query_Row>
    When user raise query to the "<Team_User>"
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCASxlsx" under "ChildBrowserSheet" and 0
    And user open raise query page via menu
    And user search the application id of the application for which a query needs to be raised
    And user open the searched application
#    And user clicks on raised query to check history
    Then The user cannot view the queries raised by other user They can only view the queries raised by them in the query history
    Examples:
      | Team_User | Query_WB          | Query_Sheet | Query_Row | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | team      | query_module.xlsx | raise_query | 1         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


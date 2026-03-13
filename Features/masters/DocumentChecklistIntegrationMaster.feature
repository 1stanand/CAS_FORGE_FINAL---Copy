@Epic-Document
@AuthoredBy-Anshu.bhaduri
@ReviewedByGWT
@TechReviewedBy-
@Release
@RunConfig-3
Feature: Document Checklist Integration Set Master

  Background:
    Given maker logged in "Common Masters" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #01_CAS-76451
    #FeatureID-ACAUTOCAS-1,ACAUTOCAS-252,ACAUTOCAS-253,ACAUTOCAS-254,ACAUTOCAS-255,CAS-76451
  @ImplementedBy-rishabh.sachan
  @Conventional
  @Islamic
  Scenario: ACAUTOCAS-8565: View Document checklist within document checklist integration set
    When user navigates to Document Checklist Integration sets master from menu
    Then Common Master setup should be opened with Document Checklist Integration sets master accessible to the user


# ${Stage:["Pre Approval","Post Approval","Post Disbursal","Disbursal","OPERATIONS CHECK"]}
   #Pre-requisite - And document checklist already maintained in document checklist master
    #  02_CAS-76451
    # FeatureID-ACAUTOCAS-1,ACAUTOCAS-252,ACAUTOCAS-253,ACAUTOCAS-254,ACAUTOCAS-255,CAS-76451
  @ImplementedBy-rishabh.sachan
  Scenario Outline: ACAUTOCAS-8566:  Update a Document Checklist Integration set record for <Stage> with reference type as <RefType> with entity type as <EntityType>
    When user navigates to Document Checklist Integration sets master from menu
    And user reads data from the excel file "<DocumentMastersWB>" under sheet "<DocumentMasters_sheet>" and row <DocumentMasters_sheet_rowNum>
    And user updates Document Checklist Integration set with stage as "<Stage>" reference type as "<RefType>" and entity type as "<EntityType>" combination already exits
    And user enters integration set name with description
    And user selects "<Stage>" stage from drop down
    And user selects "<RefType>" reference type from drop down
    And user selects "<EntityType>" entity type from drop down as per "<RefType>" reference type selected
    And user adds Checklist Rule mapping in Document Checklist Integration set record
    And user saves the Document Checklist Integration set record
    Then user should be able to update document checklist integration set record
    @Conventional
    @Islamic
    Examples:
      | Stage   | RefType    | EntityType        | DocumentMastersWB     | DocumentMasters_sheet          | DocumentMasters_sheet_rowNum |
      | <Stage> | Collateral | Primary Applicant | document_masters.xlsx | doc_checklist_integration_sets | 1                            |
      | <Stage> | Others     | Primary Applicant | document_masters.xlsx | doc_checklist_integration_sets | 2                            |
      | <Stage> | Customer   | Primary Applicant | document_masters.xlsx | doc_checklist_integration_sets | 3                            |
      | <Stage> | Customer   | Co Applicant      | document_masters.xlsx | doc_checklist_integration_sets | 4                            |
      | <Stage> | Customer   | Guarantor         | document_masters.xlsx | doc_checklist_integration_sets | 5                            |
      | <Stage> | Customer   | Add-on Applicant  | document_masters.xlsx | doc_checklist_integration_sets | 6                            |

    @Conventional
    Examples:
      | Stage   | RefType | EntityType        | DocumentMastersWB     | DocumentMasters_sheet          | DocumentMasters_sheet_rowNum |
      | <Stage> | Loan    | Primary Applicant | document_masters.xlsx | doc_checklist_integration_sets | 0                            |

    @Islamic
    Examples:
      | Stage   | RefType | EntityType        | DocumentMastersWB     | DocumentMasters_sheet          | DocumentMasters_sheet_rowNum |
      | <Stage> | Finance | Primary Applicant | document_masters.xlsx | doc_checklist_integration_sets | 12                           |


    #Pre-requisite - And document checklist already maintained in document checklist master
  # Scenario outline changed by anshu on 03-Jun-24 for issue while creating JIRA from utility
  # FeatureID-ACAUTOCAS-1,ACAUTOCAS-252,ACAUTOCAS-253,ACAUTOCAS-254,ACAUTOCAS-255,CAS-76451
  @ImplementedBy-rishabh.sachan
  @Conventional
  @Islamic
  Scenario Outline:ACAUTOCAS-8567:Validation for same fields Combination already exists for Document Checklist Integration Set
    And user reads data from the excel file "<DocumentMastersWB>" under sheet "<DocumentMasters_docChecklistIntegrationSets>" and row <DocumentMasters_docChecklistIntegrationSets_rowNum>
    And user navigates to Document Checklist Integration sets master from menu
    And user clicks on creates new document checklist integration set button
    When user enters selects same Stage, Reference Type, Entity Type Combination which is already mapped with earlier saved document checklist integration set
    And user saves the Document Checklist Integration set record
    Then user should get Validation that below fields Combination already exists for some Document Checklist Integration Set
      | Stage          |
      | Reference Type |
      | Entity Type    |
    Examples:
      | DocumentMastersWB     | DocumentMasters_docChecklistIntegrationSets | DocumentMasters_docChecklistIntegrationSets_rowNum |
      | document_masters.xlsx | doc_checklist_integration_sets              | 7                                                  |


    #Pre-requisite - And document checklist already maintained in document checklist master
  #And document checklist integration set already saved with all details of stage, reference type, entity
  #    And Checklist Rule mapping already created with rules mapped
  #  02_CAS-76451
    # FeatureID-ACAUTOCAS-1,ACAUTOCAS-252,ACAUTOCAS-253,ACAUTOCAS-254,ACAUTOCAS-255,CAS-76451
  @ImplementedBy-rishabh.sachan
  @Conventional
  @Islamic
  Scenario Outline: ACAUTOCAS-8568:User should verify that VIEW option should be available in Checklist Rule Mapping grid on Document Checklist Integration Set screen
    And user reads data from the excel file "<DocumentMastersWB>" under sheet "<DocumentMasters_docChecklistIntegrationSets>" and row <DocumentMasters_docChecklistIntegrationSets_rowNum>
    When user navigates to Document Checklist Integration sets master from menu
    And user views an already created Document Checklist Integration Set record
    Then user should be able to verify that VIEW option is available in Checklist Rule Mapping grid
    Examples:
      | DocumentMastersWB     | DocumentMasters_docChecklistIntegrationSets | DocumentMasters_docChecklistIntegrationSets_rowNum |
      | document_masters.xlsx | doc_checklist_integration_sets              | 13                                                 |


    #Pre-requisite - And document checklist already maintained in document checklist master
#    And document checklist integration set already saved
    # 03_CAS-76451
    # FeatureID-ACAUTOCAS-1,ACAUTOCAS-252,ACAUTOCAS-253,ACAUTOCAS-254,ACAUTOCAS-255,CAS-76451
  @ImplementedBy-rishabh.sachan
  @Conventional
  @Islamic
  Scenario Outline: ACAUTOCAS-8569:Document Checklist should be updated from Document Checklist Integration Sets post <update_delete_add> in Document Checklist Master
    And user reads data from the excel file "<DocumentMastersWB>" under sheet "<DocumentMasters_documentChecklists>" and row <DocumentMasters_documentChecklists_rowNum>
    When user navigates to document checklist master
    And user "<update_delete_add>" in checklist master
    And maker click on save and request approval
    And user logout from application
    And checker logged in "<Module>" with username and password present in "<LoginDetailsCasWB>" under "<LoginDetailsCas_childBrowserSheet>" and <LoginDetailsCas_childBrowserSheet_rowNum>
    And user navigates to document checklist master
    And user searches document checklist in document checklists master
    And checker approved the document checklist
    And user logout from application
    And maker logged in "<Module>" with valid username and password present in "<LoginDetailsCasWB>" under "<LoginDetailsCas_loginData>" and <LoginDetailsCas_loginData_rowNum>
    And user navigates to Document Checklist Integration sets master from menu
    And user reads data from the excel file "<DocumentMastersWB>" under sheet "<DocumentMasters_docChecklistIntegrationSets>" and row <DocumentMasters_docChecklistIntegrationSets_rowNum>
    And user views an already created Document Checklist Integration Set record
    And user reads data from the excel file "<DocumentMastersWB>" under sheet "<DocumentMasters_documentChecklists>" and row <DocumentMasters_documentChecklists_rowNum>
    Then document checklist should be updated as per "<update_delete_add>" document in checklist master
    Examples:
      | update_delete_add | DocumentMastersWB     | DocumentMasters_documentChecklists | DocumentMasters_docChecklistIntegrationSets | DocumentMasters_documentChecklists_rowNum | DocumentMasters_docChecklistIntegrationSets_rowNum | Module         | LoginDetailsCasWB    | LoginDetailsCas_childBrowserSheet | LoginDetailsCas_loginData | LoginDetailsCas_childBrowserSheet_rowNum | LoginDetailsCas_loginData_rowNum |
      | add new document  | document_masters.xlsx | document_checklists                | doc_checklist_integration_sets              | 2                                         | 8                                                  | Common Masters | LoginDetailsCAS.xlsx | ChildBrowserSheet                 | LoginData                 | 0                                        | 0                                |
      | delete document   | document_masters.xlsx | document_checklists                | doc_checklist_integration_sets              | 3                                         | 10                                                 | Common Masters | LoginDetailsCAS.xlsx | ChildBrowserSheet                 | LoginData                 | 0                                        | 0                                |
      | update document   | document_masters.xlsx | document_checklists                | doc_checklist_integration_sets              | 4                                         | 11                                                 | Common Masters | LoginDetailsCAS.xlsx | ChildBrowserSheet                 | LoginData                 | 0                                        | 0                                |


#Pre-requisite - And document checklist already maintained in document checklist master
#    And document checklist integration set already saved with all details of stage, reference type, entity
#    And Checklist Rule mapping already created with rules mapped
    #  04_CAS-76451
    # FeatureID-ACAUTOCAS-252,ACAUTOCAS-253,ACAUTOCAS-254,ACAUTOCAS-255,CAS-76451
  @ImplementedBy-rishabh.sachan
  @Conventional
  @Islamic
  Scenario Outline: ACAUTOCAS-8570:User should not be able to edit the document parameters opened from VIEW option on Checklist Rule Mapping grid of Document Checklist Integration Set screen
    And user navigates to Document Checklist Integration sets master from menu
    And user reads data from the excel file "<DocumentMastersWB>" under sheet "<DocumentMasters_docChecklistIntegrationSets>" and row <DocumentMasters_docChecklistIntegrationSets_rowNum>
    And user edits an already created Document Checklist Integration Set record
    When user clicks on VIEW option on Checklist Rule Mapping grid on Document Checklist Integration Set
    And user open document details from list on Document Checklist Integration Set
    Then user should not be able to edit the document parameters in modal window once opened in VIEW Mode
      | Document Classification |
      | Document Description    |
      | Document Source         |
      | Order                   |
      | Verification Required   |
      | Original Required       |
      | Mandatory               |
      | Scan Mandatory          |
    Examples:
      | DocumentMastersWB     | DocumentMasters_docChecklistIntegrationSets | DocumentMasters_docChecklistIntegrationSets_rowNum |
      | document_masters.xlsx | doc_checklist_integration_sets              | 13                                                 |


#Pre-requisite - And document checklist already maintained in document checklist master
#    And document checklist integration set already saved
#    And Checklist Rule mapping already created with rules mapped
     #  05_CAS-76451
    # FeatureID-ACAUTOCAS-1,ACAUTOCAS-252,ACAUTOCAS-253,ACAUTOCAS-254,ACAUTOCAS-255,CAS-76451
  @ImplementedBy-rishabh.sachan
  @Conventional
  @Islamic
  Scenario Outline: ACAUTOCAS-8571:  User should be able to verify the document sequence from the Integration sets
    And user reads data from the excel file "<DocumentMastersWB>" under sheet "<DocumentMasters_documentChecklists>" and row <DocumentMasters_documentChecklists_rowNum>
    And user navigates to document checklist master
    And user opens document checklist in edit mode
    And user stores the order of documents of document checklist
    When user navigates to Document Checklist Integration sets master from menu
    And user reads data from the excel file "<DocumentMastersWB>" under sheet "<DocumentMasters_docChecklistIntegrationSets>" and row <DocumentMasters_docChecklistIntegrationSets_rowNum>
    And user edits an already created Document Checklist Integration Set record
    And user clicks on VIEW option on Checklist Rule Mapping grid on Document Checklist Integration Set
    Then document order should be the same as maintained in Document Checklist master
    Examples:
      | DocumentMastersWB     | DocumentMasters_documentChecklists | DocumentMasters_docChecklistIntegrationSets | DocumentMasters_documentChecklists_rowNum | DocumentMasters_docChecklistIntegrationSets_rowNum |
      | document_masters.xlsx | document_checklists                | doc_checklist_integration_sets              | 1                                         | 13                                                 |


#    #Pre-requisite - And document checklist already maintained in document checklist master
#      #  06_CAS-76451
#    # FeatureID-CAS-76451,ACAUTOCAS-252,ACAUTOCAS-253,ACAUTOCAS-254,ACAUTOCAS-255
#  Scenario: ACAUTOCAS-8572:  User should be able to view Show Hide option on document checklist window opened from Integration Set
#    And document checklist already maintained in document checklist master
#    And document checklist integration set already saved with all details of stage, reference type, entity
#    And Checklist Rule mapping already created with rules mapped
#    When user clicks on VIEW option on Checklist Rule Mapping grid on Document Checklist Integration Set
#    Then user should be able to view Show Hide column on document Checklist opened from Integration Set


#Pre-requisite - And document checklist already maintained in document checklist master
#    And document checklist integration set already saved with all details of stage, reference type, entity
#    And Checklist Rule mapping already created with rules mapped
  #  06_CAS-76451
    # FeatureID-ACAUTOCAS-1,ACAUTOCAS-252,ACAUTOCAS-253,ACAUTOCAS-254,ACAUTOCAS-255,CAS-76451
  @ImplementedBy-rishabh.sachan
  @Conventional
  @Islamic
  Scenario Outline: ACAUTOCAS-8573:  User should be able to <Action> columns for display on document checklist window opened from Integration Set
    And user navigates to Document Checklist Integration sets master from menu
    And user reads data from the excel file "<DocumentMastersWB>" under sheet "<DocumentMasters_docChecklistIntegrationSets>" and row <DocumentMasters_docChecklistIntegrationSets_rowNum>
    And user edits an already created Document Checklist Integration Set record
    And user clicks on VIEW option on Checklist Rule Mapping grid on Document Checklist Integration Set
    When user clicks on Show Hide option on document Checklist opened from Integration Set
    And user "<Action>" column name on document Checklist opened from Integration Set
    Then user should be able to "<Action>" columns for display from columns list visible on modal window
    Examples:
      | Action   | DocumentMastersWB     | DocumentMasters_docChecklistIntegrationSets | DocumentMasters_docChecklistIntegrationSets_rowNum |
      | select   | document_masters.xlsx | doc_checklist_integration_sets              | 13                                                 |
      | unselect | document_masters.xlsx | doc_checklist_integration_sets              | 13                                                 |


#Pre-requisite - And document checklist already maintained in document checklist master
#  And document checklist integration set already saved with all details
  #  07_CAS-76451
    # FeatureID-ACAUTOCAS-1,ACAUTOCAS-252,ACAUTOCAS-253,ACAUTOCAS-254,ACAUTOCAS-255,CAS-76451
  @ImplementedBy-rishabh.sachan
  @Conventional
  @Islamic
  Scenario Outline: ACAUTOCAS-8574:User should be able to search checklist set through stage name from Integration Set
    When user navigates to Document Checklist Integration sets master from menu
    And user search a record through "<Stage_Name>" in Document Checklist Integration sets
    Then Record should be searched through "<Stage_Name>" from document Checklist Integration Set Master
    Examples:
      | Stage_Name    |
      | Pre Approval  |
      | Post Approval |
      | Disbursal     |


     #Defects
###Bug:CAS-125530
#FeatureID-ACAUTOCAS-252,ACAUTOCAS-253,ACAUTOCAS-254,ACAUTOCAS-255,CAS-125530
  @ImplementedBy-rishabh.sachan
  @Conventional
  @Islamic
  Scenario Outline: ACAUTOCAS-8601:  Upload results in document checklist integration master should be proper
    And user reads data from the excel file "<DocumentMastersWB>" under sheet "<DocumentMasters_docChecklistIntegrationSets>" and row <DocumentMasters_docChecklistIntegrationSets_rowNum>
    And user navigates to Document Checklist Integration sets master from menu
    When user uploads a blank file in Document Checklist Integration sets
    Then user should get a reject "<Status>" file with content as
      | Total Records Successful 0 | 9  |
      | Total Records Rejected 0   | 10 |
    Examples:
      | Status       | DocumentMastersWB     | DocumentMasters_docChecklistIntegrationSets | DocumentMasters_docChecklistIntegrationSets_rowNum |
      | UploadStatus | document_masters.xlsx | doc_checklist_integration_sets              | 9                                                  |
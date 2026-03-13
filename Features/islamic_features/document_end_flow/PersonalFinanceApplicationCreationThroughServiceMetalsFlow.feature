@Epic-Document
@AuthoredBy-rishabh.garg
@ImplementedBy-rishabh.garg
@Islamic
@Release @E2E
#FeatureID-ACAUTOCAS-15171
Feature: Capturing_Document_Through_Application_Creation_Service_Personal_Finance_Metals_Flow

Scenario: ACAUTOCAS-15724: User should be able to disburse the personal finance metals flow successfully with document status updated through application service
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user creates an application of "IPF" product type as "indiv" applicant at "sourcing" for "metals" with "e2esingle" from web service
    And user opens an application of "IPF" product type as "indiv" applicant at "sourcing" for "metals" with "e2esingle" from application grid
    And user selects document tab
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | service_creation_documents | 0 |
      | document_end_flow.xlsx | service_creation_documents | 1 |
      | document_end_flow.xlsx | service_creation_documents | 2 |
      | document_end_flow.xlsx | service_creation_documents | 3 |
    And user clicks on move to next stage
    And user verify application at "Login Acceptance"
    And user opens an application of "Login Acceptance" stage present in context from application grid
    And user selects document tab
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | service_creation_documents | 0 |
      | document_end_flow.xlsx | service_creation_documents | 1 |
      | document_end_flow.xlsx | service_creation_documents | 2 |
      | document_end_flow.xlsx | service_creation_documents | 3 |
    And user selects the document with document status
      | document_end_flow.xlsx | service_creation_documents | 4 |
    And user submit the documents with wait
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "service_creation_documents" and row 4
    And user selects the document
    And user selects edit option from top panel of document viewer
    And user should be able to edit the document
    And user reads data from the excel file "login_acceptance_end_flow.xlsx" under sheet "login_acceptance_details" and row 0
    And user opens acceptance sheet
    And user fills Acceptance sheet details
    And user clicks on move to next stage
    And user verify application at "KYC"
    And user opens an application of "KYC" stage present in context from application grid
    And user reads data from the excel file "kyc_check.xlsx" under sheet "decision" and row 8
    And user fills the Kyc check details for primary applicant
    And user fills decision details for Kyc check
    And user clicks on move to next stage
    And user verify application at "CREDIT_BUREAU_REFERRAL"
    And user opens an application of "CREDIT_BUREAU_REFERRAL" stage present in context from application grid
    And user reads data from the excel file "credit_bureau_referral_end_flow.xlsx" under sheet "credit_bureau_check" and row 0
    And user fills credit bureau details
    And user clicks on move to next stage
    And user verify application at "DDE"
    And user opens an application of "DDE" stage present in context from application grid
    And user reads data from the excel file "repayment_parameters.xlsx" under sheet "repayment_parameters" and row 0
    And user fills repayment parameter
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 617
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 3
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "property_address" and row 0
    And user enters mandatory fields of address details of collateral subtype
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 617
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user selects document tab
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | service_creation_documents | 4 |
    And user uploads image with particular formats for received documents
      | document_end_flow.xlsx | service_creation_documents | 5 | txt  |
      | document_end_flow.xlsx | service_creation_documents | 5 | zip  |
      | document_end_flow.xlsx | service_creation_documents | 5 | docx |
      | document_end_flow.xlsx | service_creation_documents | 5 | doc  |
      | document_end_flow.xlsx | service_creation_documents | 5 | odt  |
    And user submit the documents with wait
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "service_creation_documents" and row 4
    And user selects the document
    And user click on zoning option on document viewer to resize the image
    And user zone the image
    And user should be able to resize document image
    And user clicks on move to next stage
    And user verify application at "FII"
    And user opens an application of "FII" stage present in context from application grid
    And user reads data from the excel file "fii_details_end_flow.xlsx" under sheet "initiation" and row 1
    And user fills "Waived of All" fii details
    And user clicks on move to next stage
    And user reads data from the excel file "rcu_initiation.xlsx" under sheet "home" and row 1
    And user verify application at "RCU_INITIATION"
    And user navigates to rcu initiation screen
    And user searches application on "RCU INITIATION" screen along with status
    And user selects the application in rcu initiation
    And user waive off the application
    And user verify application at "COLLATERAL INVESTIGATION INITIATION"
    And user opens an application of "COLLATERAL INVESTIGATION INITIATION" stage present in context from application grid
    And user reads data from the excel file "collateral_investigation_initiation.xlsx" under sheet "home" and row 0
    And user fills "Waived of All" cii details
    And user clicks on move to next stage
    And user verify application at "Recommendation"
    And user opens an application of "Recommendation" stage present in context from application grid
    And user selects document tab
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "service_creation_documents" and row 6
    And user selects the document
    And user selects document status as "Received"
    And user sends scan request to ECM
    And user saves the scan rescan request
    And user submit the documents with wait
    And user switch and close next tab
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 0
    And user fills all mandatory fields required for security conditions on recommendation stage
            ##update checklist done
#    And user logout from CAS
#    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user creates a new document in common masters for "Credit Approval" of "PF"
#    And user logout from CAS
#    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
#    And user approves newly created document
#    And user creates a new document checklist in common masters for "Credit Approval" of "PF"
#    And user logout from CAS
#    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user approves newly created document checklist
#    And user has modified the document checklist integration set master of "Credit Approval" of "PF"
#    And user logout from CAS
#    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
#    And user has approved the changes in document checklist master
#    And user logout from CAS
#    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application at "Recommendation" stage from application grid
#    And user selects document tab
#    And user updates the document checklist
#    And user should see the refreshed document checklist with newly added document
#    And user switch and close next tab
    And user reads data from the excel file "recommendation_end_flow.xlsx" under sheet "decision_justification" and row 0
    And user complete the decision process
    ##need to add steps of application summary report after configuration will be turned on
    And user clicks on move to next stage
    And user verify application at "Credit Approval"
    And user opens an application at "Credit Approval" stage from application grid
    And user re-run the deviation policy
        And user edit underwriter decision
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 0
    And user fills security condition at credit approval stage
    And user reads data from the excel file "credit_approval_end_flow.xlsx" under sheet "underwriter_decision" and row 0
    And user fills approval checklist with saving underwriter decision
    And user clicks on move to next stage
    And user verify application at "Reconsideration"
    And user opens an application of "Reconsideration" stage present in context from application grid
    And user clicks on move to next stage
    And user verify application at "Post Approval"
    And user opens an application of "Post Approval" stage present in context from application grid
    And user opens metal allocation tab
    And user clicks on metal purchase button
    And user clicks on metal sell button
    And user generate certificates for metal purchase
    And user generate certificates for metal sell
    And user is on conditions tab
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 0
    And user fills all mandatory fields required for security conditions
    And user clicks on save on security conditions
    And user selects document tab
    And user selects the document with document status
      | document_end_flow.xlsx | service_creation_documents | 4 |
    And user submit the documents with wait
    And user selects the document
    And user selects edit option from top panel of document viewer
    And user should be able to edit the document
    And user complete document printing tab
    And user clicks on move to next stage
    And user verify application at "Disbursal"
    And user opens an application of "Disbursal" stage present in context from application grid
    And user is on conditions tab
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 3
    And user fills all mandatory fields required for security conditions with upload
    And user clicks on save on security conditions
    And user selects document tab
    And user uploads image with particular formats for received documents
      | document_end_flow.xlsx | service_creation_documents | 5 | txt  |
      | document_end_flow.xlsx | service_creation_documents | 5 | zip  |
      | document_end_flow.xlsx | service_creation_documents | 5 | docx |
      | document_end_flow.xlsx | service_creation_documents | 5 | doc  |
      | document_end_flow.xlsx | service_creation_documents | 5 | odt  |
    And user submit the documents with wait
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 0
    And user moves to main tab of "disbursal"
    And user clicks on add entry on disbursal page
    And user fills mandatory field in disbursal entry for "Personal Loan"
    And user fills disbursal Checklist
    And user opens payee details on disbursal
    And user selects payment mode as "Cheque"
    And user fills dealing bank in payee details
    And user saves the disbursal
    And user initiate disbursal
    And user verify application at "Disbursal Author"
    And user logout from CAS
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigate to disbursal author Screen
    And user opens an application present in context from disbursal author grid
    And Author accepts the disbursal application on disbursal author page
    And user opens an application present in context from sent to ops grid
    And user selects document tab
    And user filter the document for "Pre Approval"
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | service_creation_documents | 1 |
      | document_end_flow.xlsx | service_creation_documents | 2 |
      | document_end_flow.xlsx | service_creation_documents | 3 |
      | document_end_flow.xlsx | service_creation_documents | 4 |
    And user filter the document for "Post Approval"
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | service_creation_documents | 4 |
    And user filter the document for "Disbursal"
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | service_creation_documents | 5 |
    And user opens an application present in context from sent to ops grid
    And user captures the LAN no of the application
    And user logout from CAS
    And user logged in "ECM" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Task grid of ECM
    And user search for an application from context in ECM
    And user opens first task assigned to application in ECM
    Then ECM task will have the list of documents selected from CAS screen along with the comments

@Epic-Document
@AuthoredBy-rishabh.garg
@ImplementedBy-rishabh.garg
@Islamic
@Release @E2E
#FeatureID-ACAUTOCAS-15171
Feature: Capturing_Group_Document_Personal_Finance_Bonds_Flow

  Scenario: ACAUTOCAS-15923: User should be able to disburse the personal finance bonds successfully with group document status updated
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user create new application for "Personal Finance"
    And user reads data from the excel file "personal_information_end_flow.xlsx" under sheet "home" and row 0
    And user enters personal information details
    And user clicks on proceed
    And user verify the personal information details
    And user fills identification details on personal information
      | personal_information_end_flow.xlsx | identification_details | 2 |
    And user enters address details on personal information
      | personal_information_end_flow.xlsx | address_details | 0 |
    And user checks for duplicates
    And user verify the identification details with "save" address details
    And user gets re-initiate button enabled for different match type
      | personal_information_end_flow.xlsx | address_details | 0 |
      | personal_information_end_flow.xlsx | address_details | 1 |
      | personal_information_end_flow.xlsx | address_details | 2 |
    And user reads data from the excel file "personal_information_end_flow.xlsx" under sheet "communication_details" and row 0
    And user enters communication details on personal information
    And user reads data from the excel file "personal_information_end_flow.xlsx" under sheet "family_details" and row 0
    And user enters family details on personal information
    And user reads data from the excel file "personal_information_end_flow.xlsx" under sheet "education_details" and row 0
    And user enters education details on personal information
    And user saves the applicant information details
    And education details should be saved successfully
    And user clicks on save and next
    And user navigates to Employment Details tab
    And user reads data from the excel file "employment_details_end_flow.xlsx" under sheet "salaried" and row 0
    And user enters employment details for "Salaried" type on personal information
    And user verify the employment details with "Save" on employment details
    And user navigates to Financial Details tab
    And user reads data from the excel file "financial_details_end_flow.xlsx" under sheet "income_details" and row 0
    And user enters income details on Financial Details Screen
    And user reads data from the excel file "financial_details.xlsx" under sheet "other_income_details" and row 151
    And user fill other income details with "single" income head
    And user reads data from the excel file "financial_details_end_flow.xlsx" under sheet "deductions" and row 0
    And user enters deduction details on Financial Details Screen
    And user reads data from the excel file "financial_details_end_flow.xlsx" under sheet "expense_details" and row 0
    And user enters expense details on Financial Details Screen
    And user reads data from the excel file "financial_details_end_flow.xlsx" under sheet "asset_details" and row 0
    And user enters asset details on Financial Details Screen
    And user reads data from the excel file "financial_details.xlsx" under sheet "liability_details" and row 186
    And user clicks on liability details
    And user clicks on Add Liability
    And user fill all fields of liability details
    And user save and compute the financial details
# And user verify the financial details
    And click on save and next button on financial details
    And user clicks on Bank and Credit Details
    And user reads data from the excel file "bank_credit_card_details.xlsx" under sheet "bank_details" and row 53
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details
# And user clicks on Add view Bank Details hyperlink
# And user select checkbox for Consider for Consolidated ABB option on Add view Bank Details
# And user upload the bank details file in Add view Bank details
# And user saves Add view Bank details
    And user reads data from the excel file "bank_credit_card_details.xlsx" under sheet "card_details" and row 0
    And user adds credit card details with "all" fields
    And user verify bank credit card details
    And user clicks on save and next button in Bank details
    And user opens applicant information page of "lead details"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 265
    And user adds "Co" applicant
    And user reads data from the excel file "personal_information_end_flow.xlsx" under sheet "home" and row 0
    And user enters personal information details
    And user clicks on proceed
    And user verify the personal information details
    And user fills identification details on personal information
      | personal_information_end_flow.xlsx | identification_details | 5 |
    And user enters address details on personal information
      | personal_information_end_flow.xlsx | address_details | 0 |
    And user checks for duplicates
    And user verify the identification details with "save" address details
    And user gets re-initiate button enabled for different match type
      | personal_information_end_flow.xlsx | address_details | 0 |
      | personal_information_end_flow.xlsx | address_details | 1 |
      | personal_information_end_flow.xlsx | address_details | 2 |
    And user reads data from the excel file "personal_information_end_flow.xlsx" under sheet "communication_details" and row 0
    And user enters communication details on personal information
    And user reads data from the excel file "personal_information_end_flow.xlsx" under sheet "family_details" and row 0
    And user enters family details on personal information
    And user reads data from the excel file "personal_information_end_flow.xlsx" under sheet "education_details" and row 0
    And user enters education details on personal information
    And user saves the applicant information details
    And education details should be saved successfully
    And user clicks on save and next
    And user navigates to Loan Details Tab
    And user reads data from the excel file "sourcing_details_end_flow.xlsx" under sheet "home" and row 4
    And user enters all required details on Sourcing Details screen
    And user selects document tab
    And user selects the document with document status
      | document_end_flow.xlsx | group_documents | 0 |
      | document_end_flow.xlsx | group_documents | 1 |
      | document_end_flow.xlsx | group_documents | 2 |
      | document_end_flow.xlsx | group_documents | 3 |
    And user submit the documents with wait
    And user clicks on move to next stage
    And user verify application at "Login Acceptance"
    And user opens an application of "Login Acceptance" stage present in context from application grid
    And user selects document tab
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | group_documents | 0 |
      | document_end_flow.xlsx | group_documents | 1 |
      | document_end_flow.xlsx | group_documents | 2 |
      | document_end_flow.xlsx | group_documents | 3 |
    And user selects the document with document status
      | document_end_flow.xlsx | group_documents | 4 |
      | document_end_flow.xlsx | group_documents | 5 |
      | document_end_flow.xlsx | group_documents | 6 |
      | document_end_flow.xlsx | group_documents | 7 |
    And user verify the mandatory non mandatory documents
      | document_name    | mandatory_nonmandatory |
      | Aadhar Card      | mandatory              |
      | PAN Card         | nonmandatory           |
      | Occupancy Proof  | nonmandatory           |
      | Insurance Letter | nonmandatory           |
      | Cover Note       | nonmandatory           |
      | Driving Liscence | nonmandatory           |
      | Loan Paper       | mandatory              |
      | Credit Report    | nonmandatory           |
      | Ration Card      | mandatory              |
      | VoterId          | mandatory              |
      | Salary Slip      | nonmandatory           |
      | Bank Statement   | nonmandatory           |
      | Address Proof    | nonmandatory           |
      | Income Pro       | nonmandatory           |
      | Electricity Bill | mandatory              |
      | Rent Agreement   | nonmandatory           |
    And user submit the documents with wait
    And user reads data from the excel file "login_acceptance_end_flow.xlsx" under sheet "login_acceptance_details" and row 0
    And user opens acceptance sheet
    And user fills Acceptance sheet details
    And user clicks on move to next stage
    And user verify application at "KYC"
    And user opens an application of "KYC" stage present in context from application grid
    And user reads data from the excel file "kyc_check.xlsx" under sheet "decision" and row 8
#    And user fills the Kyc check details for primary applicant
#    And user fills the Kyc check details for secondary applicant
    And user fills the Kyc check details for all applicant
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
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 16
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "fixed_deposit" and row 0
    And user fills mandatory fields of collateral sub type fixed deposit
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user selects document tab
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | group_documents | 4 |
      | document_end_flow.xlsx | group_documents | 5 |
      | document_end_flow.xlsx | group_documents | 6 |
      | document_end_flow.xlsx | group_documents | 7 |
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "group_documents" and row 8
    And user selects the document
    And user saves document in context
    And user select the documents status as "Received"
    And user uploads document with "xlsx" format
    And user submit the documents with wait
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "group_documents" and row 9
    And user selects the document
    And user select the documents status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user selects the document
    And user select "Swap Image" image link
    And user "Swap" the document with other document
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "group_documents" and row 8
    And user selects the document
    And document Image should be "Swap Image" Successfully
    And user filter the document for "Customer" reference type
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "group_documents" and row 8
    And user selects the document
    And user selects document status as "Received"
    And user upload the document
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "group_documents" and row 9
    And user saves document in context
    And user selects the document
    And user selects document status as "Received"
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "group_documents" and row 8
    And user selects the document
    And user select "Link" image link
    And user "Link" the document with other document
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "group_documents" and row 9
    And user selects the document
    And document Image should be "Link" Successfully
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "group_documents" and row 10
    And user search document name
    And user should able verify search option with document name successfully
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "group_documents" and row 10
    And user selects reference type filter
    And user verify the filtration as per the applied filter criteria
    And user submit the document
    And user clicks on move to next stage
#    And user navigates to document approval grid
#    And user searches for application from context in document approval grid
#    And user should see mandatory deferred waived off documents to approve
#      | document_end_flow.xlsx | group_documents | 6 |
#      | document_end_flow.xlsx | group_documents | 7 |
# And user search and assign application from context to itself in document approval grid
# And user click on Assign
# And user search assigned application from context in document approval grid
# And user click on Multiple Select Application
# And user reads data from the excel file "document.xlsx" under sheet "document_approval" and row 0
# And user select decision "Approve" on Multiple Application
# And user fill the reason for Document Approval Grid regarding the "Approve" Decision
    And user verify application at "FII"
    And user opens an application of "FII" stage present in context from application grid
    And user reads data from the excel file "fii_details_end_flow.xlsx" under sheet "initiation" and row 0
    And user fills "Waived of All" fii details
    And user clicks on move to next stage
    And user verify application at "RCU_INITIATION"
    And user navigates to rcu initiation screen
    And user clear rcu status filter
    And user searches the application from context in rcu
    And user clicks on search application at rcu initiation stage
    And user change status to initiated at rcu initiation stage
    And user sets new "rcu_initiation" stage in context
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "document_rcu" and row 2
    And user marks document rcu status as "Sampling Required"
    And user selects reason and agency depending on rcu status
    And user submit the documents with wait
    And user closes the document sampling modal
    And user saves the result after adding the reason
    And user verify application at "SAMPLING"
    And user reopens the application of rcu "verification" from context
    And user reads data from the excel file "document.xlsx" under sheet "document_rcu" and row 50
    And user enters the sampling status as "Positive"
    And user enters verifier agent name
    And user submit the documents with wait
    And user closes the document sampling modal
    And user selects the application in rcu verification page
    And user saves the status in rcu verification in rcu verification page
    And user verify application at "RCU_REFERRAL"
    And user navigates to rcu referral screen
    And user sets new "rcu_indiv_referral" stage in context
    And user search the application in rcu referral
    And user sets the final decision as "Positive"
    And user saves the decision in rcu referral page
    And user verify application at "Recommendation"
    And user opens an application of "Recommendation" stage present in context from application grid
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 0
    And user fills all mandatory fields required for security conditions on recommendation stage
    And user reads data from the excel file "recommendation_end_flow.xlsx" under sheet "decision_justification" and row 0
    And user complete the decision process
##need to add steps of application summary report after configuration will be turned on
    And user clicks on move to next stage
    And user verify application at "Credit Approval"
    And user opens an application at "Credit Approval" stage from application grid
    And user selects document tab
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "group_documents" and row 11
    And user selects the document
    And user selects document status as "Received"
    And user sends scan request to ECM
    And user saves the scan rescan request
    And user submit the documents with wait
    And user switch and close next tab
# #update checklist done
# And user logout from CAS
# And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
# And user creates a new document in common masters for "Credit Approval" of "PF"
# And user logout from CAS
# And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
# And user approves newly created document
# And user creates a new document checklist in common masters for "Credit Approval" of "PF"
# And user logout from CAS
# And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
# And user approves newly created document checklist
# And user has modified the document checklist integration set master of "Credit Approval" of "PF"
# And user logout from CAS
# And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
# And user has approved the changes in document checklist master
# And user logout from CAS
# And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
# And user opens an application at "Credit Approval" stage from application grid
# And user selects document tab
# And user updates the document checklist
# And user should see the refreshed document checklist with newly added document
# And user switch and close next tab
    And user re-run the deviation policy
    And user edit underwriter decision
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 0
    And user fills security condition at credit approval stage
    And user reads data from the excel file "credit_approval_end_flow.xlsx" under sheet "underwriter_decision" and row 0
    And user fills approval checklist with saving underwriter decision
    And user clicks on move to next stage
    And user verify application at "Reconsideration"
    And user opens an application of "Reconsideration" stage present in context from application grid
    And user selects document tab
    And user marks bulk status of selected parent document
      | document_end_flow.xlsx | group_documents | 12 |
      | document_end_flow.xlsx | group_documents | 13 |
      | document_end_flow.xlsx | group_documents | 14 |
      | document_end_flow.xlsx | group_documents | 15 |
    And user submit the document
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | group_documents | 12 |
      | document_end_flow.xlsx | group_documents | 13 |
      | document_end_flow.xlsx | group_documents | 14 |
      | document_end_flow.xlsx | group_documents | 15 |
    And user checks input box of "Select All" document from document list
    And user selects "Download All" tab in document
    And document should be downloaded successfully
    And user switch and close next tab
    And user clicks on move to next stage
    And user verify application at "Post Approval"
    And user opens an application of "Post Approval" stage present in context from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user is on conditions tab
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 0
    And user fills all mandatory fields required for security conditions
    And user clicks on save on security conditions
    And user selects document tab
    And user selects the document with document status
      | document_end_flow.xlsx | group_documents | 0 |
      | document_end_flow.xlsx | group_documents | 1 |
      | document_end_flow.xlsx | group_documents | 2 |
      | document_end_flow.xlsx | group_documents | 3 |
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "group_documents" and row 16
    And user selects the document
    And user selects document status as "Pending"
    And user clicks OTC checkbox for "Pending with OTC"
    And user adds the file as an attachments
    And user submit the documents with wait
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | group_documents | 0 |
      | document_end_flow.xlsx | group_documents | 1 |
      | document_end_flow.xlsx | group_documents | 2 |
      | document_end_flow.xlsx | group_documents | 3 |
    And user complete document printing tab
    And user clicks on move to next stage
    And user verify application at "Disbursal"
    And user opens an application of "Disbursal" stage present in context from application grid
    And user is on conditions tab
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 3
    And user fills all mandatory fields required for security conditions with upload
    And user clicks on save on security conditions
    And user selects document tab
    And user filter the document for "Post Approval"
# need to clarify unable to change recieved doc status
    And user selects the document with document status
      | document_end_flow.xlsx | group_documents | 17 |
      | document_end_flow.xlsx | group_documents | 18 |
      | document_end_flow.xlsx | group_documents | 19 |
      | document_end_flow.xlsx | group_documents | 20 |
    And user submit the documents with wait
    And user filter the document for "Post Approval"
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | group_documents | 17 |
      | document_end_flow.xlsx | group_documents | 18 |
      | document_end_flow.xlsx | group_documents | 19 |
      | document_end_flow.xlsx | group_documents | 20 |
    And user filter the document for "Disbursal"
    And user selects the document with document status
      | document_end_flow.xlsx | group_documents | 0 |
      | document_end_flow.xlsx | group_documents | 1 |
      | document_end_flow.xlsx | group_documents | 2 |
      | document_end_flow.xlsx | group_documents | 3 |
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "group_documents" and row 16
    And user selects the document
    And user selects document status as "Pending"
#Error in saving otc doc need to verify
    And user clicks OTC checkbox for "Pending with OTC"
    And user adds the file as an attachments
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
      | document_end_flow.xlsx | group_documents | 22 |
      | document_end_flow.xlsx | group_documents | 23 |
      | document_end_flow.xlsx | group_documents | 24 |
      | document_end_flow.xlsx | group_documents | 25 |
      | document_end_flow.xlsx | group_documents | 26 |
      | document_end_flow.xlsx | group_documents | 27 |
      | document_end_flow.xlsx | group_documents | 28 |
      | document_end_flow.xlsx | group_documents | 29 |
      | document_end_flow.xlsx | group_documents | 30 |
      | document_end_flow.xlsx | group_documents | 31 |
    And user filter the document for "Post Approval"
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | group_documents | 32 |
      | document_end_flow.xlsx | group_documents | 33 |
      | document_end_flow.xlsx | group_documents | 34 |
      | document_end_flow.xlsx | group_documents | 35 |
      | document_end_flow.xlsx | group_documents | 36 |
      | document_end_flow.xlsx | group_documents | 37 |
    And user filter the document for "Disbursal"
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | group_documents | 0 |
      | document_end_flow.xlsx | group_documents | 1 |
      | document_end_flow.xlsx | group_documents | 2 |
      | document_end_flow.xlsx | group_documents | 3 |
    And user opens an application present in context from sent to ops grid
    And user captures the LAN no of the application
    And user logout from CAS
    And user logged in "ECM" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Task grid of ECM
    And user search for an application from context in ECM
    And user opens first task assigned to application in ECM
    Then ECM task will have the list of documents selected from CAS screen along with the comments

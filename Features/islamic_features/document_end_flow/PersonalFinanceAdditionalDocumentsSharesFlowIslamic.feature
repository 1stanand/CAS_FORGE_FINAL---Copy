@Epic-Document
@AuthoredBy-rishabh.garg
@ImplementedBy-rishabh.garg
@Islamic
@Release @E2E
#FeatureID-ACAUTOCAS-15171
Feature: Capturing_Additional_Document_Personal_Finance_Shares_Flow

Scenario: ACAUTOCAS-15725: User should be able to disburse the Personal finance shares flow successfully with additional document status updated
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
#    And user verify the financial details
    And click on save and next button on financial details
    And user clicks on Bank and Credit Details
    And user reads data from the excel file "bank_credit_card_details.xlsx" under sheet "bank_details" and row 53
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details
#    And user clicks on Add view Bank Details hyperlink
#    And user select checkbox for Consider for Consolidated ABB option on Add view Bank Details
#    And user upload the bank details file in Add view Bank details
#    And user saves Add view Bank details
    And user reads data from the excel file "bank_credit_card_details.xlsx" under sheet "card_details" and row 0
    And user adds credit card details with "all" fields
    And user verify bank credit card details
    And user clicks on save and next button in Bank details
    And user navigates to Loan Details Tab
    And user reads data from the excel file "sourcing_details_end_flow.xlsx" under sheet "home" and row 0
    And user enters all required details on Sourcing Details screen
    And user selects document tab
    And user adds multiple additional documents
      | document_end_flow.xlsx | additional_documents | 1 |
      | document_end_flow.xlsx | additional_documents | 2 |
      | document_end_flow.xlsx | additional_documents | 3 |
    And user selects the document with document status
      | document_end_flow.xlsx | additional_documents | 1 |
      | document_end_flow.xlsx | additional_documents | 2 |
      | document_end_flow.xlsx | additional_documents | 3 |
    And user submit the documents with wait
    And user clicks on move to next stage
    And user verify application at "Login Acceptance"
    And user opens an application of "Login Acceptance" stage present in context from application grid
    And user selects document tab
    And user adds multiple additional documents
      | document_end_flow.xlsx | additional_documents | 5 |
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | additional_documents | 1 |
      | document_end_flow.xlsx | additional_documents | 2 |
      | document_end_flow.xlsx | additional_documents | 3 |
    And user selects the document with document status
      | document_end_flow.xlsx | additional_documents | 5 |
      | document_end_flow.xlsx | additional_documents | 6 |
      | document_end_flow.xlsx | additional_documents | 7 |
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
    And user reads data from the excel file "shares.xlsx" under sheet "reconsideration" and row 0
    And user fills KYC check details
    And user clicks on move to next stage
    And user verify application at "CREDIT_BUREAU_REFERRAL"
    And user opens an application of "CREDIT_BUREAU_REFERRAL" stage present in context from application grid
    And user reads data from the excel file "credit_bureau_referral_end_flow.xlsx" under sheet "credit_bureau_check" and row 0
    And user fills credit bureau details
    And user clicks on move to next stage
    And user verify application at "DDE"
    And user opens an application of "DDE" stage present in context from application grid
    And user reads data from the excel file "repayment_parameters.xlsx" under sheet "repayment_parameters" and row 120
    And user fills repayment parameter
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 616
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "vehicle_details" and row 259
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "collateral.xlsx" under sheet "invoice_details" and row 62
    And user fill Invoice Details
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user selects document tab
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | additional_documents | 5 |
      | document_end_flow.xlsx | additional_documents | 6 |
      | document_end_flow.xlsx | additional_documents | 7 |
    And user adds multiple additional documents
      | document_end_flow.xlsx | additional_documents | 8 |
      | document_end_flow.xlsx | additional_documents | 9 |
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "additional_documents" and row 8
    And user selects the document
    And user saves document in context
    And user select the documents status as "Received"
    And user uploads document with "xlsx" format
    And user submit the documents with wait
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "additional_documents" and row 9
    And user selects the document
    And user select the documents status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user selects the document
    And user select "Swap Image" image link
    And user "Swap" the document with other document
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "additional_documents" and row 8
    And user selects the document
    And document Image should be "Swap Image" Successfully
    And user filter the document for "Customer" reference type
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "additional_documents" and row 8
    And user selects the document
    And user selects document status as "Received"
    And user upload the document
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "additional_documents" and row 9
    And user saves document in context
    And user selects the document
    And user selects document status as "Received"
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "additional_documents" and row 8
    And user selects the document
    And user select "Link" image link
    And user "Link" the document with other document
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "additional_documents" and row 9
    And user selects the document
    And document Image should be "Link" Successfully
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "additional_documents" and row 21
    And user search document name
    And user should able verify search option with document name successfully
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "additional_documents" and row 21
    And user selects reference type filter
    And user verify the filtration as per the applied filter criteria
    And user submit the document
    And user clicks on move to next stage
#    And user navigates to document approval grid
#    And user search and assign application from context to itself in document approval grid
#    And user click on Assign
#    And user search assigned application from context in document approval grid
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
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | additional_documents | 5 |
      | document_end_flow.xlsx | additional_documents | 6 |
      | document_end_flow.xlsx | additional_documents | 7 |
    And user switch and close next tab
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 0
    And user fills all mandatory fields required for security conditions on recommendation stage
    And user reads data from the excel file "recommendation_end_flow.xlsx" under sheet "decision_justification" and row 0
    And user complete the decision process
    ##need to add steps of application summary report after configuration will be turned on
    And user clicks on move to next stage
    And user verify application at "Credit Approval"
    And user opens an application at "Credit Approval" stage from application grid
    And user selects document tab
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | additional_documents | 5 |
      | document_end_flow.xlsx | additional_documents | 6 |
      | document_end_flow.xlsx | additional_documents | 7 |
    And user adds multiple additional documents
      | document_end_flow.xlsx | additional_documents | 10 |
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "additional_documents" and row 10
    And user selects the document
    And user selects document status as "Received"
    #need to verify with sajja sir about doc at CA
#    And user uploads the document
    And user sends scan request to ECM
    And user saves the scan rescan request
    And user submit the documents with wait
    And user switch and close next tab
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
#    And user opens an application at "Credit Approval" stage from application grid
#    And user selects document tab
#    And user updates the document checklist
#    And user should see the refreshed document checklist with newly added document
#    And user switch and close next tab
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
      | document_end_flow.xlsx | additional_documents | 11 |
      | document_end_flow.xlsx | additional_documents | 12 |
      | document_end_flow.xlsx | additional_documents | 13 |
      | document_end_flow.xlsx | additional_documents | 14 |
    And user submit the document
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | additional_documents | 11 |
      | document_end_flow.xlsx | additional_documents | 12 |
      | document_end_flow.xlsx | additional_documents | 13 |
      | document_end_flow.xlsx | additional_documents | 14 |
    And user switch and close next tab
    And user clicks on move to next stage
    And user verify application at "Purchase Promise"
    And user opens an application of "Purchase Promise" stage present in context from application grid
    And user open investor details tab
    And user add "Multiple" investor details by reading data from
      | shares.xlsx | purchase_promise | 8 |
      | shares.xlsx | purchase_promise | 9 |
    And user clicks on save button on investor details
    And user selects document tab
    And user filter the document for "All stage"
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | additional_documents | 11 |
      | document_end_flow.xlsx | additional_documents | 12 |
      | document_end_flow.xlsx | additional_documents | 13 |
      | document_end_flow.xlsx | additional_documents | 14 |
    And user clicks on move to next stage
    And user verify application at "Share Order"
    And user opens an application of "Share Order" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user selects document tab
    And user filter the document for "All stage"
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | additional_documents | 11 |
      | document_end_flow.xlsx | additional_documents | 12 |
      | document_end_flow.xlsx | additional_documents | 13 |
      | document_end_flow.xlsx | additional_documents | 14 |
    And user clicks on move to next stage
    And user verify application at "SHARE_PURCHASE"
    And user opens an application of "SHARE_PURCHASE" stage present in context from application grid
    And user selects document tab
    And user filter the document for "All stage"
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | additional_documents | 11 |
      | document_end_flow.xlsx | additional_documents | 12 |
      | document_end_flow.xlsx | additional_documents | 13 |
      | document_end_flow.xlsx | additional_documents | 14 |
    And user is on Share Order tab
    And user generates the transaction number
    And user hits the postman API for share purchase
    And user verify application at "Post Approval"
    And user opens an application of "Post Approval" stage present in context from application grid
    And user is on conditions tab
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 0
    And user fills all mandatory fields required for security conditions
    And user clicks on save on security conditions
    And user selects document tab
    And user adds multiple additional documents
      | document_end_flow.xlsx | additional_documents | 15 |
      | document_end_flow.xlsx | additional_documents | 16 |
      | document_end_flow.xlsx | additional_documents | 17 |
      | document_end_flow.xlsx | additional_documents | 18 |
    And user selects the document with document status
      | document_end_flow.xlsx | additional_documents | 15 |
      | document_end_flow.xlsx | additional_documents | 16 |
      | document_end_flow.xlsx | additional_documents | 17 |
      | document_end_flow.xlsx | additional_documents | 18 |
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "additional_documents" and row 19
    And user selects the document
    And user selects document status as "Pending"
    And user clicks OTC checkbox for "Pending with OTC"
    And user adds the file as an attachments
    And user submit the documents with wait
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | additional_documents | 15 |
      | document_end_flow.xlsx | additional_documents | 16 |
      | document_end_flow.xlsx | additional_documents | 17 |
      | document_end_flow.xlsx | additional_documents | 18 |
  And user complete document printing tab
    And user clicks on move to next stage
    And user verify application at "Share Sell"
    And user opens an application of "Share Sell" stage present in context from application grid
    And user click on save button on share sell
    And user click on Release button
    And user selects document tab
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | additional_documents | 15 |
      | document_end_flow.xlsx | additional_documents | 16 |
      | document_end_flow.xlsx | additional_documents | 17 |
      | document_end_flow.xlsx | additional_documents | 18 |
    And user clicks on move to next stage
    And user verify application at "Disbursal"
    And user opens an application of "Disbursal" stage present in context from application grid
    And user is on conditions tab
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 3
    And user fills all mandatory fields required for security conditions with upload
    And user clicks on save on security conditions
    And user selects document tab
    And user filter the document for "Post Approval"
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | additional_documents | 15 |
      | document_end_flow.xlsx | additional_documents | 16 |
      | document_end_flow.xlsx | additional_documents | 17 |
      | document_end_flow.xlsx | additional_documents | 18 |
    And user filter the document for "Disbursal"
    And user reads data from the excel file "document_end_flow.xlsx" under sheet "additional_documents" and row 20
    And user selects the document
    And user selects document status as "Pending"
    #Error in saving otc doc need to verify
    And user clicks OTC checkbox for "Pending with OTC"
    And user adds the file as an attachments
    And user submit the documents with wait
    And user filter the document for "all stage"
    And user checks input box of "Select All" document from document list
    And user selects "Download All" tab in document
    And document should be downloaded successfully
    ##need to verify download document in final then condition
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
      | document_end_flow.xlsx | additional_documents | 5 |
      | document_end_flow.xlsx | additional_documents | 6 |
      | document_end_flow.xlsx | additional_documents | 7 |
    And user filter the document for "Post Approval"
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | additional_documents | 15 |
      | document_end_flow.xlsx | additional_documents | 16 |
      | document_end_flow.xlsx | additional_documents | 17 |
      | document_end_flow.xlsx | additional_documents | 18 |
    And user filter the document for "Disbursal"
    And user should be able to verify document status in next stage
      | document_end_flow.xlsx | additional_documents | 20 |
    And user opens an application present in context from sent to ops grid
    And user captures the LAN no of the application
    And user logout from CAS
    And user logged in "ECM" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Task grid of ECM
    And user search for an application from context in ECM
    And user opens first task assigned to application in ECM
    Then ECM task will have the list of documents selected from CAS screen along with the comments

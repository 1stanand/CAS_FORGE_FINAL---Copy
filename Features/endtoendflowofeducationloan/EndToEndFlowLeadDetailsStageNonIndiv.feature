#@AuthoredBy-harshita.nayak
#@ImplementedBy-harshita.nayak
#@Conventional
#@E2EOrder
#@Release
#@LeadDetailsNonIndiv
#  #FeatureID-ACAUTOCAS-17204
#Feature: End to end work flow for All LOB Order Wise

######################################### STAGE 1 : LEAD DETAILS STAGE ##################################################################################################################

#---------------------------------------------- APPLICANT INFO ----------------------------------------------------------------------------------------------------------------------------------------------------------

#################################################### CUSTOMER DETAILS TAB ###################################################################
#
#  Scenario Outline: Validate application number generation after proceeding with customer details of applicant of <ProductType> LogicalID <LogicalID>
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user starts creating application of logical id "<LogicalID>"
#    And user create new non individual application for "<ProductType>"
#    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
#    When user enters customer details
#    And user clicks on proceed non individual
#    Then "Application Number" should be display at the top of customer details screen
#
#    Examples:
#      | LogicalID | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | ProductType             |
#      | CV00001   | customer_details.xlsx | home                 | 113                         | Commercial Vehicle Loan |
#
#
#  Scenario Outline: Save customer details after filling the data at lead details stage for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "lead details" stage present in context from application grid
##    And user opens applicant information page of "lead details"
##    And user views and edit applicant details for "nonindiv" "" applicant type
#    When user fill identification details for customer details
#      | customer_details.xlsx | identification | 172 |
#      | customer_details.xlsx | identification | 173 |
#      | customer_details.xlsx | identification | 174 |
#      | customer_details.xlsx | identification | 175 |
#    And user enters organization address for customer details
#      | personal_information.xlsx | address | 120 | Alternate Business Address |
#      | personal_information.xlsx | address | 127 | Office/ Business Address |
#    And user clicks on check for Duplicates
#    And user clicks "Save" button
#    Then customer Details should be Saved successfully
#    Examples:
#      | LogicalID | ProductType |
#      | CV00001   | CV          |
#
##################################################### CREDITOR DETAILS TAB ###################################################################
#
#  Scenario Outline: Fill Creditor details of applicant for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "lead details" stage present in context from application grid
##    And user opens applicant information page of "lead details"
##    And user views and edit applicant details for "nonindiv" "" applicant type
#    And user navigate to "CreditorDebtor" tab in applicant information
#    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "creditor_fields" and row <creditor_home_rowNum>
#    When user enters "creditor" details on creditor debtor screen under applicant details
#    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "address" and row <creditor_address_rowNum>
#    And user fills the address details of creditor debtor details
#    And user clicks on done button of "creditor"
#    And user clicks on "save" button to save the record on creditor debtor screen
#    Then "creditor" detail should be saved successfully for creditor debtor details
#    Examples:
#      | LogicalID | ProductType             | creditor_home_rowNum | creditor_address_rowNum |
#      | CV00001   | Commercial Vehicle Loan | 0                    | 0                       |
#      | CV00001   | Commercial Vehicle Loan | 1                    | 1                       |
#
#    #################################################### DEBITOR DETAILS TAB ###################################################################
#
#  Scenario Outline: Fill Debitor details of applicant for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "lead details" stage present in context from application grid
##    And user opens applicant information page of "lead details"
##    And user views and edit applicant details for "nonindiv" "" applicant type
#    And user navigate to "CreditorDebtor" tab in applicant information
#    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "debtor_fields" and row <debtor_home_rowNum>
#    When user enters "debtor" details on creditor debtor screen under applicant details
#    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "address" and row <debtor_address_rowNum>
#    And user fills the address details of creditor debtor details
#    And user clicks on done button of "debtor"
#    And user clicks on "save" button to save the record on creditor debtor screen
#    Then "debtor" detail should be saved successfully for creditor debtor details
#    Examples:
#      | LogicalID | ProductType             | debtor_home_rowNum | debtor_address_rowNum |
#      | CV00001   | Commercial Vehicle Loan | 0                  | 0                     |
#      | CV00001   | Commercial Vehicle Loan | 1                  | 1                     |
##################################################### CONTACT PERSON EMPLOYEE DETAILS TAB ###################################################################
#
#  Scenario Outline: Fill Contact Person Key Employee details of applicant for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "lead details" stage present in context from application grid
##    And user opens applicant information page of "lead details"
##    And user views and edit applicant details for "nonindiv" "" applicant type
#    And user navigates to Contact Person Key Employee Details screen
#    And user reads data from the excel file "contact_person.xlsx" under sheet "home" and row <ContactPerson_home_rowNum>
#    When user add contact person Key Employee Details
#    And user clicks on "Save" button in Contact Person Key Employee Details screen
#    Then Contact Person details should be Saved successfully
#    Examples:
#      | LogicalID | ProductType             | ContactPerson_home_rowNum |
#      | CV00001   | Commercial Vehicle Loan | 170                       |
#      | CV00001   | Commercial Vehicle Loan | 172                       |
#
##################################################### PARTNER DETAILS TAB ###################################################################
#
#
#  Scenario Outline: Fill Partner details of applicant for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "lead details" stage present in context from application grid
##    And user opens applicant information page of "lead details"
##    And user views and edit applicant details for "nonindiv" "" applicant type
#    And user navigates to Partners & Directors
#    When user adds a new partner
#    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row <PartnersAndDirectors_partners_rowNum>
#    And user fills "all" fields in partner details
#    And user runs dedupe of partner
#    And user saves the partner data
#    And user save partner director details
#    Then "partner" detail should be saved successfully
#    Examples:
#      | LogicalID | ProductType             | PartnersAndDirectors_partners_rowNum |
#      | CV00001   | Commercial Vehicle Loan | 144                                   |
#      | CV00001   | Commercial Vehicle Loan | 145                                   |
#
#
#    #################################################### DIRECTOR DETAILS TAB ###################################################################
#  Scenario Outline: Fill Director details of applicant for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "lead details" stage present in context from application grid
##    And user opens applicant information page of "lead details"
##    And user views and edit applicant details for "nonindiv" "" applicant type
#    And user navigates to Partners & Directors
#    When user adds a new director
#    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row <PartnersAndDirectors_partners_rowNum>
#    And user fills "all" fields in director details
#    And user runs dedupe on director screen with wait
#    And user saves the director data
#    And user save partner director details
#    Then "director" detail should be saved successfully
#    Examples:
#      | LogicalID | ProductType             | PartnersAndDirectors_partners_rowNum |
#      | CV00001   | Commercial Vehicle Loan | 110                                  |
#      | CV00001   | Commercial Vehicle Loan | 111                                  |
#
#
##################################################### BUSINESS DETAILS TAB ###################################################################
#
#  Scenario Outline: Fill Business details of applicant for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "lead details" stage present in context from application grid
##    And user opens applicant information page of "lead details"
##    And user views and edit applicant details for "nonindiv" "" applicant type
#    And user navigates to business details
#    And user add new a business details
#    And user reads data from the excel file "applicant_information.xlsx" under sheet "BusinessDetails" and row <RowNum>
#    When user enters data for Business Details
#    And user clicks on "save" in Business Details
#    Then business details should be saved successfully
#    Examples:
#      | LogicalID | ProductType             | RowNum |
#      | CV00001   | Commercial Vehicle Loan | 0      |
#      | CV00001   | Commercial Vehicle Loan | 26     |
#      | CV00001   | Commercial Vehicle Loan | 4      |
#      | CV00001   | Commercial Vehicle Loan | 5      |
#      | CV00001   | Commercial Vehicle Loan | 6      |
#      | CV00001   | Commercial Vehicle Loan | 7      |
#      | CV00001   | Commercial Vehicle Loan | 8      |
#      | CV00001   | Commercial Vehicle Loan | 9      |
#
#    #################################################### MARKET INFORMATION TAB ###################################################################
#
#
#  Scenario Outline: Fill Market Information of applicant for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "lead details" stage present in context from application grid
##    And user opens applicant information page of "lead details"
##    And user views and edit applicant details for "nonindiv" "" applicant type
#    When user navigates to "Market Information"
#    And user reads data from the excel file "applicant_information.xlsx" under sheet "MarketInfo" and row <RowNum>
#    And user enters the data in market information and description of market information
#    And user saves the data market information
#    Then market information should be saved successfully
#
#    Examples:
#      | LogicalID | ProductType             | RowNum |
#      | CV00001   | Commercial Vehicle Loan | 0      |
#
# #################################################### FINANCIAL DETAILS TAB ###################################################################
#
#  Scenario Outline: Save File Upload Preview details under financial details of applicant for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "lead details" stage present in context from application grid
##    And user opens applicant information page of "lead details"
##    And user views and edit applicant details for "nonindiv" "" applicant type
#    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
#    And user open financial details for non individual
#    When user open file upload accordion for file upload for non individual customer
#    And user selects Document Type as "<Document_Type>" document
#    And user fills rest all fields to Download Template
#    And user browse the "appropriate" file
#    And user upload the browsed file
#    And user Save&Compute the financial details for non individual
#    Then file upload preview should be uploaded successfully
#
#    Examples:
#      | LogicalID | Document_Type        | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | ProductType             |
#      | CV00001   | Balance Sheet        | financial_details.xlsx | file_upload_and_preview               | 26                                           | Commercial Vehicle Loan |
#      | CV00001   | Cash Flow            | financial_details.xlsx | file_upload_and_preview               | 27                                           | Commercial Vehicle Loan |
#      | CV00001   | Funds Flow           | financial_details.xlsx | file_upload_and_preview               | 28                                           | Commercial Vehicle Loan |
#      | CV00001   | Income/P&L Statement | financial_details.xlsx | file_upload_and_preview               | 29                                           | Commercial Vehicle Loan |
#
#  Scenario Outline: Save Other Income details under financial details of applicant for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "lead details" stage present in context from application grid
##    And user opens applicant information page of "lead details"
##    And user views and edit applicant details for "nonindiv" "" applicant type
#    And user open financial details for non individual
#    When user open file upload accordion for file upload for non individual customer
#    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_sheet>" and row <FinancialDetails_rowNum>
#    And user fill other income details with "single" income head
#    And user Save&Compute the financial details for non individual
#    Then other income details should save successfully Save&Compute
#
#    Examples:
#      | LogicalID | FinancialDetailsWB     | FinancialDetails_sheet | FinancialDetails_rowNum | ProductType             |
#      | CV00001   | financial_details.xlsx | other_income_details   | 189                     | Commercial Vehicle Loan |
#
#  Scenario Outline: Save Financial details under financial details of applicant for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "lead details" stage present in context from application grid
##    And user opens applicant information page of "lead details"
##    And user views and edit applicant details for "nonindiv" "" applicant type
#    And user open financial details for non individual
#    When user open file upload accordion for file upload for non individual customer
#    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_sheet>" and row <FinancialDetails_rowNum>
#    And user clicks on liability details
#    And user clicks on Add Liability
#    And user fill all fields of liability details
#    And user Save&Compute the financial details for non individual
#    Then financial details should be successfully Save&Compute
#
#    Examples:
#      | LogicalID | FinancialDetailsWB     | FinancialDetails_sheet | FinancialDetails_rowNum | ProductType             |
#      | CV00001   | financial_details.xlsx | liability_details      | 291                     | Commercial Vehicle Loan |
#
#
#     #################################################### MONTHLY DATA TAB ###################################################################
#
#
#  Scenario Outline: Fill Monthly Data of applicant for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "lead details" stage present in context from application grid
##    And user opens applicant information page of "lead details"
##    And user views and edit applicant details for "nonindiv" "" applicant type
#    And user reads data from the excel file "monthly_data.xlsx" under sheet "home" and row <MonthlyData_home_rowNum>
#    And user clicks on Monthly Data Tab under applicant details
#    When user enters month with year in fields
#    And user enter all values month year wise against monthly data category grid
#    And user clicks on "Save" button to save the record
#    Then monthly data should be saved successfully
#
#    Examples:
#      | LogicalID | ProductType             | MonthlyData_home_rowNum |
#      | CV00001   | Commercial Vehicle Loan | 71                      |
#
############################################ BANK/CREDIT CARD DETAILS ########################################################################################################
#
#
#  Scenario Outline: Add Bank and Credit card Details of an applicant of <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "lead details" stage present in context from application grid
##    And user opens applicant information page of "lead details"
##    And user views and edit applicant details for "nonindiv" "" applicant type
#    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankDetails_sheet>" and row <BankDetails_rowNum>
#    And user navigates to Bank Credit Card Details tab
#    And user click on plus sign of Bank Details
#    And user fills all the required details of bank details
#    And user clicks on Add view Bank Details hyperlink
#    And user select checkbox for Consider for Consolidated ABB option on Add view Bank Details
#    And user upload the bank details file in Add view Bank details
#    And user saves Add view Bank details
#    When user saves bank credit card details
#    Then bank credit card details should be saved successfully
#    Examples:
#      | LogicalID | BankCreditCardWB              | BankDetails_sheet | BankDetails_rowNum | ProductType             |
#      | CV00001   | bank_credit_card_details.xlsx | bank_details      | 92                 | Commercial Vehicle Loan |
#
# #################################################### COMMUNICATION DETAILS TAB ###################################################################
#
##  Scenario Outline: Fill Communication details of applicant for <ProductType> LogicalID <LogicalID>
##    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
##    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
###    And user opens an application of "lead details" stage present in context from application grid
###    And user opens applicant information page of "lead details"
###    And user views and edit applicant details for "nonindiv" "" applicant type
##    And user open communication detail for non individual applicant
##    When user selects the radio button of "Office/ Business Address" to make it Primary Address
##    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
##    And user enters communication details for non individual applicant
##    And user clicks "save" communication detail button for non individual applicant
##    Then communication detail should be saved successfully
##
##    Examples:
##      | LogicalID | PersonalInfoWB                     | PersonalInfo_home     | PersonalInfo_home_rowNum | ProductType    |
##      | CV00001  | personal_information_end_flow.xlsx | communication_details | 1                        | Commercial Vehicle Loan  |
#
#
##    #################################################### CORPORATE RATING TAB ###################################################################
##  Scenario Outline: Fill Corporate Rating details of applicant for <ProductType> LogicalID <LogicalID>
##    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
##    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "lead details" stage present in context from application grid
##    And user opens applicant information page of "lead details"
##    And user views and edit applicant details for "nonindiv" "" applicant type
##    And user navigates to Corporate Rating
##    And user clicks on plus icon to add Corporate Rating
##    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
##    When user enters data for Corporate Rating
##    And user saves to add Corporate Rating data
##    Then corporate rating detail should saved successfully
##
##    Examples:
##      | LogicalID | ProductType        | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum |
##      | CV00001   |  Commercial Vehicle Loan | applicant_information.xlsx | corporate_rating                     | 0                                           |
#
# #################################################### SHAREHOLDING DETAILS TAB ###################################################################
#  Scenario Outline: Fill Shareholding details of applicant for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "lead details" stage present in context from application grid
##    And user opens applicant information page of "lead details"
##    And user views and edit applicant details for "nonindiv" "" applicant type
#    And user open share holding details
#    And user create new share holding
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
#    When user fill the share holding details
#    And user save the share Holding Details
#    Then shareholding detail should saved successfully
#
#    Examples:
#      | LogicalID | ProductType             | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum |
#      | CV00001   | Commercial Vehicle Loan | personal_information.xlsx | share_holding                     | 0                        |
#      | CV00001   | Commercial Vehicle Loan | personal_information.xlsx | share_holding                     | 73                       |
#
#     #################################################### KYC DETAILS TAB ###################################################################
#  Scenario Outline: Fill Kyc details of applicant for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "lead details" stage present in context from application grid
##    And user opens applicant information page of "lead details"
##    And user views and edit applicant details for "nonindiv" "" applicant type
#    And user reads data from the excel file "<KycDetailsWB>" under sheet "<KycDetails_sheet>" and row <Kyc_details_rowNum>
#    And user navigates to kyc details of applicant information
#    And user fill kyc details of applicant information for non individual
#    When user click on save button in Kyc details for non individual
#    Then KYC Details of applicant information should be saved successfully
#
#    Examples:
#      | LogicalID | ProductType             | KycDetailsWB                       | KycDetails_sheet       | Kyc_details_rowNum |
#      | CV00001   | Commercial Vehicle Loan | personal_information_end_flow.xlsx | identification_details | 8                  |

    #--------------------------------------------------LOAN DETAILS-----------------------------------------------------------------------------------------
#
#  ################################################# SOURCING DETAILS TAB #########################################################################################################
#
#  Scenario Outline: Fill sourcing details in loan details for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "lead details" stage present in context from application grid
#    And user navigates to Loan Details Tab
#    When user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_sheet>" and row <SourcingDetails_rowNum>
#    And user fills all required details on Sourcing Details screen without save
#    And user saves the sourcing details
#    Then sourcing details should saved successfully
#
#    Examples:
#      | LogicalID | SourcingDetailsWB              | SourcingDetails_sheet | SourcingDetails_rowNum | ProductType             |
#      | CV00001   | sourcing_details_end_flow.xlsx | home                  | 12                     | Commercial Vehicle Loan |
#
#
#
################################################# ASSET DETAILS TAB ##################################################################################
#
#  Scenario Outline: Save Asset details for Commercial Vehicle at Lead Details stage for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "lead details" stage present in context from application grid
##    And user navigates to Loan Details Tab
#    And user opens asset details tab
#    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 81
#    When user fills asset details with "all" fields along with asset type as "New Asset"
#    And user reads data from the excel file "asset_details.xlsx" under sheet "body_details" and row 0
#    And user fills "all" body details
#    And user save body details in asset details
#    And user reads data from the excel file "asset_details.xlsx" under sheet "vehicle_details" and row 138
#    And user fills "all" fields of vehicle details
#    And user checks for the duplicates
#    And user saves asset details home page
#    Then asset details page should be save successfully
#
#    Examples:
#      | LogicalID | ProductType             |
#      | CV00001   | Commercial Vehicle Loan |

#     #----------------------------------------- REFERENCES--------------------------------------------------------------------------------------------------------------
#
################################################## REFERENCES TAB ##################################################################################################
#
#  Scenario Outline:Add References Details with all fields at Lead Details stage for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "lead details" stage present in context from application grid
#    When user open References tab
#    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
#    And user add references details with "all" fields
#    And user save references details
#    Then references details should save successfully
#    Examples:
#      | LogicalID | ProductType             | ReferencesWB    | References_home | References_home_Row |
#      | CV00001   | Commercial Vehicle Loan | references.xlsx | home            | 19                   |


    #------------------------------------------ DOCUMENT ------------------------------------------------------------------------------------------------

############################################ DOCUMENT TAB #######################################################################################################
#
#  Scenario Outline: Submit documents in Documents section at Lead Details stage for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Lead details" stage present in context from application grid
#    And user selects document tab
#    And user reads data from the excel file "<DocumentWB>" under sheet "<Document_home>" and row <Document_home_rowNum>
#    And user selects the document
#    And user selects document status as "Received & Uploaded"
#    When user submit the document
#    Then documents should be submitted successfully
#
#    Examples:
#      | LogicalID | ProductType             |DocumentWB    | Document_home | Document_home_rowNum |
#      | CV00001   | Commercial Vehicle Loan |document.xlsx | home          | 464                  |


######################################### MOVE TO NEXT STAGE ##################################################################################################
#
#  Scenario Outline: Move application to Login Acceptance stage from Lead Details stage for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "Lead details" stage present in context from application grid
#    When user clicks on move to next stage
#    Then Application should move to "Login Acceptance" Stage
#    Examples:
#      | LogicalID | ProductType             |
#      | CV00001   | Commercial Vehicle Loan |


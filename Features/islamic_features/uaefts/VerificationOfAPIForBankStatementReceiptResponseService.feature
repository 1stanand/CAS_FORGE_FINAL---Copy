@Epic-UAEFTS
@PQMStory
@AuthoredBy-aryan.jain
@ImplementedBy-aryan.jain
@Islamic
@Release
@03AprilFix
@Perishable
 # ${ApplicantType:["indiv"]}
Feature: Verification of API For BankStatementReceiptResponse Service

  Background:
    Given user is on CAS Login Page
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

   # PQM-6_CAS-199695
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15966: Execution of BankStatementReceiptResponse service in postman with all mandatory field for <AccountType> at <ApplicationStage> of <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user clicks on Bank Statement Details hyperlink
    And user fills Bank Statement Details with ok
    And user clicks on save button in Bank details
    And user clicks on Fetch Bank button in Bank details
    And user run the query to get transaction number for Bank Statement response from Database
    When user Hits BankStatementReceiptResponseService API
    Then BankStatementReceiptResponseService API runs successfully

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["SOURCING","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 47                                |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 47                                |

   # PQM-10_CAS-199695
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15967:Verify execution of BankStatementReceiptResponse service through POSTMAN when bank acknowledgement code is blank for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user clicks on Bank Statement Details hyperlink
    And user fills Bank Statement Details with ok
    And user clicks on save button in Bank details
    And user clicks on Fetch Bank button in Bank details
    And user run the query to get transaction number for Bank Statement response from Database
    And user provide the bank acknowledgement code as null
    When user Hits BankStatementReceiptResponseService API
    Then proper error code with error message should be displayed in response for BankStatementReceiptResponseService

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["SOURCING","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 62                                |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 62                                |

  # PQM-12_CAS-199695
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15968:Verify execution of BankStatementReceiptResponse service through POSTMAN when transaction number value is incorrect for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user clicks on Bank Statement Details hyperlink
    And user fills Bank Statement Details with ok
    And user clicks on save button in Bank details
    And user clicks on Fetch Bank button in Bank details
    And user run the query to get transaction number for Bank Statement response from Database
    And user provide incorrect transaction number
    When user Hits BankStatementReceiptResponseService API
    Then proper error code with error message should be displayed in response for BankStatementReceiptResponseService

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["SOURCING","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 63                                |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 63                                |

  # PQM-14_CAS-199695
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15969:Verify execution of BankStatementReceiptResponse service through POSTMAN when application id is invalid at for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user clicks on Bank Statement Details hyperlink
    And user fills Bank Statement Details with ok
    And user clicks on save button in Bank details
    And user clicks on Fetch Bank button in Bank details
    And user run the query to get transaction number for Bank Statement response from Database
    And user provides invalid application number
    When user Hits BankStatementReceiptResponseService API
    Then proper error code with error message should be displayed in response for BankStatementReceiptResponseService

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["SOURCING","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 64                                |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 64                                |

  # PQM-15_CAS-199695
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15970:Verify execution of BankStatementReceiptResponse service through POSTMAN when bank acknowledgment code value is greater than 255 for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user clicks on Bank Statement Details hyperlink
    And user fills Bank Statement Details with ok
    And user clicks on save button in Bank details
    And user clicks on Fetch Bank button in Bank details
    And user run the query to get transaction number for Bank Statement response from Database
    And user provide the bank acknowledgement code greater than 255 character
    When user Hits BankStatementReceiptResponseService API
    Then proper error code with error message should be displayed in response for BankStatementReceiptResponseService

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["SOURCING","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 65                                |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 65                                |

  # PQM-18_CAS-199695
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15971:Verify execution of BankStatementReceiptResponse service through POSTMAN when request code value is invalid for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user clicks on Bank Statement Details hyperlink
    And user fills Bank Statement Details with ok
    And user clicks on save button in Bank details
    And user clicks on Fetch Bank button in Bank details
    And user run the query to get transaction number for Bank Statement response from Database
    And user provide invalid request code
    When user Hits BankStatementReceiptResponseService API
    Then proper error code with error message should be displayed in response for BankStatementReceiptResponseService

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["SOURCING","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 66                                |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 66                                |

  # PQM-19_CAS-199695
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15972:Verify execution of BankStatementReceiptResponse service through POSTMAN when request reference number value is greater than 255 for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user clicks on Bank Statement Details hyperlink
    And user fills Bank Statement Details with ok
    And user clicks on save button in Bank details
    And user clicks on Fetch Bank button in Bank details
    And user run the query to get transaction number for Bank Statement response from Database
    And user provide the request reference number greater than 255 character
    When user Hits BankStatementReceiptResponseService API
    Then proper error code with error message should be displayed in response for BankStatementReceiptResponseService

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["SOURCING","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | IPF         | indiv         | sourcing         | metals   |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 67                                |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 67                                |

  @TestSessionNotCreated
  # PQM-23_CAS-199695
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15973:Hit the <API_Name> via try now feature for <AccountType> at <ApplicationStage> of <ProductType> for unHold service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user clicks on Bank Statement Details hyperlink
    And user fills Bank Statement Details with ok
    And user clicks on save button in Bank details
    And user clicks on Fetch Bank button in Bank details
    And user run the query to get transaction number for Bank Statement response from Database
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<API_Name>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    When user click on try now button on API center
    And user create the json for bankStatementReceiptResponseService application
    And user fills the requested body with the json
    And user enters access token
    And user click on send request button
    Then API hit should be "successful" with proper response

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["SOURCING","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | API_Name    | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | CAS_Cred_25 | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 47                                |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | API_Name    | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | CAS_Cred_25 | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 47                                |

  @TestSessionNotCreated
  # PQM-24_CAS-199695
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15974:Hit the <API_Name> without access_token for <AccountType> at <ApplicationStage> of <ProductType> for bankStatementReceiptResponse service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user clicks on Bank Statement Details hyperlink
    And user fills Bank Statement Details with ok
    And user clicks on save button in Bank details
    And user clicks on Fetch Bank button in Bank details
    And user run the query to get transaction number for Bank Statement response from Database
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<API_Name>" in documentation and opens
    When user click on try now button on API center
    And user create the json for bankStatementReceiptResponseService application
    And user fills the requested body with the json
    And user click on send request button
    Then the "<API_Name>" service is not get executed
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["SOURCING","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | API_Name    | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | CAS_Cred_25 | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 47                                |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | API_Name    | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | CAS_Cred_25 | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 47                                |
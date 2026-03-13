@Epic-UAEFTS
@PQMStory
@AuthoredBy-manish.yadav2
@ReviewedBy-jagriti.mungali
@ImplementedBy-manish.yadav2
@Perishable

# ${ApplicantType:["indiv"]}

#Story-CAS-201051, CAS-195891, CAS-206809
Feature: Islamic Banking - UAEFTS service

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  # PQM-2_CAS-201051, 37_CAS-206809
  # PMG-23_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15975: validate Fetch bank cannot be done with report type as Physical in Bank Statement for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    When user clicks on Bank Statement Details hyperlink
    And user fills Bank Statement Details with ok
    And user fills field in "Add/View Bank Details" in Bank details with save
    And user clicks on save button in Bank details
    And user clicks on Fetch Bank button in Bank details
    Then validation should come that with Physical Fetch bank cannot be done
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 49                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 49                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 85                                |

  # PQM-3_CAS-201051, 5_CAS-201051, 12_CAS-206809, 36_CAS-206809
  # PMG-3_CAS-195891, 23_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15976: Bank statement extraction should be triggered after clicking on Fetch bank for <AccountType> at <ApplicationStage> of <ProductType>
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
    When user clicks on Fetch Bank button in Bank details
    Then Bank statement extraction triggered message should get stamped in activity tab
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 46                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 46                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 82                                |

  # PQM-3_CAS-201051
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15977: validate Fetch bank success message after filling Bank Statement for <AccountType> at <ApplicationStage> of <ProductType>
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
    When user clicks on Fetch Bank button in Bank details
    Then Fetched bank successfully message should come in Bank details
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 46                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 46                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 82                                |

  # PQM-3_CAS-201051, 15_CAS-201051
  # PMG-20_CAS-195891, 24_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15978: validate Bank Statement status changes to "Initiated" after clicking on Fetch bank for <AccountType> at <ApplicationStage> of <ProductType>
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
    When user clicks on Fetch Bank button in Bank details
    And user refreshes the bank details accordion
    Then "Initiated" status should come in Bank Statement
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 46                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 46                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 82                                |

  # PQM-4_CAS-201051
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15979: validate Bank details should get non editable after Fetch bank successful for <AccountType> at <ApplicationStage> of <ProductType>
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
    When user clicks on Fetch Bank button in Bank details
    And user refreshes the bank details accordion
    Then Bank details fields should get non editable
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 46                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 46                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 82                                |

  # PQM-6_CAS-201051
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15980: validate Bank Statement details should be in view only mode after Fetch bank successful for <AccountType> at <ApplicationStage> of <ProductType>
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
    When user clicks on Fetch Bank button in Bank details
    And user refreshes the bank details accordion
    And user clicks on Bank Statement Details hyperlink
    Then Bank Statement details should be in view only mode
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 46                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 46                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 82                                |

  # PQM-8_CAS-201051
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15981: Transaction number for Bank Statement response should be retrieved from database for <AccountType> at <ApplicationStage> of <ProductType>
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
    When user run the query to get transaction number for Bank Statement response from Database
    Then transaction number for Bank Statement response should be retrieved
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 46                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 46                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 82                                |

  # PQM-9_CAS-201051
  # PMG-1_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15982: validate BankStatementReceiptResponseService API runs successfully for <AccountType> at <ApplicationStage> of <ProductType>
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
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 47                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 47                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 83                                |

  # PQM-10_CAS-201051
  # PMG-2_CAS-195891, 17_CAS-195891, 25_CAS-195891, 15_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15983: validate after BankStatementReceiptResponseService successful view bank statement with two icons one for XLSX another for PDF should be visible on Bank Details in Bank Statement column for <AccountType> at <ApplicationStage> of <ProductType>
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
    And user clicks on save button in Bank details
    And user refreshes the bank details accordion
    Then view bank statement with two icons one for XLSX another for PDF should be visible on Bank Details in Bank Statement column
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 47                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 47                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 83                                |

  # PMG-18_CAS-195891, 16_CAS-206809, 17_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15984: validate Bank statement should be downloaded successfully for <AccountType> at <ApplicationStage> of <ProductType>
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
    And user Hits BankStatementReceiptResponseService API
    And user clicks on save button in Bank details
    And user refreshes the bank details accordion
    When user clicks to download "XLSX" Bank Statement
    Then Bank Statement should be downloaded successfully in bank details
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 47                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 47                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 83                                |

  # PQM-11_CAS-201051
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15985: validate after BankStatementReceiptResponseService successful checkbox to select Bank details should be editable for <AccountType> at <ApplicationStage> of <ProductType>
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
    And user clicks on save button in Bank details
    And user refreshes the bank details accordion
    Then checkbox to select Bank details should be editable
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 47                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 47                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 83                                |

  # PQM-12_CAS-201051
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15986: validate after BankStatementReceiptResponseService successful Bank Statement details should be in editable mode for <AccountType> at <ApplicationStage> of <ProductType>
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
    And user clicks on save button in Bank details
    And user refreshes the bank details accordion
    And user clicks on Bank Statement Details hyperlink
    Then Bank Statement details should be in editable mode
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 47                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 47                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 83                                |

  # PQM-13_CAS-201051, 14_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15987: validate Bank Statement status changes to "Received" after BankStatementReceiptResponseService successful for <AccountType> at <ApplicationStage> of <ProductType>
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
    And user clicks on save button in Bank details
    And user refreshes the bank details accordion
    Then "Received" status should come in Bank Statement
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 47                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 47                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 83                                |

  # PQM-14_CAS-201051
  # PMG-26_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  @NotImplemented
  Scenario Outline: ACAUTOCAS-16220:    status should be "Failed" and no icons should get displayed and tooltip should come for FAILED Statement
    Given  User is on Bank Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When  BankStatementReceiptResponseService is FAILED
    Then  Then status should be "Failed" and no icons should get displayed and tooltip should come for FAILED Statement
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
#    @Conventional
#    # ${ProductType:["PF"]}
#    # ${ApplicationStage:["DDE"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  # PQM-17_CAS-201051
  @Islamic

  @Release
  #FeatureID-ACAUTOCAS-15327
  Scenario: ACAUTOCAS-15988: "BankStatementRule" seeded rule should be visible to user
    And user navigate to rule master
    When User searches seeded rule "BankStatementRule"
    Then "BankStatementRule" rule should be present

  # PMG-4_CAS-195891, 5_CAS-195891, 6_CAS-195891, 7_CAS-195891, 8_CAS-195891, 9_CAS-195891, 10_CAS-195891, 11_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15989: validate in database "<FieldName>" should be sent in the request_data of BankStatementExtractionRequestService for <AccountType> at <ApplicationStage> of <ProductType>
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
    When user clicks on Fetch Bank button to trigger BankStatementExtractionRequestService
    Then "<FieldName>" should be sent in the request_data of BankStatementExtractionRequestService
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${FieldName:["applicationId","transactionNumber","ibanNumber","bankAccountNumber","customerCif","hostCif","customerName","tenure"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | FieldName   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | <FieldName> | bank_credit_card_details.xlsx | bank_details               | 53                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${FieldName:["applicationId","transactionNumber","ibanNumber","bankAccountNumber","customerCif","hostCif","customerName","tenure"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | FieldName   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | <FieldName> | bank_credit_card_details.xlsx | bank_details               | 53                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | FieldName   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | <FieldName> | bank_credit_card_details.xlsx | bank_details               | 87                                |

  # PMG-12_CAS-195891, 13_CAS-195891, 14_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15990: validate in database "<FieldName>" should be received in the response_data of BankStatementExtractionRequestService for <AccountType> at <ApplicationStage> of <ProductType>
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
    When user clicks on Fetch Bank button to trigger BankStatementExtractionRequestService
    Then "<FieldName>" should be received in the response_data of BankStatementExtractionRequestService
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${FieldName:["responseCode","responseMessage","requestReferenceNumber","bankStatementReceiptResponse"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | FieldName   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | <FieldName> | bank_credit_card_details.xlsx | bank_details               | 53                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${FieldName:["responseCode","responseMessage","requestReferenceNumber","bankStatementReceiptResponse"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | FieldName   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | <FieldName> | bank_credit_card_details.xlsx | bank_details               | 53                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | FieldName   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | <FieldName> | bank_credit_card_details.xlsx | bank_details               | 87                                |

  # PMG-15_CAS-195891, 16_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15991: validate "<FieldName>" should be received in the response_data of BankStatementReceiptResponseService for <AccountType> at <ApplicationStage> of <ProductType>
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
    Then "<FieldName>" should be received in the response_data of BankStatementReceiptResponseService
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${FieldName:["responseCode","responseMessage","applicationId","requestReferenceNumber"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | FieldName   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | <FieldName> | bank_credit_card_details.xlsx | bank_details               | 53                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${FieldName:["responseCode","responseMessage","applicationId","requestReferenceNumber"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | FieldName   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | <FieldName> | bank_credit_card_details.xlsx | bank_details               | 53                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | FieldName   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | <FieldName> | bank_credit_card_details.xlsx | bank_details               | 87                                |

  # PQM-19_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16221: validate value for "Average Bank Balance" should be blank in Bank Details after BankStatementExtractionRequestService successful for <AccountType> at <ApplicationStage> of <ProductType>
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
    When user clicks on Fetch Bank button in Bank details
    Then value for "Average Bank Balance" should be blank in Bank Details
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 47                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 47                                |

#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 83                                |

  # PQM-20_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16222: validate value for "Average Bank Balance" should be blank in Bank Details after BankStatementReceiptResponseService successful for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user clicks on Bank Statement Details hyperlink
    And user fills Bank Statement Details with ok
    And user clicks on save button in Bank details
    And user clicks on Fetch Bank button in Bank details
    And user run the query to get transaction number for Bank Statement response from Database
    When user Hits BankStatementReceiptResponseService API
    And user clicks on save button in Bank details
    And user refreshes the bank details accordion
    Then value for "Average Bank Balance" should be blank in Bank Details
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 47                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 47                                |
#
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 83                                |

  # PQM-25_CAS-206809, 26_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16223: validate icons for XLSX PDF should not be visible in copied application after BankStatementReceiptResponseService successful in original application at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details
    And user clicks on Bank Statement Details hyperlink
    And user fills Bank Statement Details with ok
    And user clicks on save button in Bank details
    And user clicks on Fetch Bank button in Bank details
    And user run the query to get transaction number for Bank Statement response from Database
    And user Hits BankStatementReceiptResponseService API
    And user navigates to copy application screen
    And user searches the particular application in copy application screen
    And user reads data from the excel file "copy_application.xlsx" under sheet "home" and row 32
    When user copy the application
    And user record the generated application
    And user opens an application of "DDE" stage present in context from application grid
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    Then icons for XLSX PDF of bank statement should not be visible in copied application in bank details
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 47                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | bank_credit_card_details.xlsx | bank_details               | 47                                |

#    @Release
#    # ${ProductType:["PF"]}
#    # ${ApplicationStage:["DDE"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | bank_credit_card_details.xlsx | bank_details               | 83                                |
  
  # PQM-27_CAS-206809, 28_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16224: validate icons for XLSX PDF should not be visible in copied application without BankStatementReceiptResponseService execution in original application at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details
    And user clicks on Bank Statement Details hyperlink
    And user fills Bank Statement Details with ok
    And user clicks on save button in Bank details
    And user clicks on Fetch Bank button in Bank details
    And user navigates to copy application screen
    And user searches the particular application in copy application screen
    And user reads data from the excel file "copy_application.xlsx" under sheet "home" and row 32
    When user copy the application
    And user record the generated application
    And user opens an application of "DDE" stage present in context from application grid
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    Then icons for XLSX PDF of bank statement should not be visible in copied application in bank details
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 47                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | bank_credit_card_details.xlsx | bank_details               | 47                                |

#    @Release
#    # ${ProductType:["PF"]}
#    # ${ApplicationStage:["DDE"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | bank_credit_card_details.xlsx | bank_details               | 83                                |

  @Islamic

  
  @Release
  @Release
  # PQM-21_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario: ACAUTOCAS-17301: validate table CAS_BANK_STAT_RECORD_ENTRY should be present in Database
    When user run the query to get "CAS_BANK_STAT_RECORD_ENTRY" from Database
    Then table "CAS_BANK_STAT_RECORD_ENTRY" should be present in Database

  @Islamic

  
  @Release
  @Release
  # PQM-21_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario: ACAUTOCAS-17302: validate configuration 'config bank statement data purging record selection query' should be present in Database
    When user run the query to get property_value where property_key is config.bank.statement.data.purging.record.selection.query from Database
    Then configuration config.bank.statement.data.purging.record.selection.query should be present in Database

  @Islamic

  
  @Release
  @Release
  # PQM-23_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario: ACAUTOCAS-17303: validate configuration 'config bank statement waiting time inHours' should be present with default value in Database
    When user run the query to get property_value where property_key is config.bank.statement.waiting.time.inHours from Database
    Then configuration config.bank.statement.waiting.time.inHours should be present with default value "48" in Database

  # PQM-
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-17304: validate Bank statement received at <ApplicationStage> should be downloaded successfully at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details
    And user clicks on Bank Statement Details hyperlink
    And user fills Bank Statement Details with ok
    And user clicks on save button in Bank details
    And user clicks on Fetch Bank button in Bank details
    And user run the query to get transaction number for Bank Statement response from Database
    And user Hits BankStatementReceiptResponseService API
    And user clicks on save button in Bank details
    And user selects document tab
    And user submit the documents with wait
    When user moves application from "<ApplicationStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" for "<Category>" with "<Key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<FinalStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user clicks to download "XLSX" Bank Statement
    Then Bank Statement should be downloaded successfully in bank details
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE"]}
    # ${Category:["BONDS","METALS"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | FinalStage    | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Post Approval | bank_credit_card_details.xlsx | bank_details               | 47                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage    | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Post Approval | bank_credit_card_details.xlsx | bank_details               | 47                                |

    
#    @Release
#    # ${ProductType:["PF"]}
#    # ${ApplicationStage:["DDE"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage    | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Post Approval | bank_credit_card_details.xlsx | bank_details               | 83                                |
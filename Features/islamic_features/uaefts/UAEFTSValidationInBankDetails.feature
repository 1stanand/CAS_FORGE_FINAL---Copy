@Epic-UAEFTS
@PQMStory
@AuthoredBy-manish.yadav2
@ReviewedBy-jagriti.mungali
@ImplementedBy-manish.yadav2
@Perishable


# ${ApplicantType:["indiv"]}

#Story-CAS-195891, CAS-206809
Feature: Islamic Banking - UAEFTS validation in bank details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  # PQM-1_CAS-195891, 2_CAS-206809
  
  @Release
  @Release
  @Islamic
  
  #FeatureID-ACAUTOCAS-15327
  Scenario: ACAUTOCAS-16006: validate for Islamic config bankStatement isApplicable should be TRUE
    When user run the query to get property_value where property_key is config.bank.statement.isApplicable from Database
    Then property_value where property_key is config.bank.statement.isApplicable should be True

  # PQM-1_CAS-195891, 1_CAS-206809
  @ReleaseBankStatementOff
  @Islamic
  
  #FeatureID-ACAUTOCAS-15327
  Scenario: ACAUTOCAS-16245: validate for conventional config bankStatement isApplicable should be FALSE
    When user run the query to get property_value where property_key is config.bank.statement.isApplicable from Database
    Then property_value where property_key is config.bank.statement.isApplicable should be False

  # PQM-3_CAS-195891, 23_CAS-195891, 24_CAS-195891, 25_CAS-195891
  # PMG-19_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16007: Validate column name Bank Statement present in Bank Details with "Bank statement details" hyperlink at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    When user clicks on Bank and Credit Details
    And user click on plus sign of Bank Details
    Then column name Bank Statement should be present in bank details with Bank Statement Details hyperlink
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  # PQM-4_CAS-195891
  # PMG-21_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16008: Validate Request Bank Statement modal window should pop up at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user click on plus sign of Bank Details
    When user clicks on Bank Statement Details hyperlink
    Then Request Bank Statement modal window should pop up
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  # PQM-5_CAS-195891, 15_CAS-195891, 3_CAS-206809, 9_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16009: Bank Details should be saved successfully with filling Bank Statement Details for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user clicks on Bank Statement Details hyperlink
    When user fills Bank Statement Details with ok
    And user clicks on save button in Bank details
    Then bank details should be able to saved successfully
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 43                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 43                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 79                                |

  # PQM-6_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16010: validate default "Not Initiated" status after adding Bank Statement Details for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user clicks on Bank Statement Details hyperlink
    When user fills Bank Statement Details
    And user clicks on OK button of Bank Statement Details
    Then by default "Not Initiated" status should come in Bank Statement column
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 43                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 43                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 79                                |

  # PQM-7_CAS-195891, 9_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16011: validate error for entering <criteria> date in <Date_Name> field for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user clicks on Bank Statement Details hyperlink
    When user fills "<criteria>" date in "<Date_Name>" field in Bank Statement Details
    Then "<Date_Name>" "<ThrowsNotThrows>" with proper message in Bank Statement Details
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | criteria       | Date_Name | ThrowsNotThrows | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | Future Date    | From Date | throws an error | bank_credit_card_details.xlsx | bank_details               | 42                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | Future Date    | To Date   | throws an error | bank_credit_card_details.xlsx | bank_details               | 42                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | Less than 1942 | From Date | throws an error | bank_credit_card_details.xlsx | bank_details               | 88                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | Less than 1942 | To Date   | throws an error | bank_credit_card_details.xlsx | bank_details               | 88                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | invalid format | From Date | throws an error | bank_credit_card_details.xlsx | bank_details               | 89                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | invalid format | To Date   | throws an error | bank_credit_card_details.xlsx | bank_details               | 89                                |

    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | criteria       | Date_Name | ThrowsNotThrows | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | Future Date    | From Date | throws an error | bank_credit_card_details.xlsx | bank_details               | 42                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | Future Date    | To Date   | throws an error | bank_credit_card_details.xlsx | bank_details               | 42                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | Less than 1942 | From Date | throws an error | bank_credit_card_details.xlsx | bank_details               | 88                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | Less than 1942 | To Date   | throws an error | bank_credit_card_details.xlsx | bank_details               | 88                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | invalid format | From Date | throws an error | bank_credit_card_details.xlsx | bank_details               | 89                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | invalid format | To Date   | throws an error | bank_credit_card_details.xlsx | bank_details               | 89                                |

    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | criteria       | Date_Name | ThrowsNotThrows | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | Future Date    | From Date | throws an error | bank_credit_card_details.xlsx | bank_details               | 78                                |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | Future Date    | To Date   | throws an error | bank_credit_card_details.xlsx | bank_details               | 78                                |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | Less than 1942 | From Date | throws an error | bank_credit_card_details.xlsx | bank_details               | 90                                |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | Less than 1942 | To Date   | throws an error | bank_credit_card_details.xlsx | bank_details               | 90                                |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | invalid format | From Date | throws an error | bank_credit_card_details.xlsx | bank_details               | 91                                |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | invalid format | To Date   | throws an error | bank_credit_card_details.xlsx | bank_details               | 91                                |

  # PQM-8_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16012: Validation should occur for From Date being older than one year compared to the To Date for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user clicks on Bank Statement Details hyperlink
    When user enters From Date that is older than one year compared to the To Date
    And user clicks on OK button of Bank Statement Details
    Then user should get notification error message
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 50                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 50                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 86                                |

  @UaeftsDateHyperlink
  @LoggedBug-CAS-232403
  # PQM-10_CAS-195891, 11_CAS-195891, 12_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16013: validate populated date field values according to <Hyperlink_Name> in Bank Statement Details for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user clicks on Bank Statement Details hyperlink
    When user clicks on the "<Hyperlink_Name>" hyperlink in Bank Statement Details
    Then current date in To Date field with <var> months older date in From Date field should get populated
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | Hyperlink_Name | var | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | Last 3 months  | 3   | bank_credit_card_details.xlsx | bank_details               | 43                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | Last 6 months  | 6   | bank_credit_card_details.xlsx | bank_details               | 43                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | Last 12 months | 12  | bank_credit_card_details.xlsx | bank_details               | 43                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | Hyperlink_Name | var | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | Last 3 months  | 3   | bank_credit_card_details.xlsx | bank_details               | 43                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | Last 6 months  | 6   | bank_credit_card_details.xlsx | bank_details               | 43                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | Last 12 months | 12  | bank_credit_card_details.xlsx | bank_details               | 43                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | Hyperlink_Name | var | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | Last 3 months  | 3   | bank_credit_card_details.xlsx | bank_details               | 79                                |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | Last 6 months  | 6   | bank_credit_card_details.xlsx | bank_details               | 79                                |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | Last 12 months | 12  | bank_credit_card_details.xlsx | bank_details               | 79                                |

  # PQM-13_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16014: Validate Request Bank Statement modal window should get closed without any error for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user clicks on Bank Statement Details hyperlink
    When user fills Bank Statement Details with ok
    Then Request Bank Statement modal window should get closed without any error
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 43                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 43                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 79                                |

  # PQM-14_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16015: Validate previous filled data should be present in Bank Statement modal window for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user clicks on Bank Statement Details hyperlink
    When user fills Bank Statement Details with ok
    And user clicks on Bank Statement Details hyperlink
    Then previous filled data should be present in Bank Statement modal window
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 43                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 43                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 79                                |

  # PQM-16_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16016: Validate previous filled data after save should be present in Bank Statement modal window for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user clicks on Bank Statement Details hyperlink
    When user fills Bank Statement Details with ok
    And user clicks on save button in Bank details
    And user clicks on Bank Statement Details hyperlink
    Then previous filled data should be present in Bank Statement modal window
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 43                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 43                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 79                                |

  # PQM-17_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16017: Validate both report type modes should be available to be chosen in Bank Statement modal window for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    When user clicks on Bank Statement Details hyperlink
    Then both report type modes Online Physical should be available to be chosen in Bank Statement modal window
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 43                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 43                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 79                                |

  # PQM-18_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16018: validate Format of date fields in Bank Statement modal window should be same as the user preference at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user clicks on Bank Statement Details hyperlink
    When user fills Bank Statement Details
    Then format of date fields in Bank Statement modal window should be same as the user preference
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 43                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 43                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 79                                |

  # PQM-19_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16019: Validation for filling the Bank Statement modal window data should be visible for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user clicks on Bank Statement Details hyperlink
    When user try to save the Bank Statement modal window without adding any data
    Then validation for filling the Bank Statement modal window data should be visible
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 44                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 44                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 80                                |

  # PQM-20_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16020: validate Fetch Bank error without adding the bank details for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    When user clicks on Fetch Bank button in Bank details
    Then validation for adding the bank details should be visible
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 44                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | bank_credit_card_details.xlsx | bank_details               | 44                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 80                                |

  # PQM-21_CAS-195891, 1_CAS-201051
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16021: validate Fetch Bank error without saving the bank details for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    When user clicks on Fetch Bank button in Bank details
    Then validation for saving the bank details should be visible
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 45                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 45                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 81                                |

  # PQM-26_CAS-195891, 27_CAS-195891
  ## prerequisite : In configuration table configbankstatementisApplicable is disabled
  @ReleaseBankStatementOff
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16246: Validate column name Bank Statement should not be present in Bank Details at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    When user clicks on Bank and Credit Details
    And user click on plus sign of Bank Details
    Then column name Bank Statement should not be present in bank details
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
    
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  # PQM-29_CAS-195891, 47_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16022: validate Bank Statement details should be in view only mode from enquiry screen for <AccountType> at <ApplicationStage> of <ProductType>
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
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from enquiry screen
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
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
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 43                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 43                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 79                                |

  # PQM-29_CAS-195891, 47_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-17305: validate from hold grid Bank Statement details should be in view only mode at <ApplicationStage> of <ProductType>
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
    And user exits the Applicant Details
    And user holds the application from exit option
    When user search for an application present of "<ProductType>" application at "<ApplicationStage>" stage in hold application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user clicks on Bank Statement Details hyperlink
    Then Bank Statement details should be in view only mode
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 43                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | bank_credit_card_details.xlsx | bank_details               | 43                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | bank_credit_card_details.xlsx | bank_details               | 79                                |

  # PQM-30_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16023: validate Bank Statement filled at <ApplicationStage> should be visible to user at Disbursal stage of <ProductType>
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
    And user selects document tab
    And user submit the documents with wait
    When user moves application from "<ApplicationStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "Disbursal" for "<Category>" with "<Key>" stage without opening it
    And user opens an application of "Disbursal" stage present in context from application grid
    And user navigates to applicant details page of "Disbursal"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user clicks on Bank Statement Details hyperlink
    Then previous filled data should be present in Bank Statement modal window
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE"]}
    # ${Category:["BONDS","METALS"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 43                                |
    
#    @Release
#    # ${ProductType:["PF"]}
#    # ${ApplicationStage:["DDE"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | bank_credit_card_details.xlsx | bank_details               | 79                                |

  # PQM-31_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16024: validate Bank Statement filled at <ApplicationStage> should be visible to user at credit approval stage of <ProductType>
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
    And user selects document tab
    And user submit the documents with wait
    And user moves application from "<ApplicationStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "Disbursal" for "<Category>" with "<Key>" stage without opening it
    And user opens an application of "Disbursal" stage present in context from application grid
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_sendBack>" and row <MoreActions_sendBack_rowNum>
    When user send back above application to "credit approval" stage
    And user opens an application at "credit approval" stage from application grid
    And user navigates to applicant details page of "credit approval"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user clicks on Bank Statement Details hyperlink
    Then previous filled data should be present in Bank Statement modal window
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE"]}
    # ${Category:["BONDS","METALS"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | MoreActionsWB     | MoreActions_sendBack | MoreActions_sendBack_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 43                                | more_actions.xlsx | send_back            | 9                           |
    
#    @Release
#    # ${ProductType:["PF"]}
#    # ${ApplicationStage:["DDE"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | MoreActionsWB     | MoreActions_sendBack | MoreActions_sendBack_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | bank_credit_card_details.xlsx | bank_details               | 79                                | more_actions.xlsx | send_back            | 9                           |

  # PQM-32_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16025: user should be able to create Multiple Bank Statements in Bank Details at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    When user add "Multiple" bank details with Bank Statements details by reading data from
      | bank_credit_card_details.xlsx | bank_details | 43 |
      | bank_credit_card_details.xlsx | bank_details | 44 |
      | bank_credit_card_details.xlsx | bank_details | 45 |
      | bank_credit_card_details.xlsx | bank_details | 46 |
      | bank_credit_card_details.xlsx | bank_details | 47 |
      | bank_credit_card_details.xlsx | bank_details | 48 |
    And user clicks on save button in Bank details
    Then bank details should be able to saved successfully
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  # PMG-22_CAS-195891
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16026: validate all fields should be present in Bank Statements modal window in Bank Details at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    When user clicks on Bank Statement Details hyperlink
    Then various field should be present in Bank Statement modal window
      | Online    |
      | Physical  |
      | From Date |
      | To Date   |
      | OK        |
      | Cancel    |
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  # PQM-4_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16247: Bank Details should be saved successfully without filling Bank Statement Details for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    When user fills all the required details of bank details for account type as "<AccountType>"
    And user clicks on save button in Bank details
    Then bank details should be able to saved successfully
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 43                                |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 43                                |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 79                                |

  # PQM-5_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16248: validate Add View Bank Details hyperlink should be present for report type as Physical in Bank Statement for <AccountType> at <ApplicationStage> of <ProductType>
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
    Then "Add/View Bank Details" should be present in bank details
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

  # PQM-6_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16249: validation should come to fill manual bank details for report type as Physical in Bank Statement for <AccountType> at <ApplicationStage> of <ProductType>
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
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum2>
    And user clicks on save button in Bank details to get error
    Then validation should come to fill manual bank details
    @Islamic
    
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum2 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 49                                | 20                                 |
    @Islamic
    
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum2 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 49                                | 20                                 |
    
#    @Release
#    # ${ProductType:["PF","HL","MAL"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval","Post Approval"]}
#    # ${AccountType:["Saving Account","Current Account","Cash Credit","KCC Account","Over Draft Account"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AccountType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum2 |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <AccountType> | bank_credit_card_details.xlsx | bank_details               | 85                                | 20                                 |

  # PQM-7_CAS-206809, 10_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16250: Bank Details should be saved successfully with filling manual bank details for report type as Physical in Bank Statement for <AccountType> at <ApplicationStage> of <ProductType>
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
    Then bank details should be able to saved successfully
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

  # PQM-8_CAS-206809, 10_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-16251: validate Add View Bank Details hyperlink should not be visible for report type as Online in Bank Statement for <AccountType> at <ApplicationStage> of <ProductType>
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
    Then link for "Add/View Bank Details" should be disappear in Bank details
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

  # PQM-46_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-17306: validate Bank Statement filled with report type as Physical at <ApplicationStage> should be visible to user at <FinalStage> stage of <ProductType>
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
    And user fills field in "Add/View Bank Details" in Bank details with save
    And user clicks on save button in Bank details
    And user selects document tab
    And user submit the documents with wait
    When user moves application from "<ApplicationStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" for "<Category>" with "<Key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<FinalStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user clicks on Bank Statement Details hyperlink
    Then previous filled data should be present in Bank Statement modal window
    @Islamic
    
    @Release
     # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE"]}
    # ${Category:["BONDS"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | FinalStage | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Disbursal  | bank_credit_card_details.xlsx | bank_details               | 49                                |
    
#    @Release
#    # ${ProductType:["PF"]}
#    # ${ApplicationStage:["DDE"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Disbursal  | bank_credit_card_details.xlsx | bank_details               | 85                                |
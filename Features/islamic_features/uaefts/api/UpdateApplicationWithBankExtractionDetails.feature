@Epic-UAEFTS
@PQMStory
@AuthoredBy-manish.yadav2
@ReviewedBy-jagriti.mungali
@ImplementedBy-manish.yadav2
@Islamic
@API
@Perishable
# ${ApplicantType:["indiv"]}
@5FebM5Fix
#Story-CAS-206809
Feature: Update Application with Bank Extraction Details - Islamic Banking UAEFTS service


  
@Release
  # PQM-41_CAS-206809, 43_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-17289: validate application update service API error for Bank Statement extraction fields as <criteria> for <ApplicationStage> of <ProductType>
    Given user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    When user hits Application update Service API with Bank Statement extraction fields as "<criteria>"
    Then application update service API should throw proper error in response for Bank Statement extraction fields

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | criteria                                      | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | all Empty Fields                              | bank_credit_card_details.xlsx | bank_details               | 54                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | some Empty Fields                             | bank_credit_card_details.xlsx | bank_details               | 55                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | incorrect date format                         | bank_credit_card_details.xlsx | bank_details               | 73                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | from date more than 1 year older than to date | bank_credit_card_details.xlsx | bank_details               | 57                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | from date greater than to date                | bank_credit_card_details.xlsx | bank_details               | 58                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | from date as future date                      | bank_credit_card_details.xlsx | bank_details               | 59                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | to date as future date                        | bank_credit_card_details.xlsx | bank_details               | 60                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | report type as Physical                       | bank_credit_card_details.xlsx | bank_details               | 74                                |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | criteria                                      | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | all Empty Fields                              | bank_credit_card_details.xlsx | bank_details               | 54                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | some Empty Fields                             | bank_credit_card_details.xlsx | bank_details               | 55                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | incorrect date format                         | bank_credit_card_details.xlsx | bank_details               | 73                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | from date more than 1 year older than to date | bank_credit_card_details.xlsx | bank_details               | 57                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | from date greater than to date                | bank_credit_card_details.xlsx | bank_details               | 58                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | from date as future date                      | bank_credit_card_details.xlsx | bank_details               | 59                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | to date as future date                        | bank_credit_card_details.xlsx | bank_details               | 60                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | report type as Physical                       | bank_credit_card_details.xlsx | bank_details               | 74                                |

  
@Release
  # PQM-42_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-17290: validate application update service API should run successfully with no error for Bank Statement extraction fields as "valid" for <ApplicationStage> of <ProductType>
    Given user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    When user hits Application update Service API with Bank Statement extraction fields as "valid"
    Then application update service API should run successfully with no error

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 61                                |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | bank_credit_card_details.xlsx | bank_details               | 61                                |

  
@Release
  # PQM-44_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-17291: validate application update service API should run successfully for Bank Statement report type as Physical with bank details file added for <ApplicationStage> of <ProductType>
    Given user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    When user hits Application update Service API for Bank Statement report type as Physical with bank details file added
    Then application update service API should run successfully with no error

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 75                                |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | bank_credit_card_details.xlsx | bank_details               | 75                                |

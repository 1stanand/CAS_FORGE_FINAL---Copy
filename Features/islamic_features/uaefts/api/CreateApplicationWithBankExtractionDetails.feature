@Epic-UAEFTS
@PQMStory
@AuthoredBy-manish.yadav2
@ReviewedBy-jagriti.mungali
@ImplementedBy-manish.yadav2
@Islamic
@API

# ${ApplicantType:["indiv"]}

#Story-CAS-201051
Feature: Create Application with Bank Extraction Details - Islamic Banking UAEFTS service


  @ReleaseIslamicM4
@Release

  # PQM-21_CAS-201051, 22_CAS-201051, 23_CAS-201051, 24_CAS-201051, 25_CAS-201051, 31_CAS-206809, 33_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15529: validate application creation service API error for Bank Statement extraction fields as <criteria> for <ApplicationStage> of <ProductType>
    Given user creates stage variant for an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    When user hits Application Creation Service API with Bank Statement extraction fields as "<criteria>"
    Then application creation service API should throw proper error in response for Bank Statement extraction fields

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | criteria                                      | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | all Empty Fields                              | bank_credit_card_details.xlsx | bank_details               | 54                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | some Empty Fields                             | bank_credit_card_details.xlsx | bank_details               | 55                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | incorrect date format                         | bank_credit_card_details.xlsx | bank_details               | 56                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | from date more than 1 year older than to date | bank_credit_card_details.xlsx | bank_details               | 57                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | from date greater than to date                | bank_credit_card_details.xlsx | bank_details               | 58                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | from date as future date                      | bank_credit_card_details.xlsx | bank_details               | 59                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | to date as future date                        | bank_credit_card_details.xlsx | bank_details               | 60                                |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | criteria                                      | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | all Empty Fields                              | bank_credit_card_details.xlsx | bank_details               | 54                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | some Empty Fields                             | bank_credit_card_details.xlsx | bank_details               | 55                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | incorrect date format                         | bank_credit_card_details.xlsx | bank_details               | 56                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | from date more than 1 year older than to date | bank_credit_card_details.xlsx | bank_details               | 57                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | from date greater than to date                | bank_credit_card_details.xlsx | bank_details               | 58                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | from date as future date                      | bank_credit_card_details.xlsx | bank_details               | 59                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | to date as future date                        | bank_credit_card_details.xlsx | bank_details               | 60                                |

  @ReleaseIslamicM5
@Release
  # PQM-32_CAS-206809, 34_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-15530: validate application creation service API should run successfully with no error for Bank Statement extraction fields as "valid" for <ApplicationStage> of <ProductType>
    Given user creates stage variant for an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    When user hits Application Creation Service API with Bank Statement extraction fields as "valid"
    Then application creation service API should run successfully with no error

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 61                                |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | bank_credit_card_details.xlsx | bank_details               | 61                                |

  @4FebM5Fix
  @ReleaseIslamicM5
@Release
  # PQM-38_CAS-206809, 39_CAS-206809
  #FeatureID-ACAUTOCAS-15327
  Scenario Outline: ACAUTOCAS-17288: validate Bank statement extraction request service in application for <criteria> in application creation service API at <ApplicationStage> of <ProductType>
    Given user creates stage variant for an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    When user hits Application Creation Service API with Bank Statement extraction fields as "<criteria>"
    Then Bank statement extraction request service should be "<ExecutedNotExecuted>" for the created application

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | criteria                                                        | ExecutedNotExecuted | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | report type as Online and extractStatementWhenStp flag as False | not executed        | bank_credit_card_details.xlsx | bank_details               | 61                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | report type as Online and extractStatementWhenStp flag as True  | executed            | bank_credit_card_details.xlsx | bank_details               | 76                                |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | criteria                                                        | ExecutedNotExecuted | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | report type as Online and extractStatementWhenStp flag as False | not executed        | bank_credit_card_details.xlsx | bank_details               | 61                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | report type as Online and extractStatementWhenStp flag as True  | executed            | bank_credit_card_details.xlsx | bank_details               | 76                                |

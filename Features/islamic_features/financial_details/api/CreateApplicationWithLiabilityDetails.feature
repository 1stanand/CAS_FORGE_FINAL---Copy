@Epic-Applicant_Information
@AuthoredBy-manish.yadav2
@ReviewedBy-jagriti.mungali
@ImplementedBy-manish.yadav2
@API
@Release
@PQMStory

# ${ApplicantType:["indiv"]}

#Story-CAS-197570
Feature: Create Application with Liability Details

  # PQM-39_CAS-197570, 40_CAS-197570, 41_CAS-197570, 42_CAS-197570, 44_CAS-197570, 45_CAS-197570, 46_CAS-197570, 47_CAS-197570, 53_CAS-197570, 54_CAS-197570, 55_CAS-197570, 56_CAS-197570
  #FeatureID-ACAUTOCAS-163
Scenario Outline: ACAUTOCAS-18022: validate application creation service API error for Liability Details as <criteria> for <ApplicationStage> of <ProductType>
    Given user creates stage variant for an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user hits Application Creation Service API with Liability Details as "<criteria>"
    Then application creation service API should throw proper error in response

    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | criteria                                                                                                                 | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | referenceHostSystem as CardManagementSystem and finance type as AUTO FINANCE                                             | financial_details.xlsx | liability_details                 | 298                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | referenceHostSystem as CoreBanking and finance type as AUTO FINANCE                                                      | financial_details.xlsx | liability_details                 | 299                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | referenceHostSystem as CardManagementSystem and finance type as CREDIT CARD OUSTANDING amd invalid creditcardtype        | financial_details.xlsx | liability_details                 | 300                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | referenceHostSystem as CardManagementSystem and finance type as CREDIT CARD OUSTANDING amd add isBalanceTransfer as true | financial_details.xlsx | liability_details                 | 301                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | referenceHostSystem as CardManagementSystem and finance type as AUTO FINANCE                                             | financial_details.xlsx | liability_details                 | 302                                      |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | criteria                                                                                                                 | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | referenceHostSystem as CardManagementSystem and finance type as AUTO FINANCE                                             | financial_details.xlsx | liability_details                 | 298                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | referenceHostSystem as CoreBanking and finance type as AUTO FINANCE                                                      | financial_details.xlsx | liability_details                 | 299                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | referenceHostSystem as CardManagementSystem and finance type as CREDIT CARD OUSTANDING amd invalid creditcardtype        | financial_details.xlsx | liability_details                 | 300                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | referenceHostSystem as CardManagementSystem and finance type as CREDIT CARD OUSTANDING amd add isBalanceTransfer as true | financial_details.xlsx | liability_details                 | 301                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | referenceHostSystem as CardManagementSystem and finance type as AUTO FINANCE                                             | financial_details.xlsx | liability_details                 | 302                                      |

    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | criteria                                                                                                                 | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | referenceHostSystem as CardManagementSystem and finance type as AUTO FINANCE                                             | financial_details.xlsx | liability_details                 | 298                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | referenceHostSystem as CoreBanking and finance type as AUTO FINANCE                                                      | financial_details.xlsx | liability_details                 | 299                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | referenceHostSystem as CardManagementSystem and finance type as CREDIT CARD OUSTANDING amd invalid creditcardtype        | financial_details.xlsx | liability_details                 | 300                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | referenceHostSystem as CardManagementSystem and finance type as CREDIT CARD OUSTANDING amd add isBalanceTransfer as true | financial_details.xlsx | liability_details                 | 301                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | referenceHostSystem as CardManagementSystem and finance type as AUTO FINANCE                                             | financial_details.xlsx | liability_details                 | 302                                      |

  # PQM-43_CAS-197570, 48_CAS-197570, 57_CAS-197570
  #FeatureID-ACAUTOCAS-163
Scenario Outline: ACAUTOCAS-20861: validate application creation service API should run successfully with no error for Liability Details as "valid" for <ApplicationStage> of <ProductType>
    Given user creates stage variant for an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user hits Application Creation Service API with Liability Details as "valid"
    Then application creation service API should run successfully with no error

    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | financial_details.xlsx | liability_details                 | 303                                      |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | liability_details                 | 303                                      |

    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | liability_details                 | 303                                      |

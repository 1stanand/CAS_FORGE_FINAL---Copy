@Epic-Applicant_Information
@AppInfoAdoption
@Liability
@AuthoredBy-atul.mishra
@Reconciled
@ReviewedByDEV
#${ApplicantType:["indiv"]}

Feature: Fill the liability details with occupation as salaried in financial detail page

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    @Sanity
  Scenario Outline: ACAUTOCAS-13348: Add internal liability details with "<Var>" fields in financial detail page
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "Salaried"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user add internal liability details with "<Var>" fields
    Then liability details should save successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var       | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | all       | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | mandatory | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var       | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | all       | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 250                                      |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | mandatory | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 250                                      |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var       | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | all       | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 250                                      | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | mandatory | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 250                                      | <Category> |     |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var       | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | all       | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | mandatory | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |

      @Sanity
  Scenario Outline: ACAUTOCAS-13349:  Add external liability details with "<Var>" fields in financial detail page
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "Salaried"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user add external liability details with "<Var>" fields
    Then liability details should save successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var       | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | all       | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | mandatory | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var       | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | all       | employment_details.xlsx | home                   | 136                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | mandatory | employment_details.xlsx | home                   | 136                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var       | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | all       | employment_details.xlsx | home                   | 136                             | financial_details.xlsx | liability_details                 | 1                                        | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | mandatory | employment_details.xlsx | home                   | 136                             | financial_details.xlsx | liability_details                 | 1                                        | <Category> |     |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var       | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | all       | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | mandatory | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |

        @Sanity
  Scenario Outline: ACAUTOCAS-13350:  Add multiple "<Var>" liability details in financial detail page
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "Salaried"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user add multiple "<Var>" liability fields
    Then multiple liability details should save successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | internal | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | external | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | internal | employment_details.xlsx | home                   | 136                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | external | employment_details.xlsx | home                   | 136                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | internal | employment_details.xlsx | home                   | 136                             | financial_details.xlsx | liability_details                 | 1                                        | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | external | employment_details.xlsx | home                   | 136                             | financial_details.xlsx | liability_details                 | 1                                        | <Category> |     |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | internal | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | external | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |

  Scenario Outline: ACAUTOCAS-13351: Delete "<Var>" liability details in financial detail page
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "Salaried"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user add multiple "<Var>" liability fields
    When user delete liability details
    Then liability details should be deleted successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | internal | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | external | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | internal | employment_details.xlsx | home                   | 136                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | external | employment_details.xlsx | home                   | 136                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | internal | employment_details.xlsx | home                   | 136                             | financial_details.xlsx | liability_details                 | 1                                        | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | external | employment_details.xlsx | home                   | 136                             | financial_details.xlsx | liability_details                 | 1                                        | <Category> |     |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | internal | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | external | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |


  Scenario Outline: ACAUTOCAS-13352: Save applicant's liability detail without "<Var>" in financial detail page
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "Salaried"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user add internal liability details without "<Var>" fields
    Then liability details should not save successfully with error in "<Var>"

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var                   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Internal/External     | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | loan type             | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | principal outstanding | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | installment frequency | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | installment amount    | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var                   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Internal/External     | employment_details.xlsx | home                   | 136                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | loan type             | employment_details.xlsx | home                   | 136                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | principal outstanding | employment_details.xlsx | home                   | 136                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | installment frequency | employment_details.xlsx | home                   | 136                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | installment amount    | employment_details.xlsx | home                   | 136                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var                   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Internal/External     | employment_details.xlsx | home                   | 136                             | financial_details.xlsx | liability_details                 | 1                                        | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | loan type             | employment_details.xlsx | home                   | 136                             | financial_details.xlsx | liability_details                 | 1                                        | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | principal outstanding | employment_details.xlsx | home                   | 136                             | financial_details.xlsx | liability_details                 | 1                                        | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | installment frequency | employment_details.xlsx | home                   | 136                             | financial_details.xlsx | liability_details                 | 1                                        | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | installment amount    | employment_details.xlsx | home                   | 136                             | financial_details.xlsx | liability_details                 | 1                                        | <Category> |     |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var                   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Internal/External     | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | loan type             | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | principal outstanding | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | emi start date        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | installment frequency | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | installment amount    | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |          |     |

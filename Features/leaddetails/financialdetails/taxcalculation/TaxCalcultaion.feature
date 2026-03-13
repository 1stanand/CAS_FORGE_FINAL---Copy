@Epic-Applicant_Information
@AppInfoAdoption
@AuthoredBy-vipin.kishor
@Reconciled
@ReviewedByDEV
#${ApplicantType:["indiv","nonindiv"]}

#FeatureID-ACAUTOCAS-5973
Feature:Tax calculation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    @Sanity
  Scenario Outline: ACAUTOCAS-5780: Tax calculation for Agriculture employee at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    When user fills employment details for "Agriculture"
    And user reads data from the excel file "<Financial_Details_WB>" under sheet "<Agriculture_income>" and row <Row_no>
    And user fill income details for Agriculture
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill expense details
    And user fill liability details
    And user Save&Compute the financial details
    And user click on calculate tax
    Then tax should be calculated successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-yash.sharma
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Financial_Details_WB   | Agriculture_income | Row_no |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 89                            | financial_details.xlsx | agriculture_income | 0      |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Financial_Details_WB   | Agriculture_income | Row_no |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 89                            | financial_details.xlsx | agriculture_income | 0      |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Financial_Details_WB   | Agriculture_income | Row_no |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 89                            | financial_details.xlsx | agriculture_income | 0      |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Financial_Details_WB   | Agriculture_income | Row_no |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 89                            | financial_details.xlsx | agriculture_income | 0      |

      @Sanity
  Scenario Outline: ACAUTOCAS-5781: Tax calculation for salaried employee at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    When user fills employment details for "Salaried"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_IncomeDetails>" and row <FinancialDetails_IncomeDetails_rowNum>
    And user fill income details for salaried
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row 7
    And user fill expense details
    And user fill liability details
    And user Save&Compute the financial details
    And user click on calculate tax
    Then tax should be calculated successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-yash.sharma
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | income_details                 | 56                                    |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | income_details                 | 56                                    |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | income_details                 | 56                                    |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | income_details                 | 56                                    |

  @FixedTest28
    @Sanity
  Scenario Outline: ACAUTOCAS-5782: Tax calculation for self employed professional employee at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    When user fills employment details for "Self Employed Professional"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_IncomeDetails>" and row <FinancialDetails_IncomeDetails_rowNum>
    And user fill income details for Self Employed Professional with "<NumberofIncomeHead>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill expense details
    And user fill liability details
    And user Save&Compute the financial details
    And user click on calculate tax
    Then tax should be calculated successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-yash.sharma
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum | NumberofIncomeHead |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 33                            | financial_details.xlsx | income_details                 | 56                                    | single             |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum | NumberofIncomeHead |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | income_details                 | 56                                    | single             |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum | NumberofIncomeHead |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | income_details                 | 56                                    | single             |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum | NumberofIncomeHead |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 33                            | financial_details.xlsx | income_details                 | 56                                    | single             |

  @FixedTest28
    @Sanity
  Scenario Outline: ACAUTOCAS-5783: Tax calculation for self employed non professional employee at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    When user fills employment details for "Self Employed Non Professional"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_IncomeDetails>" and row <FinancialDetails_IncomeDetails_rowNum>
    And user fill income details for Self Employed Non Professional
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill expense details
    And user fill liability details
    And user Save&Compute the financial details
    And user click on calculate tax
    Then tax should be calculated successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-yash.sharma
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 53                            | financial_details.xlsx | income_details                 | 56                                    |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | income_details                 | 56                                    |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | income_details                 | 56                                    |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 53                            | financial_details.xlsx | income_details                 | 56                                    |

  Scenario Outline: ACAUTOCAS-5784: Tax calculation for other employee at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    When user fills employment details for "Others"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_IncomeDetails>" and row <FinancialDetails_IncomeDetails_rowNum>
    And user fill income details for others
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill expense details
    And user fill liability details
    And user Save&Compute the financial details
    And user click on calculate tax
    Then tax should be calculated successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-yash.sharma
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 69                            | financial_details.xlsx | income_details                 | 56                                    |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | income_details                 | 56                                    |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | income_details                 | 56                                    |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 69                            | financial_details.xlsx | income_details                 | 56                                    |

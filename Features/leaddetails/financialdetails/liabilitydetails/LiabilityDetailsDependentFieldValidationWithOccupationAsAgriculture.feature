@Epic-Applicant_Information
@AppInfoAdoption
@Liability
@AuthoredBy-harshita.nayak
@Reconciled
@Experiment
#${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-191
Feature: Dependent Field Validation Of Liability Details with occupation type as Agriculture

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-1768: In Selection of <Field_Name> field <Dependent_Field> is autofilled
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user fills "<Field_Name>" field with "valid value" in "internal" liability details
    Then "<Dependent_Field>" should be autofilled in liability details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name                | Dependent_Field     | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | EMI Start Date/Issue Date | MOB(Months on Book) | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Internal                  | Institution Name    | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name                | Dependent_Field     | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | EMI Start Date/Issue Date | MOB(Months on Book) | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Internal                  | Institution Name    | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name                | Dependent_Field     | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | EMI Start Date/Issue Date | MOB(Months on Book) | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Internal                  | Institution Name    | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       | <Category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name                | Dependent_Field     | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | EMI Start Date/Issue Date | MOB(Months on Book) | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Internal                  | Institution Name    | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |

  Scenario Outline: ACAUTOCAS-1769: In Selection of <Field_Name> as loans <Dependent_Field> <Behaviour_of_field>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user selects "<Field_Name>" as loans in external liability
    Then "<Dependent_Field>" should be "<Behaviour_of_field>" in liability Details page

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name     | Dependent_Field                  | Behaviour_of_field | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Liability Type | joint liability percentage       | Displayed          | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Liability Type | months on book                   | Displayed          | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Liability Type | roi percentage                   | Displayed          | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Liability Type | number of defaults               | Displayed          | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Liability Type | balanced transfer/topup checkbox | Displayed          | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name     | Dependent_Field                  | Behaviour_of_field | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Liability Type | joint liability percentage       | Displayed          | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Liability Type | months on book                   | Displayed          | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Liability Type | roi percentage                   | Displayed          | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Liability Type | number of defaults               | Displayed          | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Liability Type | balanced transfer/topup checkbox | Displayed          | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name     | Dependent_Field                  | Behaviour_of_field | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Liability Type | joint liability percentage       | Displayed          | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Liability Type | months on book                   | Displayed          | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Liability Type | roi percentage                   | Displayed          | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Liability Type | number of defaults               | Displayed          | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Liability Type | balanced transfer/topup checkbox | Displayed          | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       | <Category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name     | Dependent_Field                  | Behaviour_of_field | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Liability Type | joint liability percentage       | Displayed          | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Liability Type | months on book                   | Displayed          | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Liability Type | roi percentage                   | Displayed          | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Liability Type | number of defaults               | Displayed          | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Liability Type | balanced transfer/topup checkbox | Displayed          | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |

  Scenario Outline: ACAUTOCAS-1770: In Selection of field <Var> <Dependent_Field> is <Behaviour_of_field>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user selects "<Var>" field in external liability details
    Then "<Dependent_Field>" should  "<Behaviour_of_field>" in liability Details page

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var                        | Dependent_Field            | Behaviour_of_field | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Consider for obligation    | reason                     | not displayed      | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Is balance transfer/top up | reason                     | not displayed      | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | reason                     | reason description         | autoselected       | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 322                                      |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | reason                     | reason description         | not editable       | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | joint liability checkbox   | Joint Liability Percentage | editable           | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var                        | Dependent_Field            | Behaviour_of_field | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Consider for obligation    | reason                     | not displayed      | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 242                                      |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Is balance transfer/top up | reason                     | not displayed      | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 242                                      |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | reason                     | reason description         | autoselected       | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 242                                      |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | reason                     | reason description         | not editable       | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 242                                      |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | joint liability checkbox   | Joint Liability Percentage | editable           | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 242                                      |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var                        | Dependent_Field            | Behaviour_of_field | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Consider for obligation    | reason                     | not displayed      | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 242                                      | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Is balance transfer/top up | reason                     | not displayed      | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 242                                      | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | reason                     | reason description         | autoselected       | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 242                                      | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | reason                     | reason description         | not editable       | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 242                                      | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | joint liability checkbox   | Joint Liability Percentage | editable           | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 242                                      | <Category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var                        | Dependent_Field            | Behaviour_of_field | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Consider for obligation    | reason                     | not displayed      | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Is balance transfer/top up | reason                     | not displayed      | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | reason                     | reason description         | autoselected       | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | reason                     | reason description         | not editable       | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | joint liability checkbox   | Joint Liability Percentage | editable           | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 85                                       |          |     |

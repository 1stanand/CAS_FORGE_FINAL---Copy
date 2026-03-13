@Epic-Applicant_Information
@AppInfoAdoption
@AuthoredBy-harshita.nayak
@ReviewedBy-tushar.chauhan
@ReviewedByDEV
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-191
Feature: Crop Income detail field validation with occupation type as Agriculture

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @FixedTest28
  @Sanity
  Scenario Outline: ACAUTOCAS-1708: Add Crop Income Details with <Var> fields at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_crop_income>" and row <FinancialDetails_crop_income_rowNum>
    When user add crop income details with "<Var>" fields
    Then Crop Income Details should save successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-shivam.gusain
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Var       | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_crop_income | FinancialDetails_crop_income_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | mandatory | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | all       | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Var       | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_crop_income | FinancialDetails_crop_income_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | mandatory | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 3                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | all       | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 3                                   |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Var       | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_crop_income | FinancialDetails_crop_income_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | mandatory | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 3                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | all       | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 3                                   |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Var       | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_crop_income | FinancialDetails_crop_income_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | mandatory | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | all       | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |

  Scenario Outline: ACAUTOCAS-1712: Saving Crop income detail without <Field_Name> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_crop_income>" and row <FinancialDetails_crop_income_rowNum>
    When user fills the Crop income details without "<Field_Name>"
    Then Crop Income Details not saved with "<Throws_notThrows>"

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-shivam.gusain
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_crop_income | FinancialDetails_crop_income_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Crop Income     | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 1                                   | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Land Area(Acre) | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 1                                   | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | RateReceived    | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 1                                   | throws an error with error message |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_crop_income | FinancialDetails_crop_income_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Crop Income     | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 4                                   | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Land Area(Acre) | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 4                                   | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | RateReceived    | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 5                                   | throws an error with error message |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Field_Name      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_crop_income | FinancialDetails_crop_income_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Crop Income     | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 4                                   | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Land Area(Acre) | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 4                                   | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | RateReceived    | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 5                                   | throws an error with error message |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_crop_income | FinancialDetails_crop_income_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Crop Income     | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 1                                   | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Land Area(Acre) | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 1                                   | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | RateReceived    | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 1                                   | throws an error with error message |

  @Perishable
  @Sanity
  Scenario Outline: ACAUTOCAS-1709: Add multiple <Var> Crop Income Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_crop_income>" and row <FinancialDetails_crop_income_rowNum>
    When user add multiple <Var> Crop Income fields
    Then Crop Income Details should save successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-shivam.gusain
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Var | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_crop_income | FinancialDetails_crop_income_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 2   | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Var | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_crop_income | FinancialDetails_crop_income_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 2   | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 3                                   |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Var | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_crop_income | FinancialDetails_crop_income_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | 2   | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 3                                   |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Var | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_crop_income | FinancialDetails_crop_income_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 2   | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |

  Scenario Outline: ACAUTOCAS-1710: Delete <Var> Crop Income Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_crop_income>" and row <FinancialDetails_crop_income_rowNum>
    When user add multiple "<Var>" Crop Income fields
    Then delete Crop Income Details successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-shivam.gusain
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Var | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_crop_income | FinancialDetails_crop_income_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 2   | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Var | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_crop_income | FinancialDetails_crop_income_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 2   | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Var | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_crop_income | FinancialDetails_crop_income_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | 2   | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Var | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_crop_income | FinancialDetails_crop_income_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 2   | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |

  Scenario Outline: ACAUTOCAS-3410: In Selection of <Field_Name> <Dependent_Field> is autofilled in crop details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_crop_income>" and row <FinancialDetails_crop_income_rowNum>
    When user fills "<Field_Name>" in crop income details
    Then "<Dependent_Field>" should be auto computed correctly in crop income details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-shivam.gusain
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name                           | Dependent_Field     | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_crop_income | FinancialDetails_crop_income_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | crop name,country,state and District | Cost Of Cultivation | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | crop name,country,state and District | Market Price        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | crop name,country,state and District | Yield(Quintal/Acre) | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | crop name,country,state and District | HarvestMonth        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | crop name,country,state and District | SowingMonth         | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Land Area(Acre)                      | Income(Annual)      | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Land Area(Acre),RateReceived         | Income(Annual)      | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name                           | Dependent_Field     | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_crop_income | FinancialDetails_crop_income_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | crop name,country,state and District | Cost Of Cultivation | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | crop name,country,state and District | Market Price        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | crop name,country,state and District | Yield(Quintal/Acre) | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | crop name,country,state and District | HarvestMonth        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | crop name,country,state and District | SowingMonth         | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Land Area(Acre)                      | Income(Annual)      | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Land Area(Acre),RateReceived         | Income(Annual)      | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Field_Name                           | Dependent_Field     | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_crop_income | FinancialDetails_crop_income_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | crop name,country,state and District | Cost Of Cultivation | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | crop name,country,state and District | Market Price        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | crop name,country,state and District | Yield(Quintal/Acre) | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | crop name,country,state and District | HarvestMonth        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | crop name,country,state and District | SowingMonth         | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Land Area(Acre)                      | Income(Annual)      | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Land Area(Acre),RateReceived         | Income(Annual)      | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name                           | Dependent_Field     | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_crop_income | FinancialDetails_crop_income_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | crop name,country,state and District | Cost Of Cultivation | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | crop name,country,state and District | Market Price        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | crop name,country,state and District | Yield(Quintal/Acre) | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | crop name,country,state and District | HarvestMonth        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | crop name,country,state and District | SowingMonth         | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Land Area(Acre)                      | Income(Annual)      | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Land Area(Acre),RateReceived         | Income(Annual)      | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |

  #@AuthoredBy-vipin.kishor
  #Bug:CAS-172232
  #FeatureID-ACAUTOCAS-159,CAS-172232
  Scenario Outline: ACAUTOCAS-13025: <Field> field validation in crop income details for Agriculture occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_crop_income>" and row <FinancialDetails_crop_income_rowNum>
    When user fills "<Field>" field in crop income details
    Then filled values of "<Field>" should comes in left of caret cursor in crop income details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-bhanu.singh1
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field                     | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_crop_income | FinancialDetails_crop_income_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Land Area(Acre)           | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | RateReceived(Rs./Quintal) | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field                     | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_crop_income | FinancialDetails_crop_income_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Land Area(Acre)           | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | RateReceived(Rs./Quintal) | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Field                     | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_crop_income | FinancialDetails_crop_income_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Land Area(Acre)           | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | RateReceived(Rs./Quintal) | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field                     | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_crop_income | FinancialDetails_crop_income_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Land Area(Acre)           | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | RateReceived(Rs./Quintal) | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | crop_income                  | 0                                   |

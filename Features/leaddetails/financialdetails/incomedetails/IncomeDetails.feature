@Epic-Applicant_Information
@AppInfoAdoption
@AuthoredBy-vipin.kishor
@Reconciled
#${ApplicantType:["indiv"]}

Feature:Income details in financial details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #FeatureID-ACAUTOCAS-159
  @Sanity
  Scenario Outline: ACAUTOCAS-13049: Add <Single_Multiple> income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_incomeDetails>" and row <FinancialDetails_incomeDetails_rowNum>
    When user fill income details with "<Single_Multiple>" income head of "<Occupation>"
    And user clicks on save and compute
    And user clicks on income details accordian of "<Occupation>"
    Then "<Single_Multiple>" income details should be added of "<Occupation>"

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | Single_Multiple | Occupation   | ProductType   | ApplicantType   | ApplicationStage   | category | key | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum |
      | single          | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | income_details                 | 56                                    | 127                           |
      | multiple        | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | income_details                 | 56                                    | 127                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Single_Multiple | Occupation   | ProductType   | ApplicantType   | ApplicationStage   | category | key | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum |
      | single          | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | income_details                 | 174                                   | 138                           |
      | multiple        | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | income_details                 | 174                                   | 138                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Single_Multiple | Occupation   | ProductType   | ApplicantType   | ApplicationStage   | category   | key | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum |
      | single          | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | financial_details.xlsx | income_details                 | 174                                   | 138                           |
      | multiple        | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | financial_details.xlsx | income_details                 | 174                                   | 138                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
   @NotImplemented
    Examples:
      | Single_Multiple | Occupation   | ProductType   | ApplicantType   | ApplicationStage   | category | key | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum |
      | single          | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | income_details                 | 56                                    | 127                           |
      | multiple        | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | income_details                 | 56                                    | 127                           |


  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13050: Adding multiple income details with same income head in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row 173
    When user add "multiple" income details with same income head of "<Occupation>"
    And user click on save and compute
    Then income details should not be added with an error message

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 127                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 138                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 138                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
   @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 127                           |

  #FeatureID-ACAUTOCAS-159
  @Perishable
  Scenario Outline: ACAUTOCAS-13051: Delete the <Single_Multiple> added income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row 56
    When user fill income details with "<Single_Multiple>" income head of "<Occupation>"
    And user clicks on save and compute
    And user clicks on income details accordian of "<Occupation>"
    And user delete the added income details of "<Occupation>"
    Then added income details of "<Occupation>" should be deleted

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 127                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 138                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key | EmploymentDetails_home_rowNum |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 138                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
   @NotImplemented
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 127                           |


  @Perishable
  Scenario Outline: ACAUTOCAS-13052: Save income details without filling <Field> field in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 125
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row <financialDetails_incomeDetails_rowNum>
    When user fills all fields except "<Field>" field to save income details
    And user click on save and compute
    Then income details did not saved with an error message

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | Field         | ProductType   | ApplicantType   | ApplicationStage   | category | key | Occupation   | financialDetails_incomeDetails_rowNum |
      | Income Head   | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <Occupation> | 116                                   |
      | Income Source | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <Occupation> | 117                                   |
      | Frequency     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <Occupation> | 118                                   |
      | Amount        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <Occupation> | 119                                   |
      | Percentage    | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <Occupation> | 120                                   |
      | Sharing %     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <Occupation> | 121                                   |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Field         | ProductType   | ApplicantType   | ApplicationStage   | category | key | Occupation   | financialDetails_incomeDetails_rowNum |
      | Income Head   | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <Occupation> | 116                                   |
      | Income Source | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <Occupation> | 117                                   |
      | Frequency     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <Occupation> | 118                                   |
      | Amount        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <Occupation> | 119                                   |
      | Percentage    | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <Occupation> | 120                                   |
      | Sharing %     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <Occupation> | 121                                   |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Field         | ProductType   | ApplicantType   | ApplicationStage   | category   | key | Occupation   | financialDetails_incomeDetails_rowNum |
      | Income Head   | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | <Occupation> | 116                                   |
      | Income Source | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | <Occupation> | 117                                   |
      | Frequency     | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | <Occupation> | 118                                   |
      | Amount        | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | <Occupation> | 119                                   |
      | Percentage    | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | <Occupation> | 120                                   |
      | Sharing %     | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | <Occupation> | 121                                   |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
   @NotImplemented
    Examples:
      | Field         | ProductType   | ApplicantType   | ApplicationStage   | category | key | Occupation   | financialDetails_incomeDetails_rowNum |
      | Income Head   | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <Occupation> | 116                                   |
      | Income Source | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <Occupation> | 117                                   |
      | Frequency     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <Occupation> | 118                                   |
      | Amount        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <Occupation> | 119                                   |
      | Percentage    | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <Occupation> | 120                                   |
      | Sharing %     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <Occupation> | 121                                   |

  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13053: Field type validation of <Field> in income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "<EmployementDetailsWB>" under sheet "<EmployementDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    When user clicks on income details accordian of "<Occupation>"
    Then "<Field>" field should be of "<Field_Type>" type of "<Occupation>"

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | Field               | Field_Type | Occupation   | ProductType   | ApplicantType   | ApplicationStage   | category | key | EmployementDetailsWB    | EmployementDetails_home | EmploymentDetails_home_rowNum |
      | Income Head         | drop down  | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                    | 126                           |
      | Income Source       | drop down  | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                    | 126                           |
      | Frequency           | drop down  | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                    | 126                           |
      | Amount              | input      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                    | 126                           |
      | Percentage          | input      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                    | 126                           |
      | Sharing %           | input      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                    | 126                           |
      | Net Amount (Annual) | input      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                    | 126                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Field               | Field_Type | Occupation   | ProductType   | ApplicantType   | ApplicationStage   | category | key | EmployementDetailsWB    | EmployementDetails_home | EmploymentDetails_home_rowNum |
      | Income Head         | drop down  | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                    | 137                           |
      | Income Source       | drop down  | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                    | 137                           |
      | Frequency           | drop down  | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                    | 137                           |
      | Amount              | input      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                    | 137                           |
      | Percentage          | input      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                    | 137                           |
      | Sharing %           | input      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                    | 137                           |
      | Net Amount (Annual) | input      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                    | 137                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Field               | Field_Type | Occupation   | ProductType   | ApplicantType   | ApplicationStage   | category   | key | EmployementDetailsWB    | EmployementDetails_home | EmploymentDetails_home_rowNum |
      | Income Head         | drop down  | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | employment_details.xlsx | home                    | 137                           |
      | Income Source       | drop down  | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | employment_details.xlsx | home                    | 137                           |
      | Frequency           | drop down  | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | employment_details.xlsx | home                    | 137                           |
      | Amount              | input      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | employment_details.xlsx | home                    | 137                           |
      | Percentage          | input      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | employment_details.xlsx | home                    | 137                           |
      | Sharing %           | input      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | employment_details.xlsx | home                    | 137                           |
      | Net Amount (Annual) | input      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | employment_details.xlsx | home                    | 137                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
   @NotImplemented
    Examples:
      | Field               | Field_Type | Occupation   | ProductType   | ApplicantType   | ApplicationStage   | category | key | EmployementDetailsWB    | EmployementDetails_home | EmploymentDetails_home_rowNum |
      | Income Head         | drop down  | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                    | 126                           |
      | Income Source       | drop down  | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                    | 126                           |
      | Frequency           | drop down  | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                    | 126                           |
      | Amount              | input      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                    | 126                           |
      | Percentage          | input      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                    | 126                           |
      | Sharing %           | input      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                    | 126                           |
      | Net Amount (Annual) | input      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                    | 126                           |

  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13054: <Field_Name> field validation in income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 125
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And click on income detail
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row <financialDetails_incomeDetails_rowNum>
    When user fills "<Field_Name>" in income details of "<Occupation>"
    Then "<Field_Name>" field "<Throws_notThrows>" error in income details of "<Occupation>"

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | Field_Name | Throws_notThrows | ApplicationStage   | ProductType   | ApplicantType   | Occupation   | financialDetails_incomeDetails_rowNum | category | key |
      | Amount     | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 122                                   |          |     |
      | Amount     | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 123                                   |          |     |
      | Amount     | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 124                                   |          |     |
      | Amount     | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 125                                   |          |     |
      | Amount     | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 126                                   |          |     |
      | Percentage | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 127                                   |          |     |
      | Percentage | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 128                                   |          |     |
      | Percentage | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 129                                   |          |     |
      | Percentage | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 130                                   |          |     |
      | Percentage | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 131                                   |          |     |
      | Sharing %  | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 132                                   |          |     |
      | Sharing %  | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 133                                   |          |     |
      | Sharing %  | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 134                                   |          |     |
      | Sharing %  | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 135                                   |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Field_Name | Throws_notThrows | ApplicationStage   | ProductType   | ApplicantType   | Occupation   | financialDetails_incomeDetails_rowNum | category | key |
      | Amount     | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 122                                   |          |     |
      | Amount     | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 123                                   |          |     |
      | Amount     | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 124                                   |          |     |
      | Amount     | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 125                                   |          |     |
      | Amount     | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 126                                   |          |     |
      | Percentage | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 127                                   |          |     |
      | Percentage | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 128                                   |          |     |
      | Percentage | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 129                                   |          |     |
      | Percentage | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 130                                   |          |     |
      | Percentage | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 131                                   |          |     |
      | Sharing %  | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 132                                   |          |     |
      | Sharing %  | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 133                                   |          |     |
      | Sharing %  | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 134                                   |          |     |
      | Sharing %  | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 135                                   |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Field_Name | Throws_notThrows | ApplicationStage   | ProductType   | ApplicantType   | Occupation   | financialDetails_incomeDetails_rowNum | category   | key |
      | Amount     | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 122                                   | <category> |     |
      | Amount     | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 123                                   | <category> |     |
      | Amount     | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 124                                   | <category> |     |
      | Amount     | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 125                                   | <category> |     |
      | Amount     | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 126                                   | <category> |     |
      | Percentage | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 127                                   | <category> |     |
      | Percentage | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 128                                   | <category> |     |
      | Percentage | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 129                                   | <category> |     |
      | Percentage | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 130                                   | <category> |     |
      | Percentage | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 131                                   | <category> |     |
      | Sharing %  | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 132                                   | <category> |     |
      | Sharing %  | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 133                                   | <category> |     |
      | Sharing %  | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 134                                   | <category> |     |
      | Sharing %  | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 135                                   | <category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
   @NotImplemented
    Examples:
      | Field_Name | Throws_notThrows | ApplicationStage   | ProductType   | ApplicantType   | Occupation   | financialDetails_incomeDetails_rowNum | category | key |
      | Amount     | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 122                                   |          |     |
      | Amount     | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 123                                   |          |     |
      | Amount     | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 124                                   |          |     |
      | Amount     | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 125                                   |          |     |
      | Amount     | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 126                                   |          |     |
      | Percentage | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 127                                   |          |     |
      | Percentage | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 128                                   |          |     |
      | Percentage | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 129                                   |          |     |
      | Percentage | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 130                                   |          |     |
      | Percentage | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 131                                   |          |     |
      | Sharing %  | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 132                                   |          |     |
      | Sharing %  | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 133                                   |          |     |
      | Sharing %  | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 134                                   |          |     |
      | Sharing %  | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | 135                                   |          |     |

  #FeatureID-ACAUTOCAS-159
  @Sanity
  Scenario Outline: ACAUTOCAS-13055: Net Amount (Annual) validation based on <Frequency> in income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 125
    And user fill employment details for occupation type as "<Occupation>"
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row <financialDetails_incomeDetails_rowNum>
    When user fill income details with "single" income head of "<Occupation>" with "<Frequency>" income frequency
    And user clicks on save and compute
    And user clicks on income details accordian of "<Occupation>"
    Then Net Amount (Annual) in income details should be calculated correctly

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | Frequency   | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | financialDetails_incomeDetails_rowNum |
      | Annually    | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 41                                    |
      | Bi-Monthly  | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 42                                    |
      | Fortnightly | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 43                                    |
      | Half Yearly | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 44                                    |
      | Monthly     | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 39                                    |
      | OneTime     | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 45                                    |
      | Weekly      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 46                                    |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Frequency   | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | financialDetails_incomeDetails_rowNum |
      | Annually    | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 41                                    |
      | Bi-Monthly  | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 42                                    |
      | Fortnightly | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 43                                    |
      | Half Yearly | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 44                                    |
      | Monthly     | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 39                                    |
      | OneTime     | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 45                                    |
      | Weekly      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 46                                    |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Frequency   | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key | financialDetails_incomeDetails_rowNum |
      | Annually    | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 41                                    |
      | Bi-Monthly  | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 42                                    |
      | Fortnightly | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 43                                    |
      | Half Yearly | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 44                                    |
      | Monthly     | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 39                                    |
      | OneTime     | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 45                                    |
      | Weekly      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 46                                    |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
   @NotImplemented
    Examples:
      | Frequency   | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | financialDetails_incomeDetails_rowNum |
      | Annually    | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 41                                    |
      | Bi-Monthly  | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 42                                    |
      | Fortnightly | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 43                                    |
      | Half Yearly | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 44                                    |
      | Monthly     | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 39                                    |
      | OneTime     | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 45                                    |
      | Weekly      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 46                                    |

  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13056: Net Amount (Annual) should be auto update based on <Fields> field of income details for <Occupation> occupation at <ApplicationStage> stage in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row 56
    And user fill income details with "single" income head of "<Occupation>"
    And user clicks on save and compute
    And user clicks on income details accordian of "<Occupation>"
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row <financialDetails_incomeDetails_rowNum>
    When user change the value of "<Fields>" field in income details of "<Occupation>"
    Then Net Amount (Annual) should be auto update correctly in income details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Fields                   | Occupation   | financialDetails_incomeDetails_rowNum | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Amount                   | <Occupation> | 39                                    |          |     | 126                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Percentage               | <Occupation> | 39                                    |          |     | 126                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Sharing %                | <Occupation> | 39                                    |          |     | 126                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Annually    | <Occupation> | 41                                    |          |     | 126                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Bi-Monthly  | <Occupation> | 42                                    |          |     | 126                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Fortnightly | <Occupation> | 43                                    |          |     | 126                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Half Yearly | <Occupation> | 44                                    |          |     | 126                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Monthly     | <Occupation> | 39                                    |          |     | 126                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as OneTime     | <Occupation> | 45                                    |          |     | 126                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Quarterly   | <Occupation> | 40                                    |          |     | 126                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Weekly      | <Occupation> | 46                                    |          |     | 126                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Fields                   | Occupation   | financialDetails_incomeDetails_rowNum | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Amount                   | <Occupation> | 39                                    |          |     | 137                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Percentage               | <Occupation> | 39                                    |          |     | 137                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Sharing %                | <Occupation> | 39                                    |          |     | 137                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Annually    | <Occupation> | 41                                    |          |     | 137                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Bi-Monthly  | <Occupation> | 42                                    |          |     | 137                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Fortnightly | <Occupation> | 43                                    |          |     | 137                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Half Yearly | <Occupation> | 44                                    |          |     | 137                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Monthly     | <Occupation> | 39                                    |          |     | 137                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as OneTime     | <Occupation> | 45                                    |          |     | 137                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Quarterly   | <Occupation> | 40                                    |          |     | 137                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Weekly      | <Occupation> | 46                                    |          |     | 137                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Fields                   | Occupation   | financialDetails_incomeDetails_rowNum | category   | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Amount                   | <Occupation> | 39                                    | <category> |     | 137                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Percentage               | <Occupation> | 39                                    | <category> |     | 137                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Sharing %                | <Occupation> | 39                                    | <category> |     | 137                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Annually    | <Occupation> | 41                                    | <category> |     | 137                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Bi-Monthly  | <Occupation> | 42                                    | <category> |     | 137                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Fortnightly | <Occupation> | 43                                    | <category> |     | 137                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Half Yearly | <Occupation> | 44                                    | <category> |     | 137                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Monthly     | <Occupation> | 39                                    | <category> |     | 137                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as OneTime     | <Occupation> | 45                                    | <category> |     | 137                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Quarterly   | <Occupation> | 40                                    | <category> |     | 137                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Weekly      | <Occupation> | 46                                    | <category> |     | 137                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
   @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Fields                   | Occupation   | financialDetails_incomeDetails_rowNum | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Amount                   | <Occupation> | 39                                    |          |     | 126                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Percentage               | <Occupation> | 39                                    |          |     | 126                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Sharing %                | <Occupation> | 39                                    |          |     | 126                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Annually    | <Occupation> | 41                                    |          |     | 126                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Bi-Monthly  | <Occupation> | 42                                    |          |     | 126                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Fortnightly | <Occupation> | 43                                    |          |     | 126                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Half Yearly | <Occupation> | 44                                    |          |     | 126                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Monthly     | <Occupation> | 39                                    |          |     | 126                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as OneTime     | <Occupation> | 45                                    |          |     | 126                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Quarterly   | <Occupation> | 40                                    |          |     | 126                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Frequency as Weekly      | <Occupation> | 46                                    |          |     | 126                           |

  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13057: <Field> field validation in income details for <Occupation> occupation  at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 125
    And user fills employment details for "<Occupation>"
    And user open financial details
    And user clicks on income details accordian of "<Occupation>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_incomeDetails>" and row <FinancialDetails_incomeDetails_rowNum>
    When user fills "<Field>" field in income details
    Then filled values of "<Field>" should comes in left of caret cursor

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-richa.singh
    Examples:
      | Field      | ProductType   | ApplicationStage   | Occupation   | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | ApplicantType   | category | key |
      | Amount     | <ProductType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | <ApplicantType> |          |     |
      | Percentage | <ProductType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | <ApplicantType> |          |     |
      | Sharing %  | <ProductType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | <ApplicantType> |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Field      | ProductType   | ApplicationStage   | Occupation   | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | ApplicantType   | category | key |
      | Amount     | <ProductType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | <ApplicantType> |          |     |
      | Percentage | <ProductType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | <ApplicantType> |          |     |
      | Sharing %  | <ProductType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | <ApplicantType> |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Field      | ProductType   | ApplicationStage   | Occupation   | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | ApplicantType   | category   | key |
      | Amount     | <ProductType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | <ApplicantType> | <category> |     |
      | Percentage | <ProductType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | <ApplicantType> | <category> |     |
      | Sharing %  | <ProductType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | <ApplicantType> | <category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
   @NotImplemented
    Examples:
      | Field      | ProductType   | ApplicationStage   | Occupation   | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | ApplicantType   | category | key |
      | Amount     | <ProductType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | <ApplicantType> |          |     |
      | Percentage | <ProductType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | <ApplicantType> |          |     |
      | Sharing %  | <ProductType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13058: Adding more details in income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 125
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row 53
    And user fill income details with "single" income head of "<Occupation>"
    And user open new income detail pop up screen to add more details in income details
    When user add more details in income details
    And user clicks on done button of more details
    Then more details should be added in income details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
   @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13059: <NonMandateField> field validation in new income detail pop up screen of income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 125
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row 56
    And user fill income details with "single" income head of "<Occupation>"
    When user open new income detail pop up screen to add more details in income details
    Then "<NonMandateField>" should be non editable field

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | NonMandateField | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key |
      | Net Amount      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | NonMandateField | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key |
      | Net Amount      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | NonMandateField | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key |
      | Net Amount      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
   @NotImplemented
    Examples:
      | NonMandateField | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key |
      | Net Amount      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13060: Required field validation in new income detail pop up screen of income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user clicks on income details accordian of "<Occupation>"
    And user open new income detail pop up screen to add more details in income details
    When user open Required fields of new income detail
    Then following field should be present in required field
      | Field          |
      | Applicant type |
      | Name           |
      | Sharing %      |

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 126                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 137                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 137                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
   @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 126                           |

  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13061: Check All fields in new income detail pop up screen of income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user clicks on income details accordian of "<Occupation>"
    And user open new income detail pop up screen to add more details in income details
    When user open All Fields of new income detail
    Then following field should be present in All fields of income
      | Field                 |
      | Net Amount            |
      | Mode Of Payment       |
      | Effective Tax Rate(%) |
      | Applicant type        |
      | Name                  |
      | Sharing %             |

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 126                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 137                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 137                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
   @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 126                           |

  
  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13062: Field type validation of <Field> in new income detail pop up screen of income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row 56
    And user fill income details with "single" income head of "<Occupation>"
    When user open new income detail pop up screen to add more details in income details
    Then "<Field>" field of more details should be of "<Field_Type>" type in income details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | Field           | Field_Type | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | Mode Of Payment | drop down  | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 126                           |
      | Applicant type  | drop down  | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 126                           |
      | Name            | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 126                           |
      | Sharing %       | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 126                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Field           | Field_Type | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | Mode Of Payment | drop down  | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 137                           |
      | Applicant type  | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 137                           |
      | Name            | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 137                           |
      | Sharing %       | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 137                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Field           | Field_Type | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key | EmploymentDetails_home_rowNum |
      | Mode Of Payment | drop down  | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 137                           |
      | Applicant type  | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 137                           |
      | Name            | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 137                           |
      | Sharing %       | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 137                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
   @NotImplemented
    Examples:
      | Field           | Field_Type | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | Mode Of Payment | drop down  | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 126                           |
      | Applicant type  | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 126                           |
      | Name            | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 126                           |
      | Sharing %       | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 126                           |

  
  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13063: <Field_Name> field validation with <Validity> <InputType> in new income detail pop up screen of income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 125
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user clicks on income details accordian of "<Occupation>"
    And user open new income detail pop up screen to add more details in income details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_incomeDetails>" and row <FinancialDetails_incomeDetails_rowNum>
    When user fills "<Validity>" "<Field_Name>" with "<InputType>" in new income detail of income details
    Then "<Field_Name>" field "<Throws_notThrows>" in income details
    
    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-richa.singh
    Examples:
      | Field_Name     | Validity | InputType                                         | Throws_notThrows    | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | ApplicantType   | category | key |
      | Applicant type | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 154                                   | <ApplicantType> |          |     |
      | Name           | valid    | character                                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 155                                   | <ApplicantType> |          |     |
      | Name           | valid    | alphanumeric                                      | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 156                                   | <ApplicantType> |          |     |
      | Name           | valid    | number                                            | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 157                                   | <ApplicantType> |          |     |
      | Name           | valid    | character with space                              | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 158                                   | <ApplicantType> |          |     |
      | Name           | valid    | character with dot                                | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 159                                   | <ApplicantType> |          |     |
      | Name           | valid    | character with apostrophe                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 160                                   | <ApplicantType> |          |     |
      | Name           | invalid  | character with underscore                         | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 161                                   | <ApplicantType> |          |     |
      | Name           | invalid  | character with hyphen                             | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 162                                   | <ApplicantType> |          |     |
      | Name           | invalid  | negative number                                   | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 163                                   | <ApplicantType> |          |     |
      | Name           | invalid  | special character                                 | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 164                                   | <ApplicantType> |          |     |
      | Name           | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 165                                   | <ApplicantType> |          |     |
      | Sharing %      | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 155                                   | <ApplicantType> |          |     |
      | Sharing %      | invalid  | negative values                                   | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | <ApplicantType> |          |     |
      | Sharing %      | invalid  | value more  than 100                              | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 168                                   | <ApplicantType> |          |     |
      | Sharing %      | invalid  | value between 0 to 100 more than 2 decimal places | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 169                                   | <ApplicantType> |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Field_Name     | Validity | InputType                                         | Throws_notThrows    | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | ApplicantType   | category | key |
      | Applicant type | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 154                                   | <ApplicantType> |          |     |
      | Name           | valid    | character                                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 155                                   | <ApplicantType> |          |     |
      | Name           | valid    | alphanumeric                                      | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 156                                   | <ApplicantType> |          |     |
      | Name           | valid    | number                                            | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 157                                   | <ApplicantType> |          |     |
      | Name           | valid    | character with space                              | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 158                                   | <ApplicantType> |          |     |
      | Name           | valid    | character with dot                                | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 159                                   | <ApplicantType> |          |     |
      | Name           | valid    | character with apostrophe                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 160                                   | <ApplicantType> |          |     |
      | Name           | invalid  | character with underscore                         | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 161                                   | <ApplicantType> |          |     |
      | Name           | invalid  | character with hyphen                             | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 162                                   | <ApplicantType> |          |     |
      | Name           | invalid  | negative number                                   | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 163                                   | <ApplicantType> |          |     |
      | Name           | invalid  | special character                                 | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 164                                   | <ApplicantType> |          |     |
      | Name           | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 165                                   | <ApplicantType> |          |     |
      | Sharing %      | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 155                                   | <ApplicantType> |          |     |
      | Sharing %      | invalid  | negative values                                   | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | <ApplicantType> |          |     |
      | Sharing %      | invalid  | value more  than 100                              | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 168                                   | <ApplicantType> |          |     |
      | Sharing %      | invalid  | value between 0 to 100 more than 2 decimal places | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 169                                   | <ApplicantType> |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Field_Name     | Validity | InputType                                         | Throws_notThrows    | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | ApplicantType   | category   | key |
      | Applicant type | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 154                                   | <ApplicantType> | <category> |     |
      | Name           | valid    | character                                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 155                                   | <ApplicantType> | <category> |     |
      | Name           | valid    | alphanumeric                                      | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 156                                   | <ApplicantType> | <category> |     |
      | Name           | valid    | number                                            | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 157                                   | <ApplicantType> | <category> |     |
      | Name           | valid    | character with space                              | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 158                                   | <ApplicantType> | <category> |     |
      | Name           | valid    | character with dot                                | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 159                                   | <ApplicantType> | <category> |     |
      | Name           | valid    | character with apostrophe                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 160                                   | <ApplicantType> | <category> |     |
      | Name           | invalid  | character with underscore                         | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 161                                   | <ApplicantType> | <category> |     |
      | Name           | invalid  | character with hyphen                             | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 162                                   | <ApplicantType> | <category> |     |
      | Name           | invalid  | negative number                                   | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 163                                   | <ApplicantType> | <category> |     |
      | Name           | invalid  | special character                                 | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 164                                   | <ApplicantType> | <category> |     |
      | Name           | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 165                                   | <ApplicantType> | <category> |     |
      | Sharing %      | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 155                                   | <ApplicantType> | <category> |     |
      | Sharing %      | invalid  | negative values                                   | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | <ApplicantType> | <category> |     |
      | Sharing %      | invalid  | value more  than 100                              | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 168                                   | <ApplicantType> | <category> |     |
      | Sharing %      | invalid  | value between 0 to 100 more than 2 decimal places | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 169                                   | <ApplicantType> | <category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
   @NotImplemented
    Examples:
      | Field_Name     | Validity | InputType                                         | Throws_notThrows    | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | ApplicantType   | category | key |
      | Applicant type | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 154                                   | <ApplicantType> |          |     |
      | Name           | valid    | character                                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 155                                   | <ApplicantType> |          |     |
      | Name           | valid    | alphanumeric                                      | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 156                                   | <ApplicantType> |          |     |
      | Name           | valid    | number                                            | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 157                                   | <ApplicantType> |          |     |
      | Name           | valid    | character with space                              | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 158                                   | <ApplicantType> |          |     |
      | Name           | valid    | character with dot                                | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 159                                   | <ApplicantType> |          |     |
      | Name           | valid    | character with apostrophe                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 160                                   | <ApplicantType> |          |     |
      | Name           | invalid  | character with underscore                         | throw an            | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 161                                   | <ApplicantType> |          |     |
      | Name           | invalid  | character with hyphen                             | throw an            | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 162                                   | <ApplicantType> |          |     |
      | Name           | invalid  | negative number                                   | throw an            | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 163                                   | <ApplicantType> |          |     |
      | Name           | invalid  | special character                                 | throw an            | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 164                                   | <ApplicantType> |          |     |
      | Name           | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 165                                   | <ApplicantType> |          |     |
      | Sharing %      | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 155                                   | <ApplicantType> |          |     |
      | Sharing %      | invalid  | negative values                                   | throw an            | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | <ApplicantType> |          |     |
      | Sharing %      | invalid  | value more  than 100                              | throw an            | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 168                                   | <ApplicantType> |          |     |
      | Sharing %      | invalid  | value between 0 to 100 more than 2 decimal places | throw an            | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | income_details                 | 169                                   | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-159
  @FixedExp
  Scenario Outline: ACAUTOCAS-13064: Close the new income detail pop up screen of income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row 56
    And user fill income details with "single" income head of "<Occupation>"
    And user open new income detail pop up screen to add more details in income details
    When user close the new income detail pop up screen of income details
    Then new income detail pop up screen should be closed of income details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 126                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 137                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 137                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
   @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 126                           |

  #FeatureID-ACAUTOCAS-159
  @FixedExp
  Scenario Outline: ACAUTOCAS-13065: Minimize the new income detail pop up screen of income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row 56
    And user fill income details with "single" income head of "<Occupation>"
    And user open new income detail pop up screen to add more details in income details
    When user minimize the new income detail pop up screen of income details
    Then new income detail pop up screen should be minimized in income details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 126                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 137                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 137                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
   @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 126                           |

  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13066: Maximize the minimized new income detail pop up screen of income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row 56
    And user fill income details with "single" income head of "<Occupation>"
    And user open new income detail pop up screen to add more details in income details
    And user minimize the new income detail pop up screen of income details
    When user maximize the minimized new income detail pop up screen of income details
    Then new income detail pop up screen should be maximized of income details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 126                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 137                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 137                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
   @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 126                           |
      
  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13067: Sum of sharing percent should be <Less_Equal> in income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row <FinancialDetails_incomeDetails_rowNum>
    And user fill income details with "single" income head of "<Occupation>"
    And user open new income detail pop up screen to add more details in income details
    When user add income sharing details with sum of sharing percent "<Less_Equal>" in income details
    And user clicks on done button of more details
    Then income sharing details with "<Less_Equal>" sharing percent should "<Added>" successfully in income details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | Less_Equal    | Added   | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | FinancialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum |
      | less than 100 | add     | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 1                                     | 126                           |
      | equal to 100  | add     | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 172                                   | 126                           |
      | more than 100 | not add | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 34                                    | 126                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Less_Equal    | Added   | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | FinancialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum |
      | less than 100 | add     | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 1                                     | 137                           |
      | equal to 100  | add     | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 172                                   | 137                           |
      | more than 100 | not add | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 34                                    | 137                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Less_Equal    | Added   | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key | FinancialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum |
      | less than 100 | add     | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 1                                     | 137                           |
      | equal to 100  | add     | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 172                                   | 137                           |
      | more than 100 | not add | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 34                                    | 137                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
   @NotImplemented
    Examples:
      | Less_Equal    | Added   | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | FinancialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum |
      | less than 100 | add     | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 1                                     | 126                           |
      | equal to 100  | add     | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 172                                   | 126                           |
      | more than 100 | not add | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 34                                    | 126                           |

  
  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13068: Primary applicant sharing percentage validation in new income detail pop up screen of income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row 56
    And user fills income details
    When user open new income detail pop up screen to add more details in income details
    Then primary applicant sharing should be display same as filled in income details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 126                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 137                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 137                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
   @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 126                           |

  
  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13069: Add <Single_Multiple> income sharing details of income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 125
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row 53
    And user fill income details with "single" income head of "<Occupation>"
    And user open new income detail pop up screen to add more details in income details
    When user add "<Single_Multiple>" income sharing details in more details of income details
    Then more details should be added in income details

      # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     |
      | multiple        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     |
      | multiple        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     |

      # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     |
      | multiple        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
   @NotImplemented
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     |
      | multiple        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13070: Delete income sharing details of income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 125
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row 1
    And user fill income details with "single" income head of "<Occupation>"
    And user open new income detail pop up screen to add more details in income details
    When user add more details in income details
    And user clicks on done button of more details
    And user delete the added income sharing details in more details
    Then added income sharing details should be deleted in more details
    
    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     |

      # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     |

  
  #FeatureID-ACAUTOCAS-159
  @FixedExp
  Scenario Outline: ACAUTOCAS-13071: Search income sharing details on the basis of "<Grid>" of income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row 1
    And user fill income details with "single" income head of "<Occupation>"
    And user open new income detail pop up screen to add more details in income details
    When user add more details in income details
    And user clicks on done button of more details to save
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row 55
    And user add more details in income details
    And user clicks on done button of more details to save
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row 104
    And user add more details in income details
    And user clicks on done button of more details to save
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row <FinancialDetails_incomeDetails_rowNum>
    And user search details on the basis of "<Grid>" in more details
    Then user should be able to search on the basis of "<Grid>" in more details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | Grid           | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | FinancialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum |
      | Applicant type | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 1                                     | 126                           |
      | Name           | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 104                                   | 126                           |
      | Sharing %      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 55                                    | 126                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Grid           | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | FinancialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum |
      | Applicant type | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 1                                     | 137                           |
      | Name           | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 104                                   | 137                           |
      | Sharing %      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 55                                    | 137                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Grid           | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key | FinancialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum |
      | Applicant type | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 1                                     | 137                           |
      | Name           | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 104                                   | 137                           |
      | Sharing %      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 55                                    | 137                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
   @NotImplemented
    Examples:
      | Grid           | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | FinancialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum |
      | Applicant type | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 1                                     | 126                           |
      | Name           | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 104                                   | 126                           |
      | Sharing %      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 55                                    | 126                           |
      
  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13072: Show the "<NumberOfRows>" rows of income sharing details in grid of income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user clicks on income details accordian of "<Occupation>"
    And user open new income detail pop up screen to add more details in income details
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row 56
    And  user add more details in income details
    When user selects "<NumberOfRows>" number of rows to show income sharing details in grid
    Then selected "<NumberOfRows>" rows "<Display>" in case total enteries are "<More_Less>" than selected number

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-richa.singh
    Examples:
      | NumberOfRows | Display                                 | More_Less | ApplicationStage   | ProductType   | Occupation   | EmploymentDetails_home_rowNum | ApplicantType   | category | key |
      | 10           | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | 126                           | <ApplicantType> |          |     |
      | 25           | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | 126                           | <ApplicantType> |          |     |
      | 50           | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | 126                           | <ApplicantType> |          |     |
      | 100          | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | 126                           | <ApplicantType> |          |     |
      | 10           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | 126                           | <ApplicantType> |          |     |
      | 25           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | 126                           | <ApplicantType> |          |     |
      | 50           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | 126                           | <ApplicantType> |          |     |
      | 100          | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | 126                           | <ApplicantType> |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | NumberOfRows | Display                                 | More_Less | ApplicationStage   | ProductType   | Occupation   | EmploymentDetails_home_rowNum | ApplicantType   | category | key |
      | 10           | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | 137                           | <ApplicantType> |          |     |
      | 25           | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | 137                           | <ApplicantType> |          |     |
      | 50           | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | 137                           | <ApplicantType> |          |     |
      | 100          | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | 137                           | <ApplicantType> |          |     |
      | 10           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | 137                           | <ApplicantType> |          |     |
      | 25           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | 137                           | <ApplicantType> |          |     |
      | 50           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | 137                           | <ApplicantType> |          |     |
      | 100          | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | 137                           | <ApplicantType> |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | NumberOfRows | Display                                 | More_Less | ApplicationStage   | ProductType   | Occupation   | EmploymentDetails_home_rowNum | ApplicantType   | category   | key |
      | 10           | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | 137                           | <ApplicantType> | <category> |     |
      | 25           | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | 137                           | <ApplicantType> | <category> |     |
      | 50           | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | 137                           | <ApplicantType> | <category> |     |
      | 100          | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | 137                           | <ApplicantType> | <category> |     |
      | 10           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | 137                           | <ApplicantType> | <category> |     |
      | 25           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | 137                           | <ApplicantType> | <category> |     |
      | 50           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | 137                           | <ApplicantType> | <category> |     |
      | 100          | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | 137                           | <ApplicantType> | <category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
   @NotImplemented
    Examples:
      | NumberOfRows | Display                                 | More_Less | ApplicationStage   | ProductType   | Occupation   | EmploymentDetails_home_rowNum | ApplicantType   | category | key |
      | 10           | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | 126                           | <ApplicantType> |          |     |
      | 25           | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | 126                           | <ApplicantType> |          |     |
      | 50           | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | 126                           | <ApplicantType> |          |     |
      | 100          | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | 126                           | <ApplicantType> |          |     |
      | 10           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | 126                           | <ApplicantType> |          |     |
      | 25           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | 126                           | <ApplicantType> |          |     |
      | 50           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | 126                           | <ApplicantType> |          |     |
      | 100          | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | 126                           | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13073: Validation of pagination in income sharing details of income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user clicks on income details accordian of "<Occupation>"
    And user open new income detail pop up screen to add more details in income details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_incomeDetails>" and row <FinancialDetails_incomeDetails_rowNum>
    And user add multiple income sharing details
    When "<Page>" page of grid is open in other income details
    Then "<Paginate_Btn>" should be "<Disable_Enable>" for "<Page>" in other income details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-richa.singh
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum |
      | first | paginate_button previous | disable        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | financial_details.xlsx | income_details                 | 155                                   | 126                           |
      | first | paginate_button next     | enable         | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | financial_details.xlsx | income_details                 | 155                                   | 126                           |
      | last  | paginate_button previous | enable         | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | financial_details.xlsx | income_details                 | 155                                   | 126                           |
      | last  | paginate_button next     | disable        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | financial_details.xlsx | income_details                 | 155                                   | 126                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum |
      | first | paginate_button previous | disable        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | financial_details.xlsx | income_details                 | 155                                   | 137                           |
      | first | paginate_button next     | enable         | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | financial_details.xlsx | income_details                 | 155                                   | 137                           |
      | last  | paginate_button previous | enable         | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | financial_details.xlsx | income_details                 | 155                                   | 137                           |
      | last  | paginate_button next     | disable        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | financial_details.xlsx | income_details                 | 155                                   | 137                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum |
      | first | paginate_button previous | disable        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | financial_details.xlsx | income_details                 | 155                                   | 137                           |
      | first | paginate_button next     | enable         | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | financial_details.xlsx | income_details                 | 155                                   | 137                           |
      | last  | paginate_button previous | enable         | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | financial_details.xlsx | income_details                 | 155                                   | 137                           |
      | last  | paginate_button next     | disable        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | financial_details.xlsx | income_details                 | 155                                   | 137                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
   @NotImplemented
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum |
      | first | paginate_button previous | disable        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | financial_details.xlsx | income_details                 | 155                                   | 126                           |
      | first | paginate_button next     | enable         | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | financial_details.xlsx | income_details                 | 155                                   | 126                           |
      | last  | paginate_button previous | enable         | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | financial_details.xlsx | income_details                 | 155                                   | 126                           |
      | last  | paginate_button next     | disable        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | financial_details.xlsx | income_details                 | 155                                   | 126                           |


  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13074: Validating all Pagination in income sharing details of income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user clicks on income details accordian of "<Occupation>"
    And user open new income detail pop up screen to add more details in income details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_incomeDetails>" and row <FinancialDetails_incomeDetails_rowNum>
    And user add multiple income sharing details
    When "<Page>" page of grid is open in other income details
    And user click on "<Paginate_Btn>" of sharing details
    Then "<Page>" page should work successfully in income detail

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-richa.singh
    Examples:
      | Page  | Paginate_Btn             | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum |
      | first | paginate_button next     | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | financial_details.xlsx | income_details                 | 155                                   | 126                           |
      | last  | paginate_button previous | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | financial_details.xlsx | income_details                 | 155                                   | 126                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Page  | Paginate_Btn             | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum |
      | first | paginate_button next     | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | financial_details.xlsx | income_details                 | 155                                   | 137                           |
      | last  | paginate_button previous | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | financial_details.xlsx | income_details                 | 155                                   | 137                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Salaried","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Page  | Paginate_Btn             | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum |
      | first | paginate_button next     | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | financial_details.xlsx | income_details                 | 155                                   | 137                           |
      | last  | paginate_button previous | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | financial_details.xlsx | income_details                 | 155                                   | 137                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | Page  | Paginate_Btn             | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum |
      | first | paginate_button next     | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | financial_details.xlsx | income_details                 | 155                                   | 126                           |
      | last  | paginate_button previous | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | financial_details.xlsx | income_details                 | 155                                   | 126                           |

#SEP,SENP

  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13075: Field type validation of <Field> in income details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    When user clicks on income details accordian of "<Occupation>"
    Then "<Field>" field should be of "<Field_Type>" type of "<Occupation>"

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | Field       | Field_Type   | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | Income Head | drop down    | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 127                           |
      | Year 1      | input        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 127                           |
      | Year 2      | input        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 127                           |
      | Year 3      | input        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 127                           |
      | % Change    | non editable | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 127                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Field       | Field_Type   | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | Income Head | drop down    | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 138                           |
      | Year 1      | input        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 138                           |
      | Year 2      | input        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 138                           |
      | Year 3      | input        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 138                           |
      | % Change    | non editable | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 138                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Field       | Field_Type   | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key | EmploymentDetails_home_rowNum |
      | Income Head | drop down    | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 138                           |
      | Year 1      | input        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 138                           |
      | Year 2      | input        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 138                           |
      | Year 3      | input        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 138                           |
      | % Change    | non editable | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | 138                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
   @NotImplemented
    Examples:
      | Field       | Field_Type   | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | Income Head | drop down    | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 127                           |
      | Year 1      | input        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 127                           |
      | Year 2      | input        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 127                           |
      | Year 3      | input        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 127                           |
      | % Change    | non editable | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 127                           |

  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13076: <Field_Name> field validation with <Validity> <InputType> in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user clicks on income details accordian of "<Occupation>"
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row <financialDetails_incomeDetails_rowNum>
    When user fills "<Validity>" "<Field_Name>" with "<InputType>" in income details of "<Occupation>"
    Then "<Field_Name>" field "<Throws_notThrows>" error in income details of "<Occupation>"

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | Field_Name | Validity | InputType                 | Throws_notThrows | ApplicationStage   | ProductType   | Occupation   | financialDetails_incomeDetails_rowNum | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | Year 1     | valid    | numbers upto 18 digits    | not throw any    | <ApplicationStage> | <ProductType> | <Occupation> | 136                                   | <ApplicantType> |          |     | 127                           |
      | Year 1     | invalid  | value more than 18 digits | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 137                                   | <ApplicantType> |          |     | 127                           |
      | Year 1     | invalid  | characters                | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 138                                   | <ApplicantType> |          |     | 127                           |
      | Year 1     | invalid  | special characters        | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 139                                   | <ApplicantType> |          |     | 127                           |
      | Year 1     | invalid  | alphanumeric              | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 140                                   | <ApplicantType> |          |     | 127                           |
      | Year 2     | valid    | numbers upto 18 digits    | not throw any    | <ApplicationStage> | <ProductType> | <Occupation> | 141                                   | <ApplicantType> |          |     | 127                           |
      | Year 2     | invalid  | value more than 18 digits | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 142                                   | <ApplicantType> |          |     | 127                           |
      | Year 2     | invalid  | characters                | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 143                                   | <ApplicantType> |          |     | 127                           |
      | Year 2     | invalid  | special characters        | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 144                                   | <ApplicantType> |          |     | 127                           |
      | Year 2     | invalid  | alphanumeric              | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 145                                   | <ApplicantType> |          |     | 127                           |
      | Year 3     | valid    | numbers upto 18 digits    | not throw any    | <ApplicationStage> | <ProductType> | <Occupation> | 146                                   | <ApplicantType> |          |     | 127                           |
      | Year 3     | invalid  | value more than 18 digits | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 147                                   | <ApplicantType> |          |     | 127                           |
      | Year 3     | invalid  | characters                | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 148                                   | <ApplicantType> |          |     | 127                           |
      | Year 3     | invalid  | special characters        | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 149                                   | <ApplicantType> |          |     | 127                           |
      | Year 3     | invalid  | alphanumeric              | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 150                                   | <ApplicantType> |          |     | 127                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Field_Name | Validity | InputType                 | Throws_notThrows | ApplicationStage   | ProductType   | Occupation   | financialDetails_incomeDetails_rowNum | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | Year 1     | valid    | numbers upto 18 digits    | not throw any    | <ApplicationStage> | <ProductType> | <Occupation> | 136                                   | <ApplicantType> |          |     | 138                           |
      | Year 1     | invalid  | value more than 18 digits | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 137                                   | <ApplicantType> |          |     | 138                           |
      | Year 1     | invalid  | characters                | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 138                                   | <ApplicantType> |          |     | 138                           |
      | Year 1     | invalid  | special characters        | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 139                                   | <ApplicantType> |          |     | 138                           |
      | Year 1     | invalid  | alphanumeric              | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 140                                   | <ApplicantType> |          |     | 138                           |
      | Year 2     | valid    | numbers upto 18 digits    | not throw any    | <ApplicationStage> | <ProductType> | <Occupation> | 141                                   | <ApplicantType> |          |     | 138                           |
      | Year 2     | invalid  | value more than 18 digits | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 142                                   | <ApplicantType> |          |     | 138                           |
      | Year 2     | invalid  | characters                | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 143                                   | <ApplicantType> |          |     | 138                           |
      | Year 2     | invalid  | special characters        | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 144                                   | <ApplicantType> |          |     | 138                           |
      | Year 2     | invalid  | alphanumeric              | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 145                                   | <ApplicantType> |          |     | 138                           |
      | Year 3     | valid    | numbers upto 18 digits    | not throw any    | <ApplicationStage> | <ProductType> | <Occupation> | 146                                   | <ApplicantType> |          |     | 138                           |
      | Year 3     | invalid  | value more than 18 digits | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 147                                   | <ApplicantType> |          |     | 138                           |
      | Year 3     | invalid  | characters                | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 148                                   | <ApplicantType> |          |     | 138                           |
      | Year 3     | invalid  | special characters        | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 149                                   | <ApplicantType> |          |     | 138                           |
      | Year 3     | invalid  | alphanumeric              | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 150                                   | <ApplicantType> |          |     | 138                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Field_Name | Validity | InputType                 | Throws_notThrows | ApplicationStage   | ProductType   | Occupation   | financialDetails_incomeDetails_rowNum | ApplicantType   | category   | key | EmploymentDetails_home_rowNum |
      | Year 1     | valid    | numbers upto 18 digits    | not throw any    | <ApplicationStage> | <ProductType> | <Occupation> | 136                                   | <ApplicantType> | <category> |     | 138                           |
      | Year 1     | invalid  | value more than 18 digits | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 137                                   | <ApplicantType> | <category> |     | 138                           |
      | Year 1     | invalid  | characters                | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 138                                   | <ApplicantType> | <category> |     | 138                           |
      | Year 1     | invalid  | special characters        | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 139                                   | <ApplicantType> | <category> |     | 138                           |
      | Year 1     | invalid  | alphanumeric              | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 140                                   | <ApplicantType> | <category> |     | 138                           |
      | Year 2     | valid    | numbers upto 18 digits    | not throw any    | <ApplicationStage> | <ProductType> | <Occupation> | 141                                   | <ApplicantType> | <category> |     | 138                           |
      | Year 2     | invalid  | value more than 18 digits | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 142                                   | <ApplicantType> | <category> |     | 138                           |
      | Year 2     | invalid  | characters                | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 143                                   | <ApplicantType> | <category> |     | 138                           |
      | Year 2     | invalid  | special characters        | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 144                                   | <ApplicantType> | <category> |     | 138                           |
      | Year 2     | invalid  | alphanumeric              | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 145                                   | <ApplicantType> | <category> |     | 138                           |
      | Year 3     | valid    | numbers upto 18 digits    | not throw any    | <ApplicationStage> | <ProductType> | <Occupation> | 146                                   | <ApplicantType> | <category> |     | 138                           |
      | Year 3     | invalid  | value more than 18 digits | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 147                                   | <ApplicantType> | <category> |     | 138                           |
      | Year 3     | invalid  | characters                | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 148                                   | <ApplicantType> | <category> |     | 138                           |
      | Year 3     | invalid  | special characters        | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 149                                   | <ApplicantType> | <category> |     | 138                           |
      | Year 3     | invalid  | alphanumeric              | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 150                                   | <ApplicantType> | <category> |     | 138                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
   @NotImplemented
    Examples:
      | Field_Name | Validity | InputType                 | Throws_notThrows | ApplicationStage   | ProductType   | Occupation   | financialDetails_incomeDetails_rowNum | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | Year 1     | valid    | numbers upto 18 digits    | not throw any    | <ApplicationStage> | <ProductType> | <Occupation> | 136                                   | <ApplicantType> |          |     | 127                           |
      | Year 1     | invalid  | value more than 18 digits | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 137                                   | <ApplicantType> |          |     | 127                           |
      | Year 1     | invalid  | characters                | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 138                                   | <ApplicantType> |          |     | 127                           |
      | Year 1     | invalid  | special characters        | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 139                                   | <ApplicantType> |          |     | 127                           |
      | Year 1     | invalid  | alphanumeric              | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 140                                   | <ApplicantType> |          |     | 127                           |
      | Year 2     | valid    | numbers upto 18 digits    | not throw any    | <ApplicationStage> | <ProductType> | <Occupation> | 141                                   | <ApplicantType> |          |     | 127                           |
      | Year 2     | invalid  | value more than 18 digits | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 142                                   | <ApplicantType> |          |     | 127                           |
      | Year 2     | invalid  | characters                | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 143                                   | <ApplicantType> |          |     | 127                           |
      | Year 2     | invalid  | special characters        | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 144                                   | <ApplicantType> |          |     | 127                           |
      | Year 2     | invalid  | alphanumeric              | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 145                                   | <ApplicantType> |          |     | 127                           |
      | Year 3     | valid    | numbers upto 18 digits    | not throw any    | <ApplicationStage> | <ProductType> | <Occupation> | 146                                   | <ApplicantType> |          |     | 127                           |
      | Year 3     | invalid  | value more than 18 digits | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 147                                   | <ApplicantType> |          |     | 127                           |
      | Year 3     | invalid  | characters                | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 148                                   | <ApplicantType> |          |     | 127                           |
      | Year 3     | invalid  | special characters        | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 149                                   | <ApplicantType> |          |     | 127                           |
      | Year 3     | invalid  | alphanumeric              | throw an         | <ApplicationStage> | <ProductType> | <Occupation> | 150                                   | <ApplicantType> |          |     | 127                           |

  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13077: % Change field should be auto filled of <Occupation> occupation income details at <ApplicationStage> stage in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    When user fills employment details for "<Occupation>"
    And user open financial details
    And user clicks on income details accordian of "<Occupation>"
    And user fills all field of years
      | financial_details.xlsx | income_details | 170 |
    Then % Change should be auto update correctly in income details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-richa.singh
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | 127                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | 138                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category   | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | 138                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
   @NotImplemented
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | 127                           |

  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13078: % Change should be auto update based on <Fields> field of <Occupation> occupation income details at <ApplicationStage> stage in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation>"
    And user open financial details
    And user clicks on income details accordian of "<Occupation>"
    And user fills all field of years
      | financial_details.xlsx | income_details | 170 |
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row 171
    When user change the value of "<Fields>" field in income details
    Then % Change should be auto update correctly in income details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-richa.singh
    Examples:
      | ApplicationStage   | ProductType   | Fields | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | Year 1 | <Occupation> | <ApplicantType> |          |     | 127                           |
      | <ApplicationStage> | <ProductType> | Year 2 | <Occupation> | <ApplicantType> |          |     | 127                           |
      | <ApplicationStage> | <ProductType> | Year 3 | <Occupation> | <ApplicantType> |          |     | 127                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Fields | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | Year 1 | <Occupation> | <ApplicantType> |          |     | 138                           |
      | <ApplicationStage> | <ProductType> | Year 2 | <Occupation> | <ApplicantType> |          |     | 138                           |
      | <ApplicationStage> | <ProductType> | Year 3 | <Occupation> | <ApplicantType> |          |     | 138                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Fields | Occupation   | ApplicantType   | category   | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | Year 1 | <Occupation> | <ApplicantType> | <category> |     | 138                           |
      | <ApplicationStage> | <ProductType> | Year 2 | <Occupation> | <ApplicantType> | <category> |     | 138                           |
      | <ApplicationStage> | <ProductType> | Year 3 | <Occupation> | <ApplicantType> | <category> |     | 138                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
   @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Fields | Occupation   | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | Year 1 | <Occupation> | <ApplicantType> |          |     | 127                           |
      | <ApplicationStage> | <ProductType> | Year 2 | <Occupation> | <ApplicantType> |          |     | 127                           |
      | <ApplicationStage> | <ProductType> | Year 3 | <Occupation> | <ApplicantType> |          |     | 127                           |

  Scenario Outline: ACAUTOCAS-13079: <Field> field validation in income details of <Occupation> occupation  at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation>"
    And user open financial details
    And user clicks on income details accordian of "<Occupation>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_incomeDetails>" and row <FinancialDetails_incomeDetails_rowNum>
    When user fills "<Field>" field in income details
    Then filled values of "<Field>" should comes in left of caret cursor

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-richa.singh
    Examples:
      | Field  | ProductType   | ApplicantType   | ApplicationStage   | Occupation   | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum | category | key |
      | Year 1 | <ProductType> | <ApplicantType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | 127                           |          |     |
      | Year 2 | <ProductType> | <ApplicantType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | 127                           |          |     |
      | Year 3 | <ProductType> | <ApplicantType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | 127                           |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Field  | ProductType   | ApplicantType   | ApplicationStage   | Occupation   | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum | category | key |
      | Year 1 | <ProductType> | <ApplicantType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | 138                           |          |     |
      | Year 2 | <ProductType> | <ApplicantType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | 138                           |          |     |
      | Year 3 | <ProductType> | <ApplicantType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | 138                           |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Field  | ProductType   | ApplicantType   | ApplicationStage   | Occupation   | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum | category   | key |
      | Year 1 | <ProductType> | <ApplicantType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | 138                           | <category> |     |
      | Year 2 | <ProductType> | <ApplicantType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | 138                           | <category> |     |
      | Year 3 | <ProductType> | <ApplicantType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | 138                           | <category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
   @NotImplemented
    Examples:
      | Field  | ProductType   | ApplicantType   | ApplicationStage   | Occupation   | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum | category | key |
      | Year 1 | <ProductType> | <ApplicantType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | 127                           |          |     |
      | Year 2 | <ProductType> | <ApplicantType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | 127                           |          |     |
      | Year 3 | <ProductType> | <ApplicantType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | income_details                 | 167                                   | 127                           |          |     |

  #Income source for PAYG(Salaried) is mandatory for the occupation PAYG only. But in self-employed as well the income source is coming mandatory.
  #Bug:CAS-135710
  #FeatureID-ACAUTOCAS-159,CAS-135710
  Scenario Outline: ACAUTOCAS-13080: Income Source field validation for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    When user clicks on income details accordian of "<Occupation>"
    Then Income Source field should not be present in case of "<Occupation>" occupation

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | Occupation   | ProductType   | ApplicantType   | ApplicationStage   | category | key | EmploymentDetails_home_rowNum |
      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 127                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Occupation   | ProductType   | ApplicantType   | ApplicationStage   | category | key | EmploymentDetails_home_rowNum |
      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 138                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Occupation   | ProductType   | ApplicantType   | ApplicationStage   | category   | key | EmploymentDetails_home_rowNum |
      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | 138                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
   @NotImplemented
    Examples:
      | Occupation   | ProductType   | ApplicantType   | ApplicationStage   | category | key | EmploymentDetails_home_rowNum |
      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 127                           |

  #30/04/24
  #Bug:CAS-111465
  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13081: <Years> field validation of income details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row <financialDetails_incomeDetails_rowNum>
    And user enter zero in "<Years>" field in income details with "single" income head of "<Occupation>"
    When user clicks on save and compute
    And user clicks on income details accordian of "<Occupation>"
    Then "<Years>" field of income details should be intact as zero

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | Occupation   | ProductType   | ApplicantType   | ApplicationStage   | Years  | financialDetails_incomeDetails_rowNum | category | key | EmploymentDetails_home_rowNum |
      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | Year 1 | 151                                   |          |     | 127                           |
      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | Year 2 | 152                                   |          |     | 127                           |
      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | Year 3 | 153                                   |          |     | 127                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Occupation   | ProductType   | ApplicantType   | ApplicationStage   | Years  | financialDetails_incomeDetails_rowNum | category | key | EmploymentDetails_home_rowNum |
      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | Year 1 | 151                                   |          |     | 138                           |
      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | Year 2 | 152                                   |          |     | 138                           |
      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | Year 3 | 153                                   |          |     | 138                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Occupation   | ProductType   | ApplicantType   | ApplicationStage   | Years  | financialDetails_incomeDetails_rowNum | category   | key | EmploymentDetails_home_rowNum |
      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | Year 1 | 151                                   | <category> |     | 138                           |
      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | Year 2 | 152                                   | <category> |     | 138                           |
      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | Year 3 | 153                                   | <category> |     | 138                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
   @NotImplemented
    Examples:
      | Occupation   | ProductType   | ApplicantType   | ApplicationStage   | Years  | financialDetails_incomeDetails_rowNum | category | key | EmploymentDetails_home_rowNum |
      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | Year 1 | 151                                   |          |     | 127                           |
      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | Year 2 | 152                                   |          |     | 127                           |
      | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | Year 3 | 153                                   |          |     | 127                           |

  #StoryId:CAS-63446
  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13082: Save income details without filling data for <Years> year for <Occupation> occupation in financial details at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user clicks on income details accordian of "<Occupation>"
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row 56
    When user fills income details without filling data for "<Years>" year of "<Occupation>"
    Then income details should be saved successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicationStage   | Occupation   | Years | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicationStage> | <Occupation> | Three | <ApplicantType> |          |     | 127                           |
      | <ProductType> | <ApplicationStage> | <Occupation> | Two   | <ApplicantType> |          |     | 127                           |
      | <ProductType> | <ApplicationStage> | <Occupation> | One   | <ApplicantType> |          |     | 127                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicationStage   | Occupation   | Years | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicationStage> | <Occupation> | Three | <ApplicantType> |          |     | 138                           |
      | <ProductType> | <ApplicationStage> | <Occupation> | Two   | <ApplicantType> |          |     | 138                           |
      | <ProductType> | <ApplicationStage> | <Occupation> | One   | <ApplicantType> |          |     | 138                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicationStage   | Occupation   | Years | ApplicantType   | category   | key | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicationStage> | <Occupation> | Three | <ApplicantType> | <category> |     | 138                           |
      | <ProductType> | <ApplicationStage> | <Occupation> | Two   | <ApplicantType> | <category> |     | 138                           |
      | <ProductType> | <ApplicationStage> | <Occupation> | One   | <ApplicantType> | <category> |     | 138                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Occupation   | Years | ApplicantType   | category | key | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicationStage> | <Occupation> | Three | <ApplicantType> |          |     | 127                           |
      | <ProductType> | <ApplicationStage> | <Occupation> | Two   | <ApplicantType> |          |     | 127                           |
      | <ProductType> | <ApplicationStage> | <Occupation> | One   | <ApplicantType> |          |     | 127                           |

  #FeatureID-ACAUTOCAS-159
  Scenario Outline: ACAUTOCAS-13083:  Years validation in income details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user select occupation type as "<Occupation>" in employment details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fill employment details for occupation type as "<Occupation>"
    And user open financial details
    And user clicks on income details accordian of "<Occupation>"
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row <financialDetails_incomeDetails_rowNum>
    When user selects "<Field1>" year "<Compare>" "<Field2>" income details
    Then "<Field1>" should throw an error message

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-tanya
    Examples:
      | Field1 | Compare      | Field2 | Occupation   | ProductType   | ApplicantType   | ApplicationStage   | category | key | financialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum |
      | Year 1 | greater than | Year 2 | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 66                                    | 127                           |
      | Year 2 | greater than | Year 3 | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 72                                    | 127                           |
      | Year 1 | greater than | Year 3 | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 68                                    | 127                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Field1 | Compare      | Field2 | Occupation   | ProductType   | ApplicantType   | ApplicationStage   | category | key | financialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum |
      | Year 1 | greater than | Year 2 | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 66                                    | 138                           |
      | Year 2 | greater than | Year 3 | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 72                                    | 138                           |
      | Year 1 | greater than | Year 3 | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 68                                    | 138                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category:["bonds"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | Field1 | Compare      | Field2 | Occupation   | ProductType   | ApplicantType   | ApplicationStage   | category   | key | financialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum |
      | Year 1 | greater than | Year 2 | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | 66                                    | 138                           |
      | Year 2 | greater than | Year 3 | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | 72                                    | 138                           |
      | Year 1 | greater than | Year 3 | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | 68                                    | 138                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
   @NotImplemented
    Examples:
      | Field1 | Compare      | Field2 | Occupation   | ProductType   | ApplicantType   | ApplicationStage   | category | key | financialDetails_incomeDetails_rowNum | EmploymentDetails_home_rowNum |
      | Year 1 | greater than | Year 2 | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 66                                    | 127                           |
      | Year 2 | greater than | Year 3 | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 72                                    | 127                           |
      | Year 1 | greater than | Year 3 | <Occupation> | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 68                                    | 127                           |
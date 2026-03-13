@Epic-Applicant_Information
@AuthoredBy-harshprit.kumar
@ReviewedBy-harshprit.kumar
@ReviewedByDEV
@AppInfoAdoption

#FeatureID-ACAUTOCAS-159
#${ApplicantType:["indiv"]}
Feature: Income Detail Mandatory Field Validation After Save

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-3879:  Saving income details without <field>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetailsWB_home>" and row <EmploymentDetailsWB_home_rowNum>
    And user open Employment Details
    And user select occupation type as "<OccupationType>" in employment details
    And user fills employment details for occupation type as "<OccupationType>"
    And click on Done Button
    And user changes major occupation to "<OccupationType>"
    And user clicks on save and next of Employment Details
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_incomeDetails>" and row <FinancialDetails_incomeDetails_rowNum>
    When user fills income details "<var>" more details
    Then income details should not save, fail with proper error message
    @Conventional
    @Release @Part-1
    @ImplementedBy-harshprit.kumar
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | OccupationType | field         | var     | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | income_head   | without | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 2                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | income_source | without | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 3                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | amount        | without | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 4                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | percentage    | without | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 5                                     |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | OccupationType | field         | var     | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | income_head   | without | employment_details.xlsx | home                     | 139                             | financial_details.xlsx | income_details                 | 2                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | income_source | without | employment_details.xlsx | home                     | 139                             | financial_details.xlsx | income_details                 | 3                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | amount        | without | employment_details.xlsx | home                     | 139                             | financial_details.xlsx | income_details                 | 4                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | percentage    | without | employment_details.xlsx | home                     | 139                             | financial_details.xlsx | income_details                 | 5                                     |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | OccupationType | field         | var     | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Salaried       | income_head   | without | employment_details.xlsx | home                     | 139                             | financial_details.xlsx | income_details                 | 2                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Salaried       | income_source | without | employment_details.xlsx | home                     | 139                             | financial_details.xlsx | income_details                 | 3                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Salaried       | amount        | without | employment_details.xlsx | home                     | 139                             | financial_details.xlsx | income_details                 | 4                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Salaried       | percentage    | without | employment_details.xlsx | home                     | 139                             | financial_details.xlsx | income_details                 | 5                                     |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | OccupationType | field         | var     | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | income_head   | without | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 2                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | income_source | without | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 3                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | amount        | without | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 4                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | percentage    | without | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 5                                     |


  Scenario Outline: ACAUTOCAS-3880:  <field> should be <attribute> in income details after save
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetailsWB_home>" and row <EmploymentDetailsWB_home_rowNum>
    And user open Employment Details
    And user select occupation type as "<OccupationType>" in employment details
    And user fills employment details for occupation type as "<OccupationType>"
    And click on Done Button
    And user changes major occupation to "<OccupationType>"
    And user clicks on save and next of Employment Details
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_incomeDetails>" and row <FinancialDetails_incomeDetails_rowNum>
    When user fills income details "<var>" more details
    Then functionality of "<attribute>" should work work successfully around "<field>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-harshprit.kumar
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | OccupationType | attribute    | var  | field                              | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | not editable | with | Net Amount In More Details         | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 39                                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | not editable | with | Effective Tax rate In More Details | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 39                                    |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | OccupationType | attribute    | var  | field                              | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | not editable | with | Net Amount In More Details         | employment_details.xlsx | home                     | 139                             | financial_details.xlsx | income_details                 | 39                                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | not editable | with | Effective Tax rate In More Details | employment_details.xlsx | home                     | 139                             | financial_details.xlsx | income_details                 | 39                                    |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | OccupationType | attribute    | var  | field                              | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Salaried       | not editable | with | Net Amount In More Details         | employment_details.xlsx | home                     | 139                             | financial_details.xlsx | income_details                 | 39                                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Salaried       | not editable | with | Effective Tax rate In More Details | employment_details.xlsx | home                     | 139                             | financial_details.xlsx | income_details                 | 39                                    |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | OccupationType | attribute    | var  | field                              | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | not editable | with | Net Amount In More Details         | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 39                                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | not editable | with | Effective Tax rate In More Details | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 39                                    |

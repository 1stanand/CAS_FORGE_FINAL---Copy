@Epic-Applicant_Information
@AppInfoAdoption
@Liability
@AuthoredBy-atul.mishra
@ReviewedBy-None
@Reconciled
@ReviewedByDEV
#${ApplicantType:["indiv"]}
Feature: Internal liability detail all field validation with occupation type as salaried without save

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-3914:  Enter the joint liability percentage "<Var>" in Internal liability detail
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user save personal information details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user enter the joint liability percentage "<Var>" format
    Then joint liability percentage should "<Validity>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with valid                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum value             | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | more than maximum value        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 4                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 7                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with two decimal places        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 8                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with valid                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum value             | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | more than maximum value        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 4                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 7                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with two decimal places        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 8                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | with valid                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | with maximum value             | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | more than maximum value        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 4                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with special char              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with space                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 7                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | with two decimal places        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 8                                        |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with valid                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum value             | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | more than maximum value        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 4                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 7                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with two decimal places        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 8                                        |


  Scenario Outline: ACAUTOCAS-3915:  Enter the sanction amount "<Var>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user save personal information details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user fills "Sanction Amount/Credit Limit" field with "<var>" in "internal" liability details
    Then "Sanction Amount/Credit Limit" field with <var> "<Throws_notThrows>" in liability details
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Throws_notThrows                   | var                        | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error           | valid value                | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 54                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error           | up to 18 digits            | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 55                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws an error with error message | more than 18 digits        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 56                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws an error with error message | both digits and characters | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 57                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws an error with error message | special characters         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 58                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws an error with error message | space                      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 59                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error           | paise format               | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 60                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error           | zero value                 | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 61                                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Throws_notThrows                   | var                        | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error           | valid value                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 54                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error           | up to 18 digits            | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 55                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws an error with error message | more than 18 digits        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 56                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws an error with error message | both digits and characters | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 57                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws an error with error message | special characters         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 58                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws an error with error message | space                      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 59                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error           | paise format               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 60                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error           | zero value                 | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 61                                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Throws_notThrows                   | var                        | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | does not throw any error           | valid value                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 54                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | does not throw any error           | up to 18 digits            | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 55                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | throws an error with error message | more than 18 digits        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 56                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | throws an error with error message | both digits and characters | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 57                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | throws an error with error message | special characters         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 58                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | throws an error with error message | space                      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 59                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | does not throw any error           | paise format               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 60                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | does not throw any error           | zero value                 | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 61                                       |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Throws_notThrows                   | var                        | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error           | valid value                | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 54                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error           | up to 18 digits            | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 55                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws an error with error message | more than 18 digits        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 56                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws an error with error message | both digits and characters | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 57                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws an error with error message | special characters         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 58                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws an error with error message | space                      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 59                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error           | paise format               | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 60                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error           | zero value                 | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 61                                       |


  Scenario Outline: ACAUTOCAS-3916:  Enter the expiry date <Var>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user save personal information details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user fills "Maturity/Expiry Date" field with "<var>" in "internal" liability details
    Then "Maturity/Expiry Date" field with <var> "<Throws_notThrows>" in liability details
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Throws_notThrows                   | var                    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error           | valid date             | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 62                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error           | more than current date | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 63                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws an error with error message | before 1942            | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 64                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws an error with error message | with special char      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 235                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws an error with error message | with space             | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 236                                      |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Throws_notThrows                   | var                    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error           | valid date             | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 62                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error           | more than current date | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 63                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws an error with error message | before 1942            | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 64                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws an error with error message | with special char      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 235                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws an error with error message | with space             | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 236                                      |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Throws_notThrows                   | var                    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | does not throw any error           | valid date             | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 62                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | does not throw any error           | more than current date | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 63                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | throws an error with error message | before 1942            | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 64                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | throws an error with error message | with special char      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 235                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | throws an error with error message | with space             | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 236                                      |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Throws_notThrows                   | var                    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error           | valid date             | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 62                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error           | more than current date | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 63                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws an error with error message | before 1942            | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 64                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws an error with error message | with special char      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 235                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws an error with error message | with space             | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 236                                      |


  Scenario Outline: ACAUTOCAS-3917:  Enter the ROI percentage <Var>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user save personal information details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user fills "ROI Percentage" field with "<var>" in "internal" liability details
    Then "ROI Percentage" field with <var> "<Throws_notThrows>" in liability details
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with valid                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 38                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with maximum value             | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 39                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | more than maximum value        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 40                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 41                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 42                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with special character         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 43                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 44                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with two decimal places        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 45                                       | does not throw any error           |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with valid                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 38                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with maximum value             | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 39                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | more than maximum value        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 40                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 41                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 42                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with special character         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 43                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with space                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 44                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with two decimal places        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 45                                       | does not throw any error           |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with valid                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 38                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with maximum value             | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 39                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | more than maximum value        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 40                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 41                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 42                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with special character         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 43                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with space                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 44                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with two decimal places        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 45                                       | does not throw any error           |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with valid                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 38                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with maximum value             | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 39                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | more than maximum value        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 40                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 41                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 42                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with special character         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 43                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 44                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with two decimal places        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 45                                       | does not throw any error           |


  Scenario Outline: ACAUTOCAS-3918:  Enter the account number <Var>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user save personal information details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user fills "Account Number/Card Number" field with "<var>" in "internal" liability details
    Then "Account Number/Card Number" field with <var> "<Throws_notThrows>" in liability details
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                                   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid value                           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 68                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters with forward slash | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 69                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | both digits and characters            | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 70                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters with underscore    | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 71                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | space                                 | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 72                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | negative value                        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 73                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters                    | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 74                                       | throws an error with error message |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                                   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid value                           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 68                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters with forward slash | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 69                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | both digits and characters            | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 70                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters with underscore    | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 71                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | space                                 | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 72                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | negative value                        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 73                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters                    | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 74                                       | throws an error with error message |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | var                                   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid value                           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 68                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | special characters with forward slash | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 69                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | both digits and characters            | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 70                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | special characters with underscore    | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 71                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | space                                 | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 72                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | negative value                        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 73                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | special characters                    | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 74                                       | throws an error with error message |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                                   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid value                           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 68                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters with forward slash | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 69                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | both digits and characters            | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 70                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters with underscore    | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 71                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | space                                 | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 72                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | negative value                        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 73                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters                    | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 74                                       | throws an error with error message |


  Scenario Outline: ACAUTOCAS-3919:  Enter the number of defaults <Var>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user save personal information details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user fills "No.of Defaults" field with "<var>" in "internal" liability details
    Then "No.of Defaults" field with <var> "<Throws_notThrows>" in liability details
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with valid value               | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 75                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 76                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 77                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with special character         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 78                                       | throws an error with error message |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with valid value               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 75                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 76                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 77                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with special character         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 78                                       | throws an error with error message |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with valid value               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 75                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 76                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 77                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with special character         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 78                                       | throws an error with error message |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with valid value               | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 75                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 76                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 77                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with special character         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 78                                       | throws an error with error message |


  Scenario Outline: ACAUTOCAS-3920:  Change the currency of sanction amount credit limit
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user save personal information details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user change the currency of sanction amount
    Then currency of sanction amount should be changed successfully
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 1                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 1                                        |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |


  Scenario Outline: ACAUTOCAS-3921:  Edit the months on book in internal liability detail
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user save personal information details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user fills the internal liability details
    Then user should not be able to edit the months on book
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 1                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 1                                        |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |


  Scenario Outline: ACAUTOCAS-3922:  Change the currency of closure amount
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user save personal information details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user change the currency of closure amount
    Then currency of closure amount should be changed successfully
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 1                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 1                                        |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |


  Scenario Outline: ACAUTOCAS-3923:  Enter the closure amount <Var>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user save personal information details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user fills "Closure Amount" field with "<var>" in "internal" liability details
    Then "Closure Amount" field with <var> "<Throws_notThrows>" in liability details
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                        | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid value                | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 46                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | up to 18 digits            | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 47                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | more than 18 digits        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 48                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | both digits and characters | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 49                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 50                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | space                      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 51                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | paise format               | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 52                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | zero value                 | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 53                                       | does not throw any error           |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                        | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid value                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 46                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | up to 18 digits            | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 47                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | more than 18 digits        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 48                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | both digits and characters | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 49                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 50                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | space                      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 51                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | paise format               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 52                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | zero value                 | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 53                                       | does not throw any error           |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | var                        | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid value                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 46                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | up to 18 digits            | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 47                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | more than 18 digits        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 48                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | both digits and characters | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 49                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | special characters         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 50                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | space                      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 51                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | paise format               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 52                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | zero value                 | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 53                                       | does not throw any error           |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                        | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid value                | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 46                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | up to 18 digits            | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 47                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | more than 18 digits        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 48                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | both digits and characters | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 49                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 50                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | space                      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 51                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | paise format               | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 52                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | zero value                 | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 53                                       | does not throw any error           |


  Scenario Outline: ACAUTOCAS-3924:  Enter the security given <Var>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user save personal information details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user fills "Security Given" field with "<var>" in "internal" liability details
    Then "Security Given" field with <var> "<Throws_notThrows>" in liability details
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with valid value               | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 79                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 80                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with negative value            | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 81                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters with hyphen | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 82                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | space                          | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 83                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with special character         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 84                                       | throws an error with error message |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with valid value               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 79                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 80                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with negative value            | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 81                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters with hyphen | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 82                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | space                          | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 83                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with special character         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 84                                       | throws an error with error message |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with valid value               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 79                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 80                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with negative value            | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 81                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | special characters with hyphen | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 82                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | space                          | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 83                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with special character         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 84                                       | throws an error with error message |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with valid value               | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 79                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 80                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with negative value            | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 81                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters with hyphen | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 82                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | space                          | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 83                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with special character         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 84                                       | throws an error with error message |


  Scenario Outline: ACAUTOCAS-3925:  Enter the closure date <Var>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user save personal information details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user fills "Closure Date" field with "<var>" in "internal" liability details
    Then "Closure Date" field with <var> "<Throws_notThrows>" in liability details
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                             | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid date                      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 65                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | less than current date          | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 66                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | before 1942                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 67                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with both digits and characters | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 237                                      | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with special char               | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 238                                      | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with space                      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 239                                      | throws an error with error message |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                             | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid date                      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 65                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | less than current date          | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 66                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | before 1942                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 67                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with both digits and characters | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 237                                      | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with special char               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 238                                      | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with space                      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 239                                      | throws an error with error message |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | var                             | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid date                      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 65                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | less than current date          | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 66                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | before 1942                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 67                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with both digits and characters | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 237                                      | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with special char               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 238                                      | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with space                      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 239                                      | throws an error with error message |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                             | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid date                      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 65                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | less than current date          | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 66                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | before 1942                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 67                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with both digits and characters | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 237                                      | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with special char               | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 238                                      | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with space                      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 239                                      | throws an error with error message |


  Scenario Outline: ACAUTOCAS-3926:  Enter the description <Var>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user save personal information details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user enters the description "<Var>" format
    Then description should "<Validity>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                      | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with valid               | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum length(255) | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                      | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with valid               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum length(255) | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 2                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Var                      | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | with valid               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | with maximum length(255) | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 2                                        |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                      | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with valid               | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum length(255) | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |


  Scenario Outline: ACAUTOCAS-3927:  In selection of liability type as loans  <Var> should be displayed
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user save personal information details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user fills "Liability Type" field with "valid" in "internal" liability details
    Then "<Dependent_Field>" should be "Displayed" in liability Details page
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Dependent_Field                  | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | joint liability percentage       | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 85                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | joint liability checkbox         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 85                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | months on book                   | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 85                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | roi percentage                   | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 85                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | number of defaults               | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 85                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | balanced transfer/topup checkbox | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 85                                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Dependent_Field                  | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | joint liability percentage       | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 85                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | joint liability checkbox         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 85                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | months on book                   | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 85                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | roi percentage                   | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 85                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | number of defaults               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 85                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | balanced transfer/topup checkbox | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 85                                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Dependent_Field                  | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | joint liability percentage       | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 85                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | joint liability checkbox         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 85                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | months on book                   | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 85                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | roi percentage                   | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 85                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | number of defaults               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 85                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | balanced transfer/topup checkbox | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 85                                       |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Dependent_Field                  | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | joint liability percentage       | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 85                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | joint liability checkbox         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 85                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | months on book                   | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 85                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | roi percentage                   | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 85                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | number of defaults               | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 85                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | balanced transfer/topup checkbox | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 85                                       |


  Scenario Outline: ACAUTOCAS-3928:  In selection of "<Var>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user save personal information details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user selects "<Var>"
    Then "<Criteria>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Criteria                                   | Var                        | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reason should not be displayed             | Consider for obligation    | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reason should not be displayed             | Is balance transfer/top up | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reason description should be auto selected | reason                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reason description should not be editable  | reason                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Criteria                                   | Var                        | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reason should not be displayed             | Consider for obligation    | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reason should not be displayed             | Is balance transfer/top up | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reason description should be auto selected | reason                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reason description should not be editable  | reason                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 3                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Criteria                                   | Var                        | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reason should not be displayed             | Consider for obligation    | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reason should not be displayed             | Is balance transfer/top up | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reason description should be auto selected | reason                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reason description should not be editable  | reason                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 3                                        |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Criteria                                   | Var                        | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reason should not be displayed             | Consider for obligation    | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reason should not be displayed             | Is balance transfer/top up | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reason description should be auto selected | reason                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reason description should not be editable  | reason                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |


  Scenario Outline: ACAUTOCAS-3929:  In selection of Internal liability
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user save personal information details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user selects internal liability
    Then source system should be displayed
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 1                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 1                                        |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |


  Scenario Outline: ACAUTOCAS-3930:  In selection of Joint liability checkbox
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user save personal information details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user selects joint liability checkbox
    Then joint liability field should be editable
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 1                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 1                                        |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |


  Scenario Outline: ACAUTOCAS-3931:  Months on book should be calculated according the emi start date and end date
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user save personal information details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user enters start date and end date
    Then Months on book should be calculated correctly
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 1                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 1                                        |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |

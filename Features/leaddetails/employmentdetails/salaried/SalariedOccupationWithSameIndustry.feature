@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@ReviewedByDEV
@AppInfoAdoption
#FeatureID-ACAUTOCAS-158
# ${ApplicantType:["indiv"]}
Feature: Multiple Salaried Occupations With and Without Same Industry

  Scenario Outline: ACAUTOCAS-3832:  Multiple Salaried Occupations With <Same_or_Different> Industry
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user deletes existing occupations
    And user fills employment details with "<Same_or_Different>" Industry <NumberOf> times
    Then "<Is_error_Displayed>" error is displayed "<WithErrorMessage>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.nagarkoti
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Is_error_Displayed | WithErrorMessage                      | Same_or_Different | NumberOf | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |                    | Duplicate occupation cannot be saved. | same              | 2        | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 18                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | No                 |                                       | different         | 2        | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 18                            |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Is_error_Displayed | WithErrorMessage                      | Same_or_Different | NumberOf | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |                    | Duplicate occupation cannot be saved. | same              | 2        | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | No                 |                                       | different         | 2        | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Is_error_Displayed | WithErrorMessage                      | Same_or_Different | NumberOf | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |                    | Duplicate occupation cannot be saved. | same              | 2        | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | No                 |                                       | different         | 2        | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Is_error_Displayed | WithErrorMessage                      | Same_or_Different | NumberOf | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |                    | Duplicate occupation cannot be saved. | same              | 2        | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 18                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | No                 |                                       | different         | 2        | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 18                            |

@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@ReviewedByDEV
@AppInfoAdoption
@Experiment
#FeatureID-ACAUTOCAS-158

  # ${ApplicantType:["indiv"]}
Feature: Years in Job Validation for Salaried in Employment Details page without save

  Scenario Outline: ACAUTOCAS-3835:  Years in Job <Condition> in Salaried Occupation
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills employment details with "<Selected>" fields
    Then years in job "<Condition>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.nagarkoti
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
      # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Condition                                       | Selected | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is auto filled                                  | all      | LoginDetailsCAS.xlsx | LoginData | 2         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 32                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is equal to from date and till date calculation | all      | LoginDetailsCAS.xlsx | LoginData | 2         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 32                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is read only                                    | all      | LoginDetailsCAS.xlsx | LoginData | 2         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 32                            |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Condition                                       | Selected | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is auto filled                                  | all      | LoginDetailsCAS.xlsx | LoginData | 2         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is equal to from date and till date calculation | all      | LoginDetailsCAS.xlsx | LoginData | 2         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 32                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is read only                                    | all      | LoginDetailsCAS.xlsx | LoginData | 2         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 32                            |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Condition                                       | Selected | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | is auto filled                                  | all      | LoginDetailsCAS.xlsx | LoginData | 2         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 32                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | is equal to from date and till date calculation | all      | LoginDetailsCAS.xlsx | LoginData | 2         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 32                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | is read only                                    | all      | LoginDetailsCAS.xlsx | LoginData | 2         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 32                            |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Condition                                       | Selected | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is auto filled                                  | all      | LoginDetailsCAS.xlsx | LoginData | 2         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 32                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is equal to from date and till date calculation | all      | LoginDetailsCAS.xlsx | LoginData | 2         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 32                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is read only                                    | all      | LoginDetailsCAS.xlsx | LoginData | 2         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 32                            |

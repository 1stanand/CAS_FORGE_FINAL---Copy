@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@ReviewedByDEV
@AppInfoAdoption
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-158
Feature: Mandatory field validation with Salaried Occupation in Employment Detail

  Scenario Outline: ACAUTOCAS-3831:  Saving occupation type as salaried without <Field_Name>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills employment details without "<Field_Name>" fields
    And saves the employment details
    Then application is not saved with the error message "<Error_Message>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.nagarkoti
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field_Name        | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Error_Message           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employer_name     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 9                             | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_status | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 10                            | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | work_in_job       | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 11                            | This field is required. |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field_Name        | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Error_Message           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employer_name     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 9                             | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_status | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 10                            | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | work_in_job       | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 11                            | This field is required. |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Field_Name        | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Error_Message           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employer_name     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 9                             | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_status | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 10                            | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | work_in_job       | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 11                            | This field is required. |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field_Name        | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Error_Message           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employer_name     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 9                             | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_status | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 10                            | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | work_in_job       | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 11                            | This field is required. |

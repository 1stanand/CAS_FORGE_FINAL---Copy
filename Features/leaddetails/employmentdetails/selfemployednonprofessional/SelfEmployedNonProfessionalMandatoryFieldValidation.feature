@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@ReviewedByDEV
@AppInfoAdoption

# ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-158
Feature: Mandatory field validation with Self Employed Non Professional Occupation in Employment Detail


  Scenario Outline: ACAUTOCAS-3839:  Saving occupation type as self employed non professional without <Field_Name>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills employment details without "<Field_Name>" in self employed non professional
    When saves the employment details
    Then application is not saved with the error message "<Error_Message>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.nagarkoti
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field_Name               | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Error_Message           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | nature_of_business       | employment_details.xlsx | home                   | 54                            | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | other_nature_of_business | employment_details.xlsx | home                   | 159                           | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | industry                 | employment_details.xlsx | home                   | 56                            | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | years_in_business        | employment_details.xlsx | home                   | 57                            | This field is required. |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field_Name               | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Error_Message           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | nature_of_business       | employment_details.xlsx | home                   | 158                           | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | other_nature_of_business | employment_details.xlsx | home                   | 159                           | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | industry                 | employment_details.xlsx | home                   | 160                           | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | years_in_business        | employment_details.xlsx | home                   | 161                           | This field is required. |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Field_Name               | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Error_Message           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | nature_of_business       | employment_details.xlsx | home                   | 158                           | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | other_nature_of_business | employment_details.xlsx | home                   | 159                           | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | industry                 | employment_details.xlsx | home                   | 160                           | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | years_in_business        | employment_details.xlsx | home                   | 161                           | This field is required. |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field_Name               | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Error_Message           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | nature_of_business       | employment_details.xlsx | home                   | 54                            | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | other_nature_of_business | employment_details.xlsx | home                   | 55                            | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | industry                 | employment_details.xlsx | home                   | 56                            | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | years_in_business        | employment_details.xlsx | home                   | 57                            | This field is required. |

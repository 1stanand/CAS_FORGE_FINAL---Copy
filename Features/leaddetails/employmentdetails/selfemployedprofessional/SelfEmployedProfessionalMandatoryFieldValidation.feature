@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@Reconciled
@ReviewedByDEV
@AppInfoAdoption
@Experiment
#FeatureID-ACAUTOCAS-158

# ${ApplicantType:["indiv"]}
Feature: Mandatory field validation with Self Employed Professional Occupation in Employment Detail

  Scenario Outline: ACAUTOCAS-3845:  Saving occupation type as self employed professional without <Field_Name>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    When user fills employment details without "<Field_Name>" in self employed professional
    And saves the employment details
    Then application is not saved with the error message "<Error_Message>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.nagarkoti
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field_Name           | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Error_Message           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | organization_name    | employment_details.xlsx | home                   | 34                            | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | nature_of_profession | employment_details.xlsx | home                   | 35                            | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industry             | employment_details.xlsx | home                   | 92                            | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | registration_number  | employment_details.xlsx | home                   | 37                            | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | work_experience      | employment_details.xlsx | home                   | 38                            | This field is required. |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field_Name           | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Error_Message           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | organization_name    | employment_details.xlsx | home                   | 146                           | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | nature_of_profession | employment_details.xlsx | home                   | 147                           | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industry             | employment_details.xlsx | home                   | 148                           | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | registration_number  | employment_details.xlsx | home                   | 149                           | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | work_experience      | employment_details.xlsx | home                   | 150                           | This field is required. |

    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Field_Name           | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Error_Message           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | organization_name    | employment_details.xlsx | home                   | 146                           | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | nature_of_profession | employment_details.xlsx | home                   | 147                           | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Industry             | employment_details.xlsx | home                   | 148                           | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | registration_number  | employment_details.xlsx | home                   | 149                           | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | work_experience      | employment_details.xlsx | home                   | 150                           | This field is required. |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field_Name           | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Error_Message           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | organization_name    | employment_details.xlsx | home                   | 34                            | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | nature_of_profession | employment_details.xlsx | home                   | 35                            | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industry             | employment_details.xlsx | home                   | 92                            | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | registration_number  | employment_details.xlsx | home                   | 37                            | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | work_experience      | employment_details.xlsx | home                   | 38                            | This field is required. |

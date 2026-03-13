@Epic-Applicant_Information
@ReviewedBy-None
@AuthoredBy-tushar.chauhan
@AppInfoAdoption

# ${ApplicantType:["indiv"]}
Feature:Personal Information Mandatory Field Validation with save

  @FixedExp
  Scenario Outline: ACAUTOCAS-4047:  Create application without applicants "<FieldName>"
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    When user create application without applicants "<FieldName>"
    Then applicant details should not be saved successfully
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | FieldName      | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Gender         | personal_information.xlsx | home              | 155                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | First Name     | personal_information.xlsx | home              | 178                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Last Name      | personal_information.xlsx | home              | 177                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guardian Name  | personal_information.xlsx | home              | 4                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Date Of Birth  | personal_information.xlsx | home              | 158                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | marital status | personal_information.xlsx | home              | 176                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | constitution   | personal_information.xlsx | home              | 160                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | nationality    | personal_information.xlsx | home              | 175                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | resident type  | personal_information.xlsx | home              | 174                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | category       | personal_information.xlsx | home              | 163                      |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | FieldName      | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Gender         | personal_information.xlsx | home              | 155                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | First Name     | personal_information.xlsx | home              | 178                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Last Name      | personal_information.xlsx | home              | 177                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guardian Name  | personal_information.xlsx | home              | 4                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Date Of Birth  | personal_information.xlsx | home              | 158                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | marital status | personal_information.xlsx | home              | 176                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | constitution   | personal_information.xlsx | home              | 160                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | nationality    | personal_information.xlsx | home              | 175                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | resident type  | personal_information.xlsx | home              | 174                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | category       | personal_information.xlsx | home              | 163                      |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | FieldName      | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Gender         | personal_information.xlsx | home              | 155                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | First Name     | personal_information.xlsx | home              | 178                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Last Name      | personal_information.xlsx | home              | 177                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Guardian Name  | personal_information.xlsx | home              | 4                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Date Of Birth  | personal_information.xlsx | home              | 158                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | marital status | personal_information.xlsx | home              | 176                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | constitution   | personal_information.xlsx | home              | 160                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | nationality    | personal_information.xlsx | home              | 175                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | resident type  | personal_information.xlsx | home              | 174                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | category       | personal_information.xlsx | home              | 163                      |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | FieldName      | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Gender         | personal_information.xlsx | home              | 155                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | First Name     | personal_information.xlsx | home              | 2                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Last Name      | personal_information.xlsx | home              | 3                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guardian Name  | personal_information.xlsx | home              | 4                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Date Of Birth  | personal_information.xlsx | home              | 5                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | marital status | personal_information.xlsx | home              | 6                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | constitution   | personal_information.xlsx | home              | 7                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | nationality    | personal_information.xlsx | home              | 8                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | resident type  | personal_information.xlsx | home              | 9                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | category       | personal_information.xlsx | home              | 10                       |



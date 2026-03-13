@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@Reconciled
@ReviewedByDEV
@AppInfoAdoption
@Experiment
#FeatureID-ACAUTOCAS-158

# ${ApplicantType:["indiv"]}
Feature: Save Occupation Type as Self Employed Professional in Employment Detail
  @Sanity
  Scenario Outline: ACAUTOCAS-3844:  Saving occupation type as Self Employed Professional with <Mandatory_All> fields
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user deletes existing occupations
    When user fills employment details with "<Mandatory_All>" fields for self employed professional
    Then employment Details should be added

    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.nagarkoti
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Mandatory     | employment_details.xlsx | home                   | 33                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | All           | employment_details.xlsx | home                   | 33                            |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Mandatory     | employment_details.xlsx | home                   | 145                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | All           | employment_details.xlsx | home                   | 145                           |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Mandatory     | employment_details.xlsx | home                   | 145                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | All           | employment_details.xlsx | home                   | 145                           |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Mandatory     | employment_details.xlsx | home                   | 33                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | All           | employment_details.xlsx | home                   | 33                            |

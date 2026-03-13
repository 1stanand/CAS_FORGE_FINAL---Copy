@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@ReviewedByDEV
@AppInfoAdoption

#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-158
Feature: Length of Business according to Years of Incorporation in Self Employed Non Professional in Employment Details page without save


  Scenario Outline: ACAUTOCAS-3837:  Length of Business is <Condition> in Self Employed Non Professional
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    When user fills employment details with "<Mandatory_All>" fields for self employed non professional
    Then length of business is "<Condition>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.nagarkoti
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Condition                                  | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | auto filled                                | all           | employment_details.xlsx | home                   | 53                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | equal to year of incorporation calculation | all           | employment_details.xlsx | home                   | 53                            |
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.nagarkoti
    # ${ ProductType : ["PL","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    @LoggedBug
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Condition | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | read only | all           | employment_details.xlsx | home                   | 53                            |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Condition                                  | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | auto filled                                | all           | employment_details.xlsx | home                   | 139                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | equal to year of incorporation calculation | all           | employment_details.xlsx | home                   | 139                           |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Condition                                  | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | auto filled                                | all           | employment_details.xlsx | home                   | 139                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | equal to year of incorporation calculation | all           | employment_details.xlsx | home                   | 139                           |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Condition                                  | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | auto filled                                | all           | employment_details.xlsx | home                   | 53                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | equal to year of incorporation calculation | all           | employment_details.xlsx | home                   | 53                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | read only                                  | all           | employment_details.xlsx | home                   | 53                            |

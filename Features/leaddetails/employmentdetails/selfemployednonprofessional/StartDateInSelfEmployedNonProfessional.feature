@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@ReviewedByDEV
@AppInfoAdoption
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-158
Feature: Start Date Validation in Self Employed Non Professional Occupation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  Scenario Outline: ACAUTOCAS-3840:  Start date is filled less than the Year of Incorporation in Self Employed Non Professional
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    When user fills employment details with "<FirstField>" less than "<SecondField>" for self employed non professional
    Then "<Is_error_Displayed>" error is displayed "<WithErrorMessage>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.nagarkoti
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | FirstField | SecondField           | Is_error_Displayed | WithErrorMessage                                                      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | start_date | year_of_incorporation |                    | Start Date should be greater than or equal to Years Of Incorporation. | employment_details.xlsx | home                   | 58                            |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | FirstField | SecondField           | Is_error_Displayed | WithErrorMessage                                                      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | start_date | year_of_incorporation |                    | Start Date should be greater than or equal to Years Of Incorporation. | employment_details.xlsx | home                   | 169                           |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | FirstField | SecondField           | Is_error_Displayed | WithErrorMessage                                                      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | start_date | year_of_incorporation |                    | Start Date should be greater than or equal to Years Of Incorporation. | employment_details.xlsx | home                   | 169                           |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | FirstField | SecondField           | Is_error_Displayed | WithErrorMessage                                                      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | start_date | year_of_incorporation |                    | Start Date should be greater than or equal to Years Of Incorporation. | employment_details.xlsx | home                   | 58                            |


  Scenario Outline: ACAUTOCAS-3841:  Start date is auto filled according to the Year of Incorporation in Self Employed Non Professional
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    When user fills Year of Incorporation for self employed non professional
    Then start date is correctly auto filled in self employed non professional
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.nagarkoti
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 53                            |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 139                           |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 139                           |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 53                            |

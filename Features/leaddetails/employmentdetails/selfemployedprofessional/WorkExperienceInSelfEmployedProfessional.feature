@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@Reconciled
@ReviewedByDEV
@AppInfoAdoption
#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-158
Feature: Work Experience Validation for Self Employed Professional in Employment Details page without save

  Scenario Outline: ACAUTOCAS-3848:  Work experience <Condition> in Self Employed Professional
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    When user fills employment details with "<Mandatory_All>" fields for self employed professional
    Then work experience "<Condition>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.nagarkoti
    # ${ ProductType : ["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Condition                                       | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is auto filled                                  | all           | employment_details.xlsx | home                   | 33                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is equal to from date and till date calculation | all           | employment_details.xlsx | home                   | 33                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is read only                                    | all           | employment_details.xlsx | home                   | 33                            |

    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Condition                                       | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | is auto filled                                  | all           | employment_details.xlsx | home                   | 33                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | is equal to from date and till date calculation | all           | employment_details.xlsx | home                   | 33                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | is read only                                    | all           | employment_details.xlsx | home                   | 33                            |

    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Condition                                       | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is auto filled                                  | all           | employment_details.xlsx | home                   | 33                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is equal to from date and till date calculation | all           | employment_details.xlsx | home                   | 33                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is read only                                    | all           | employment_details.xlsx | home                   | 33                            |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Condition                                       | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is auto filled                                  | all           | employment_details.xlsx | home                   | 33                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is equal to from date and till date calculation | all           | employment_details.xlsx | home                   | 33                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is read only                                    | all           | employment_details.xlsx | home                   | 33                            |

@Epic-Applicant_Information
@AppInfoAdoption
@AuthoredBy-vipin.kishor
@ReviewedByDEV
@Reconciled
#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-158
Feature: Save Occupation Type as Agriculture in Employment Detail

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @Sanity
  Scenario Outline: ACAUTOCAS-3828: Saving occupation type as Others with <Mandatory_All> fields
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    When user fills employment details with "<Mandatory_All>" fields for Agriculture
    Then employment Details should be added

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.nagarkoti
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Mandatory     | employment_details.xlsx | home                   | 74                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | All           | employment_details.xlsx | home                   | 74                            |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Mandatory     | employment_details.xlsx | home                   | 74                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | All           | employment_details.xlsx | home                   | 74                            |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Mandatory     | employment_details.xlsx | home                   | 74                            | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | All           | employment_details.xlsx | home                   | 74                            | <Category> |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Mandatory     | employment_details.xlsx | home                   | 74                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | All           | employment_details.xlsx | home                   | 74                            |          |     |

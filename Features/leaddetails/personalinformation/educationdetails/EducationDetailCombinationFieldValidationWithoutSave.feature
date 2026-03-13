@Epic-Applicant_Information
@AuthoredBy-tushar.chauhan
@ReviewedByDEV
#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-157

Feature: Education Detail Combination Field Validation Without Save

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-4007: Classification Field as per selected Qualification Type at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user checks for duplicates in personal info page
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_education>" and row <PersonalInfo_education_rowNum>
    When user selects qualification type in education details
    Then classification field should be visible as per selected qualification type

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release1
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_education | PersonalInfo_education_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | education              | 20                            |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_education | PersonalInfo_education_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | education              | 20                            |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_education | PersonalInfo_education_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | education              | 20                            | <Category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_education | PersonalInfo_education_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | education              | 20                            |          |     |
